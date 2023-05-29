Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 600637143C1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 07:32:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC0210E205;
	Mon, 29 May 2023 05:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 344AE10E205
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 05:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685338358; x=1716874358;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9MN6CwrenENk4dM1ZXS9k77oU8BFRvV4aO+0arXWS3g=;
 b=T4e+REdsOb/YbkLmgpRoaqQpLoqW7pjHGb7u+ZkqYicESRA5kymv6MFz
 uzPS3ut+XeKb4h2o9uSiFg3cm+ASZ+JueEs8KfKz49LjHufajr/SmcT7f
 iYXq/pJnAIKnqeqOyysAVM8xCxzTPVYLVYygyu04HA3qI/nGbjTOgKj+l
 AasIf5y8fu3rBwCcyZHlgub7aF6V1FeZUS5yrCMxMb0RR/k6+NQ6YyzSF
 rO0LqR1wVjjYp99lsPVofXmO3g5U8bEzvAcrZtg3oryLOi8VNeXUr1R9I
 uq5G81nfwkWa5W/Z3xhwtAjEOcRI5XgSavrVifn2bJWRAYmJOmDQZezHd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="334977725"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="334977725"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 22:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="683436676"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="683436676"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 28 May 2023 22:32:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 22:32:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 28 May 2023 22:32:36 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 28 May 2023 22:32:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hwRcMF95i8IfH44d6I0fFj0yY0H7sIXVjZ7LrU73RZItLkSc8QcyaALE6Mqz7XVylhqJy5/kTMBCIrO6owKui4YZ2xdQSSMU64KHyfR19O0S0N3zzgqbABIYZt73hL0zW4oFWUsN8KsFVzoTzlhuyqg6WimCh+Y3wZbnCU6O26cUrdLjSjmgu5Mx7L5pk2adDbgpOsoV0FfojtBirPoDShsUK7qivnZ6HV0M9CoMrMq8eYffa6KltekJwkyNgWQ7qP0Mggf3YKFZQMTRYMK7d83sour3nsLFU4jRxrT/ucRKTGkv1mGOJMgI6P1f/cl2zSMoNx2gUHzLasVBcKICZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VOik7ICgNNmWuMw9gLvufYCmZNaI95DhixPy3v7mGQ8=;
 b=H778OGZ/mFFLRn85mcONVg21pY8JVVcUKOKJENeJvevSy5MS30677XINDvP7ZZv9939CQ8yZ9Pfs+53I6ne4XrHJ718+VLl09Gk5+oQhrwtBhzIxAKM6TpxF/XKCDdjGIZfo9aABaHSSK+oTTZ0GnHIjKAkjAN2xIJNjHrjZMF54ghej+e5ojQw/FtPuC2cnSu5nsgzLbLuy0fMhqRSM23NmpCTwVOzY31PZVk1JZgSalAh5/pkSy1dKan4gKKSaJtBFMHg2SRlQJq0U64l2tua9vpLIPSn/BFWMyzNctDeeOIL7NJ46+JjOCa6RGqXaMSsGe3nXq2ysWaA264J/BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5147.namprd11.prod.outlook.com (2603:10b6:806:118::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 05:32:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 05:32:33 +0000
Message-ID: <9db28b67-fe6a-0eee-dbc9-de7af886560b@intel.com>
Date: Mon, 29 May 2023 11:02:25 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <bdf6435c98ebc3c89785ca8227b14b23f16cea95.1682077472.git.jani.nikula@intel.com>
 <904309a6-2aa0-ce72-cb35-10447d7108ce@intel.com>
In-Reply-To: <904309a6-2aa0-ce72-cb35-10447d7108ce@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0120.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5147:EE_
X-MS-Office365-Filtering-Correlation-Id: 596fa152-8d4c-41df-f1ec-08db60061a3c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mdyBulirgGF4AKOFcg7/Xtwamt38ePk1wpbZq0jhZqkJerkyaMJ79sAVsvjkUOiZZU31QtNfPELAWC+I49YDh6OGWREYPr4qJ20MeUIaDy7PuP7lx9R8tlAh9/+m82QFwVgmA1zv4HCQ/N+ujuWyPDqq+0UlmDb2znGuxMs0tCRDbj5h+5Sm+T/zGPR7ziOU+A29nOT6MRlVw64hxStz69BZL9na1i8zwJV+XADncM1K9jl5uh+uTfllidGzU0aSU8P/QWUVO88klJOfEkI/hi/966K1uR9n1KV72FNLFxWfDSk1RfZ0dJFXaCTXZb/DTsu0qAqts2POvEOtgkhl1z0m6IdMM3A5wpEVXxi6azMJpyFvEgTBMPRPGNQBiJxSJZ4N7b6pYhdFnE4vEupyuneefIx7+wSYyUISJUsJ//KxGQaam0XWHwveo2BlRDajGqVcg2lTt+AYvlrBUERpa9WTu9Iv2btks90ETfoDQSqYPxQHZXVcZklRLye7loQcZ2kAtx6HkoiJOvQ4L9h+wyHkEviFmoLRhcK53CcTBBYMXsFuR/bNanSfw3G/2JkmDa8iUmsFVweonQt+ZNyrDG4WCmOu/kp7uB/c69rzPiTzeqK4zhu4O5AX3R2TI6B2O0rB6DfnC7jGnTFjRusEPA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(136003)(366004)(346002)(39860400002)(451199021)(38100700002)(2616005)(41300700001)(31686004)(83380400001)(55236004)(53546011)(6486002)(26005)(6506007)(6512007)(186003)(6666004)(478600001)(66899021)(66946007)(66556008)(66476007)(316002)(82960400001)(5660300002)(8936002)(8676002)(86362001)(31696002)(2906002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eC85WHhqYWg4OHdJYjc2eXRWbHpZQVVKNFdoenBVazN3YXk5bWdRcEI5Nnd6?=
 =?utf-8?B?cnBIc2l5anNiRGRDSW5jZWsySjZjRGZESmRWbUdpUjVNM3NBZ0cyWmlnUWxQ?=
 =?utf-8?B?SUc3NTl6WXJ5QTZZakhOWFdSNjI3ZE1QZWVZcTdmNSszY0RBdmRLUERHV0k1?=
 =?utf-8?B?cHcvam1JVTZLeEczbjdRUFBXNm5jbVNETGorQk9PYmNSUW9nZ1ZGWEI2VmpU?=
 =?utf-8?B?NjVZTVpjL0dsSm5CL2IveGFvTDNuWGRJTWtra2kwaGlCYUlMMUc4Uy96QnZa?=
 =?utf-8?B?OUo4MytrVnJkd0JzclVGU0pHU0lIanNyRm9XWm51djhqY2JaclhJRkhiQmlE?=
 =?utf-8?B?UGo0eVcrMEcwRVhVSVdDekNISFU2VzJtbVFkb0J1T1hvdnloQ053Ti9oNDBm?=
 =?utf-8?B?dk0wb3h0UHA5QW05OW5LU3hOWHVsUVdIN1VBYm5kNzBGUEEwZkRCMXFrQzFp?=
 =?utf-8?B?azFKRlpmMFdud3gzOVFndG44azkydjRQRnNyTjVPRFlvdlNIaDZwdzhlTzc2?=
 =?utf-8?B?alVBOW05ZGFhTWt4OEN2Qmp3eDl0aDNxVWVmLzBXd3lyUUhhZTkzVjhib0Zt?=
 =?utf-8?B?b2NXY0Fwem9ieFNIQXRGbE80RTB5SHg4Vmo2TDV5TE52L0tZY0RRTzVKdnph?=
 =?utf-8?B?U29HRlErVFBZWnlMakpEc2FndGIyRU8ySlJMdzcyaHVnRXhidS9BNHpxMnBW?=
 =?utf-8?B?UnlMbHVicmhVbTBKdnBBMmFleEtBUGVKcjZhL21YYmo1clFBZERWRVJIZjZh?=
 =?utf-8?B?NVV3UTEvY293YVNVTStTQ0hNeHNxdCtodkx1UHYyY1ZtRGFzQUhqUTVIeDM1?=
 =?utf-8?B?djJOR3FXV3VoTE5xVVhCTEZJNjRUMks5Z0gwYTJlR2pkMjg4aEwyN1lieVR4?=
 =?utf-8?B?NUFra2tWS3AwaXFHWTNSejZyOHhQL2dkL3ZNOXJVdGpiNXRWVUNhd2lVT2Vp?=
 =?utf-8?B?ZTl2NHFzamtGcmFJQVJZZDY3Z1pnTGFrSDQzbVIyRUtSaTA0MkhzQ1lzd0Nr?=
 =?utf-8?B?cC9yYXZoYTMzYkR6WEVWR2o0Uks0V0FvbXk2NzE3eGU5aUUvZmpzNG9sMHYx?=
 =?utf-8?B?RnBIelIzbEEzMXBERkcwSDNpc2xhRDd4ejh0ZzI1WlN0anJKTng0TTI0czZ6?=
 =?utf-8?B?RjVhc01LOGU5OUswb3Vhc0JHZ1RtSmVORWg3cFpQSUZaei9MQmlmb1BhajhZ?=
 =?utf-8?B?bFQ4S2JUMHErNnNNL0RyTWpqSzlnMkVxNFpVdW9tS3FEVEdrbE1QUUNNdmlR?=
 =?utf-8?B?Ri8yVFdpRTVMR0JnZmpsTGJmOTJaVVV6blppRnFkRjU1SEwxSElZWGJZS2tr?=
 =?utf-8?B?dWVJZHdiN1REekdhK2VPQ2pWM1YxUU51aEVRTmNPc1kxYkcvaUlGRmZsbmRP?=
 =?utf-8?B?L3NWWVFkNzViYzA4d2c4Ny9RdTg3enhPS2pTL29xS1B2RjM4V3FMTzZlSXFh?=
 =?utf-8?B?UUJ2ZnQzbU54UDYzczBmYTNDSnEyUjJvTStkWnlMV3dkVDVLWGZlTXBxOGlm?=
 =?utf-8?B?U1M0Y0ZzTXJIQ2dVNkdidkY0SGpacmVYaGdBblhZcGtMd3NpeTJvRkEyYTJP?=
 =?utf-8?B?N1BBY3ozbktFeXc3bFA1cFFNYjVVcis2RE9FSkkxSnhzR21heEZKeHFSWnFr?=
 =?utf-8?B?eEJOYWRLanRSREVOUmgxMytob3l0eVZmV3BvQkVRQlJLSktnMWFDclZ2N0F3?=
 =?utf-8?B?Tm4vYTFaZVBITHVHKzR0M1hpVTJmWDNRdElVRHV2ZWpTRzk5dUt1NERDcmlB?=
 =?utf-8?B?eUFyNHhadjJLQ1BncWhkYjJyRkQ4eGR2YkI5RVJXYThzb2NvUnhUQUJ0SG44?=
 =?utf-8?B?cURYUDdoMW1JazlqN1UwK01QdFhuMkUxR0JJZzZnbTJZWFBpVTFaWEs2elM3?=
 =?utf-8?B?ZXBEb1F3Z1BUa0NSSk1kUkJzU3l3WnNBRWRkak9HcG1XVE5pd01FeFRzT0pZ?=
 =?utf-8?B?OEwrOUdlSTg0cHVsK3MrcXF4WUhqSDFrd2lLc0dtdU14ZURMTVFNQjh5Rm1D?=
 =?utf-8?B?STlEbCtvNnV3WE9xYjZsVTc1S1VLZjBmZ3NJMUp0aUdZRzZqRlZjQVYwZnBj?=
 =?utf-8?B?NWNiZlVTT05pM3dOaEVCZnlYb3VqRDB4RmNvMWljQnRuSU5zanlHeTVJbWFZ?=
 =?utf-8?B?WmtmSFZ4V29IbFRUM1dKRms1SjFmYm5DZkp2VG5GVjgzR1g1NHN2cXdtbHND?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 596fa152-8d4c-41df-f1ec-08db60061a3c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 05:32:33.1604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 546Ko1uEPtjP1m/OLtVHJiej355ARI5NnUlEDK6evt0BpesnBTriIbEjhD6jLOOTD9DxXOPUkwmT/uqopVYoqtD8SSCflw9FXIt+s/eI8dI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5147
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/dp: stop caching
 has_hdmi_sink in struct intel_dp
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


On 5/29/2023 10:52 AM, Nautiyal, Ankit K wrote:
> LGTM.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

(This patch would require a rebas.e)

Regards,

Ankit

>
> On 4/21/2023 5:17 PM, Jani Nikula wrote:
>> Use the information stored in display info. Add intel_dp_has_hdmi_sink()
>> helper to access it.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +++---
>>   .../drm/i915/display/intel_display_types.h    |  1 -
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 21 ++++++++++---------
>>   drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>>   4 files changed, 15 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c 
>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 29e4bfab4635..9b462dd8bb14 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2800,7 +2800,7 @@ static void intel_ddi_pre_enable(struct 
>> intel_atomic_state *state,
>>             /* FIXME precompute everything properly */
>>           /* FIXME how do we turn infoframes off again? */
>> -        if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
>> +        if (dig_port->lspcon.active && 
>> intel_dp_has_hdmi_sink(&dig_port->dp))
>>               dig_port->set_infoframes(encoder,
>>                            crtc_state->has_infoframe,
>>                            crtc_state, conn_state);
>> @@ -3109,7 +3109,7 @@ static void intel_enable_ddi_dp(struct 
>> intel_atomic_state *state,
>>       drm_connector_update_privacy_screen(conn_state);
>>       intel_edp_backlight_on(crtc_state, conn_state);
>>   -    if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
>> +    if (!dig_port->lspcon.active || 
>> intel_dp_has_hdmi_sink(&dig_port->dp))
>>           intel_dp_set_infoframes(encoder, true, crtc_state, 
>> conn_state);
>>         intel_audio_codec_enable(encoder, crtc_state, conn_state);
>> @@ -3736,7 +3736,7 @@ static void intel_ddi_read_func_ctl(struct 
>> intel_encoder *encoder,
>>                       pipe_config->fec_enable);
>>           }
>>   -        if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
>> +        if (dig_port->lspcon.active && 
>> intel_dp_has_hdmi_sink(&dig_port->dp))
>>               pipe_config->infoframes.enable |=
>>                   intel_lspcon_infoframes_enabled(encoder, pipe_config);
>>           else
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h 
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 9c9b771cbcbd..17681a8e745c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1669,7 +1669,6 @@ struct intel_dp {
>>       u8 lane_count;
>>       u8 sink_count;
>>       bool link_trained;
>> -    bool has_hdmi_sink;
>>       bool reset_link_params;
>>       bool use_max_params;
>>       u8 dpcd[DP_RECEIVER_CAP_SIZE];
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index cda69861b00a..1708277547f3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1201,6 +1201,13 @@ void intel_dp_compute_rate(struct intel_dp 
>> *intel_dp, int port_clock,
>>       }
>>   }
>>   +bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp)
>> +{
>> +    struct intel_connector *connector = intel_dp->attached_connector;
>> +
>> +    return connector->base.display_info.is_hdmi;
>> +}
>> +
>>   static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
>>                        const struct intel_crtc_state *pipe_config)
>>   {
>> @@ -1265,7 +1272,7 @@ static int intel_dp_hdmi_compute_bpc(struct 
>> intel_dp *intel_dp,
>>         for (; bpc >= 8; bpc -= 2) {
>>           if (intel_hdmi_bpc_possible(crtc_state, bpc,
>> -                        intel_dp->has_hdmi_sink, ycbcr420_output) &&
>> +                        intel_dp_has_hdmi_sink(intel_dp), 
>> ycbcr420_output) &&
>>               intel_dp_tmds_clock_valid(intel_dp, clock, bpc, 
>> ycbcr420_output,
>>                             respect_downstream_limits) == MODE_OK)
>>               return bpc;
>> @@ -2646,7 +2653,7 @@ static int 
>> intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
>>   static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
>>   {
>>       if (drm_dp_is_branch(intel_dp->dpcd) &&
>> -        intel_dp->has_hdmi_sink &&
>> +        intel_dp_has_hdmi_sink(intel_dp) &&
>>           intel_dp_hdmi_sink_max_frl(intel_dp) > 0)
>>           return true;
>>   @@ -2812,13 +2819,12 @@ void 
>> intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>       if (!drm_dp_is_branch(intel_dp->dpcd))
>>           return;
>>   -    tmp = intel_dp->has_hdmi_sink ?
>> -        DP_HDMI_DVI_OUTPUT_CONFIG : 0;
>> +    tmp = intel_dp_has_hdmi_sink(intel_dp) ? 
>> DP_HDMI_DVI_OUTPUT_CONFIG : 0;
>>         if (drm_dp_dpcd_writeb(&intel_dp->aux,
>>                      DP_PROTOCOL_CONVERTER_CONTROL_0, tmp) != 1)
>>           drm_dbg_kms(&i915->drm, "Failed to %s protocol converter 
>> HDMI mode\n",
>> - str_enable_disable(intel_dp->has_hdmi_sink));
>> + str_enable_disable(intel_dp_has_hdmi_sink(intel_dp)));
>>         tmp = crtc_state->output_format == 
>> INTEL_OUTPUT_FORMAT_YCBCR444 &&
>>           intel_dp->dfp.ycbcr_444_to_420 ? 
>> DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>> @@ -4711,9 +4717,6 @@ intel_dp_set_edid(struct intel_dp *intel_dp)
>>         /* FIXME: Get rid of drm_edid_raw() */
>>       edid = drm_edid_raw(drm_edid);
>> -    if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
>> -        intel_dp->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
>> -    }
>>         drm_dp_cec_set_edid(&intel_dp->aux, edid);
>>   }
>> @@ -4727,8 +4730,6 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>>       drm_edid_free(connector->detect_edid);
>>       connector->detect_edid = NULL;
>>   -    intel_dp->has_hdmi_sink = false;
>> -
>>       intel_dp->dfp.max_bpc = 0;
>>       intel_dp->dfp.max_dotclock = 0;
>>       intel_dp->dfp.min_tmds_clock = 0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h 
>> b/drivers/gpu/drm/i915/display/intel_dp.h
>> index ef39e4f7a329..803b0822c661 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -62,6 +62,7 @@ int intel_dp_dsc_compute_config(struct intel_dp 
>> *intel_dp,
>>                   struct link_config_limits *limits,
>>                   int timeslots,
>>                   bool recompute_pipe_bpp);
>> +bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
>>   bool intel_dp_is_edp(struct intel_dp *intel_dp);
>>   bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
>>   bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum 
>> port port);
