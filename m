Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 888DD8BDFF6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 12:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13CAB10EFBD;
	Tue,  7 May 2024 10:42:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nXj1klid";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC5E10ECA3;
 Tue,  7 May 2024 10:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715078555; x=1746614555;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=y/soz0/37/G1oSkD4K/DZ7UvycIo1Rp0Pdzd1JnZ1+Y=;
 b=nXj1kliduDlkx7QuibY01x/ETqIRQiZiD+z/QxpwiJAfKRFIUX9UKXnu
 QGMaLgbnSGTedA8e50k3Y7NB0VMeTrmUJ0qgrRjb6i9g4WGqBMdGYrMkz
 Kno1emRQMRnYOoZHGudFrWRqi3sRiFZxYt5xbjpTrBB+POAJUzeixKOht
 I9OcgByJZEbXTfyw7+Rl9SwF0R8tDaawGxf/OlnvuDJuFroG3z9r2kn2w
 49vUOsCSDwI+9UErAJPMv18wlAzRnKbN2X1aGyOCUg1UrbPSD5sKKTILZ
 sSJO/O18W6kaCswsh9kIZ9fGMVLR/QbyZnpSb9UkaxDx8LXwGY+uZ6Ibw w==;
X-CSE-ConnectionGUID: V2s6NlaTRyK8ioS4GxHZ2g==
X-CSE-MsgGUID: 2C0D9hRbSNC8RyrPvYI/dw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="21417117"
X-IronPort-AV: E=Sophos;i="6.07,261,1708416000"; d="scan'208";a="21417117"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 03:42:35 -0700
X-CSE-ConnectionGUID: QuDrkgzlSo6LdYJurh8Ggw==
X-CSE-MsgGUID: xambHpleQ6ifpY8gOm9Qyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,261,1708416000"; d="scan'208";a="59336344"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 03:42:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, matthew.d.roper@intel.com, Uma Shankar
 <uma.shankar@intel.com>
Subject: Re: [v3] drm/i915: Implement Audio WA_14020863754
In-Reply-To: <20240506101817.2590328-1-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506101817.2590328-1-uma.shankar@intel.com>
Date: Tue, 07 May 2024 13:42:29 +0300
Message-ID: <87frutlx7u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 06 May 2024, Uma Shankar <uma.shankar@intel.com> wrote:
> WA_14020863754: Corner case with Min Hblank Fix can cause
> audio hang
>
> Issue: Previously a fix was made to avoid issues with extremely
> small hblanks, called the "Min Hblank Fix". However, this can
> potentially cause an audio hang.
>
> Workaround :
> During "Audio Programming Sequence" Audio Enabling -
> When DP mode is enabled Set mmio offset 0x65F1C bit 18 = 1b,
> before step #1 "Enable audio Presence Detect"
>
> During "Audio Programming Sequence" Audio Disabling -
> When DP mode is enabled Clear mmio offset 0x65F1C bit 18 = 0b,
> after step #6 "Disable Audio PD (Presence Detect)"
> If not clearing PD bit, must also not clear 0x65F1C bit 18 (leave = 1b)
>
> v2: Update the platform checks (Jani Nikula)
>
> v3: Limited the WA to LNL and BMG, added a helper (Matt Roper)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c     | 18 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_audio_regs.h    |  3 +++
>  2 files changed, 21 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index ed81e1466c4b..cb055c16dd98 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -183,6 +183,18 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
>  	{ 192000, TMDS_445_5M, 20480, 371250 },
>  };
>  
> +/*
> + * WA_14020863754: Implement Audio Workaround
> + * Corner case with Min Hblank Fix can cause audio hang
> + */
> +static bool needs_wa_14020863754(struct drm_i915_private *i915)
> +{
> +	if (DISPLAY_VER(i915) == 20 || IS_BATTLEMAGE(i915))

Why do we need to check for both display version and the platform?
Especially weird that it's || and not &&.

> +		return true;
> +
> +	return false;

The whole function is just "return ver == 20 || is_bmg", there's no need
to have the if and two different return locations.

BR,
Jani.


> +}
> +
>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
>  static u32 audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_state)
>  {
> @@ -415,6 +427,9 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
>  
> +	if (needs_wa_14020863754(i915))
> +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, CHICKEN3_SPARE18, 0);
> +
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
>  
> @@ -540,6 +555,9 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
>  		enable_audio_dsc_wa(encoder, crtc_state);
>  
> +	if (needs_wa_14020863754(i915))
> +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0, CHICKEN3_SPARE18);
> +
>  	/* Enable audio presence detect */
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> index 88ea2740365d..7de82cd3380e 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> @@ -164,4 +164,7 @@
>  							 _VLV_AUD_PORT_EN_D_DBG)
>  #define VLV_AMP_MUTE		        (1 << 1)
>  
> +#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
> +#define  CHICKEN3_SPARE18		REG_BIT(18)
> +
>  #endif /* __INTEL_AUDIO_REGS_H__ */

-- 
Jani Nikula, Intel
