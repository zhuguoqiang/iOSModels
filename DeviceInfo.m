//
//  DeviceInfo.m
//  ZGQDeviceInfoDemo
//
//  Created by zhuguoqiang on 19/02/11.
//  Copyright © 2019年 zhuguoqiang All rights reserved.
//

#import "DeviceInfo.h"
#import <sys/sysctl.h>
#import <sys/utsname.h>

@interface DeviceInfo()
@end


@implementation DeviceInfo{
}

/**
 * https://www.theiphonewiki.com/wiki/Models
 */
- (NSString *)model {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    // https://support.apple.com/kb/HT3939
    if ([platform hasPrefix:@"iPhone"])
    {
        // ************
        // iPhone
        // ************
        // Model(s): A1203
        // Apple Tech specs: https://support.apple.com/kb/SP2
        if ([platform isEqualToString:@"iPhone1,1"])
            return @"iPhone";
        
        // ************
        // iPhone 3G
        // ************
        // Model(s): A1241 & A1324
        // Apple Tech specs: https://support.apple.com/kb/SP495
        if ([platform isEqualToString:@"iPhone1,2"])
            return @"iPhone 3G";
        
        // ************
        // iPhone 3GS
        // ************
        // Model(s): A1303 & A1325
        // Apple Tech specs: https://support.apple.com/kb/SP565
        if ([platform isEqualToString:@"iPhone2,1"])
            return @"iPhone 3GS";
        
        // ************
        // iPhone 4
        // ************
        // Model(s): A1332
        // Apple Tech specs: https://support.apple.com/kb/SP587
        if ([platform isEqualToString:@"iPhone3,1"] || [platform isEqualToString:@"iPhone3,2"])
            return @"iPhone 4 GSM";
        // Model(s): A1349
        if ([platform isEqualToString:@"iPhone3,3"])
            return @"iPhone 4 CDMA";
        
        // ************
        // iPhone 4S
        // ************
        // Model(s): A1387 & A1431
        // Apple Tech specs: https://support.apple.com/kb/SP643
        if ([platform isEqualToString:@"iPhone4,1"])
            return @"iPhone 4S";
        
        // ************
        // iPhone 5
        // ************
        // Model(s): A1428
        // Apple Tech specs: https://support.apple.com/kb/SP655
        if ([platform isEqualToString:@"iPhone5,1"])
            return @"iPhone 5 GSM";
        
        // Model(s): A1429 & A1442
        if ([platform isEqualToString:@"iPhone5,2"])
            return @"iPhone 5 Global";
        
        // ************
        // iPhone 5C
        // ************
        // Model(s): A1456 & A1532
        // Apple Tech specs: https://support.apple.com/kb/SP684
        if ([platform isEqualToString:@"iPhone5,3"])
            return @"iPhone 5C GSM";
        
        // Model(s): A1507, A1516, A1526 & A1529
        if ([platform isEqualToString:@"iPhone5,4"])
            return @"iPhone 5C Global";
        
        // ************
        // iPhone 5S
        // ************
        // Model(s): A1453 & A1533
        // Apple Tech specs: https://support.apple.com/kb/SP685
        if ([platform isEqualToString:@"iPhone6,1"])
            return @"iPhone 5S GSM";
        
        // Model(s): A1457, A1518, A1528 & A1530
        if ([platform isEqualToString:@"iPhone6,2"])
            return @"iPhone 5S Global";
        
        // ************
        // iPhone 6
        // ************
        // Model(s): A1549, A1586 & A1589
        // Apple Tech specs: https://support.apple.com/kb/SP705
        if ([platform isEqualToString:@"iPhone7,2"])
            return @"iPhone 6";
        
        // ************
        // iPhone 6 Plus
        // ************
        // Model(s): A1522, A1524 & A1593
        // Apple Tech specs: https://support.apple.com/kb/SP706
        if ([platform isEqualToString:@"iPhone7,1"])
            return @"iPhone 6 Plus";
        
        // ************
        // iPhone 6S
        // ************
        // Model(s): A1633, A1688 & A1700
        // Apple Tech specs: https://support.apple.com/kb/SP726
        if ([platform isEqualToString:@"iPhone8,1"])
            return @"iPhone 6S";
        
        // ************
        // iPhone 6S Plus
        // ************
        // Model(s): A1634, A1687 & A1699
        // Apple Tech specs: https://support.apple.com/kb/SP727
        if ([platform isEqualToString:@"iPhone8,2"])
            return @"iPhone 6S Plus";
        
        // ************
        // iPhone SE
        // ************
        // Model(s): A1662 & A1723
        // Apple Tech specs: https://support.apple.com/kb/SP738
        if ([platform isEqualToString:@"iPhone8,4"])
            return @"iPhone SE";
        
        // ************
        // iPhone 7
        // ************
        // Model(s): A1660, A1778, A1779 & A1780
        // Apple Tech specs: https://support.apple.com/kb/SP743
        if ([platform isEqualToString:@"iPhone9,1"] || [platform isEqualToString:@"iPhone9,3"])
            return @"iPhone 7";
        
        // ************
        // iPhone 7
        // ************
        // Model(s): A1661, A1784, A1785 and A1786
        // Apple Tech specs: https://support.apple.com/kb/SP744
        if ([platform isEqualToString:@"iPhone9,2"] || [platform isEqualToString:@"iPhone9,4"])
            return @"iPhone 7 Plus";
        
        // ************
        // iPhone 8
        // ************
        // Model(s): A1863, A1905, A1906 & A1907
        // Apple Tech specs: https://support.apple.com/kb/SP767
        if ([platform isEqualToString:@"iPhone10,1"] || [platform isEqualToString:@"iPhone10,4"])
            return @"iPhone 8";
        
        // ************
        // iPhone 8 Plus
        // ************
        // Model(s): A1864, A1897, A1898 & A1899
        // Apple Tech specs: https://support.apple.com/kb/SP768
        if ([platform isEqualToString:@"iPhone10,2"] || [platform isEqualToString:@"iPhone10,5"])
            return @"iPhone 8 Plus";
        
        // ************
        // iPhone X
        // ************
        // Model(s): A1865, A1901 & A1902
        // Apple Tech specs: https://support.apple.com/kb/SP770
        if ([platform isEqualToString:@"iPhone10,3"] || [platform isEqualToString:@"iPhone10,6"])
            return @"iPhone X";
        
        // ************
        // iPhone XR
        // ************
        // Model(s): A1984, A2105, A2106 & A2108
        // Apple Tech specs: https://support.apple.com/kb/SP781
        if ([platform isEqualToString:@"iPhone11,8"])
            return @"iPhone XR";
        
        // ************
        // iPhone XS Max
        // ************
        // Model(s): A1921, A2101, A2102 & A2104
        // Apple Tech specs: https://support.apple.com/kb/SP780
        if ([platform isEqualToString:@"iPhone11,4"] || [platform isEqualToString:@"iPhone11,6"])
            return @"iPhone XS Max";
        
        // ************
        // iPhone XS
        // ************
        // Model(s): A1920, A2097, A2098 & A2100
        // Apple Tech specs: https://support.apple.com/kb/SP779
        if ([platform isEqualToString:@"iPhone11,2"])
            return @"iPhone XS";
    }
    
    if ([platform hasPrefix:@"iPod"])
    {
        // ************
        // iPod touch
        // ************
        // Model(s): A1213
        // Apple Tech specs: https://support.apple.com/kb/SP3
        if ([platform isEqualToString:@"iPod1,1"])
            return @"iPod touch";
        
        // ************
        // iPod touch 2G
        // ************
        // Model(s): A1288
        // Apple Tech specs: https://support.apple.com/kb/SP496
        if ([platform isEqualToString:@"iPod2,1"])
            return @"iPod touch 2G";
        
        // ************
        // iPod touch 3G
        // ************
        // Model(s): A1318
        // Apple Tech specs: https://support.apple.com/kb/SP570
        if ([platform isEqualToString:@"iPod3,1"])
            return @"iPod touch 3G";
        
        // ************
        // iPod touch 4G
        // ************
        // Model(s): A1367
        // Apple Tech specs: https://support.apple.com/kb/SP594
        if ([platform isEqualToString:@"iPod4,1"])
            return @"iPod touch 4G";
        
        // ************
        // iPod touch 5G
        // ************
        // Model(s): A1421 & A1509
        // Apple Tech specs: (A1421) https://support.apple.com/kb/SP657 & (A1509) https://support.apple.com/kb/SP675
        if ([platform isEqualToString:@"iPod5,1"])
            return @"iPod touch 5G";
        
        // ************
        // iPod touch 6G
        // ************
        // Model(s): A1574
        // Apple Tech specs: (A1574) https://support.apple.com/kb/SP720
        if ([platform isEqualToString:@"iPod7,1"])
            return @"iPod touch 6G";
    }
    
    if ([platform hasPrefix:@"iPad"])
    {
        // ************
        // iPad
        // ************
        // Model(s): A1219 (WiFi) & A1337 (GSM)
        // Apple Tech specs: https://support.apple.com/kb/SP580
        if ([platform isEqualToString:@"iPad1,1"])
            return @"iPad";
        
        // ************
        // iPad 2
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP622
        // Model(s): A1395
        if ([platform isEqualToString:@"iPad2,1"])
            return @"iPad 2 WiFi";
        // Model(s): A1396
        if ([platform isEqualToString:@"iPad2,2"])
            return @"iPad 2 GSM";
        // Model(s): A1397
        if ([platform isEqualToString:@"iPad2,3"])
            return @"iPad 2 CDMA";
        // Model(s): A1395
        if ([platform isEqualToString:@"iPad2,4"])
            return @"iPad 2 Wifi";
        
        // ************
        // iPad 3
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP647
        // Model(s): A1416
        if ([platform isEqualToString:@"iPad3,1"])
            return @"iPad 3 WiFi";
        // Model(s): A1403
        if ([platform isEqualToString:@"iPad3,2"])
            return @"iPad 3 Wi-Fi + Cellular (VZ)";
        // Model(s): A1430
        if ([platform isEqualToString:@"iPad3,3"])
            return @"iPad 3 Wi-Fi + Cellular";
        
        // ************
        // iPad 4
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP662
        // Model(s): A1458
        if ([platform isEqualToString:@"iPad3,4"])
            return @"iPad 4 Wifi";
        // Model(s): A1459
        if ([platform isEqualToString:@"iPad3,5"])
            return @"iPad 4 Wi-Fi + Cellular";
        // Model(s): A1460
        if ([platform isEqualToString:@"iPad3,6"])
            return @"iPad 4 Wi-Fi + Cellular (MM)";
        
        // ************
        // iPad (9.7 inch - 5th generation)
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP751
        // Model(s): A1822
        if ([platform isEqualToString:@"iPad6,11"])
            return @"iPad 5 Wi-Fi";
        // Model(s): A1823
        if ([platform isEqualToString:@"iPad6,12"])
            return @"iPad 5 Wi-Fi + Cellular";
        
        // ************
        // iPad (9.7 inch - 6th generation 2018)
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP774
        // Model(s): A1893
        if ([platform isEqualToString:@"iPad7,5"])
            return @"iPad 6 Wi-Fi";
        // Model(s): A1954
        if ([platform isEqualToString:@"iPad7,6"])
            return @"iPad 6 Wi-Fi + Cellular";
        
        // ************
        // iPad Air
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP692
        // Model(s): A1474
        if ([platform isEqualToString:@"iPad4,1"])
            return @"iPad Air Wifi";
        // Model(s): A1475
        if ([platform isEqualToString:@"iPad4,2"])
            return @"iPad Air Wi-Fi + Cellular";
        // Model(s): A1476
        if ([platform isEqualToString:@"iPad4,3"])
            return @"iPad Air Wi-Fi + Cellular (TD-LTE)";
        
        // ************
        // iPad Air 2
        // ************
        // Apple Tech specs:
        // Model(s): A1566
        if ([platform isEqualToString:@"iPad5,3"])
            return @"iPad Air 2";
        // Model(s): A1567
        if ([platform isEqualToString:@"iPad5,4"])
            return @"iPad Air 2 Wi-Fi + Cellular";
        
        // ************
        // iPad mini
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP661
        // Model(s): A1432
        if ([platform isEqualToString:@"iPad2,5"])
            return @"iPad mini Wifi";
        // Model(s): A1454
        if ([platform isEqualToString:@"iPad2,6"])
            return @"iPad mini Wi-Fi + Cellular";
        // Model(s): A1455
        if ([platform isEqualToString:@"iPad2,7"])
            return @"iPad mini Wi-Fi + Cellular (MM)";
        
        // ************
        // iPad mini 2
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP693
        // Model(s): A1489
        if ([platform isEqualToString:@"iPad4,4"])
            return @"iPad mini 2 Wifi";
        // Model(s): A1490
        if ([platform isEqualToString:@"iPad4,5"])
            return @"iPad mini 2 Wi-Fi + Cellular";
        // Model(s): A1491
        if ([platform isEqualToString:@"iPad4,6"])
            return @"iPad mini 2 Wi-Fi + Cellular (TD-LTE)";
        
        // ************
        // iPad mini 3
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP709
        // Model(s): A1599
        if ([platform isEqualToString:@"iPad4,7"])
            return @"iPad mini 3 Wifi";
        // Model(s): A1600
        if ([platform isEqualToString:@"iPad4,8"])
            return @"iPad mini 3 Wi-Fi + Cellular";
        // Model(s): A1601
        if ([platform isEqualToString:@"iPad4,9"])
            return @"iPad mini 3 Wi-Fi + Cellular (TD-LTE)";
        
        // ************
        // iPad mini 4
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP725
        // Model(s): A1538
        if ([platform isEqualToString:@"iPad5,1"])
            return @"iPad mini 4";
        // Model(s): A1550
        if ([platform isEqualToString:@"iPad5,2"])
            return @"iPad mini 4 Wi-Fi + Cellular";
        
        // ************
        // iPad Pro (9.7 inch)
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP739
        // Model(s): A1673
        if ([platform isEqualToString:@"iPad6,3"])
            return @"iPad Pro (9.7-inch)";
        // Model(s): A1674, A1675 (Wi-Fi + Cellular)
        if ([platform isEqualToString:@"iPad6,4"])
            return @"iPad Pro (9.7-inch) Wi-Fi + Cellular";
        
        // ************
        // iPad Pro (10.5-inch)
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP762
        // Model(s): A1701
        if ([platform isEqualToString:@"iPad7,3"])
            return @"iPad Pro (10.5-inch)";
        // Model(s): A1709, A1852 (China only)
        if ([platform isEqualToString:@"iPad7,4"])
            return @"iPad Pro (10.5-inch) Wi-Fi + Cellular";
        
        // ************
        // iPad Pro 12.9-inch
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP723
        // Model(s): A1584 (Wi-Fi)
        if ([platform isEqualToString:@"iPad6,7"])
            return @"iPad Pro 12.9-inch";
        // Model(s): A1652 (Wi-Fi + Cellular)
        if ([platform isEqualToString:@"iPad6,8"])
            return @"iPad Pro 12.9-inch Wi-Fi + Cellular";
        
        // ************
        // iPad Pro 12.9-inch (2nd generation)
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP761
        // Model(s): A1670
        if ([platform isEqualToString:@"iPad7,1"])
            return @"iPad Pro 12.9-inch (2nd generation)";
        // Model(s): A1671, A1821 (China only)
        if ([platform isEqualToString:@"iPad7,2"])
            return @"iPad Pro 12.9-inch (2nd generation) Wi-Fi + Cellular";
        
        // ************
        // iPad Pro 12.9-inch (3rd generation)
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP785
        // Model(s): A1876
        if ([platform isEqualToString:@"iPad8,5"] || [platform isEqualToString:@"iPad8,6"])
            return @"iPad Pro 12.9-inch (3rd generation)";
        // Model(s): A1895, A1983 & A2014
        if ([platform isEqualToString:@"iPad8,7"] || [platform isEqualToString:@"iPad8,8"])
            return @"iPad Pro 12.9-inch (3rd generation Wi-Fi + Cellular)";
        
        // ************
        // iPad Pro 11-inch
        // ************
        // Apple Tech specs: https://support.apple.com/kb/SP784
        // Model(s): A1980
        if ([platform isEqualToString:@"iPad8,1"] || [platform isEqualToString:@"iPad8,2"])
            return @"iPad Pro 11-inch";
        // Model(s): A1934, A1979 & A2013
        if ([platform isEqualToString:@"iPad8,3"] || [platform isEqualToString:@"iPad8,4"])
            return @"iPad Pro 11-inch Wi-Fi + Cellular";
    }
    
    if ([platform hasPrefix:@"AppleTV"])
    {
        return @"Apple TV";
    }
        
    if ([platform hasPrefix:@"Watch"])
    {
        return @"Apple Watch";
    }
    
    if ([platform isEqualToString:@"i386"] || [platform isEqualToString:@"x86_64"])
        return @"Simulator";
    
    return @"Unknown";
}

@end
