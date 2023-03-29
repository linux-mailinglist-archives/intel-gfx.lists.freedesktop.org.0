Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DE76CD7C7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 12:36:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A4910E190;
	Wed, 29 Mar 2023 10:36:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 498AA10E190
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 10:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680086201; x=1711622201;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zetBkK0FO71XqpYpsmP1ITawUEm1NRQteqNzCMRKWaY=;
 b=HUtzzzQ5AKy6/h/vMqCKzEMqkWf+9gY3HUURxaasS0GaDCUwzBrKEm5k
 H30i+MdkePFMUfnqVVQ8j0qkFcfNMftUmkftNeufAN692W3F7UEhws/Uj
 L6UMV5VYXChBwnFkjjXv/1HBfdxffo1+UB8GIcpUa7CSJ3HgDNxQ2mYNt
 jda/xhZYvff2vVGenAeb9C71kJ2T8FD/wFctrRt10vUHBrWHvTLu4WtI9
 YdclaUEfwGEDjYEOH82qc4B7iWiOu0nMtdD/mnEjv7fHX2crs6v1LK9hD
 x+jWI4AM/s71bXj0dVAjKapSdv1QdS5EOU3bHeE/ZyyAMNPUuIG+Dfmit g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="338342426"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338342426"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 03:36:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="930265127"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="930265127"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 29 Mar 2023 03:36:40 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 03:36:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 29 Mar 2023 03:36:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 29 Mar 2023 03:36:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bALVG842BQ9XEKsoBKbIDGUI0TUQQGZ6l9BTtI6pYGKhnwqgd1n4Hy8zvG5bUl5+5xRj0UBvA0Si+22BtzjojuvHHj+aaBa2qHu3DQuxsxt9awPkHA+kinQq4eAuGbG342/bmjfAfoF/LjDQX5YuGCFglF7Z+0NkRPqCx8IXJu8WWn3vKeC8T4doh3r+cZUenMu0Nm9Yg596wCRurkp5wQ/8cRAMcgzUo9BVc/4CtSeq77iCe77vDsfoNoTYRiDEiyrEkcee7Qm9LP3q/KEvyG0WuVOUJcu6k6oP7TovNe2JJcIBG6+uCK6jNh/VrOT+Tb05pcelP2mUPV50iH52Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ItnnvPzJgaQXgzkhsZKqkuwo6CAn7GxivpNo21qYW0Y=;
 b=KEGhlzhPfNF3Op8S6KRdXSzyvEU3Bt7iTlupaUepQ/izdtC+Qe6t6pP99lo/wI7LbRvwKNmO/UuACqBtupTcnKIxI9UYoB390tH+aMoktw6wNngnVbjtix5NVWkf9l/IZa20+RfMSgMu5sC3cEV2xmQkZPhVEAjv0wvI3ZGHBtzr7pE7KjW5tnGxw7uNHQSNxtwWWe+0gflt+UgJi9MyvMy5IZt8/t1/CcxCTBfDbdBXW+qHSGNRRQfEeXX4kqIu4eg+kQQEcCRYAAF85opSvFTXNSWbXei7ndEZmHBpSATRTC5M2Re5CFhofuUiWs75giv74KOLr3VT0tL+VIMITA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4635.namprd11.prod.outlook.com (2603:10b6:303:2c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.33; Wed, 29 Mar
 2023 10:36:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9bb7:96e6:c81b:bcb2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9bb7:96e6:c81b:bcb2%3]) with mapi id 15.20.6222.035; Wed, 29 Mar 2023
 10:36:32 +0000
Message-ID: <f62f54f4-b42f-dc23-2ae9-2be450854bb1@intel.com>
Date: Wed, 29 Mar 2023 16:06:21 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
 <20230329084449.717954-3-ankit.k.nautiyal@intel.com>
 <ZCQLhkwNGRnZkD4k@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZCQLhkwNGRnZkD4k@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0205.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4635:EE_
X-MS-Office365-Filtering-Correlation-Id: b16f0707-2c8f-4228-eed3-08db30417642
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3U+dhmTXnY834OWFkAHDxAhROnEgRZ49uNZu2vTfnieAQDTUgZwYc3N6Df2JE4sceYMX4oUfKHJw/ViNrdhPyLp5RrokhZ00nA/Ucmnb2wD4eru2qyXw31MPLXnLl0FSK1k2ncQ7REP50a5cqkl8nV7q7vfQmq+sC53YIDoMZ+UqLn7GsL28M7WHw9T73o7TBYPFk4s1rj6AhR5kvTQHbhQIa5mUbr0dg3Kyw9/H+LgrNBA5hklng78dcn+0xEv/npJoBBThHCuvPMf/3jMiSwdb6+l8wN8HqswetgmHmWN3dqnoEieYQtIvRnRLfJa9rChxxdRtATEw09QE01zCCMDuBZO6rjwBNQufy4DpGkj/ITceQKq7Bp6+CLI3FBL7s2iyJwtB9XEY2hUzlxkw3NY1tiXj9SLBHkbM1X+2ztVCmu2nuVqnOz77ZgbPZKQv/6tS9exGK2GXMubvVXWobO5C2ibJHMGK40vKknbzSJgKc6ON5z4lS0hbClhPjuqBL4wvlI7F8so0hQQL2oKBT0KGHEQ5CHHHqsIKTX3DGb7P9sh5FFzpQA1JBkRhbZhW+W6kk+UiLB/Sy1fyNchr//dUCiad/RrNYTRAT1HOtjxtcv7hCIcAGeNnKRCIUi0mrMWVzo4gFDjeodrMyt8wCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(376002)(136003)(346002)(451199021)(31696002)(36756003)(86362001)(316002)(66946007)(66556008)(66476007)(4326008)(6916009)(6666004)(8676002)(478600001)(41300700001)(8936002)(5660300002)(82960400001)(2906002)(53546011)(38100700002)(6486002)(6512007)(55236004)(26005)(6506007)(2616005)(186003)(83380400001)(66574015)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eitiY0RleWkwaWJKblMxNzJtbENGTHdvV2RkS3hrNGJGam44UW9KRERZbWh5?=
 =?utf-8?B?QzluMHVQSVhPZmhucnpKdHVLS2ZncFI1akh2TUpURU95clZhSVk0NmZVTm5h?=
 =?utf-8?B?cURFQTFLVnhLSDF1alFYTC9OdU9PY0xxVHlhdUVLY3E5YU9WUkJ2Q0toRXJZ?=
 =?utf-8?B?NkwrRmt6cHUvT0I0b2RDTE0xZUIxbGJIQmt1c1BWWW03NExiQWRSbzk5QWxY?=
 =?utf-8?B?eGM2V2k4ZlgrZDEwQ045NnJjb3V3UERjRit2d0M4UmNPQ0pxakQ1bDJPMGRk?=
 =?utf-8?B?U1RtZHBYZXl2a2dkYU5LakhxaFdiclB0NFF3bDh0QnE1UE1wcDMyRnRMTVJu?=
 =?utf-8?B?Nkg3SjhWZFBZeHl6djJQZGYrK0RoZ0piRXV4eFFSajRkVjluZUpCZHpkMFVG?=
 =?utf-8?B?UDhtUFU4cDVCRU9BZXo2RmJ3WjFTa2Vra0FKcHdIdytQUXMyYWJla00xa2pL?=
 =?utf-8?B?Y1BxVVlaYnZRY3FvcTRvMEVKYXRGcDRwVHlBaEJwODFoME9neExXL00vRmJL?=
 =?utf-8?B?NFVmMVVIYUtaQkxldGdvRnVUaHBJak4waXh5a0NyUkJKMUoyeHpoalRXTUZV?=
 =?utf-8?B?RTMwL3BxNk15WXhlYVVFS2RkUnFjWldmZUdONEN2Qmd2dnpGU2dEdUFDL3dO?=
 =?utf-8?B?eGRBSjU1T1pKWGJqVDJkS25VYVBOM3pZVFYxNVkwR3IyZlMrM1FqL0gxNjFu?=
 =?utf-8?B?VGdsbmlHdkp1c2o1ZTZadkprOVBxeHZjNzJJSDh2LzZNTEp0VWFVdFZhdmh4?=
 =?utf-8?B?VGVZVmhPYUdTQUpQeGhTbDBoVzJrRzNqMlpsTHJwTi91UDIzQ2VJY2YrQXhx?=
 =?utf-8?B?a1hjZm1wZ2lCRG0xTThXUWc2THArZFVUeU02TXU1RGdCeVZBaytDTENPbDMy?=
 =?utf-8?B?R3N4QjZQWktnT1oxUW9IZWNXR0ZRSTByeDVWUG55WkNyQklGMnlRNG5jYjVY?=
 =?utf-8?B?TDN3U3Y3Y3UxOVE1QnYybEdVWWNMb1o5Wk5jNWl0YU1CbmNyTG82SXJwb3RT?=
 =?utf-8?B?b0ltbkgwdzhrYXZIU2pqbEhXY2YxdytkUXRSUUxyWkhaYWV4ZmJnRzNoa0JI?=
 =?utf-8?B?Tm8wSGJuMGl1aTdHNGx3MzB4M2NiOVJnd2NVSHJabEE2d0lLVTgyVFFIai9s?=
 =?utf-8?B?SWtKNjd5LzZUMGowZk9KMDBsSjV2MzZBUHhmcGhkZ3VsN2RnTm00Z3hYZVR2?=
 =?utf-8?B?cDdDYy9SNHJZSDd3dTFsa1c5RVNDZEh2Q3ZLTzgrNWJYMTJQcHB2WG90T1Vx?=
 =?utf-8?B?UE93SUtGUDkwR0x2Z3JnZTFob1pweUJ6RWhFVkRjdU5NWTFpWTMzblBxL09G?=
 =?utf-8?B?SmRWMVN5Z2ZoWGlJbjVWSXlzRWM2bVFRMFVVMjJYNmt4ZEhkRi9BNCtydkha?=
 =?utf-8?B?ZGhCOVM4WitXSUlDd2RBMUgwRlhBbUIxQnVJcnRnRlJhdUdpUXVWbEFZdWJU?=
 =?utf-8?B?RFFXL2EwK20wQ0p0ZGdwaHhmMG1mdjYrQW9ITTh3Y3RDV09mKzBoeDNJNWJF?=
 =?utf-8?B?aHJxbFNRWjhhV0NLaFI0YjEyVlQ4M3l3QkhYc2o2N0pDNWlqbm9jM1lJNTFo?=
 =?utf-8?B?UkRsOG10UlBwQ0t6MVpvQ3ZqeWtsdnVVcnF3TndLYkJteUVNWU1JRG1kbWw1?=
 =?utf-8?B?ckRTeHdNUmNNNUg3aEpzN0xCZUVjYWRCdnR6NDJlRFhvZTRESi9sTXNtSFBj?=
 =?utf-8?B?RC96RXJUbzZjYURaMGYzTzlsWS9QaTZzbE5lenZzaXhSb0FQdWJxUFNqSTNT?=
 =?utf-8?B?QmE2OTIzQmh6VUdaZTRFSlVucDJtWHI1cWJvU0VhZEY1ZmpLQnRFUkxTYjRR?=
 =?utf-8?B?TWZJRkR4VnIwRWFQNG91bExOSUM2dDQxVU16TEE5Wi9QM0ZZV1R2NFVhM1p5?=
 =?utf-8?B?djI0Y2RkWlVxNjFKWUZIYzFNUldqT040VWQwZ0NGV2dDSWtDblU3WmQxcldT?=
 =?utf-8?B?R1NOa2hyK2ZVOEhBSkpNSXNTMHFMVm9jQlZuTHo2cWJodkhMZzVQT3puT2dv?=
 =?utf-8?B?TjJzM0JLL1N4aDY2Z2c0UXpWdVVQbmVBd2hES0pZU1hCalBSVnd3NUw3RExM?=
 =?utf-8?B?Rkg3VGFpanFwL2ZrcW9mQ3RFaWtsenc2WWxuMnZaaXpjMGxFTVZncllLYmlB?=
 =?utf-8?B?b0gvb1V6aFhHTzh5K1d2Y1diTFZDVldXV2Mvc3FLL2tUL0ZYWW9XNHlnekpK?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b16f0707-2c8f-4228-eed3-08db30417642
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2023 10:36:31.9579 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CKkpZuB6QK39OMlyekVQ8hqXpcvGwylrfamfjqzL7ULt33MqJCafpdovsIhYRbnCzWX0i2eMrnYmgyWPhgXO63dY7Ok3LUiVQSefdBBQ/oU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4635
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Use current cdclk for DSC
 Bigjoiner BW check
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


On 3/29/2023 3:27 PM, Ville Syrjälä wrote:
> On Wed, Mar 29, 2023 at 02:14:49PM +0530, Ankit Nautiyal wrote:
>> As per Bspec, Big Joiner BW check is:
>> Output bpp <= PPC * CDCLK frequency * Big joiner interface bits /
>> Pixel clock
>>
>> Currently we always use max_cdclk in the check for both modevalid
>> and compute config steps.
>>
>> During modevalid use max_cdclk_freq for the check.
>> During compute config step use current cdclk for the check.
> Nak. cdclk is computed much later based on what is actually needed.
> The cdclk freq you are using here is essentially a random number.

Oh I didn't realise that, perhaps I was lucky when I tested this.

So this check where CDCLK is mentioned, actually expects max_cdclk_freq?

If it doesnt then, we might have a compressed_bpp value, that might be 
violating the big joiner bw check.

Should this be handled while computing cdclk?

Regards,

Ankit

>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
>>   drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
>>   3 files changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 3fe651a8f5d0..d6600de1ab49 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -711,6 +711,7 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>>   u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>   				u32 link_clock, u32 lane_count,
>>   				u32 mode_clock, u32 mode_hdisplay,
>> +				unsigned int cdclk,
>>   				bool bigjoiner,
>>   				u32 pipe_bpp,
>>   				u32 timeslots)
>> @@ -757,9 +758,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>   
>>   	if (bigjoiner) {
>>   		int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 12 ? 24 : 36;
>> -		u32 max_bpp_bigjoiner =
>> -			i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
>> -			intel_dp_mode_to_fec_clock(mode_clock);
>> +
>> +		u32 max_bpp_bigjoiner = cdclk * 2 * bigjoiner_interface_bits /
>> +					intel_dp_mode_to_fec_clock(mode_clock);
>>   
>>   		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
>>   	}
>> @@ -1073,6 +1074,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   							    max_lanes,
>>   							    target_clock,
>>   							    mode->hdisplay,
>> +							    dev_priv->display.cdclk.max_cdclk_freq,
>>   							    bigjoiner,
>>   							    pipe_bpp, 64) >> 4;
>>   			dsc_slice_count =
>> @@ -1580,6 +1582,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   							    pipe_config->lane_count,
>>   							    adjusted_mode->crtc_clock,
>>   							    adjusted_mode->crtc_hdisplay,
>> +							    dev_priv->display.cdclk.hw.cdclk,
>>   							    pipe_config->bigjoiner_pipes,
>>   							    pipe_bpp,
>>   							    timeslots);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index ef39e4f7a329..d150bfe8abf4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -106,6 +106,7 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>>   u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>   				u32 link_clock, u32 lane_count,
>>   				u32 mode_clock, u32 mode_hdisplay,
>> +				unsigned int cdclk,
>>   				bool bigjoiner,
>>   				u32 pipe_bpp,
>>   				u32 timeslots);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index a860cbc5dbea..266e31b78729 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -925,6 +925,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>   							    max_lanes,
>>   							    target_clock,
>>   							    mode->hdisplay,
>> +							    dev_priv->display.cdclk.max_cdclk_freq,
>>   							    bigjoiner,
>>   							    pipe_bpp, 64) >> 4;
>>   			dsc_slice_count =
>> -- 
>> 2.25.1
