Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 883E3AB355D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 12:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB25010E173;
	Mon, 12 May 2025 10:58:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOsWZ/fn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A14B610E16B;
 Mon, 12 May 2025 10:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747047480; x=1778583480;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dHha0IiE1Bh1Y7kmPmJ4ye6JFB/BUMt6MEaB5pcQun4=;
 b=QOsWZ/fnMkMRLYoglXXkxJ03URXG+khluggixrpKK+E1FwpupHh8s2n0
 svCvPuBRULJVubrnUD7Xt3P1Hu72qIRVSUIYH/jSwqvw2bDfSRAq2myz1
 ZITgTXzRxPrM+dLf+bvHyvhwL6//FtmVvxmQwEUja0I25n2QNIpdSV4eB
 BHownO/LakMbS8z43xduaaEP9TDnfkZcauvyvqBblLn1rxkJL656UCzjj
 X0Z/FaN5wnjnhR18gFmgvr+RrTGRwG+mjpwCyZsnw9r656300lIVDRjeu
 Zsd2WKLqtjRY8XJHvQGMlK438vxeaddK9BxHXBAH6doordwTjx0gBACZc g==;
X-CSE-ConnectionGUID: vSHSn0rAS5StV3S4Fh9t6g==
X-CSE-MsgGUID: rxT9gjPWSZexpdPOcoM4sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="59470283"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="59470283"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 03:57:56 -0700
X-CSE-ConnectionGUID: Z53TcUaLSTi0PwwiV22ppw==
X-CSE-MsgGUID: qIIbCLFcSpWeAUJOL3oCJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142444298"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.195])
 by orviesa005.jf.intel.com with SMTP; 12 May 2025 03:57:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 May 2025 13:57:53 +0300
Date: Mon, 12 May 2025 13:57:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 10/13] drm/i915/dmc: Add interface to control start of
 PKG C-state exit
Message-ID: <aCHUMS6tBdKU0VAA@intel.com>
References: <20250414100508.1208774-1-jouni.hogander@intel.com>
 <20250414100508.1208774-11-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250414100508.1208774-11-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Apr 14, 2025 at 01:05:05PM +0300, Jouni Högander wrote:
> Add interface to control if package C exit starts at the start of the
> undelayed vblank. This is needed to implement workaround for underrun on
> idle PSR HW issue (Wa_16025596647).
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 31 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index c65544e48c42..bd50c98c0ee4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -534,6 +534,37 @@ void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
>  		     PIPEDMC_BLOCK_PKGC_SW_BLOCK_PKGC_ALWAYS : 0);
>  }
>  
> +/**
> + * intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank() - start of PKG
> + * C-state exit
> + * @display: display instance
> + * @pipe: pipe which register use to block
> + * @enable: enable/disable
> + *
> + * This interface is target for Wa_16025596647 usage. I.e. start the package C
> + * exit at the start of the undelayed vblank
> + */
> +void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
> +							    enum pipe pipe, bool enable)
> +{
> +	u32 val;
> +
> +	if (enable)
> +		val = DMC_EVT_CTL_ENABLE | DMC_EVT_CTL_RECURRING |
> +			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> +				       DMC_EVT_CTL_TYPE_EDGE_0_1) |
> +			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> +				       DMC_EVT_CTL_EVENT_ID_VBLANK_A);
> +	else
> +		val = REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> +				     DMC_EVT_CTL_EVENT_ID_FALSE) |
> +			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> +				       DMC_EVT_CTL_TYPE_EDGE_0_1);
> +
> +	intel_de_write(display, MTL_PIPEDMC_EVT_CTL_4(pipe),
> +		       val);
> +}

This thing doesn't seem to be fully thought through:

- Enabling PIPEDMC events exposes us to the DSB vs. DMC register
  corruption issues once again. Someone would need to come up with some
  kind of scheme to avoid DMC and DSB executing in parallel. Otherwise
  I don't think we can safely enable this
- The w/a seems to be only for cases where the pkgc latency exceeds the
  delayed vblank length, but that is never allowed by the
  skl_is_vblank_too_short() stuff, so looks like this should never be
  needed currently

> +
>  static bool is_dmc_evt_ctl_reg(struct intel_display *display,
>  			       enum intel_dmc_id dmc_id, i915_reg_t reg)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 236312fb791c..bd1c459b0075 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -20,6 +20,8 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe);
>  void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe);
>  void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
>  			  bool block);
> +void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
> +							    enum pipe pipe, bool enable);
>  void intel_dmc_fini(struct intel_display *display);
>  void intel_dmc_suspend(struct intel_display *display);
>  void intel_dmc_resume(struct intel_display *display);
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
