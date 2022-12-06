Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 104FC644126
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:19:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9ACF10E313;
	Tue,  6 Dec 2022 10:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE99310E313
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670321969; x=1701857969;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kwzBGJawbd/PGRu4FkM6+18+TOHEWfNl3fWJwEPIsOw=;
 b=AOhd+QSRnFqZZ/JSbhgg2rbsMJLmmSpxeIlhwc88FYUkuLhFV+Mw10i3
 HN5PdiRzvZVQ5wu7XhYY0rXcm3z3hQmm4wi+9zS9fMRibtAt7x9CN8gG8
 fk3R7nHeqMyW/7TVjBaDP88+MaBxtU5jMUE/QiVrU+rVP8pp9CzEy64Ci
 LOf3kDk255BOnXvW4KpxvxqLA7m+74wDakAgyUA+n4rFIAVIfjCvFFdc1
 3j0AaCbkT94xyPpHpGE5PLDMz64ik9XLxcHEA7pgDvKzlgO99C31ro6Rx
 ObhttScAJIqFEqjGnK6MjskSo6NxJIZRtGAguXsNhLVdU8hXpFk5qGwrF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296943940"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="296943940"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:19:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="678700790"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="678700790"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 06 Dec 2022 02:19:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 02:19:26 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 02:19:26 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 02:19:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KChYePQtNnbRp0al7JzxRbO6z91Wa+OMJ8aHVIP5UgIfly7gKt5y4oAubjdCUfXDKq+rmbq3clNIO/6b4dqKUp6Pu86rRU2SPPYhCI6LZweXMKDG2Stxbs0yN1ZdRO/e3MawPab8wHtJsNDFiTQKZcgxudhp6GLIT7fpv1pWnGIKtC613MtZ82bra+SeDXZmi4osmRXSTPaKmdUEiwQS65yUJdRwoMmzuVpDMJE+vYlgJMJeuc8T8Qo3N1dXrTHjqWZw6OV8LG8k0hmkHcBYQ7z2jBtRXEypRvFx8MD+rcZtt1q4RUeiZkw6vybqtSQxJhrbN1T+Ki5hJuedUemMvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KMu06sRyHsv7OvoNM4VugX3JXhXW1Rp431EEMxPPZKs=;
 b=RHsZLr6HpBqvCGISpsUHEjSVo88ySY9xlpmaQYTihImfjKhFF0322ErFht8OPIbfJ5uyOD6UHlSRcupgMDV8FHkza8ySsFEwCu+vLju/CKglWps65JpU0HNz/zwYHzy6V8+9/hBIGIKsB5JGAMHCqLrW6Wqm3ClhjmzCLyR3e+VtX2j8SCbxvZ+1LcgpsEbsFv2RgkM5BZm3SX0iLlC8G9TStm/cQgqAQX781U06XTVTjRs9fWm5Tllb8wBcysrJCxNSEs5gHmMg4q0tFA0jwwypJtYDm5uivCQ8yuongYS+Ed+oQQqIJ2FJy+gG/jh/1UE6NaHWAEFhUa6Bf1xPQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4842.namprd11.prod.outlook.com (2603:10b6:806:f8::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 10:19:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1aa9:582:908f:d89c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1aa9:582:908f:d89c%5]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 10:19:24 +0000
Message-ID: <7cf9e62e-2ee2-93c9-2330-a7a0edf486ab@intel.com>
Date: Tue, 6 Dec 2022 15:49:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
References: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
 <20221128101922.217217-8-ankit.k.nautiyal@intel.com>
 <Y42fQ3LLtuILCzql@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y42fQ3LLtuILCzql@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0187.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4842:EE_
X-MS-Office365-Filtering-Correlation-Id: b482b837-44d7-4841-215d-08dad773590f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nwmUawQZ/0yma3orD+f42zOE+v2Ng8J7prklBDM3C5Sn4+OzyomnY7BlDi1Vc5oU3GRA2xDY2wJNVHj0iKOr4i3GtmkvXvwKEpufu/gMKJ4/HVVpv+uiPSwiAdLsRaBnYdix8uyVJzWuuJuneMr3KxpVZrmAaBv+SlYD5PhmSLF0l5snFfaQvw6pfVuu/HZQIg/Q0Lt7Em1s4HIurLi2KDdJK494ghFbpGc+gqXCGLyE3doDVhp16mqgnL17xNwXmdX7y5+BCqnad7wuOARGDKJctcyuCEp8Bq17djfQxgKhvJAbgTwA0+6mLKxzBtU78iN1yezUykHnP31nOiWAc/RNgs/a5GCl5btni2dOqyAIqFL69fkpLNy0DbT51MDkAegXLPTlP3gF21L19uuaeMv7pgQ7Xia52+Y0cbZ/UukQltbYVnzIbTboqfp0LizWm6HjVveDHsPrBkU7tx6lFFyX4cVaPxf9acWWrVSjqSplY7wYRU73JdUrFlXO5046g0Kht7s0+yw8lI+KFYqBz45Cqo1ONOhQi74Zckyvus5oA6x91zKkEyc3MJ7EqN2C6jv3UyALvrqxYqNsJqnGC9zTfXh4i73cXx0VKRw5Ra9Hi94oI8z7GI3zavVlTDDapD0JwOuAy/o0fL4RWmlYfAz91AqYCQ3Dsr2Fhqlh3XYbEquyL9zV8fvIKZ7lryFnKg4/uagy6xmcvdRiP4vBXGqTuBteqNsihAJcfXeHV3o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(366004)(136003)(396003)(376002)(451199015)(36756003)(31686004)(31696002)(86362001)(2906002)(4326008)(8936002)(6862004)(83380400001)(82960400001)(5660300002)(66556008)(6486002)(186003)(6636002)(478600001)(66946007)(316002)(37006003)(38100700002)(8676002)(41300700001)(66476007)(2616005)(107886003)(6506007)(6666004)(26005)(53546011)(55236004)(6512007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWZYQzFLVHJZd3ZTQjQ1SzcvL3RSMkw2a3NVamdWZTZpcllhVWQwWVNteXEw?=
 =?utf-8?B?bjBhQ1pmdGVJb3BCNGJ2eFl1RDVSWGRQVE9FWVpUaTY5T0dpTmJGRWJqTFdr?=
 =?utf-8?B?NjhWUVFOOTRtT2t1RHIreGpRUzhVbW1FMkpidFBPVVpoeXBqNmhtaHlZbHNp?=
 =?utf-8?B?TFVRZnZ1bzdESEhXZUx5dlppVmo5RmkzbUo0RWV0anpya0d5SlpoTEtNaTVZ?=
 =?utf-8?B?OTl5blp5RDRiQmtaUFpmSjh5Z1dGTmRNYXg0dXBSUE5IUGdRVWFxNE9kS2dx?=
 =?utf-8?B?VDR4LzRTNHJFQmkzMlBzUW81aDJCa2o1TEtRT3RDazBweEE1Z2JwZ2xVL2FB?=
 =?utf-8?B?SzlGVTZLT0JwZWVKZkJDTmR3TEF6Vm16eUgyd0l3QmwrdWVzRWhPSTg3amUz?=
 =?utf-8?B?dWxlem5hRW84NDgvNnBxdmdadWVXaUtzbmRwUXpDSEtIWGdGK0JxMERVcGpy?=
 =?utf-8?B?bHJaQnVsTjVTMngxNkNSY1FkTE5BaVRKRytwVFhuNVIzMW9paHNRYnJQUXZi?=
 =?utf-8?B?MWE5dFVaWjd1bGNLMWpoOVl5NEhDMHhMcFozUWZaNzQyQ1BpNlpUNWhkZEJh?=
 =?utf-8?B?S2tpb0h1TTQ5UDlyUHZOd21WTWpLY2pjMVRxcHFmNHlTNUpJRXJsb1VpWjZu?=
 =?utf-8?B?V3A1elJGSDRmU0Njd1VlMEZzSHM1MXpSRlpMY2xjbXNpWTlSZG5XdktqMFNz?=
 =?utf-8?B?bmdMR0dXTzFLZUgzY01jYmE1aDJwVWg0blBQTUFBMUZhcTVzSllTVDJJSHha?=
 =?utf-8?B?TmEwZ1hKUjVCWFdJL1RaNHV3ZzBtZzJ2OExZL3NuRzJmTHdJdU1FQ3ZiMFBH?=
 =?utf-8?B?ZU51SUtRTTdjSndkVGdrQnd3d3V0YldJeXlydE9KYnR4Z1BBcFZ6K1dQQmJW?=
 =?utf-8?B?U0srdXpCZWFISHhITXFmTUFxZzJkMTlPTWxKTWx1WURudE1GS2FMRE52VUpu?=
 =?utf-8?B?NXRzMHU3bkxsVlU5cVpVNHE3NFF1OU54dmllNGNPZnlkRG9aTWlodFRRVm11?=
 =?utf-8?B?SkF2d3hDZHJURXN6K3VHQXowVE9YVzhucEx2M2treUFmQ3JVOVNrSEYwbnpK?=
 =?utf-8?B?RXpjV2xPVUVxZ2JvT2NTcnNWRVlhMWRjdnJsSGF4K3dTL1ZyeHhpbXRYQnor?=
 =?utf-8?B?UVplb3pNV1lBd0t4SHd5c2hqL0crTENlZGNydFZYZm0wNFBPNk55dDNNY0Vi?=
 =?utf-8?B?dnVhaFM3WjhZb1p3MTdhdnlKcm5sblRFNURhZndNdGxEbm5lMHNqRUMyMmN3?=
 =?utf-8?B?QnE5QlVsV0c2MEFHQnRDMHc2RFdCcU92c3FBY3lVaVlJblBUUnlpRmVUNmtF?=
 =?utf-8?B?WHBkWlQrRVpOL1RwTFRtYXBhWmVGekRmSHY4OE5Wc1YzU1ZTZVNla3ZIR2VM?=
 =?utf-8?B?ME1xZklWbHhzem11RXRFbDUvRjlqUVg2YTJVRzFPUnZyWkZrVkpVQ3dTUUx2?=
 =?utf-8?B?NnlSZnFOOHZMME9DWFloNnlVdEZXdzQ4cTg0cVRFNlMrQ2xMSnNvemh6MDMr?=
 =?utf-8?B?djBUM2Y5cUQrL2ZoMnlXeE5kcmxVZ002a0N3R1RSQTRJbHRHZ0krQS84MmpN?=
 =?utf-8?B?UkxzN0UvbDdsRGFrbHVKSnlTRUxnbFJFSTlwMmxPUGNaTkN6K1U5V0lGMkMy?=
 =?utf-8?B?Tlo3NUt6azhFUTZuaEhHTnhpQ0JweW02U21FTjRLNWFxbXFTNXNYaUNkR1kr?=
 =?utf-8?B?S2dEWkZIYVdxV3BVQTRodEZCN2ViSlA2Ly9vK2FveEFUcGhoczRFczhqZ2lK?=
 =?utf-8?B?RTlhN3l4TVlXbHhqSjN5YTBmR0VoZXpXVDZpZjl2V0JLczJ1MW1kTEN4cldn?=
 =?utf-8?B?T2ZmSHovUmg1enFNWVE1LzhOS0RFWlJwZDQ1NzExVVNUcTRqTVB4MUR2UXMw?=
 =?utf-8?B?c0NMdXRmMkxDYUFBcTFEV2FUNDIwakEvNU5hNXFoWldaN3BZUjloM01GaVRs?=
 =?utf-8?B?aFQ3WmJXeHI1SDVYVHpJcEpXMnVldmdDcHBoL0V5RjN0KzVnVTBaT2k0OHRW?=
 =?utf-8?B?Z0FibEtyWnNwN0k2TkFXS0kvNTIxL0J4c3hEc2RBT1ZGVlZSRUJ5WXBiSzdO?=
 =?utf-8?B?U1JZU0xpWXQxUzJ3VStGS1Nqdys5THNnb1B2RHZ3N3lacTlDM0Z4dnl0NlRK?=
 =?utf-8?B?MzBjM21jVHlTbEM1ZTg4Y25rcTMrS2czUW1EUzcyZ1F4MUI0emJWUzZlNFdn?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b482b837-44d7-4841-215d-08dad773590f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 10:19:24.4857 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AZrObrjVwPoq5XsVGD2PTgy7u0+N1UzNma1AuJrhC710ocrspglhbFfjqGulZ+LPTEeUSkn1do71EaNTChZ2Jj4ARJTXIEMOCKFFnay59Nw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915/audio : Consider fractional
 vdsc bpp while computing tu_data
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


On 12/5/2022 1:05 PM, Lisovskiy, Stanislav wrote:
> On Mon, Nov 28, 2022 at 03:49:18PM +0530, Ankit Nautiyal wrote:
>> MTL+ supports fractional compressed bits_per_pixel, with precision of
>> 1/16. This compressed bpp is stored in U6.4 format.
>> Accommodate the precision during calculation of transfer unit data
>> for hblank_early calculation.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_audio.c | 12 ++++++------
>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
>> index f63d5824aca2..4797040a6362 100644
>> --- a/drivers/gpu/drm/i915/display/intel_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
>> @@ -510,14 +510,14 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
>>   	unsigned int link_clks_available, link_clks_required;
>>   	unsigned int tu_data, tu_line, link_clks_active;
>>   	unsigned int h_active, h_total, hblank_delta, pixel_clk;
>> -	unsigned int fec_coeff, cdclk, vdsc_bpp;
>> +	unsigned int fec_coeff, cdclk, vdsc_bppx16;
>>   	unsigned int link_clk, lanes;
>>   	unsigned int hblank_rise;
>>   
>>   	h_active = crtc_state->hw.adjusted_mode.crtc_hdisplay;
>>   	h_total = crtc_state->hw.adjusted_mode.crtc_htotal;
>>   	pixel_clk = crtc_state->hw.adjusted_mode.crtc_clock;
>> -	vdsc_bpp = dsc_integral_compressed_bpp(crtc_state->dsc.compressed_bpp);
>> +	vdsc_bppx16 = crtc_state->dsc.compressed_bpp;
>>   	cdclk = i915->display.cdclk.hw.cdclk;
>>   	/* fec= 0.972261, using rounding multiplier of 1000000 */
>>   	fec_coeff = 972261;
>> @@ -525,10 +525,10 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
>>   	lanes = crtc_state->lane_count;
>>   
>>   	drm_dbg_kms(&i915->drm, "h_active = %u link_clk = %u :"
>> -		    "lanes = %u vdsc_bpp = %u cdclk = %u\n",
>> -		    h_active, link_clk, lanes, vdsc_bpp, cdclk);
>> +		    "lanes = %u vdsc_bppx16 = %u cdclk = %u\n",
>> +		    h_active, link_clk, lanes, vdsc_bppx16, cdclk);
>>   
>> -	if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bpp || !cdclk))
>> +	if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bppx16 || !cdclk))
>>   		return 0;
>>   
>>   	link_clks_available = (h_total - h_active) * link_clk / pixel_clk - 28;
>> @@ -540,7 +540,7 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
>>   		hblank_delta = DIV64_U64_ROUND_UP(mul_u32_u32(5 * (link_clk + cdclk), pixel_clk),
>>   						  mul_u32_u32(link_clk, cdclk));
>>   
>> -	tu_data = div64_u64(mul_u32_u32(pixel_clk * vdsc_bpp * 8, 1000000),
>> +	tu_data = div64_u64(mul_u32_u32(pixel_clk * vdsc_bppx16 * 8, 16 * 1000000),
> I think it should be:
>
> tu_data = div64_u64(mul_u32_u32(pixel_clk * vdsc_bppx16 * 8, 1000000),
>                      mul_u32_u32(link_clk * lanes * 16, fec_coeff));
>
> i.e you need to divide by 16 but not multiply, because vdsc_bppx16 already
> stores vdsc_bpp multiplied by 16, which is visible from the logs,
> during testing it was for example 384 for bpp 24, so no point in multiplying
> it once again.
>
> Stan

You are right. This is a mistake. Intention was to multiply the 
denominator by 16, but I goofed up.

Thanks for catching this. Will fix this in the next version of the patch.


Regards,

Ankit


>>   			    mul_u32_u32(link_clk * lanes, fec_coeff));
>>   	tu_line = div64_u64(h_active * mul_u32_u32(link_clk, fec_coeff),
>>   			    mul_u32_u32(64 * pixel_clk, 1000000));
>> -- 
>> 2.25.1
>>
