Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 102CBB4FCB4
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 15:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC8110E735;
	Tue,  9 Sep 2025 13:24:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ruf1c8oJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60AB710E735;
 Tue,  9 Sep 2025 13:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757424282; x=1788960282;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nm7kALkbnMaRvHW6eY/CA6idPUvqQt/VLErkyXtYWXg=;
 b=Ruf1c8oJc8lskPE8ClaesL878pM7tPG30k5QVOQ5VOHEAsvxNmXCea9n
 q+pQuwW7zqYGEniWJ9cpLNBk2VRWJ25QKJf/9vOkScZj/gW+BJmXAXpky
 NXi/u3i1j84Q+PE6ADYpBkmfdhgbjAwom9iqolhvL9reoUgF4MRkfB8jG
 32hB1DFoh+9KZj1khVtmRKKgvLgonwc9lumJVuHtIdhdaOTyKlKfX3j63
 Q96/OdXJya0ticfbOCOaLYdeRrjn+YAy+QZZcr7ZyDF7DeyhSEMelKoHD
 X6/BJ8ZylZ8iRcVZ67dKX1XzwUZUyvEI6Ui6l6DThPqG+//kNNyn0mf3b w==;
X-CSE-ConnectionGUID: JvpeJjfiR2KFfZ6CPMhcbg==
X-CSE-MsgGUID: 1Ap6MhUKQxSdwDYefOU/xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="58923073"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="58923073"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:24:42 -0700
X-CSE-ConnectionGUID: FvKCFIccSZOnaQOL9Y27Cg==
X-CSE-MsgGUID: UfQDQlt7THCjiCQ3GyUJYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="173548945"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.181])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:24:40 -0700
Date: Tue, 9 Sep 2025 16:24:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [RESEND 05/12] drm/i915: add vlv_clock_get_cdclk()
Message-ID: <aMAqlVAw2NqlwQ5_@intel.com>
References: <cover.1755607980.git.jani.nikula@intel.com>
 <ddb128204f27ee029fe2858973ec9ca2c59a67e3.1755607980.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ddb128204f27ee029fe2858973ec9ca2c59a67e3.1755607980.git.jani.nikula@intel.com>
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

On Tue, Aug 19, 2025 at 03:53:35PM +0300, Jani Nikula wrote:
> Add vlv_clock_get_cdclk() helper to hide the details from the callers.
> 
> For now, this means running vlv_get_hpll_vco() twice in vlv_get_cdclk(),
> but this will be improved later.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 4 +---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_display.h | 1 +
>  3 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 65ad7d48dd39..e898c0541168 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -610,9 +610,7 @@ static void vlv_get_cdclk(struct intel_display *display,
>  	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCK) | BIT(VLV_IOSF_SB_PUNIT));
>  
>  	cdclk_config->vco = vlv_get_hpll_vco(display->drm);
> -	cdclk_config->cdclk = vlv_get_cck_clock(display->drm, "cdclk",
> -						CCK_DISPLAY_CLOCK_CONTROL,
> -						cdclk_config->vco);
> +	cdclk_config->cdclk = vlv_clock_get_cdclk(display->drm);
>  
>  	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8baa5f898284..644028d0c7ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -204,6 +204,12 @@ int vlv_clock_get_czclk(struct drm_device *drm)
>  	return i915->czclk_freq;
>  }
>  
> +int vlv_clock_get_cdclk(struct drm_device *drm)
> +{
> +	return vlv_get_cck_clock(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
> +				 vlv_get_hpll_vco(drm));

This is actually just vlv_get_cck_clock_hpll(), except that one has
the vlv_iosf_sb_get/put(CCK) stuff inside it whereas vlv_get_cck_clock()
needs the caller to grab that.

So that part of the vlv_clocks.c interface is now rather confusing.
The interface should probably be high level enough that the caller
doesn't have to deal with that get/put stuff at all...

> +}
> +
>  int vlv_clock_get_gpll(struct drm_device *drm)
>  {
>  	return vlv_get_cck_clock(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 5c9b57e94a65..9fdbc4ad5391 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -440,6 +440,7 @@ int vlv_get_cck_clock(struct drm_device *drm,
>  		      const char *name, u32 reg, int ref_freq);
>  int vlv_clock_get_hrawclk(struct drm_device *drm);
>  int vlv_clock_get_czclk(struct drm_device *drm);
> +int vlv_clock_get_cdclk(struct drm_device *drm);
>  int vlv_clock_get_gpll(struct drm_device *drm);
>  bool intel_has_pending_fb_unpin(struct intel_display *display);
>  void intel_encoder_destroy(struct drm_encoder *encoder);
> -- 
> 2.47.2

-- 
Ville Syrjälä
Intel
