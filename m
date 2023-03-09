Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D242E6B23E3
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 13:17:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F62F10E177;
	Thu,  9 Mar 2023 12:17:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 374DA10E809
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 12:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678364237; x=1709900237;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PNUAcIp3N45w81e3TY0km2I575D/hDpKs5axbl9WSkI=;
 b=HnkBtCaqDOEwwIqwFHuiNBAIUIIw0r/GPuG/RkmEQ5pWKUvSZ3J/A8mh
 1RqxAMiN7VcZV7TuB2QtMi10NwSrbOeqL5zmphP282cKgLt+9lA7Md8be
 7vB5XhJXv9bO7WKlv963wfp/+8My/Ye3TfW02C8IHL/roPA0oTNr05oFZ
 3jqdSr0+PY82EsH3q/fgmDyo+wU1Ld96+wkNMG9MiKnTPoY3OTOQoC0Cm
 3r2Gu8nqAEy7JAbWAzqQy9RpcV2vHydgve11+CDUsUEN0jpigh17gMJi1
 X/oW2oRYbpVyjieTEunBoSNC5HziJqNLoQ8rRVAhr5JpKmgLPPU8+A2dq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="320258809"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="320258809"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 04:17:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="679739991"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="679739991"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 09 Mar 2023 04:17:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 04:17:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 04:17:04 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 04:17:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S5olvfFvUfwr1Cjox+AW3o6GCJByadbqIkxt4Wrob1TQ78RNLvBtBPK8wCsJbt/Nj2ZNSc8PUcXd9v686k7absvpn/cr9WAmKLTrmoJJdjJ2lC9DtIUwKMPUB+8sjywKEKczhnK7ScS/lo9c9Lo6XgSjF/rVVwWvPavI2ydrwA7WhZlOPbeXkukKgVg/zDLr4pW8p0ipt61OEkR8ei1USjAqHl+hx+FbB0rWBx5yeu9uAw2vcnkzeeF6N7gXnjYuqgOyVuLCyYxOC+ErUl2DSi29q7vUdaqVMGdDHTy/XZXNgrCmhqMBeVhciTK1PSvX9tUrIpdIeXPVMC5cPcs+dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U25NJH9xKku9BFVSyaEmSGu6QDZrQEfl+t684GCBjp8=;
 b=EA7EfFl7e7920IMN6y5MJelm5hScAy7bjbOYdsOKfpI4Zkqy+H3iqWQgIuVEIiGSJuS8om4Kn3AiqNw4Vx9An5zCmVuC9BHlqj3BRqDGGmqJrJuWfEX4sGgqU0qQHjY4WJENl87KNFa+uBgL8mgLpyb69LQxshHP4p+FO7elc3gLmtzMOoSgbhUHxuI38hz/CH0Fjixc3Xd4d3nTQH43IP5mGAe08Wy+o+gWVR2JWeCP3vMBLAD1MLff07oLaoiU9i3crNHJh4RWt+WM5kQpO/1vnBbFTvQVy7iZc6flaPfijNuDPwvm6vB9xtS7fGc3zNu4iRaTaplxtwDKnLI9pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB5921.namprd11.prod.outlook.com (2603:10b6:806:22a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Thu, 9 Mar
 2023 12:17:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%9]) with mapi id 15.20.6178.019; Thu, 9 Mar 2023
 12:17:00 +0000
Message-ID: <c8eaeaf7-0375-57f5-f74e-9baf46ca2500@intel.com>
Date: Thu, 9 Mar 2023 17:46:51 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
References: <20230223115509.3980226-1-ankit.k.nautiyal@intel.com>
 <ZAm4gw1mgdzEgkiv@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZAm4gw1mgdzEgkiv@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0021.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB5921:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b2fb878-2dc7-4a14-cfa2-08db20982eba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XaMWu/HTut9dex1ILXA3BoZjufOIkfbRsnf6dqMfl86XOlv1noYuvQOD9vdDe6TMXoYHtEpVlvTS49GnKP+JmRs6P4IWgthd5/QI68KbBQaBWF7ZTjVtvUIwolHhC3Op02gkAwMCvq4AGGaQ+WrCSR8bmVGNELgGs0alklpjSBt6wd52XLue/r11v+0KVnqZyqp+J0rW2dtQ0CZBjEwN46pcWwP7f2qMEjebGFUhZwp44n5mkbOoVZKVgphXEOmke6aTz8p1Aot973UzdBnjCiQ+G3FTLRrbSAuiPSXYnho9pkx3bcpVTfeGSTi6K0lEi5WR4LPhK64Vrnb1S/bX6HdqwFhNkOsF3Lujj+8Zpx0z9sw9DjWAKRWebZ76FYk5aeQUdw8ypbFynjXc53EMsdDHnubfATARB1sG2mUwgCgTYRzim3AqQejlRlIsXvC9WnFUK95GLel5AHB24UUzw8bjVRwxGcmpX3R/LRTPY//2yjXeK2WAijEHpRwdyJgXEUgaFvFb5O9nH6PlZhMFMzvbGSDxOp0E2B5Q8GTWE1J+Tr84sR3drkJemTGbO8N1qPiWtQcP0h3ZtsySzjS4UqnpkaHtXGys10lXWWK6r09klPLv+yW96M9kHwT61K2nPO8kn4xVx60jwMK+rcWRqiaIe2VtnqWw7Np4ysgCF7CoRPYPrjg16R5nUG4KyP35Go4KadQqdocA/XxiX8DTq1jMe0XeZ/JXjtN+UYm2HXY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(376002)(366004)(396003)(39860400002)(451199018)(82960400001)(41300700001)(186003)(2906002)(6506007)(6512007)(26005)(53546011)(55236004)(31686004)(6666004)(107886003)(31696002)(2616005)(66556008)(66946007)(66476007)(4326008)(8676002)(6862004)(478600001)(38100700002)(8936002)(6636002)(36756003)(6486002)(316002)(5660300002)(83380400001)(86362001)(37006003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUt5Wk16UVcrVTZHdCtqUGhJOHVRbVZEL0RsRkhqaXprZU1CQ3hnSk51c3Qz?=
 =?utf-8?B?azIrUzhLYnlhWjZvSFhCRnFqN1h5dWdDWDhRYkxCdjlUU2psbGN3ZHQzVlFs?=
 =?utf-8?B?RW1SemZnYzg2WCtXeDlwUUFpWkIrNkZFaEFUZ3h6ZnR2M25HT0xhYi9ySTRm?=
 =?utf-8?B?NHpQRFdiRGJaWWR5WmkwK2pOS3pxaFJ5WG9WMFd4R0RSVXl2Q0xNZDF3Ymg5?=
 =?utf-8?B?dmRIbWZvTk5laHBCRitFdXZHc1hwWGRLR0o4VFA4dC9ndVoxM0VSaHJRQ1VT?=
 =?utf-8?B?WGJ4YmdoMUZsVnF2NlhMdkYxbWRpQWpma2lJWU1Ha0pRUGFwdStpTklUR3Fv?=
 =?utf-8?B?QlBSZUNDdlMvTFhlalhUUEdJYXh6aXM2SjVVVEkzRXQzUnRvbXliV0M2S2wr?=
 =?utf-8?B?TFNKNFJuNmhDTXhoUGJRWUxEZnk4czBheE1wS281RVNHUDE4T3VoMHY1TUlM?=
 =?utf-8?B?OFBGcDJKNEFhZGQzakRZb0ZVbndsTXZITzNuVlQzWktDNXJFNEEvc1NFdXhX?=
 =?utf-8?B?aU9zTXFtOXpGc29pbWFiN0FPekZtaHAvcjV5c1lhRWtIUXBpMDVIbDFtTS9j?=
 =?utf-8?B?WGt0T3pQMjJPU1lMZ29oNXM3Tk1veXpMWXhQZmhYL3EzYmtka1JxOVE5ckow?=
 =?utf-8?B?cUd3d3dDK0VxTnhYd0xRVWJvY0R0Ukl5dDFhai9YM09ucGtub2svWjE3WndB?=
 =?utf-8?B?akZuZjEyQnR5aHhzT2kra2h3a1ZUUXdaamZQb3hWY2Q0azFBbUhacllmclRY?=
 =?utf-8?B?NzRqUlNkRlFpYUZocDRDZ3hIeDJmSFBBL0w1cm1DaWt3QWZEOTMzTW1hb3h3?=
 =?utf-8?B?QlRzeE1TS3dlK0dNODkzK2tWaHllT1FOYmpuUzVJaldhUkQrQms1NTBxNkY3?=
 =?utf-8?B?OFJJYmpJR2hTTTNnUTRSVmlNYUZUejVRelY4R0VDaHJudW40anZ4UHRZN2pW?=
 =?utf-8?B?VzQwaEdGcEEvK1kySVNHS0Y1WnhmWDYvS0N5MHI0Mms5dk9Vb0xUNDcvUjBT?=
 =?utf-8?B?eHppZXpTMmdwRmpiM21XVEdIQlVMSTFlL0hETVFTRjhZSXFKL0RaczRjMVNG?=
 =?utf-8?B?WGRxc05lS1lvWGR5UFp5NVNoWmdpU1lKRmdFb3F4VlFxTnNzeU9ubmUrZkFI?=
 =?utf-8?B?cnhGTWVONXNCaU80cDc4dXlCeFhOVFhwNE1FV3Jiakc1Q0R5T00vemdFZVdD?=
 =?utf-8?B?UHljUnZMYnBYeUFNejIyNVdjRkdDM0ZjR1lCMkV2SmxiYmZiTEY1Vkh5YjBy?=
 =?utf-8?B?REhaaGJnNS9LNlBlQ0lJWUNmNGw4R0lTRE5NWWxybldYRGU1UkIyd1ZKMGNQ?=
 =?utf-8?B?ZDg3d2xBUnF1RDM2N2FaQjhwdU1BSmZQODk2aVdQSU82ejJ2ZnBCbC9sSUNL?=
 =?utf-8?B?MmprTjFRQW1ib2xRYVQwbmxJNm5ObXpieGE1UWl6L3F0V1JTeW9TRXJMRUtB?=
 =?utf-8?B?OWk0a3R3SGtIVGZ6UC9nT0RiekJXSTdMM3o2N3JUODEzNDVCeDdPNGJ0M2dF?=
 =?utf-8?B?OU9VNlIybGFhZm0vSTdoYkg4eSt1Yjh5UmxWZWNISDRGZFBrck5HRm54KzY5?=
 =?utf-8?B?cHd1RFNRenRoTTkrWmI2Z2tvZ0Y3U3Q2eDhlUGp4WUpaNU9HTkZLUFRsOHNL?=
 =?utf-8?B?Vzk4M0RLTjAxekNlSmttYnNNUXZrK0V4ZmVUeExWTndxSGxXK3NJbjBKaGIv?=
 =?utf-8?B?M3hmSHBwWkFIOHphK1huUnRTaDBLeGpIbkNLLzNKSjJWV0JTWDREWUI5M2c0?=
 =?utf-8?B?MTdhNWpHdTc1OVZJbU9EYjJXTU5PTlNzSlNkN2tYZG52aWMrd09FandDanFi?=
 =?utf-8?B?emVST3RobVgzOFR5WWJ1aks4TWVvc043b2U0eFdVWmRoR2p1SXF5MlAySlNE?=
 =?utf-8?B?aDFaZmxYeG4rV0IwZUFJZW9zdDdCT0dtN29qejFCNW1hMmhucGpjUkZzM25I?=
 =?utf-8?B?eC9sNWNBekVVcDQ0Y1R0ZUlBSW9VWUwvQldGRVZkOVRhczM3Sm1ncDI1ODZz?=
 =?utf-8?B?N2pyZE1UWFZJK1p5T2NlNU5tdzAwc1l6Q0xxRFg1bTV1dmRTdVJjSklLUk5Z?=
 =?utf-8?B?RWRjUmtaWG9COE85ZC92V21ELzNoUG1Jc2daSlFDaXIwNkxMY2wzRU94NXlJ?=
 =?utf-8?B?RzZxaXExb0ZaeDNGNkNzWG5BVldEUWxiYlR5N1cxRWlhNzUvRXAzSFA0VVN2?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b2fb878-2dc7-4a14-cfa2-08db20982eba
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 12:16:59.7619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NjuynuDP6n2K+n8Z5IOgaEZeL7oyag8Lyc/8zNw+T7PMgka77H1hmYMbapk4KX3d6O1ssLuUG+nkW6iTamgfHPT2WXVq1QDQEl49YLhDrhg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5921
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Don't roundup max bpp,
 while computing compressed bpp
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks Stan for the review.

On 3/9/2023 4:14 PM, Lisovskiy, Stanislav wrote:
> On Thu, Feb 23, 2023 at 05:25:09PM +0530, Ankit Nautiyal wrote:
>> While computing compressed bpp, maximum value of bits_per_pixel is
>> calculated that can be supported with the given link configuration
>> for a given mode. Avoid rounding up of this max bits_per_pixel.
>> Also improve documentation for computing max bits_per_pixel.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
>>   1 file changed, 12 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index b77bd4565864..51e9d0b2d8b3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -716,9 +716,19 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>   	 * (LinkSymbolClock)* 8 * (TimeSlots / 64)
>>   	 * for SST -> TimeSlots is 64(i.e all TimeSlots that are available)
>>   	 * for MST -> TimeSlots has to be calculated, based on mode requirements
>> +	 *
>> +	 * Due to FEC overhead, the available bw is reduced to 97.2261%.
>> +	 * To support the given mode:
>> +	 * Bandwidth required should be <= Available link Bandwidth * FEC Overhead
>> +	 * =>ModeClock * bits_per_pixel <= Available Link Bandwidth * FEC Overhead
>> +	 * =>bits_per_pixel <= Available link Bandwidth * FEC Overhead / ModeClock
>> +	 * =>bits_per_pixel <= (NumberOfLanes * LinkSymbolClock) * 8 (TimeSlots / 64) /
>> +	 *		       (ModeClock / FEC Overhead)
>> +	 * =>bits_per_pixel <= (NumberOfLanes * LinkSymbolClock * TimeSlots) /
>> +	 *		       (ModeClock / FEC Overhead * 8)
>>   	 */
>> -	bits_per_pixel = DIV_ROUND_UP((link_clock * lane_count) * timeslots,
>> -				      intel_dp_mode_to_fec_clock(mode_clock) * 8);
>> +	bits_per_pixel = ((link_clock * lane_count) * timeslots) /
>> +			 (intel_dp_mode_to_fec_clock(mode_clock) * 8);
>>   
>>   	drm_dbg_kms(&i915->drm, "Max link bpp is %u for %u timeslots "
>>   				"total bw %u pixel clock %u\n",
>> -- 
>> 2.25.1
>>
