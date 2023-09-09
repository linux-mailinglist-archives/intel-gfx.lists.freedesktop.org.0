Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8063799590
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 03:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D7310E093;
	Sat,  9 Sep 2023 01:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955F210E093
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Sep 2023 01:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694222658; x=1725758658;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=5P3cKgu2kydGPTO7GJ0RMZkvUUpKm/F5huJgAQbwKB0=;
 b=W/z7djm4zUNTbESO9kR7vJWJsndZVGQ8jRW8aj5euwAE4j9zj3ZuIApm
 Wijbi/VYOdUrbIPx92eDN4YzUCemX6ZmPUO3GFGDuutB9F1bzLGBFoSDj
 mOVMHr1lgCDCvvC+iwRGKXg6NgHPYBUCeSAPnZIDpe/Y1Ge0/M3Q/kMOv
 FZAyBT0RcNxO+7tlIMB2rCMg1VeUpHmDqCu19aRVCeZarraWWBIm1xeZ2
 thetLp4Kdz6TAt6a+6rtdbCECLU/DSuJ4mZ54tFlUkh5Eg+qBkfBB4AWa
 ncyfLD2Jm6NwEmBlBtpRIE0ecr1cSlK7d6D+r/F4MvRBimDSqUAupM0Jx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="464150799"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="464150799"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 18:24:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="777773501"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="777773501"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.81.191])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 18:24:17 -0700
Date: Fri, 08 Sep 2023 18:24:16 -0700
Message-ID: <87r0n8qgu7.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20230909011626.1643734-4-ashutosh.dixit@intel.com>
References: <20230909011626.1643734-1-ashutosh.dixit@intel.com>
 <20230909011626.1643734-4-ashutosh.dixit@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/29.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/perf: Initialize gen12 OA
 buffer unconditionally
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

On Fri, 08 Sep 2023 18:16:26 -0700, Ashutosh Dixit wrote:
>

Hi Umesh,

> From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
> Correct values for OAR counters are still dependent on enabling the
> GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE in OAG_OACONTROL. Enabling this
> bit means OAG unit will write reports to the OAG buffer, so
> initialize the OAG buffer unconditionally for all use cases.
>
> BSpec: 46822
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 1347e4ec9dd5a..30cf37d6e79be 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -3032,12 +3032,12 @@ static void gen12_oa_enable(struct i915_perf_stream *stream)
>	u32 val;
>
>	/*
> -	 * If we don't want OA reports from the OA buffer, then we don't even
> -	 * need to program the OAG unit.
> +	 * BSpec: 46822
> +	 * Correct values for OAR counters are still dependent on enabling the
> +	 * GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE in OAG_OACONTROL. Enabling this
> +	 * bit means OAG unit will write reports to the OAG buffer, so
> +	 * initialize the OAG buffer correctly.
>	 */
> -	if (!(stream->sample_flags & SAMPLE_OA_REPORT))
> -		return;
> -
>	gen12_init_oa_buffer(stream);
>
>	regs = __oa_regs(stream);

Looks like this should be needed, I can R-b it.

However, gen12_test_mi_rpc IGT says:

	/* OA unit configuration:
	 * DRM_I915_PERF_PROP_SAMPLE_OA is no longer required for Gen12
	 * because the OAR unit increments counters only for the
	 * relevant context. No other parameters are needed since we do
	 * not rely on the OA buffer anymore to normalize the counter
	 * values.
	 */

So gen12_test_mi_rpc doesn't set DRM_I915_PERF_PROP_SAMPLE_OA and also
seems to be passing in CI (don't see it but there seem to be no open
bugs). Thoughts?

Thanks.
--
Ashutosh
