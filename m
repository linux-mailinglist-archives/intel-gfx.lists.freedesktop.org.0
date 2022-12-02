Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB457640E1F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 20:00:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FCE810E0C8;
	Fri,  2 Dec 2022 19:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFBE010E0C8
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 19:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670007651; x=1701543651;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=aHzHfT3rRickmeluUfn8pqBxKMxTHBPrPJpF8ZxMeR0=;
 b=RXlmjqhk/imDsFX+vpq7PqC1h+F/CjFbAIw8CqXY9KuqhK13wT02ifQk
 9LEkqEX6QxgCz8K0/5faGkpIFc/0iqzFEjNTpM7vIPdD+eY6RZ65C2ni7
 jNiquIOa+81yIcg0rNQxyMES2up3xmJt9Wu4qWUngACwhUwsI4rPg2Ikl
 FB4APJ1dMAKIGlOOemff3hNKaZH9BUjwnNSm4u3JYrEjHH9OivOlcY0Lp
 qcv2y0TS4UfU/9k3MmzyTvTBWrZ36RGdUe1r1uLfjpO5z0kSHP0nJRqAO
 m6sWXfqqiKKodJ+bEwD6EiQ6f0UZGOJAPS/G8d1fpT6Vw4+o1zZRfHyB7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="314729838"
X-IronPort-AV: E=Sophos;i="5.96,213,1665471600"; d="scan'208";a="314729838"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 11:00:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="713724128"
X-IronPort-AV: E=Sophos;i="5.96,213,1665471600"; d="scan'208";a="713724128"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 02 Dec 2022 11:00:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 2 Dec 2022 11:00:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 2 Dec 2022 11:00:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 2 Dec 2022 11:00:34 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 2 Dec 2022 11:00:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IyJBVAeecaetm6XosG4zC46qzpcoVZxbMSSS9JMWMaJW9GjfLM3N4iFssueH1Zv2OK7Q5DvNzv43k+JaaGqPfRsri0mV1rJlf3kt34ddJGe2mIYjp1a1ejpsZPspS6lqljUi9HjWxddtzY3uszJ86dCYabVpb/axjSq0V+HBFowR8D25ne9yDA4uRnOLGmf9m1wc0Ikh4UhXXQM+6WBqrAnbbrqvYgh2LfO5J5W3wQYajTs/P9tOsi0vxLFazz7v2I1kVHHhFwKFmTopciMiHZaAhfBCZOwYPNpRrKFOvwwEd1j/A+UdDCDQ3gwp+mLN1DxZx0yxBxfbeFyTODVz7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NCMkEMDVjR6XW5Q2c0FGy5dy7ozmkZYoKOKP6O2YpPg=;
 b=J3uDINVAumRwR5ZSW7JWf6ho7o4lxASaymi/gCj/2nEJtnu8HhZU5/C4Bger96Ng1U5kiTuRAXjPWlHfnXm7HJRNQ3yGm8OiJevxO0J+QDPwHReGHxLE/QyxwOMTvOiTYYEfzy4TSTYYLoE2ySczAtbmrTEzaQodxvSsuIXyfPy1czJmU6c55+DKjTk8nkzuD58ZmH6jWnkPTn1DKxkYfTwN+9L9ej3gfaFhU02c+VLr3S57utKcHRlxkq4gqVGydgKcjHQRZEoB2d1ba4EFMk2Pw2MJZNRj2hzOOxkvDctoohlBBYPmm79cf11R9ggWZuEBn+Lt9UfyjfHnGshCFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by MN0PR11MB6230.namprd11.prod.outlook.com (2603:10b6:208:3c5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Fri, 2 Dec
 2022 19:00:31 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.008; Fri, 2 Dec 2022
 19:00:31 +0000
Date: Fri, 2 Dec 2022 11:00:29 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <Y4pLTSxA+BYsZKco@mdroper-desk1.amr.corp.intel.com>
References: <20221202165143.82538-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221202165143.82538-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BY3PR10CA0014.namprd10.prod.outlook.com
 (2603:10b6:a03:255::19) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|MN0PR11MB6230:EE_
X-MS-Office365-Filtering-Correlation-Id: e3e0e2e2-996d-40cf-6633-08dad4977c2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ldRWsVk4h45vkFxOkRNJvzp07RqOyqLUDqgf2Rv8DEFSHI6971YnxI1CYLv2KlA4ziT5CXAOEi827sfteP9EtzcBFti8tzazZywhSMSgUfNm/ElAAj3GMQ4kl3PLIiFOuz50Z/RRmICSKYxjg9YFignQOkhJ1oF8wAKj6pIZ8uY52NegiD6KK6IuR9JNmW8BF39U2v7zsCJglp+SVZjRJeFwBbdfsHtXlR6HjrKQ+ha/JYAGc+Rvtixlv9EOqGMiw8nWWtzpk2HLR2VUqFYskhZzNJv9FOSubotpaYsbonOy9inrY6lG6UD2GkmVWZFzu8N+wEpSv/dibMicYqdZ/fSLdo7XvotzpehnAa26n1MQyZldxHrOc5iVvFy9s6Bl8w2PDo6zK6A9HWJ6r7OZ7eUMjjEpMLicL3eEtSBzEfkeGCOuYB75wFp7kjHTMJXYNXCgihhxYYc4r9sFShZtCMX19ZX8cUN2S6MEsAb+92/VTmIbZ79gA/Had5XCZCC/ZA/wF5tzfAVXnyymfgVdPwa7BAB6KNtAgbAceGd2Z5HsVTuw6XuU42RLED/QE5C+LGO2I4z9KRPEk+UiYPDKyKjjoL+GoIxVosUsY+5bsC8iYbTV7JTy6GyQsEu6QPsfi0hyDEHL4HhtJlFv5L7oVulJjHEZVl07Q286w47TbU5PqpFXIyoKqWfJhtc49Iq3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199015)(66476007)(6636002)(41300700001)(66946007)(8676002)(5660300002)(8936002)(6862004)(86362001)(107886003)(66556008)(6512007)(186003)(26005)(66574015)(83380400001)(6486002)(478600001)(4326008)(38100700002)(316002)(6506007)(2906002)(82960400001)(66899015)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?H/DvhA5SUR/PEyfwx7o2E4GG3PtcIz4+8qCdwu6NGis3zmNV8npM2IWb9t?=
 =?iso-8859-1?Q?pVaAoua64X2wbGshxjxXWqNFF1EdvtEN+XPQ1gRLvwJ4t8qRWaalyaFIK8?=
 =?iso-8859-1?Q?x31NVhc2NUSAsZRruuIVyCFr1tMcHwUlWo+BLN39u8FFg0WJwjwoT4VCcT?=
 =?iso-8859-1?Q?PlYBLUi/5Jkg6Rsq1H6FaflvD/eTK3MInmXM8whx7xD09yDnXxB2LTiMH1?=
 =?iso-8859-1?Q?YnRvApIQnRrRdOVuoK7aqiKcTiQP45wBlaIwMw5pcNw10AkLJQGVIYpHp6?=
 =?iso-8859-1?Q?t3g8cMdf4NnZ55DnoiXq7dBEhvr3Ikg+mXPwXVfmdG8YZaoRO1mByLrHav?=
 =?iso-8859-1?Q?eXPNmgp5a6px4lr6ZXdeg4/ngxfR/o+CrE4ghkgtlpmHYqZZsqxhew3ne5?=
 =?iso-8859-1?Q?U8niK011XwYPr7/wNlqWN1jxP7VVghXVZlNdWQ/YsV16MEZCt3vgid7bfj?=
 =?iso-8859-1?Q?SVwQKjdXIUolnjVi4WWCUdUuMaIi7vBXDCxUigJZnpf6d227iiR/XQnoWC?=
 =?iso-8859-1?Q?NHNN7oUJIM11CABXSSywZ1yMdOIUGFOTvjBfY6U26d0lw7mXERzFkQ752U?=
 =?iso-8859-1?Q?/Yhchx7YDlDx1x8nuqfUOfCIvH+tHjlRHf6Pu6Sc8ig9DSW/gdKHsAXbSU?=
 =?iso-8859-1?Q?KcLYQzNxU0p5/ykSn1mZFaHovshAUHiMRURkmSc9inDfjmTqvy3eo3qKhy?=
 =?iso-8859-1?Q?zMw5CiYBmNqRfgje4C0fPntHt/JkJTUXNJuePZr61R3zTTGh7MYAUg8Ps/?=
 =?iso-8859-1?Q?HGRRl4Mh0fnHH6Z4wTf3jBbhayrkbbmbIRoOfdtqKiTWRT6azriu6a5S/f?=
 =?iso-8859-1?Q?TvAZJ4iYdoh6bR/6rHU/Lr9mAoOp0815NH5brvrcwz/I/NJFK8t+0czdB1?=
 =?iso-8859-1?Q?B/ZsQUQCOvQRIoodrzhe5Z6h9HNZnAvfGOmV91nKeSqfirxIIqOXNsxavm?=
 =?iso-8859-1?Q?xEUPuCA4MKnNzUzUdOI5ArFbDOLe6wcWZq/70iC2SANgWIFO38frOHxJNH?=
 =?iso-8859-1?Q?gfAV0PJUH9VzAK2HK7XzaDDi6FNDiVUHi5NE15hf2uIA+ZAVW9Y+cFnP6t?=
 =?iso-8859-1?Q?vfU+IlzybTajQ4HdzAA+59AtQ+IYgkulq7VmGZZVJMAyHiNuOY3U+sGSLG?=
 =?iso-8859-1?Q?3p+COB4z2L8yM0lq3/yDB8jZ77CiALK0OdiOj18XEhiKNWL8H/JfbKpAXt?=
 =?iso-8859-1?Q?4lr8l2OL4TUo3siZz4rIDOYiU4XMGqjBNrezuh9bLjLWKyyVNmr4mFi/6L?=
 =?iso-8859-1?Q?Cfp1TKpYYi8HoYWP/UVQMr+PFzuM5CTdfgeNe6/RriwCKSaSQKMaRFh2nl?=
 =?iso-8859-1?Q?lxGCaasbG9RRk2COTqFBCvVaeG9twBOshyZhDB9rkdHEk4ihkpiUHn4NAF?=
 =?iso-8859-1?Q?iO6TAmT2g6GKT331VGWWNGZR6FmQQDuSnAQFy03J6ai+xcAwf0V6zLRYhM?=
 =?iso-8859-1?Q?7vejUaqru3AcAWhgu4UNeDDvSHthJlaAEg9zSikxCgk/4kILOCaOWuL/FO?=
 =?iso-8859-1?Q?vBldkvBzvqi12IQWnCove9NCqM2ILKgcEObjjEQF/p7/uu7T15U6INl2T/?=
 =?iso-8859-1?Q?JwUcTbQ2Be1gBzrXFpsdeX1086nDQ/BfPQrd+NdZWmiUuEVxr/bF3TW9m/?=
 =?iso-8859-1?Q?QkTritd7QWjvi4QYUiD9dZ8TvF5PdTs+P7GSbzdbtwJpT6UB3YEAztCQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3e0e2e2-996d-40cf-6633-08dad4977c2b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2022 19:00:31.6746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m9dztXvYavwyTLqcfP+c9ITgHGfrl0yXhQ+TazplSK0g2i9TUJ6IhT0cT9tfB1mGGx3Nh3OE6z3RprebebNlxNw2VwIbFxlV5Vw5C0sV0Y8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6230
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Patch v2] drm/i915/mtl: Initial display workarounds
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 02, 2022 at 08:51:43AM -0800, Matt Atwood wrote:
> From: Jouni Högander <jouni.hogander@intel.com>
> 
> This patch introduces initial workarounds for mtl platform

It looks like this patch is only dealing with workarounds from past
platforms that carry forward to [some] MTL steppings.  I assume the new
MTL-only workarounds will roll in in the future?

As far as historic workarounds that need to be extended to MTL, it looks
like you're missing Wa_16015201720 (i.e., an update to
pipedmc_clock_gating_wa).  Also, since you still have comments listing
platforms, Wa_22014263786 also applies to MTL (the code is already
correct, but the comment is now stale since it doesn't list MTL).

> 
> v2: switch IS_MTL_DISPLAY_STEP to use IS_METEORLAKE from testing display
> ver. (Tvrtko)
> 
> Bspec: 66624
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c  |  4 +++-
>  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
>  drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
>  4 files changed, 28 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index b5ee5ea0d010..8f269553d826 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1095,7 +1095,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	}
>  
>  	/* Wa_14016291713 */
> -	if (IS_DISPLAY_VER(i915, 12, 13) && crtc_state->has_psr) {
> +	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> +	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> +	    crtc_state->has_psr) {
>  		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
>  		return 0;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index e82f8a07e2b0..efa2da080f62 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -537,7 +537,8 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
>  			       0);
>  
>  	/* Wa_14013475917 */
> -	if (DISPLAY_VER(dev_priv) == 13 && crtc_state->has_psr &&
> +	if ((DISPLAY_VER(dev_priv) == 13 ||
> +	     IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) && crtc_state->has_psr &&
>  	    type == DP_SDP_VSC)
>  		return;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5b678916e6db..7982157fb1ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -797,7 +797,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
>  		return intel_dp->psr.su_y_granularity == 4;
>  
>  	/*
> -	 * adl_p and display 14+ platforms has 1 line granularity.
> +	 * adl_p and mtl platforms has 1 line granularity.

s/has/have/ while changing this line.


Matt

>  	 * For other platforms with SW tracking we can adjust the y coordinates
>  	 * to match sink requirement if multiple of 4.
>  	 */
> @@ -1170,11 +1170,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  				     PSR2_ADD_VERTICAL_LINE_COUNT);
>  
>  		/*
> -		 * Wa_16014451276:adlp
> +		 * Wa_16014451276:adlp,mtl[a0,b0]
>  		 * All supported adlp panels have 1-based X granularity, this may
>  		 * cause issues if non-supported panels are used.
>  		 */
> -		if (IS_ALDERLAKE_P(dev_priv))
> +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
> +				     ADLP_1_BASED_X_GRANULARITY);
> +		else if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
>  				     ADLP_1_BASED_X_GRANULARITY);
>  
> @@ -1185,8 +1188,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  				     TRANS_SET_CONTEXT_LATENCY_MASK,
>  				     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
>  
> -		/* Wa_16012604467:adlp */
> -		if (IS_ALDERLAKE_P(dev_priv))
> +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +			intel_de_rmw(dev_priv,
> +				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
> +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
> +		else if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
>  
> @@ -1362,8 +1369,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>  				     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
>  
> -		/* Wa_16012604467:adlp */
> -		if (IS_ALDERLAKE_P(dev_priv))
> +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +			intel_de_rmw(dev_priv,
> +				     MTL_CLKGATE_DIS_TRANS(intel_dp->psr.transcoder),
> +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
> +		else if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
>  
> @@ -1625,7 +1636,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>  
>  	if (full_update) {
>  		/*
> -		 * Not applying Wa_14014971508:adlp as we do not support the
> +		 * Not applying Wa_14014971508:adlp,mtl as we do not support the
>  		 * feature that requires this workaround.
>  		 */
>  		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a8a5bd426e78..0ad206f76b7b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -727,6 +727,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
>  	 IS_GRAPHICS_STEP(__i915, since, until))
>  
> +#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> +	(IS_METEORLAKE(__i915) && \
> +	 IS_DISPLAY_STEP(__i915, since, until))
> +
>  /*
>   * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
>   * create three variants (G10, G11, and G12) which each have distinct
> -- 
> 2.38.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
