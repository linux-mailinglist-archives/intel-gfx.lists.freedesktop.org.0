Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1141DBC9CB1
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 17:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B03110EA94;
	Thu,  9 Oct 2025 15:29:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IBt590ri";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 289BD10EA94
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 15:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760023787; x=1791559787;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SpcNTU6HmOqL45i2uccbFXvImH/0Psnay/o51CFNHBA=;
 b=IBt590riPZqPVUw4DsvTUq5rzBKKzN+wKQ2C45di2o2WElgN44sZea+8
 IsxaN4nwyqQbRQsGnMwjYkooc0TQTAgG5rADEQZIi+3t/x50ep54Q2XJf
 500xSE3Fx+7RtB5B+2/FjaxBTx1zRXBEO/cAJjJQO8O29tlHs0w4FkhRc
 vsXA9qGLPn2vau9a7EnhyUwLxaIQUOXOtxXdnSKdR4fIG+smTMmQPoaCN
 iP0uhKiFfKJP+ms4ZwBs0u5gFi2U//a59SEg/BM61vrVHLLcRVUjIUygQ
 FCSgt4iFq6H+2I3txTa+42fLElAW1UpeketPobFAQ0/diO4WyP/6AudRA w==;
X-CSE-ConnectionGUID: R8Otx8WFSFGlqTLIWtKhsw==
X-CSE-MsgGUID: J7QYemLxSniztf73Wddnlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="62120236"
X-IronPort-AV: E=Sophos;i="6.19,216,1754982000"; d="scan'208";a="62120236"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 08:29:46 -0700
X-CSE-ConnectionGUID: Xc/Y1QcFQ6OLC8xAsW3M6Q==
X-CSE-MsgGUID: u6tVWfPtSUCSbKVSubyZNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,216,1754982000"; d="scan'208";a="181163301"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.21])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 08:29:44 -0700
Date: Thu, 9 Oct 2025 18:29:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org, vinod.govindapillai@intel.com,
 jani.nikula@linux.intel.com
Subject: Re: [PATCH v3 1/7] drm/i915/wm: clarify watermark ops with comments
Message-ID: <aOfU5VlVZ6-WKrTK@intel.com>
References: <20251009075517.837587-1-luciano.coelho@intel.com>
 <20251009075517.837587-2-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251009075517.837587-2-luciano.coelho@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Oct 09, 2025 at 10:54:32AM +0300, Luca Coelho wrote:
> Some of the ops in struct intel_wm_funcs are used only for legacy
> watermark management, while others are only for SKL+ or both.  Clarify
> that in the struct definition.

We have (roughly) three vintages of wm stuff right now.

pre-g4x without proper atomic watermark code currently
(though I do have it in a branch somewhere...):
- .compute_watermarks() 
   doesn't really do what it says on the tin here, but I just
   needed a place to hide the ugliness from higher level code
- .update_wm()

g4x/vlv/chv/ilk+ (hw with single buffered wm registers)
 .compute_watermarks()
 .initial_watermarks()
 .optimize_watermarks()
 .atomic_update_watermarks()
 .get_hw_state()
 .sanitize()

skl+ (hw with double buffered wm registers)
 .compute_global_watermarks()
 .get_hw_state()
 .sanitize()

Most of the differences between the three are more
accidental than intentional, and should be unified.

I think if we managed to clean this up properly then
we would be left with this:
 .compute()
 .sanitize()
 .get_hw_state()
 .initial_watermarks() (pre-skl only)
 .optimize_watermarks() (pre-skl only)
 .atomic_update_watermarks() (pre-skl only)

Getting there would be mostly a matter of figuring out the right
order to do things in intel_atomic_check().

> 
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index df4da52cbdb3..7144b61fb1ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -78,7 +78,7 @@ struct intel_display_funcs {
>  
>  /* functions used for watermark calcs for display. */
>  struct intel_wm_funcs {
> -	/* update_wm is for legacy wm management */
> +	/* these are only for legacy wm management */
>  	void (*update_wm)(struct intel_display *display);
>  	int (*compute_watermarks)(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc);
> @@ -88,8 +88,12 @@ struct intel_wm_funcs {
>  					 struct intel_crtc *crtc);
>  	void (*optimize_watermarks)(struct intel_atomic_state *state,
>  				    struct intel_crtc *crtc);
> +
> +	/* these are for SKL+ wm management */
>  	int (*compute_global_watermarks)(struct intel_atomic_state *state);
>  	void (*get_hw_state)(struct intel_display *display);
> +
> +	/* this is used by both legacy and SKL+ */
>  	void (*sanitize)(struct intel_display *display);
>  };
>  
> -- 
> 2.51.0

-- 
Ville Syrjälä
Intel
