Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0B055F564
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 06:45:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E8511A837;
	Wed, 29 Jun 2022 04:45:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8502A11A837
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 04:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656477939; x=1688013939;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EFEJ/vYi9BpnAWwVgQfvsbc3SeOS1f3ifMpUQOu4ePA=;
 b=NWMNRNyZp7eRqJUZQXNnBdZjLhAb0F8ou4GRBLSn7zwaiErkJJcqpaD9
 R+uYaOEPtEXzUpw2b07O5dp0wd2jpzTDVcwVkj+X30JNSzKo+vNILVPDl
 SQZDxpYPKbiuugAZNXiq19irZOq++WvPpAHGk7Ey7beGgubFOq2LM1zeJ
 2l75E2wtyAFRtbzib1zPk9Tnjl1klL/rrE1qkWvqDGNT1fPhnwxd6WtPb
 PYf/UigDh1BNY0X7btSmZQMwvhssrhacMFweVOwZ309E1P/Tr/PCFEJHA
 RFe/Fk2Vvt0y4rWYck2lbXkn9CmVmj7B5dO95pETRw58a0AHM2nhhqGDO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="261722652"
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="261722652"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 21:45:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="588120543"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 28 Jun 2022 21:45:38 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 21:45:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 21:45:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 21:45:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 21:45:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JbphXlPGpWhjO/MzUlmFOMY7E8isvULTMIRXlPG3wRqUf2HilxTxvlXyOerbHXPXHxMnEoaKqGZPjgrw/phnVkffHmvJlCr9QT2dMCD9MDGi0YVaKltHe5T6kgmOVtE3uwq8MosO7L7jtOb3OIxArOUXyXZndW1FoXhi/vYjwYEEoWjYbs/AA7V7ixv5jHB2jQr480iweQJ8RwDm16ckhQTVgLDNYcwGxd3NPPfm/gaeUlg+6g2x/Kj9rn6dlkprYqTFgpMt4TowJmF5BO00AJtVjuh3HxPqYtCVJ5RfGadWlNMDRtjMbL/G8GcwCqn0QGWUyncvl3spCEV012aY1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lh2otvBYT04L8nJDyOzkvHhGBld3tMMtz96JVRc5I2c=;
 b=X0XxCb/c8bqdOxMouJqmUaumAQC8kVBE/eZmK4TFEbWrrAksz1BFqDU8BEZx99Ts2M7poTaFKuWml1bi+djo1LLHF25LqlooCWWQMWFAB8pKzZiiV79KQ2RK2Bh9qf3QTUxDib6GDyfJ8VL5HGgbcQikOgwcAsb3bW6UYVtXDrSgxSV7Wi6KK5Zvs7JMAZ2WUZXjd2iQknhUMYlCuy5+Aze0vh3cvmvbkm4YNBVNS3rkKZp6fbsjcO+lD+giUJshgneZi9lDqfpXD4fkq/FEDN05dLKxuk+ZFOLWVsL0xKWeADFudzwvii0w7iquPCyESgr6q/UEictZXSC8sKwsWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5152.namprd11.prod.outlook.com (2603:10b6:a03:2ae::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.15; Wed, 29 Jun
 2022 04:45:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::f56c:97ff:6b9a:7dcd]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::f56c:97ff:6b9a:7dcd%3]) with mapi id 15.20.5373.018; Wed, 29 Jun 2022
 04:45:36 +0000
Message-ID: <a202b003-c306-9737-0254-1415e971a951@intel.com>
Date: Wed, 29 Jun 2022 10:15:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220624034631.533690-1-ankit.k.nautiyal@intel.com>
 <DM6PR11MB31771D6FC2961EB03EC7C2CFBABB9@DM6PR11MB3177.namprd11.prod.outlook.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DM6PR11MB31771D6FC2961EB03EC7C2CFBABB9@DM6PR11MB3177.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0234.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a0b2734a-307d-4591-6140-08da598a3504
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5152:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h/ZozqE8kTI77IHfmKuo0x9+BFfacAWRCTvZnXZCbOdQkNlRfaQjUX2jjM3rY7Oc3jOYyy1JM6wHqgC7N7CGoJE4sI62zJ/8i5c82Lg2OvlUQ2BB9f9Go7AuDECaMTAwO2WJOarWXMVsxg/Vcy0p22ucLy6QiryxPfa1LxwWMsHTMIppH9JJv7PKcwV+KJMkwXw5HbEmZXOeyVT9cBkAdk05v+CAJNYCIqtwgoKT3NDOqS9KVRTzihjfB0qVSaX4JfySbfsNKV0ybhecDzv+BUP3/xyR9xYtiCT5shsvZtzD9WLCe7JHk5Gtv7LkSvaJc/81xaNkWGM1txjBcP1yKke1EzaDubw8FyYVZaONxu4oOIeggvkXIWgBGWGpCK09aOAOyuGRtI7bxjU7WaeyAGl5w5ggtILroPnbguQMPaoIOzCCP2mEnIjk6Av/VMvv8pLQf4NKMoPmP7hCzGtp1qZdm/KQHiVteOIN3LbSvl8ds1T9lLdv9I/buX3yoCVeeRL4i/pFv4fwb07VwN2r1GaPjsVxrztKw0VN7kGtIoZ53dVCb8ym6I83cN0tNKsjD4jp+cgKo9oJP9ZrFaTbr/HjUyQXU0aof6NSxOV2WxPB+iFrq3npUs1SjNBj2pni5crvuOBMb5Il8+LaLa5WXdvy8KOxThIrUBZL8LtBO1duw450Pv6Pcr4IV2aDlG9md7K7lRuLVp8EpsFctljdrPZX2bDJiEmTMhRgavHrJbs0JGiW+491JNvqYUHnT826wYpKzSEi3shO95cC3jTjPG2JNV+i18eqrYLaH7lxHNnHyArJN7qmNy/9N2TszRbM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(136003)(39860400002)(346002)(376002)(55236004)(86362001)(6486002)(31696002)(31686004)(8676002)(66946007)(6666004)(26005)(38100700002)(53546011)(110136005)(316002)(6506007)(478600001)(8936002)(66556008)(5660300002)(66476007)(82960400001)(4744005)(36756003)(186003)(6512007)(2616005)(2906002)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTdJSmtvRHNWbU1hODl5VFhOL1phc2ZnUksra1Q3M1RlZWdKRHRMWDZMa0N4?=
 =?utf-8?B?bm81Mm91bUE0SmZjOW55ek12K2FDQ3FPNDZMamVLS3lXOVdUMXpzUGhlSVI0?=
 =?utf-8?B?b05sazlKeWF2KzVOb2VSUnpFbmRZd3VmUzl6T1o0cUNTTGVDY3UySkh3aFNY?=
 =?utf-8?B?UWViVUgxd1dDaFdCN3lnRHdvWUc3ZFNxR1N3c1dkMEl1cGdZU0dKMmE5Wnha?=
 =?utf-8?B?V2pZc2daNEQ2Tkd2M21YUmhJVUsvbE91bTJVd2hGTjA5VEZGV2FISGlSMWky?=
 =?utf-8?B?MlNzVFd4V0twblZtUFhFcCtlM05QRFJSMnNTcnpzMHRWa1NWSy9LVTl1dk9C?=
 =?utf-8?B?djZFbTBXRzNnaUdPR1ZNWWljNVdUYnpYT2xLTmVyb0U4RjMvVFBnalJCb3RW?=
 =?utf-8?B?MXBGYjBpdEhMUGlQLy9SY0xCWVVOTXFSUXJXYlQ1VllZdGw1T1pnQUdmVTdP?=
 =?utf-8?B?MmJHdlBRMFdNbU4xU0pIVm95TUo1a2xza2dSTU03ck44L0lwTjV0T0hoSkFo?=
 =?utf-8?B?S0dsYVBTNmdSdjhlYlp1b0dobWpJa211TFptZ1htTkMwajFabk9DUlRHYTYz?=
 =?utf-8?B?cnQ4ZW8rMnpWTTlBZ3JyUkRGbDg0TWp1VUQ5aWtpV3ZrclZaNXVOQk1uM1py?=
 =?utf-8?B?TVhqOTc4MDZST3hMeGlTSHpCeE9GSTJFMnpJSXl0Yk1BcVlkaXAzZFRoUnhC?=
 =?utf-8?B?UW55SHNrVEZkcXBtNG1wYkRRaHY1RTIwVGRndmhsQlpGT0JkeVpScWlIUlpo?=
 =?utf-8?B?bWY2RzlKUVUwZkpTMEtOcGhNOW04Z1FXS1NiTmlIbGdBa0Y3U3drRmRFR09S?=
 =?utf-8?B?dkFsUmpyMlozR1UrbUtXbDlUY3BLNFZZVmVIcHk2YUo1dlNSS3NpZXNiMVYz?=
 =?utf-8?B?RVRLckZMWFRtN3prYUJPM2hsS2s5ZUk3bFY4cVF5dTg0Vjk1SkZWMk9qSnhK?=
 =?utf-8?B?OGxmMUpMb2VNeU5GeHUwTW5NN2h6aUFHTmVyY0x2K2xmYWkxVmRuKzQrb1h0?=
 =?utf-8?B?UFF6YkViNW5XQlg5MmR3U1U0bDZnTnhRbWdKWkJCVnBNRmZRSnRDTjBhamE5?=
 =?utf-8?B?RUpvUEhGNGErQlNnVmJlRXRFVFJ5VEtDOFRiZVNyZUk0ZHZ4U3R2enRCNzlr?=
 =?utf-8?B?LzlqU0tWc2ZmUTFYY2ttTyt2TUhqM3NjdzVNeUhUbm53ekhPZTlQTTFjQ1hO?=
 =?utf-8?B?Zzh3VVdwRTgwd29LVS9Hc0lyQjNTc2RGK0ZseFBIbG52U2N1bThoSHNCalEw?=
 =?utf-8?B?Lzl6U3BQdTRzZWh3bTZNK04yT3NocVlFazVjbElRRXpwMTBycE5IUXVzL1Nw?=
 =?utf-8?B?WGhyR2hhb2tHa0NEa3RWMXVPQmQxMVlTbHlyR3lZMFZSQ3ZxeEZ0bDF0aGQ4?=
 =?utf-8?B?dDRKKy9kbnNDcUlKZVYyL0Z6d0pQaWFzMzMzcCtMckhRRjZhdVArMHM5clZH?=
 =?utf-8?B?Y21XNjFmUzF5QUxzVlozOTNCVnp3VmpHWlloUStDdnZlOWpvQTFabUhZYUgz?=
 =?utf-8?B?cUxBdDhXN1c5ZSswbHFMZm9XSzdZU1BaUmFYOEpObStQY3FySXF6Si9UN2R4?=
 =?utf-8?B?bWpBMzN3TlpaUVBpU01sT1puNEpLczJCTitJV0tVS0MybGVrMllGekpOekdD?=
 =?utf-8?B?RDcwNGhHRitQTzlhNDBTbjluUmwwZW5lZkZLTFhrZTlSUDVCTmxxM1VwQU9y?=
 =?utf-8?B?c0s5ck52d3lqSk1wS0UyeHYxTzBuc090MXpqcnR1d0hBY0c5RWhVdWFvYkJ0?=
 =?utf-8?B?ckhwU092RWQxTTVhWDBJYy9MSGJBNUwySlN4cno0a1AwaWxmVFEyZzNKL0VJ?=
 =?utf-8?B?MTlrN3VXQzZDY0tCMUVXYkFOWTAydkxVZFduRkNRemZjSTZtakRXbWdaYnIr?=
 =?utf-8?B?OE5VVGNadUZPRmVHWkFZWE8xOUxrSXd4d1pxaE5WdUJ3WTFlN1hJdnNyYVpM?=
 =?utf-8?B?cm5jZG05TFRWZEg0NWtJU2txcmQ2UjhrWDNtUlJRK1R1QVpSd1dqZDlPM21m?=
 =?utf-8?B?NWM5K3FmZHVjbng0M2p6RG9DaC82WGY1ZWRTS2FYL3BveWZiL3pjUXh2bFRt?=
 =?utf-8?B?TnE2UWY4QjQvSlUyMGVZODJ1VEFOS2JhOXRvKzRaSi9hYmlIRzh5eDRyTk5v?=
 =?utf-8?B?c01FOFNsY28xWlRWdUR5RkRZb2NZMjdkZjBVeXJNTDlMUkduTUZBd1h2LytU?=
 =?utf-8?B?SUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0b2734a-307d-4591-6140-08da598a3504
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2022 04:45:35.9622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tK2wKJNx1Y5lDvPRK8uK+ZLDUfISl4/8k4czsIWkVer+dDUMNynzzTwhmFV/YHoJUwnLpYB8tTIoNYII93gKivxj+FNovrBKXs9iL/vwUkM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5152
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Check for Low voltage IO only
 for eDP
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Arun,

Thanks for the comments. Please find my response inline:

On 6/29/2022 8:55 AM, Murthy, Arun R wrote:
>> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
>> +	if (intel_dp_is_edp(intel_dp))
>>   		return 540000;
> Shouldn't the low voltage check be for both eDP and is low voltage sku?

For JSP/EHL there is SOC PHY restriction for Como phy port with eDP to 
support only HBR2, 5.4GHz.

But the DP can support HBR3 8.1 GHz. Bspec: 32247

So for eDP for this platform we do not check for low voltage IO port.


Regards,

Ankit


>
> Thanks and Regards,
> Arun R Murthy
> --------------------
