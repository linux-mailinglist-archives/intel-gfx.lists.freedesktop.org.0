Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 469B0622829
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 11:12:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EE4F10E03B;
	Wed,  9 Nov 2022 10:12:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C96910E03B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 10:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667988748; x=1699524748;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NPEg874w+pEUx5m36nQSTyUYYTh2lT4D9o1FP8mAUOU=;
 b=eXwPVIqOWF+Co6GsioWz5fEu8ndQrtmjNRRcER1ceI2pCaWOT0Vo2+N/
 Mgj2uur13HE5xLdycU2C61Wvf6rv5xwctAA5sLbiAtjhgArMeVvipRqab
 s3uCcctxldoROnRg55Lq4TB6HNuTz9UUBa8jk6aU5gxaxQQU469Zc6qhG
 0WyN+KltpQvaeo0p6A/3sVzRSGVyexARPgPbuj3nNGNU3T/bPaRLVPEL8
 ANyi9PqGNvjha9FcmQL7stl7CqQyYNOZH/v9C6dTwrd1iVPpqY0fNe/uO
 z+xEZ1Kq0auCCLbYBFaGEHBo6DTBfP8B/M0gGy/ZyK2oTI/Uy0tNEGaYV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="298462405"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="298462405"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 02:12:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="742341166"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="742341166"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 09 Nov 2022 02:12:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Nov 2022 12:12:23 +0200
Date: Wed, 9 Nov 2022 12:12:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <Y2t9Bxcgyy7j3PPd@intel.com>
References: <20221108211822.28048-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221108211822.28048-1-animesh.manna@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/pps: Add get_pps_idx() hook as
 part of pps_get_register() cleanup
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 09, 2022 at 02:48:20AM +0530, Animesh Manna wrote:
> Simplified pps_get_register() which use get_pps_idx() hook to derive the
> pps instance and get_pps_idx() will be initialized at pps_init().
> 
> v1: Initial version. Got r-b from Jani.
> v2: Corrected unintentional change around memset() call. [Jani]
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  drivers/gpu/drm/i915/display/intel_pps.c           | 14 +++++++++-----
>  2 files changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c6abaaa46e17..87163ef32983 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1698,6 +1698,7 @@ struct intel_dp {
>  	u8 (*preemph_max)(struct intel_dp *intel_dp);
>  	u8 (*voltage_max)(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state);
> +	int (*get_pps_idx)(struct intel_dp *intel_dp);
>  
>  	/* Displayport compliance testing */
>  	struct intel_dp_compliance compliance;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 22f5e08d396b..3949fb449353 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -366,11 +366,8 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
>  	int pps_idx = 0;
>  
>  	memset(regs, 0, sizeof(*regs));
> -
> -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -		pps_idx = bxt_power_sequencer_idx(intel_dp);
> -	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		pps_idx = vlv_power_sequencer_pipe(intel_dp);
> +	if (intel_dp->get_pps_idx)
> +		pps_idx = intel_dp->get_pps_idx(intel_dp);

I don't really see the poing of adding a vfunc for this kind of single
use thing, especially as it's all inside the same file anyway.

>  
>  	regs->pp_ctrl = PP_CONTROL(pps_idx);
>  	regs->pp_stat = PP_STATUS(pps_idx);
> @@ -1433,6 +1430,13 @@ void intel_pps_init(struct intel_dp *intel_dp)
>  	intel_dp->pps.initializing = true;
>  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
>  
> +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
> +	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
> +	else
> +		intel_dp->get_pps_idx = NULL;
> +
>  	pps_init_timestamps(intel_dp);
>  
>  	with_intel_pps_lock(intel_dp, wakeref) {
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
