Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C13750D861
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 06:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFD5211210B;
	Mon, 25 Apr 2022 04:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1056711210B
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Apr 2022 04:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650860771; x=1682396771;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4SWF3KOoANxYwVzN1Po/4uv3wdfc/fk2vBpMSM7cuJI=;
 b=d3E/84s1APuOK2eTmwyZvZX3fSq+95U5vCiQgaXqenV+ArT2p28PFRMc
 xlkZEogV1Y7xwPV0FIo6lvxIuV/R6CPhVbem278Yleo7iheTqWx0pm+vL
 qA1kcK3e+A0+ioacTJ+r92IoOmRlxXmb7lplyw8z0SLmppnDL+vGv037l
 QdpFz6eha3sAqXtcCvP0WmXDPDT2TLGTUrO7OVQcTS/jL1YYCG7XouT0n
 9qQXOL3gFY8sDAZicojUlL0NVySNDOC5H5EDe9/dTgRz5JoB5lYrLIdxH
 4Cc8W6LcT9/y82xQ7lTKc0f8+RJxXcZ0vE9bEFmR+umaJOUxPrPDtuAE9 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="290270201"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="290270201"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 21:26:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="871868506"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 24 Apr 2022 21:26:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 24 Apr 2022 21:26:10 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 24 Apr 2022 21:26:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sun, 24 Apr 2022 21:26:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sun, 24 Apr 2022 21:26:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y73U6p/8gdLnGG2SXfez5xR16UM5VJBKbc/zY4p3e9oEg4FC1rr2rV34t4TxjJG7Ji0fQNK7XXUp2qaZNj2D96A1KFRUIThvGF4KcqEvy2PRszMKirWkpd631KxXMutKO/ujlgzsP97yivc1IAsCJLg2SCLwXyAur5Mhq+8nvQD291sm2GNPJog8pmQVaBm0TC+rizFKd0Zg55GSr8QSse6DFysd09yWlG9gRXlYbhgP9fXwTg39gLo+Nt5EnU9GRgY1STeBfq+YG6niD+G+/War1zaD87S73gwXdSW0s/EqylFaJBLAunZiAc2QGW+DZWdDJpopMgF5IOvYmE+fBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0LvvzNagrrxqcbVAjMYD4Has2cL87d/sS8U5dc685M8=;
 b=SBHZCme+lb0Vazjr85QTtuSpjV67subFEVb06FAYTRBgo3q3XwHHnNF1eVXuJv8C8GppB4MPPR8U98DgxuQy0GXHXXMjO/dJrFuptK+8hq0Tik8+4WwOc/+Ppy2X2GmncYt5woJ4LRdbOwGUWDCAsQoi0+zJ0EuWI8kBiMGvp7efawoSpNY8Y7h8FgnyHT/4hEH5ixgHeXuV6CIoCapLmNF/hdzWbvW4bxBUNERwKJs5kn03BGPK9cF6slhLw6n/agHMI2PLrl+klWrwPWIMNCDBukqfksHIaHGobyLx1dmZG7eAf0gEA0yDx7w57Dr3S9dnl/2XF8ke8Nef2jtxHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SN6PR11MB2798.namprd11.prod.outlook.com (2603:10b6:805:58::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Mon, 25 Apr
 2022 04:26:08 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::c44d:36f9:ee75:cf46]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::c44d:36f9:ee75:cf46%9]) with mapi id 15.20.5186.021; Mon, 25 Apr 2022
 04:26:07 +0000
Message-ID: <5708a76e-8a8b-c4b8-7d93-a265dc7e18ec@intel.com>
Date: Mon, 25 Apr 2022 09:55:57 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20220422133752.1370964-1-badal.nilawar@intel.com>
 <YmLLCLW5R9xzfAAz@mdroper-desk1.amr.corp.intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <YmLLCLW5R9xzfAAz@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0044.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:49::19) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee34e9d9-fb06-43f6-bc51-08da2673b7b8
X-MS-TrafficTypeDiagnostic: SN6PR11MB2798:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <SN6PR11MB2798B5796BB0F85B5AF01AD4E5F89@SN6PR11MB2798.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n9uCrwo7fEWPpbZ+7jREgNFn0jsEshI0hCPvaSHGsfCjE5PrpBZwSJvROyNyQbEQCZs8MoTtmnOK4oXpKupmBFTosABz8x2Bhs6FVq0oh5PAWcYwR625vbhdEYvpz3bhEGwGESQfSGBwniylAaHL8kqlWOmX+nf5I8GIYrOS7drqCzVKDwr90Us7PbarzylEdTEL96e9WqlgL1jI8A47jcpLv6ePKZFeBEnPSNbkTvGVEjQ6M/cfm75BJ8rk3r6HeWOhJOwdT8T8MpW3d/ChjqtYt3V6eG1kbX6BV1ozfWI8G8YNN+U7tnSxQ7CX0INw1kJRPcizLV5QFiemrMjySc27ARWRTrptCvJMeljg08xjyNwWj0zW3OHpPqVGg+ral9QrHjk5iy+1ZMRfnqd/UMlS9yMPP4CRzm02RSyypS59dvggkSp4/hMsTm/LcZX4O1UYKbP8kGwHMOm7ZPNA0OGM41NneV3m575syG1rN6WfVufNyGSxlbbP31zLZATStrXm2d+PiRyYyzRxa0wiPmbTrL/s7T6yM9Qe4p6OQV9feDqhaVirAD/ePDJNke/BZvvQtUcwasuXIX2FZs1G1sou5YxVUn/XnkDf3nlGxT5Mr/NCIXxkTlqY1dUtQQmXYWhhLAJIRXdoBmedubHhwzl4l/MK5XyQF3shoti13hUJPmzXlKHJl5hz3SP9jVd0PDaiSZnqnLunnjzsG69vn/kByHLR4wMt5IWSQFnz+owrf6RLu2qWDYt2h4e+A2xw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4326008)(66946007)(66556008)(66476007)(8676002)(186003)(38100700002)(36756003)(31696002)(26005)(6506007)(6666004)(6512007)(6636002)(53546011)(316002)(5660300002)(6862004)(2616005)(86362001)(6486002)(37006003)(107886003)(2906002)(83380400001)(82960400001)(31686004)(508600001)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dHFGOFJkOHl0OTlad1VtSTdqSHNJZWs0Ylk0Z1hlYWQ2UzlCY2tMMWdmOUp1?=
 =?utf-8?B?MXk2THordTVUTWQzMmpvOTZDTGhudU9WbkZtMlg5L2NzK1M2UEdFL2lyTGZZ?=
 =?utf-8?B?R1ZYcmR2c1Q0Vmw2ZVByampSNGdaVEVaWVIwdmZvMzZHa2g1V2pST1V3TEJT?=
 =?utf-8?B?bTBaUEVQUVRzN1ZjSGd6YnFmNUc2MGJZSWxTeDZsSWFNQkwxaGtzdm1qd3Mz?=
 =?utf-8?B?aVZUUFNITW5iakxqS1h1UFZHczVTVEhxYWpSMzBtQ3lhdEN0M2dIMEViVzk5?=
 =?utf-8?B?dlZvRHZjVGxYY2tuZVM3MEQrNDcyeUsxN0pST0F1YXEvbzVJZEZBRUkrQ3NI?=
 =?utf-8?B?NG5YUWU4b3ExSmQySnN1dVZjSVRZYzlTZ0h5dzh1UU9KRFQ3QTNSTWh1YitQ?=
 =?utf-8?B?L1ZweEgvQVhTV1gyamloSmhhUWIrZ3BhdWlXa3I3WkRGQTdzQ1NlKzQ3OGd1?=
 =?utf-8?B?cFNVOU8va0wvSjZVcDlrZUw0WWpWcTVvQmo0Z0pSYjdYK3licm83eHIrcEpp?=
 =?utf-8?B?dzJTNnR2VHh6bERJWmo0cE4yZnRUWDV5YS9Ia3V0amEzb3Nxb3UyUGl4WkxS?=
 =?utf-8?B?TlRlMk45SkpHZ1RmU1FDdEFmVTdnRVVFK2NLM0pyMlR4cUxuTktWdnBNdWxH?=
 =?utf-8?B?SGZlMEVGRGxNTkhnSjNGaitTSWVhcVluSVkxT0s2SHZIaUxudDZyWDdPaXov?=
 =?utf-8?B?a3lxL1dyS0YxRGZyREc1QW1iNXpVM3hXVEFHcHdjT1I0OWhwVFZWcTczOWFI?=
 =?utf-8?B?eGNaUjJISWFhY0lTNmlBZEFLalRaTTE2ajF1d3M3dGRsUmEyKzJpb1FJcEhy?=
 =?utf-8?B?bHVuRkxjeE01VlVvdHk2dW1uVWJOWWdXUURyeVBodVpuOE1zN2FzWWxjVDBT?=
 =?utf-8?B?MnVKYmJqd2puYU9RbTgzK1h3UjNHVHNrQVpGRTVoOWcvWGhHUzh1VzVHUDFi?=
 =?utf-8?B?Y0ovaDBhK2laaFQ4QTlma3U4bXdzYkhZb2JyWTVQRzludUdmQ24yaHZkRCtn?=
 =?utf-8?B?cDJUMGtsNEZLdnpPYW1ZaVp1dmlsdm5sdVJqd056RkVzZnQ3bEtlZHBta0Zh?=
 =?utf-8?B?UG1UbFFsKzZNUVF1K1M5OHVXMVpzc3dMS0t5ZjMwWldCOU1TNE9laE93VS82?=
 =?utf-8?B?eDBMYkNZTjJGbG85WDJOK1hPV0hINkx6RGhwellGK25rNU1xT29Cdjd6Rmht?=
 =?utf-8?B?TVQyS3YrdSt6Q0Y1Tlg5UTB5VHE1alY5Rm1ZSFhEaS9LZTVxWW1oN0RtMUFr?=
 =?utf-8?B?L3BPOENkZUp1SEFiNTA1a1ROaG1ZWmlhNW5lTzU2NllhTUVreFh6b215UHFq?=
 =?utf-8?B?UjlKdCsrOWl1NkdUSVFyczFIb3VpSFNUOTFnd3VKajEvOGc3Q01rRGhQa3hO?=
 =?utf-8?B?ek9sUVgvbWtPT3RpQ3NPblU5MFNaS2Z5UStBeWhPMDZ4dk9GOFU2RWc1VDZr?=
 =?utf-8?B?QThzNVMxM2creGZVV3FnR1hvSk95cStoOUI5MFk1K09qeUREdlV1ZmdFT2l3?=
 =?utf-8?B?ckxtc2NvRG00cU5JVUVDdmFhN09OY1RaRUs3enVqV3VlUTZ4bGRtVmdraDZT?=
 =?utf-8?B?VUwwdkFhZWprRm9WT2ZlYU12ZkJGcEZ6cUJpdHVCMS9KdU5zT09CczRUandO?=
 =?utf-8?B?YU5YcnFIanhzOXgxNkJRWnpTeThnd2hyVE5aeFg3U1I0SHFGMFlvdkxnZVhD?=
 =?utf-8?B?eENSbkRFR2ZxTzducmtBaXVyeFBDSXdKYndJTmo1eUF1QjQ2VGNaWmJNVkRw?=
 =?utf-8?B?RFVndjNoWVlBR1NqNVQyaTR0TXZnY0xxSG01Q0dnQzdvS1FNZ1RuOGVVK2do?=
 =?utf-8?B?ZEdjY0J6YmUxNXZBckFhd1hDK2JUa3VFemV5UjdRb0dxbkNtcmFscTJ5VHc2?=
 =?utf-8?B?RG9OTHVRZzQzU2RLQkFmeDhSSUg4b1U5KzI4dlVxdUtITTh5MVpjRi9TeDBS?=
 =?utf-8?B?T01WS3Jia3JCQ3dXcTdMa1dnSzZFVk9yQ2g3eUJVK3Vab0F3ZlZRdEdacFJE?=
 =?utf-8?B?T2JLU0dicEl2QWRCU1dqZHBmY3VCeERRME1USmJYZFowY2FRMUN5ZzBaVmd5?=
 =?utf-8?B?dDBIQ3QvTk5rZjJLZFlTWHdDTnU0Z1diYkdDVGhyU3YrU3ZjRFJhQytsVGJa?=
 =?utf-8?B?T2NjLzN0MENqWUJMNjV3bGoybWo3ZW1JcG83UVR5b1dZcVhuZDFuVnVpSjZO?=
 =?utf-8?B?Yys0UUg1Z01mZGdTMEEwdW1GeE5VcTE4dnBDQWlCQ0diVGhEN3BrRVBZcHFS?=
 =?utf-8?B?bDRrMEx0MTFCRlUxNS8rWmtKaE1adG9JWjdVQVkxQ20yTjYrSHpweUc2TWVh?=
 =?utf-8?B?NXlDa2ZXZnQ3aDRCdnJlZTRjWDNUU2EwZFdyWUZOQW9LU25GZlhWRFFHTDJM?=
 =?utf-8?Q?LShURN18qgWV6oNk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ee34e9d9-fb06-43f6-bc51-08da2673b7b8
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 04:26:07.4902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W0QtPnl4jG2r1K7Qc1DTJepqLiBwEX0PhM7hsnUbLDFG5MfPQZte2dK8M11WHZXlrtl4VLDf9TlnBUkLVvDXig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2798
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC] drm/i915/rc6: Access RC6 regs with forcewake
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 22-04-2022 21:04, Matt Roper wrote:
> On Fri, Apr 22, 2022 at 07:07:52PM +0530, Badal Nilawar wrote:
>> To access RC6 related MMIO regs use intel_uncore_write(), which grabs
>> forcewake if reg requires a forcewake.
>>
>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> index b4770690e794..9edaad3f19b5 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>> @@ -55,7 +55,7 @@ static struct drm_i915_private *rc6_to_i915(struct intel_rc6 *rc)
>>   
>>   static void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
>>   {
>> -	intel_uncore_write_fw(uncore, reg, val);
>> +	intel_uncore_write(uncore, reg, val);
> 
> The set() function is primarily used within the *_rc6_enable() functions.
> Those are all called via intel_rc6_enable() which has already
> grabbed explicit forcewake before calling them:
> 
>          intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
> 
> so there's no need to grab an additional reference on every register
> access.  Likewise, the call in vlv_residency_raw() doesn't need
> forcewake because its own caller (intel_rc6_residency_ns) has already
> acquired it.
> 
> I think the call in intel_rc6_unpark() is the only one that might be
> questionable from a very quick skim of the code.  So rather than
> needlessly grabbing forcewake in all the other spots, it's probably
> better to just replace that single call with a direct call to
> intel_uncore_write() if it actually is problematic.
> 
> Even better, we might just want to drop the set() wrapper completely and
> replace all instances with the appropriate intel_uncore_write[_fw]
> calls; I don't really see the slightly shorter lines the wrapper gives
> us as being worth the deviation from the rest of the driver's code
> (especially if it's causing us confusion about what the intendended
> forcewake semantics are).
> 
Thanks for clarification.
The change in set() function was done for inte_rc6_unpark/park() only 
since 0xA090 RC6_CTRL is getting written without forcewake. For now as 
you suggested in inte_rc6_unpark/park() I will replace set() with 
intel_uncore_write().

Regards,
Badal
> 
> Matt
> 
>>   }
>>   
>>   static void gen11_rc6_enable(struct intel_rc6 *rc6)
>> -- 
>> 2.25.1
>>
> 
