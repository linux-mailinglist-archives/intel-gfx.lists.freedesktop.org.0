Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB0A81B309
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Dec 2023 11:02:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF69010E672;
	Thu, 21 Dec 2023 10:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF9110E672
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Dec 2023 10:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703152973; x=1734688973;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6t5Yv+jEMdRFh3F7w/Lsg1YDEli0E21WEX/3IXwVY0A=;
 b=E1SeT9jvmS0e2XttPn9xNUSS0xruy4C1kr756q5E9k1BeeeAWcuxM8Jc
 1mFX0PTzeuqV68dqnPYxaY5HsN3gxDgAv3JlktpcWoNDtx5mWL6GQSl4J
 kVQAZjW6DNlh0chja5pkI0TjyVHlSZPLqZm7kRUEF1JBtoRbgkzrd4xDu
 ePhHPgVn1cbl/JdI7KdPqmjAzoDU+sKgxWB+6uRWpl92nr9W5HjOWG87c
 TpWHFsnvCoYtAz7PtmAWah2VuD2N0Y2Ze2pLy+0EfKme+4IrMKaFyLAWv
 8GgxVTdjaO6wv6McEJi3rD3B6tSXKgAVQ+N0phR6hArqNi5SD+0PyzhGr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="2786531"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; 
   d="scan'208";a="2786531"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 02:02:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="920282445"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="920282445"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 02:02:51 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 02:02:51 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 02:02:51 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 02:02:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fgjsSs7LcVCmvlJxJH0A5JJBMPrM0c/Ci9aHg8NXizIwaX7qsdDou5j65IlYJ9CCvakLo/a8eJnMeaYuXibY5n2/ZN+G32eVW3mJ6ma2qN2xYYrxtUZHXKUMPXenKd1RwSiKi4SN2vYavu8kFwmcM4ORLzSaiBPpCU04TvtkK1+C+G8U91UNspMKou0h/FmUqZQ1Mja4mylDJ6xyx6xr3dyhYka3U8mCZb8mU1/CV4jeSr+hNpDYroHsM8/5FHZXcbI9Nq7k98Vor9DN4Z2+sVMnt/STVaT5UDDE+2vyw/RkMNbDcQJUUwcajZQyPAa4bHzievAe7EXdXk7A3M1tpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UeKrGqjigUOrrx3oIsVOWq0ccG42YjjqriAqmlpSMYk=;
 b=FPtSFPjGvBp7dXIvHHAafcfH+Y2/+CwuIDKL4rSOOVSeL7JCrW/wfKVu6R/l1NbMp3fmqKmz40fEU2naPJIDr98yT+zjQB5bS7Vum/wcQcBI8FAbuwKdL4h5RK8C9yVpocD89T/oWKczBhKdgk7ECkp3JrdzAW7aGfFeq0xbjoENwb33/Ak0mfDY9iixeIafLEFY/0O+8f8uyu41VQJD8LLXjQ6UC1SkWuxcdh9bDm3hwbhgWF13eKuLcac5yENcit5bDxd+O2zehn+zj55we9LGNXwcfP9cWm3JVJUX+MfgJylB2eVN3N3GxL/3OFvEaAM77oceCF94u26a+7S0Sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8597.namprd11.prod.outlook.com (2603:10b6:510:304::22)
 by MN2PR11MB4565.namprd11.prod.outlook.com (2603:10b6:208:26a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Thu, 21 Dec
 2023 10:02:48 +0000
Received: from PH7PR11MB8597.namprd11.prod.outlook.com
 ([fe80::80ad:e241:4aec:60a9]) by PH7PR11MB8597.namprd11.prod.outlook.com
 ([fe80::80ad:e241:4aec:60a9%7]) with mapi id 15.20.7113.019; Thu, 21 Dec 2023
 10:02:47 +0000
Message-ID: <67e0f77d-f371-4a9f-81f6-99646ba904ec@intel.com>
Date: Thu, 21 Dec 2023 15:32:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/mtl: Add fake PCH for Meteor Lake
To: Matt Roper <matthew.d.roper@intel.com>
References: <20231219185233.1469675-1-haridhar.kalvala@intel.com>
 <20231220221136.GL1327160@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20231220221136.GL1327160@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BM1P287CA0006.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:40::34) To PH7PR11MB8597.namprd11.prod.outlook.com
 (2603:10b6:510:304::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8597:EE_|MN2PR11MB4565:EE_
X-MS-Office365-Filtering-Correlation-Id: 2638598a-bdfc-45e0-2407-08dc020bfbf7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z2QeY/+nQrCTroBe2QMRKTjODTiFZg26jA+qPYxkgtnntAI38W8b5RCEMWXnqvXegaYz8t/1gN/wD4Uv6xVfn93KFZlWOZPGHEkq530v9uUWEZN77DZMkgcnSQ9et0IAtvUcbPALizBkdwvC2vdjgFX7yJsyaWGwve7oak7LwBm9EyLaiEVNkFlwNw/sNbMOPDuemuGfYVr2JV0XBuvESH+gzk9hIfwlkx08JLxr92VAvbiiaYtJTy+D0rCeKmGMH0Hn02lM7HcotyUA27YiONto1QRf2yVodX74SlYDEcTbSi0fXAmd62OXde6fRAbHIVlf3IbsXszfZG18fb4AUs7yYFEeQQtolYnNH43CSFBQdsjAvJr9Dfo911WDy0KiEsY/or4a9h6KL0fSj+uAR9ZVxBR2VNVSxRRvMG4D51djeqotrWMSM84lkNp7JduZBHYVyI9JC5WM9lvLlRNPWwHWKqoI4T7qDvJBEiM2Lld3xDuB4Dm6Ad/4MhjtQJnHcKxJ8Fwqnh+KpkN9qYIXuPa606IZPKobFBRmzGqjY4HO1uYLdbbOLp8OAJscDChq1AoGIjnIHWBGAwHuz0KKmvf1bfAXqaThna8TURLAo9dylgiWLo1ucmNBPBIZf/SqKy5Ut4FF6k2M54coZoBw1e8mzZ11itqw48fKtl4GVIrQ9H1STM/vUyMOP54p7DXv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8597.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(376002)(39860400002)(366004)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(30864003)(5660300002)(2906002)(86362001)(31696002)(82960400001)(38100700002)(41300700001)(66556008)(66946007)(66476007)(2616005)(6636002)(26005)(37006003)(316002)(6666004)(53546011)(36756003)(6512007)(6506007)(6486002)(31686004)(478600001)(8936002)(8676002)(83380400001)(4326008)(6862004)(226253002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tzh1QW9iRng0dEJoTm5jMDlLOC9JUFNmb2locjZEZUlJMDJReVpyNTlwcEZa?=
 =?utf-8?B?QytYRWtYc2ZrVWp1R0VKOHJoV082S2NkemZ3dm1KOVBxUFEvTUdOaW16eHhz?=
 =?utf-8?B?M2RJOWtvaTBkUnRUaXRSeTNvS2JEWm1GcFpyOXdnQ2ZKN3JlWlRPQVgwbFcv?=
 =?utf-8?B?ajBGSWJtalZVd3lrMFRSWTkyZVVFMTQwcE1mekIvRFRGc1RUQU9jVDNreXpi?=
 =?utf-8?B?NlhSNk40b0p2Mk5PQWE1cFlrZ0RhamszeWszL05qT04zWXh5bzJYZDN5OXlU?=
 =?utf-8?B?V3VvSFNBS2xWd3dISG5pdi9UV09Ua05SZUEwZmxBRGFEVTgzS1NqaVNWaTBk?=
 =?utf-8?B?ZVVNQUNSb1l1eVJGTUtnU0FxOHpUampNMVlPWmpTRk9zR3RFQVlhb0JzUHN1?=
 =?utf-8?B?TVM5N0MvUzlVOGE5b0JDNkJLelBpSUFUUUljR3pMQ0hWaE5FSERodVZENWdX?=
 =?utf-8?B?eHFYdG5DNmhNR3Yzd2xGdHVmT2JVL2JuT0o5NFdsdEhaWkRXVmRwbVJ1YXJz?=
 =?utf-8?B?cWZzQ1J3dWRYSEVvWXU4cThSdjRuaWRwRlVzVWp4NDhnTkpsZm9CeEV4YnRm?=
 =?utf-8?B?c1lIR2dFV1hkQ3RTZCt3VFJDT0dXMk9oUm5adVlmOHAwcnhUeG5Fb1hhSUlJ?=
 =?utf-8?B?NnR2QVBhNTNDWTgrNzZ0REVWcnpUSTU0a1Vhb0VrUGZUaHdkaGZyL2hvMW40?=
 =?utf-8?B?Zm1pQU8yWEZQYlRmb1VuODhWVUJkWXJleW4rbGVBMzBDcEFIMnlOM2w2Rk9p?=
 =?utf-8?B?b21ZWFF3dmNBR2JJdXQxWExPVHVjUzRxVFVWVjZaREJyTzNFcExoNHVqMHNo?=
 =?utf-8?B?VHRHRVg4Z2hzT0doQXdWS0lpTDBXVUtKUHgrcC9xc1ZtalRmcjd2TlFvazZT?=
 =?utf-8?B?L2hhNVpOazJiQVFFWEZ1L2MzWDcvdHBZQ2E0M3gzN25VMmtVeWFUVVhWakhE?=
 =?utf-8?B?SEQ3cFB4blcrdVo4anYwZjg2aXVuN3NIcmxXOWcyc2U2bXpVaG9jTUtIZDlL?=
 =?utf-8?B?KzZ6d1lkWUJ2VGIyRjN4RzROZWRXandUZk1tcGtoWlJ4TUQyVFFIT2hkSXlC?=
 =?utf-8?B?dmtQeldWbEZiU3BFczBIMVNoL1BhV05PWmdkeG5rSGF5eUJlNjhpNm5rTzNO?=
 =?utf-8?B?UTMyRlZ6eXJ4VWxHbTZQRDZGTzJ2aE95cENPM3J3WEJDZXJKNnFWRGEwa21X?=
 =?utf-8?B?Vi9TNHRlbjkrWUxPV3hvVWdqYnlYTzNVM3JNaHc2Umx6Q1A3RDgyYngvWUdU?=
 =?utf-8?B?dEg1TStkcDlDM3pXQlQ2ZEUrRys4NFlQYjdsRGx5T1ZWMmhEakRhSDhvSXh1?=
 =?utf-8?B?aTJqVFp4eEpwYlNUYk0xQnNvL0lXTlZzT09ZbUNwMS9EcGl2WnpPM2c5N0VD?=
 =?utf-8?B?SGMzeDMrRFlYMG1YQ1hhdjFhRXRYUnlTMU9mdkdGOE1ZeFlRcTk4allLMUlK?=
 =?utf-8?B?ZVJTVFpWVEtDL3JKV3NUZFEra25HS0FIZlA5cTFjUnptNWt3VmdNVW16OW9B?=
 =?utf-8?B?VzhnbDFnajRpdnpSZVEzUWdyNW1RTDBWSlljc2hRMFhuQWNqN3lreHBROUFa?=
 =?utf-8?B?QmlqS3N4d3lHSHh2UThIRU9kMjdrQ01BMkFOMXpKQ0NSbXNNMmI1YWNvNnJU?=
 =?utf-8?B?dm1Zd0hxcTNmMzF4bWhreW1ld0FXQVVjWXQ3amVqNWJQSG41VlU0R0xBS0h6?=
 =?utf-8?B?d0NxM3Y3SXMwaGZSU3dSSDN2Ym5sSUVXWjU1ZVU0VjdKdW9TM3BudFhEaG8v?=
 =?utf-8?B?cGNTNUJCMklKN1k0WGVZejMwcDExV0J1ZVI3NVdFVENDUi9GYUROa1g3Tkli?=
 =?utf-8?B?RmFtR0h6emdDN3l1ZjNjUVRmZWhvZDlqYU5uQklaQ0o5dk9iVU5EVXRRY09U?=
 =?utf-8?B?NkdUbFFQUTA2SENNNXRXM01aZ1ZxZVpjNFRtV0dwM3NGcnVvUkxhak55SFdo?=
 =?utf-8?B?T1cycFo1Mm1ING9tSk14aGZHNGE2czN0S1RLb2g3ZGtpWjI3YW9HQlprcTcy?=
 =?utf-8?B?MXQwSHNVcmFjbUM1ZVd4YnBIb04xclNWdGcwZUF2WjNKN1lSZHM1SkJXREsy?=
 =?utf-8?B?L0FWemt2ek5pSEU0d3R2TUJmQzBBeWpPOGJDNjVmVUZsSlg4VmJvRUw0SHJY?=
 =?utf-8?B?dXpxSnJiaVJEci9FOFR5d1JmOWNNS1FqbjJNNDUzcVY5S2JZSWdzT1B1U29x?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2638598a-bdfc-45e0-2407-08dc020bfbf7
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8597.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2023 10:02:47.6053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pbaMQ4rTGJm4tKTp6jpnoxTBPzr9adCFCvAZC3AAdNK0R0QZF1KNzvJwfZZ/nSHfk+rEDuhTUpw8NOS3AX4oD4m77u/PaxyiIaw1Uqa+heU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4565
X-OriginatorOrg: intel.com
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


On 12/21/2023 3:41 AM, Matt Roper wrote:
> On Wed, Dec 20, 2023 at 12:22:33AM +0530, Haridhar Kalvala wrote:
>> Correct the implementation trying to detect MTL PCH with
>> the MTL fake PCH id.
>>
>> On MTL, both the North Display (NDE) and South Display (SDE) functionality
>> reside on the same die (the SoC die in this case), unlike many past
>> platforms where the SDE was on a separate PCH die. The code is (badly)
>> structured today in a way that assumes the SDE is always on the PCH for
>> modern platforms, so on platforms where we don't actually need to identify
>> the PCH to figure out how the SDE behaves (i.e., all DG1/2 GPUs as well as
>> MTL and LNL),we've been assigning a "fake PCH" as a quickhack that allows
>> us to avoid restructuring a bunch of the code.we've been assigning a
>> "fake PCH" as a quick hack that allows us to avoid restructuring a bunch
>> of the code.
>>
>> Removed unused macros of LNL amd MTL as well.
>>
>> v2: Reorder PCH_MTL conditional check (Matt Roper)
>>      Reverting to PCH_MTL for PICA interrupt(Matt Roper)
>>
>> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Thank you Matt.
>> ---
>>   drivers/gpu/drm/i915/display/intel_backlight.c   |  2 +-
>>   drivers/gpu/drm/i915/display/intel_bios.c        |  3 +--
>>   drivers/gpu/drm/i915/display/intel_cdclk.c       |  6 +++---
>>   drivers/gpu/drm/i915/display/intel_display_irq.c |  2 +-
>>   drivers/gpu/drm/i915/display/intel_gmbus.c       |  5 +----
>>   drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  6 ++----
>>   drivers/gpu/drm/i915/display/intel_pps.c         |  2 +-
>>   drivers/gpu/drm/i915/soc/intel_pch.c             | 16 ++++++++--------
>>   drivers/gpu/drm/i915/soc/intel_pch.h             |  6 +-----
>>   9 files changed, 19 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
>> index 612d4cd9dacb..696ae59874a9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
>> @@ -1465,7 +1465,7 @@ static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int
>>   
>>   	if (controller == 1 &&
>>   	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
>> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
>> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>>   		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>>   
>>   	return true;
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>> index aa169b0055e9..0e61e424802e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2204,8 +2204,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>>   	if (IS_DGFX(i915))
>>   		return vbt_pin;
>>   
>> -	if (INTEL_PCH_TYPE(i915) >= PCH_LNL || HAS_PCH_MTP(i915) ||
>> -	    IS_ALDERLAKE_P(i915)) {
>> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || IS_ALDERLAKE_P(i915)) {
>>   		ddc_pin_map = adlp_ddc_pin_map;
>>   		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
>>   	} else if (IS_ALDERLAKE_S(i915)) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index c985ebb6831a..b251a71092dd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -3467,15 +3467,15 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>>   {
>>   	u32 freq;
>>   
>> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>> -		freq = dg1_rawclk(dev_priv);
>> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
>> +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
>>   		/*
>>   		 * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
>>   		 * "RAWCLK_FREQ defaults to the values for 38.4 and does
>>   		 * not need to be programmed."
>>   		 */
>>   		freq = 38400;
>> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>> +		freq = dg1_rawclk(dev_priv);
>>   	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
>>   		freq = cnp_rawclk(dev_priv);
>>   	else if (HAS_PCH_SPLIT(dev_priv))
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> index a7d8f3fc98de..6964f4b95865 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -986,7 +986,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
>>   	 * their flags both in the PICA and SDE IIR.
>>   	 */
>>   	if (*pch_iir & SDE_PICAINTERRUPT) {
>> -		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
>> +		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTL);
>>   
>>   		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
>>   		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> index 40d7b6f3f489..854566ba5414 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> @@ -155,7 +155,7 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>>   	const struct gmbus_pin *pins;
>>   	size_t size;
>>   
>> -	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
>> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL) {
>>   		pins = gmbus_pins_mtp;
>>   		size = ARRAY_SIZE(gmbus_pins_mtp);
>>   	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
>> @@ -164,9 +164,6 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>>   	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>>   		pins = gmbus_pins_dg1;
>>   		size = ARRAY_SIZE(gmbus_pins_dg1);
>> -	} else if (INTEL_PCH_TYPE(i915) >= PCH_MTP) {
>> -		pins = gmbus_pins_mtp;
>> -		size = ARRAY_SIZE(gmbus_pins_mtp);
>>   	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
>>   		pins = gmbus_pins_icp;
>>   		size = ARRAY_SIZE(gmbus_pins_icp);
>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>> index 04f62f27ad74..76076509f771 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>> @@ -163,12 +163,10 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>>   	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
>>   		return;
>>   
>> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
>> +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
>>   		hpd->pch_hpd = hpd_mtp;
>>   	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>>   		hpd->pch_hpd = hpd_sde_dg1;
>> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
>> -		hpd->pch_hpd = hpd_mtp;
>>   	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>>   		hpd->pch_hpd = hpd_icp;
>>   	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
>> @@ -1139,7 +1137,7 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
>>   
>>   	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
>>   		xe2lpd_sde_hpd_irq_setup(i915);
>> -	else if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
>> +	else if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
>>   		mtp_hpd_irq_setup(i915);
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
>> index a8fa3a20990e..2d65a538f83e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -366,7 +366,7 @@ static bool intel_pps_is_valid(struct intel_dp *intel_dp)
>>   
>>   	if (intel_dp->pps.pps_idx == 1 &&
>>   	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
>> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
>> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>>   		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>>   
>>   	return true;
>> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
>> index 240beafb38ed..3cad6dac06b0 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
>> @@ -140,11 +140,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
>>   		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
>>   			    !IS_ALDERLAKE_P(dev_priv));
>>   		return PCH_ADP;
>> -	case INTEL_PCH_MTP_DEVICE_ID_TYPE:
>> -	case INTEL_PCH_MTP2_DEVICE_ID_TYPE:
>> -		drm_dbg_kms(&dev_priv->drm, "Found Meteor Lake PCH\n");
>> -		drm_WARN_ON(&dev_priv->drm, !IS_METEORLAKE(dev_priv));
>> -		return PCH_MTP;
>>   	default:
>>   		return PCH_NONE;
>>   	}
>> @@ -173,9 +168,7 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
>>   	 * make an educated guess as to which PCH is really there.
>>   	 */
>>   
>> -	if (IS_METEORLAKE(dev_priv))
>> -		id = INTEL_PCH_MTP_DEVICE_ID_TYPE;
>> -	else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
>> +	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
>>   		id = INTEL_PCH_ADP_DEVICE_ID_TYPE;
>>   	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>>   		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
>> @@ -225,6 +218,13 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>>   	if (DISPLAY_VER(dev_priv) >= 20) {
>>   		dev_priv->pch_type = PCH_LNL;
>>   		return;
>> +	} else if (IS_METEORLAKE(dev_priv)) {
>> +		/*
>> +		 * Both north display and south display are on the SoC die.
>> +		 * The real PCH is uninvolved in display.
>> +		 */
>> +		dev_priv->pch_type = PCH_MTL;
>> +		return;
>>   	} else if (IS_DG2(dev_priv)) {
>>   		dev_priv->pch_type = PCH_DG2;
>>   		return;
>> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
>> index 1b03ea60a7a8..89e89ede265d 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
>> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
>> @@ -25,11 +25,11 @@ enum intel_pch {
>>   	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
>>   	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
>>   	PCH_ADP,	/* Alder Lake PCH */
>> -	PCH_MTP,	/* Meteor Lake PCH */
>>   
>>   	/* Fake PCHs, functionality handled on the same PCI dev */
>>   	PCH_DG1 = 1024,
>>   	PCH_DG2,
>> +	PCH_MTL,
>>   	PCH_LNL,
>>   };
>>   
>> @@ -59,16 +59,12 @@ enum intel_pch {
>>   #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
>>   #define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
>>   #define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
>> -#define INTEL_PCH_MTP_DEVICE_ID_TYPE		0x7E00
>> -#define INTEL_PCH_MTP2_DEVICE_ID_TYPE		0xAE00
>>   #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
>>   #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
>>   #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
>>   
>>   #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>>   #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
>> -#define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
>> -#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
>>   #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
>>   #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
>>   #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
>> -- 
>> 2.25.1
>>
-- 
Regards,
Haridhar Kalvala

