Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 996FC76C4EA
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 07:35:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B2F10E493;
	Wed,  2 Aug 2023 05:35:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1603F10E495
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 05:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690954539; x=1722490539;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y2PKEyilYjX4d4dqMaONlC6Ota2Zq7VmbvydA1Lz5VU=;
 b=IzsJUMraNKUkw3xDRiF8rYCqhE1gMeUKvrLHJ4qZ5vfRKvvPvR265ESt
 U5k/QMYcNFiypKoY07RURJCtViZUyj9ZUQyp8pXmtRtDW28eYPUDdzf0j
 hPMV4inYtbVhCgDW+jtHZCm6eLbvG0+nx05u5+iMHTJUe/yUaSVcsohAG
 Z0NO57romKxvMRDqHnZiyw7jR06P4f6Kw/9yK2nERk1A7eUFAQlevSmmx
 Z17vFvosrDLJYzGa7G8GMWTLLEzXEUcweS4Rp3fZ6rucFdPWIVoe/0hUo
 t+/BW4tUrI9NnqXGiW/OGi+VBHIaVMvsLK46ex6o4jSnrBLjNycmhdzxc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="433325281"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="433325281"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 22:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="819053190"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="819053190"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Aug 2023 22:35:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 22:35:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 22:35:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 22:35:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LZEVkjod/8d/0gp3N4Yb+34FTS12KQkdUvdUwwOApvRFPEi1ElT1rQZv8jx4fwbf2swsCo4/2BJIw+/e4bEP8w5kX+Tr3vkfr+PBKl+ZD4T4uq77+wsOwm+jc3yrxTZKOcX4ErGV4gyHgNtgyfnBjrOQKdZ8knzkRMzvL37agtfDBcjyWZ8FY6SjF53qzVPiPjlPoVYKToRHHnYpeXbzTv38YldopObOdkXJ6j/eEy9lxKM1ivWh8GncTbSQoHKA2pRxJX+LWW58mA8eONRk2H2qLh/koPiJkN2oPz1/EDig75fCTOeDqpPUcUksaxws1n+ULrVQWCxKqLsi8LtF6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JHl3qbHQKDdoD8suxddXpOSM9zrDePJGWfuoS6ht0TA=;
 b=ZqulYE6sABWVucTQf5DD2gD7vauFAePwHe7ORVz4vphnE2D6ag2aDovfmGSMSa7QnmLA8QO/eKhCiDKnXI4YOe+ZuooTVRTdeFAU/VJri6ASNaF8znRrUM+184yTlB37n1m8u576WTktF4a7cWkJy8ciFpVvR9jKfqhPYyR/nC9IhAdF1iMWAUY0UPEJcQS/UNJwrKVrbYAB4KDQHMls5qcnke0nLh27q1rV5Tb3b8r+5g/JDLzBLn8dOebpGa9Vuq6LDKaElE0bdzGyk8Dw7qLsTVNhdtHr94UgmuvjhBwyFrq8UWRitn4Q8aeaY+ZeBCxbgGlDp1SvgT2vj5gv4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8009.namprd11.prod.outlook.com (2603:10b6:510:248::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.42; Wed, 2 Aug
 2023 05:35:30 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 05:35:30 +0000
Message-ID: <6d89454b-0c02-1739-e303-498f2c8a8afb@intel.com>
Date: Wed, 2 Aug 2023 11:05:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230720080715.3063267-1-suraj.kandpal@intel.com>
 <20230720080715.3063267-4-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230720080715.3063267-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0183.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8009:EE_
X-MS-Office365-Filtering-Correlation-Id: 252e72fe-eb67-42e6-9474-08db931a48a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zN2834ySlRlLHxJIfy3dqI/6Ckj+IVZ09OfjoyINaXTyq0I9bBZbXTaB5wCDAI9y+sRjyovM4KXWEbxqJMwMoJc6up9mL5QagDh1gimVlYl/tMt62uUI5TPLnbKMDKi2gTh/bE5NLchaPE6i/sV4qMoBeFbkM1gUMdaADU2TftyFfs8GNX0eeubI74UKSw9WwiuUj7/ryJiCiZ1Vvr7UY8FtzaY80WPZweIefZPJsX7uvBbg5EXVHJfkPC7de3tIAli6xv9erphyOlMtjsBXCiA2X9iz79WYw0Pe6ClaHMdSp2B24I7j6Pnqw5a3AZKwxwfbvoE3NQ/XHSLCL0ZE/LBovjgAEA8K1wjPmE2Jqy+SjMuqty2zmumIwPu+s5Q2vI2i1HOhAtT13bDO/XJjZ8XBCw0qO/ceMfaazpvOh/gkOCvL0vCLIq8Tohd8sGXG2Z0GOGsgT/TFG4LYBvQMwZ+oVhZfgNmWWJEj7L3Xuptxf+QUDbNZjhAapcUsH5OR5o8CFs/+zTc0cpfSveIjqhbxrIk/1sZspnVu9YfBezbJGrj+DUfL8ZnsFbi74vAi/qosTkGQTbpjyJJONxg3mfy99oPQVPp4rznv052gd5Bvj+eGVnFVc9oXhUfpzUoki39Vu52N+jHgFsLhwOxbBw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(39860400002)(366004)(346002)(136003)(451199021)(38100700002)(66476007)(31696002)(86362001)(316002)(8676002)(8936002)(31686004)(5660300002)(4326008)(41300700001)(66946007)(66556008)(82960400001)(478600001)(2906002)(6666004)(36756003)(6512007)(6486002)(6506007)(26005)(83380400001)(186003)(53546011)(55236004)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVZINjdieXNERkh5a2libDBVNDEvZHQ1K1JUbUlXLzJBV2VYY3FwYXZJL0VD?=
 =?utf-8?B?R2p3ODhpZmlpSDB4NGpzRmljcFV2MmJGazR2cVBsOHowaTNDeDc0cktBZlpp?=
 =?utf-8?B?NktLQWd4bUtOZjBZVzNkQlFTV3hDY0RpNXU1VzdwNGlBRTIwL0NVeVNuTldO?=
 =?utf-8?B?ZTF2WFhhLzNvcU9nVTBvMEFLMm40ZzlFM2RsWUtLSUZHMFE0dkRSTEMwdjJn?=
 =?utf-8?B?cUY5ODZqK1d2QmUzTXk4NGNaR2FNcUwvQjlWU3Q3V2dxQS96NlJpUVZDVTcy?=
 =?utf-8?B?MUU5aEhET0Y3UGtEUk01S2IraWVZb2g5b1VJajdpVXRqRGRHeDN3Q05USE1J?=
 =?utf-8?B?c2ExYjF5WG11YlJqSVhKTzlqOGhJWEZ4enhKQ3VrNEE1TGNpaWR1c1BqaFNs?=
 =?utf-8?B?MDNGaDF1NGpzQ1I1NHJhRjNLL3BucHVUL0dkUjlGQVZkdjZTT2c3dXRxNWYw?=
 =?utf-8?B?UjRVTDFEK21RNmZLclVOcldKTzBGVlZGZkxmdFZ5eWwxMFZiK0l5ZEZGYStW?=
 =?utf-8?B?SXY3YVBGeUloT2F5M1RuVHNoVnZhUjZyNnltN29rTTBRWldBSGZXRnJ0YWY3?=
 =?utf-8?B?TGZ1bzl0NmJ1ZnNtdnpvQnZudkNSQmgzQlY0dlJjYXhWSG9KdVVqQ0tWdStD?=
 =?utf-8?B?WFgxaVFkMlpzSzNUUGxoeWFvZ3FabDM0M2w1d1BIMzN3eXJhYkR6NFF4V0h5?=
 =?utf-8?B?YldIVm1UcW5pRjY0UzBudk55R1daS2I2Qml0WjlQWlV0OVNyRzU0VnNud0pP?=
 =?utf-8?B?YXRWbTB2L3ZTUWJsNGVjOWZRRFZEWXpKQTdqaXg0dUhuRkNJQVhFUUc5NGJh?=
 =?utf-8?B?cVNWbjdvK29BRGZ2ZXViYTJjcGxOYWFrV2hTT25WakRjUEswVUdFbThoZFBM?=
 =?utf-8?B?YVBYblpqcHRUTXM1eVBxRUFUeEphaWtiWjJXWExya1hCd3l0NCtXek9Ta1NJ?=
 =?utf-8?B?b3RDN3RUVitIQlgyWFdKcDRkUDEzcW1RbHRhUFJtN0RqTUFUUXBUajNzeGhm?=
 =?utf-8?B?Q0dCYzNYZUIxQ2VwUm44bVNDeGx4Wk8rR1Q4Mk55d3h6L0RqRVc4UVNDTnln?=
 =?utf-8?B?TkMxYVd0UHB5bUtOaTFpMndBVktVV2ZRbXdvbldZTnVodHVRNmpCZVBQVWw2?=
 =?utf-8?B?NW1CM29YUWo3Z2xhZWlkL1IzUVppSmcwR3gxNmh5SUQvOWlybEFZWFF6Ni9m?=
 =?utf-8?B?VFBpSlN1ZXJCY3ROVm9MeEJUbEFvZ1hLa3crRzg5WVBNendKckdjRXdVNTV2?=
 =?utf-8?B?YzFQSVMvK1k5RWc4SnJRbXpjQlVuQi9IaWpGYmd1dTk3bU8ycWM5NHpUM1pt?=
 =?utf-8?B?TFVNWlQzSGlUcFVmSEZIamRlZENGOUxNTTBMVXNBRjBKRndySzBxRDFhellY?=
 =?utf-8?B?cWg1MEx5c2xubU1ZOXBLTjJlSkVhK0sxUXRmMVppdUUyS0huMzgzWTRadkpn?=
 =?utf-8?B?K1RoSHVwcHhPeE56R1ZkeUhCamZuOVF4TlpWWnVKQ3ZXTTlEb0JGRzIwNnht?=
 =?utf-8?B?RDZpVkpJV1J2VzJyeXR4TW5nQmJ1cjBMcThyZE5IaXBXT1B1RloxTXFPR2pD?=
 =?utf-8?B?aDQ2RkYzNVIrSFRSMk1nT1BRVkh1TVlKUGhZa1lnUDcyT2tPejRHdHE2bGdR?=
 =?utf-8?B?K3cwaWc2THp0ckpadmFaQXVqeXZQVjZzc0xBVDRTUjRxa1l1K0I4UjV3amhG?=
 =?utf-8?B?Wm5UNVphTkh3eU1xbC9IaXJhQVQ4VjRZRytVdUxyb3hSOFR5UDhDVXlXTkI4?=
 =?utf-8?B?Z0F2cmRyYWtBK1NJMU1VTCtCenh4YmFMN1NJbG00NzBkd0ZLQ0REbjZGOGZx?=
 =?utf-8?B?WFVodlRoeCtTcy9IN0d3RFNhVFdhVGpxTnd0NjNDZUlaNnd5M2c3Ulpic0Vh?=
 =?utf-8?B?TVpvak4yVk9UcGMraU5iNm9UTW9yQWd4WktpMUNxcml6ekZ2aE1oU0NrRnRl?=
 =?utf-8?B?Sm5KQjUxV0phVkgvYnA2SUVwbEQyYnFCb3ZlSzBEeTI3ZzllWUhEcWltSVc4?=
 =?utf-8?B?TStsYWxHVis2YnRtaVp6eHNqODRndnlqSWFKNmtHQ1pUK1hpRHZzYkg4cTF2?=
 =?utf-8?B?b3dHeGg5RDN4eUxacVArVGF1SC9YMXYvY3dDYnVUMEpUaXNPTlA0TFFMTEMw?=
 =?utf-8?B?RXJmY2pEdXhFaUpUMk9xWWZTblVsSVY0SzY2dmE0ZXpOcCtpeWFBVFBXcHJF?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 252e72fe-eb67-42e6-9474-08db931a48a4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2023 05:35:30.1314 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HFD6an1/erGnWx9oddob+n5YrfMM269SGTy6lvlpdHEPgzt6Y21IICLJdY/vpYb7X3l7bUodNBfrmBUf7r+omINT8fQgC5aFry/oEwOw16w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8009
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 3/7] drm/i915/vdsc: Add function to read
 any PPS register
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

Hi Suraj,

I agree with overall approach, but I suggest that we use num of vdsc 
engines per pipe to avoid changes in future.

This would perhaps need a small patch first to get num of vdsc engines 
per pipe though, more details inline for the case:

On 7/20/2023 1:37 PM, Suraj Kandpal wrote:
> Add function to read any PPS register based on the
> intel_dsc_pps enum provided. Add a function which will call the
> new pps read function and place it in crtc state. Only PPS0 and
> PPS1 are readout the rest of the registers will be read in upcoming
> patches.
>
> --v2
> -Changes in read function as PPS enum is removed
> -Initialize pps_val as 0 in pps_read func itself [Jani]
> -Create a function that gets the required register and call that
> in the common read function [Jani]
> -Move the drm_WARN_ON one abstraction layer above [Jani]
>
> --v3
> -Send both reg values regardless of dsc engine no [Jani]
> -Don't use num_vdsc_instances stick to dsc_split field [Ankit]
>
> --v4
> -Manipulate the reg values instead of creating MACRO to change
> name of pps [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 103 ++++++++++++------
>   .../gpu/drm/i915/display/intel_vdsc_regs.h    |  12 ++
>   2 files changed, 82 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 9196329d998d..58eb19f8d35b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -303,6 +303,25 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>   	return num_vdsc_instances;
>   }
>   
> +static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
> +				  i915_reg_t *dsc_reg0, i915_reg_t *dsc_reg1)

It would be good if we can send *dsc_reg, num_vdsc in the function.

IMHO lets calculate the num of vdsc engines in dsc_get_config and pass 
it from there to the other functions :intel_dsc_read_and_verify_pps_reg 
and all.


> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	enum pipe pipe = crtc->pipe;
> +	bool pipe_dsc;
> +
> +	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
> +
> +	if (pipe_dsc) {
> +		*dsc_reg0 = ICL_DSC0_PPS_REG(pipe, pps);
> +		*dsc_reg1 = ICL_DSC1_PPS_REG(pipe, pps);
> +	} else {
> +		*dsc_reg0 = DSCA_PPS_REG(pps);
> +		*dsc_reg1 = DSCC_PPS_REG(pps);
> +	}
> +}
> +
>   static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -930,16 +949,63 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>   	}
>   }
>   
> +static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
> +				   int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	bool dsc_split = crtc_state->dsc.dsc_split;
> +	i915_reg_t dsc_reg0, dsc_reg1;
> +	u32 pps_temp;
> +
> +	*pps_val = 0;
> +
> +	intel_dsc_get_pps_reg(crtc_state, pps, &dsc_reg0, &dsc_reg1);
> +	*pps_val = intel_de_read(i915, dsc_reg0);
> +	if (dsc_split) {
> +		pps_temp = intel_de_read(i915, dsc_reg1);
> +		if (*pps_val != pps_temp)
> +			return false;
> +	}


With the num of vdsc engines available we can have a loop something like:

intel_dsc_get_pps_reg(crtc_state, pps, &dsc_reg, num);

for (i=0; i < num; i++) {
     pps_val[i] = intel_de_read(i915, dsc_reg[i]);
     if (i > 0)
         if (pps_val[i] != pps_val[i-1])
             return false;
}

return true;

> +	return true;
> +}
> +
> +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_state,
> +					      int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	bool is_dsc_eq;
> +
> +	is_dsc_eq = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
> +	drm_WARN_ON(&i915->drm, !is_dsc_eq);
> +}
> +
> +static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	u32 pps_temp1, pps_temp2;
> +
> +	/* Readout PPS_0 and PPS_1 registers */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
> +
> +	vdsc_cfg->bits_per_pixel = pps_temp2;
> +
> +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> +		vdsc_cfg->bits_per_pixel >>= 1;
> +
> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +}
> +
>   void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	enum pipe pipe = crtc->pipe;
>   	enum intel_display_power_domain power_domain;
>   	intel_wakeref_t wakeref;
> -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0 = 0, pps_temp1 = 1;
> +	u32 dss_ctl1, dss_ctl2;
>   
>   	if (!intel_dsc_source_support(crtc_state))
>   		return;
> @@ -960,36 +1026,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>   		(dss_ctl1 & JOINER_ENABLE);
>   
> -	/* FIXME: add more state readout as needed */


We are still reading 2 PPS only so lets retain this line in the patch.


Regards,

Ankit


> -
> -	/* PPS0 & PPS1 */
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
> -		if (crtc_state->dsc.dsc_split) {
> -			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -	} else {
> -		pps0 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> -		pps1 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> -		if (crtc_state->dsc.dsc_split) {
> -			pps_temp0 = intel_de_read(dev_priv,
> -						  ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
> -			pps_temp1 = intel_de_read(dev_priv,
> -						  ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
> -			drm_WARN_ON(&dev_priv->drm, pps0 != pps_temp0);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -	}
> -
> -	vdsc_cfg->bits_per_pixel = pps1;
> -
> -	if (pps0 & DSC_NATIVE_420_ENABLE)
> -		vdsc_cfg->bits_per_pixel >>= 1;
> -
> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +	intel_dsc_get_pps_config(crtc_state);
>   out:
>   	intel_display_power_put(dev_priv, power_domain, wakeref);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 785ede31116e..862dc708c5fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -78,6 +78,10 @@
>   /* Icelake Display Stream Compression Registers */
>   #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
>   #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
> +#define DSCA_PPS_0				0x6B200
> +#define DSCC_PPS_0				0x6BA00
> +#define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0 + (pps) * 4)
> +#define DSCC_PPS_REG(pps)			_MMIO(DSCC_PPS_0 + (pps) * 4)
>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>   #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
> @@ -88,6 +92,14 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> +#define ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define  ICL_DSC0_PPS_REG(pipe, pps)		_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
> +#define  ICL_DSC1_PPS_REG(pipe, pps)		_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>   #define  DSC_NATIVE_422_ENABLE		BIT(23)
>   #define  DSC_NATIVE_420_ENABLE		BIT(22)
>   #define  DSC_ALT_ICH_SEL		(1 << 20)
