Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 885CB5EB4C0
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 00:45:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8447810E529;
	Mon, 26 Sep 2022 22:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A555B10E529
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 22:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664232306; x=1695768306;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YxVGmOKWiZr/QPH4jZchlt3X/mcabpMS0XMLorjn+pE=;
 b=JjogHkBafvvPmBa19O7N+MO101gAwe/E6U3hyQcceaBKyFfMSOWjciXY
 b7f6ZOS5v8CsGujVrT9KzHuVuRynZIfIe6hZd1pa7/JJg5EOP4vOuVWuR
 vfJEiO13X9px8auRdQ/hAjH3ee6HTSzQ902qQjTSF4CpqKxQnCl3oafH8
 hbXSDQOITqBnYsaRGdgphzf7a4o4wm/emPMKvcJJijlSpgCFxNL+FYCYS
 5KOxGZWnZKHBpMcD39v+Io/U4NM0Taf/x3XEsHdc8LLKFOoJuoKtTBCwu
 K2irsMsRhqnE+jpjTScRRC94/+/oeji1G/x0poC4l7/ebL+V9PnKJWotT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="299880523"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="299880523"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 15:45:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="621266699"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="621266699"
Received: from rbaransk-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.213.4.115])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 15:45:02 -0700
Date: Tue, 27 Sep 2022 00:44:59 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YzIrUG8lrEsY9XOo@ashyti-mobl2.lan>
References: <20220926215410.2268295-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220926215410.2268295-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: do not capture error state on
 exiting context
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Mon, Sep 26, 2022 at 11:54:09PM +0200, Andrzej Hajda wrote:
> Capturing error state is time consuming (up to 350ms on DG2), so it should
> be avoided if possible. Context reset triggered by context removal is a
> good example.
> With this patch multiple igt tests will not timeout and should run faster.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6268
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6281
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

fine for me:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Just to be on the safe side, can we also have the ack from any of
the GuC folks? Daniele, John?

Andi


> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 22ba66e48a9b01..cb58029208afe1 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -4425,7 +4425,8 @@ static void guc_handle_context_reset(struct intel_guc *guc,
>  	trace_intel_context_reset(ce);
>  
>  	if (likely(!intel_context_is_banned(ce))) {
> -		capture_error_state(guc, ce);
> +		if (!intel_context_is_exiting(ce))
> +			capture_error_state(guc, ce);
>  		guc_context_replay(ce);
>  	} else {
>  		drm_info(&guc_to_gt(guc)->i915->drm,
> -- 
> 2.34.1
