Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F648406E5E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 17:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C3FA6EA28;
	Fri, 10 Sep 2021 15:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C7A96EA27
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 15:39:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10103"; a="221139220"
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="221139220"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 08:39:02 -0700
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="540659514"
Received: from dmbuckle-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.110])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 08:38:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ville.syrjala@linux.intel.com,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>
In-Reply-To: <20210910131916.3782933-1-kai.vehmanen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210910131916.3782933-1-kai.vehmanen@linux.intel.com>
Date: Fri, 10 Sep 2021 18:38:44 +0300
Message-ID: <871r5w4f0b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: program audio CDCLK-TS
 for keepalives
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

On Fri, 10 Sep 2021, Kai Vehmanen <kai.vehmanen@linux.intel.com> wrote:
> XE_LPD display adds support for display audio codec keepalive feature.
> This feature works also when display codec is in D3 state and the audio
> link is off (BCLK off). To enable this functionality, display driver
> must update the AUD_TS_CDCLK_M/N registers whenever CDCLK is changed.
> Actual timestamps are generated only when the audio codec driver
> specifically enables the KeepAlive (KAE) feature.
>
> This patch adds new hooks to intel_set_cdclk() in order to inform
> display audio driver when CDCLK change is started and when it is
> complete.
>
> Bspec: 53679
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 54 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_audio.h |  2 +
>  drivers/gpu/drm/i915/display/intel_cdclk.c |  5 ++
>  drivers/gpu/drm/i915/i915_reg.h            |  4 ++
>  4 files changed, 65 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 532237588511..48cced7f56f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -936,6 +936,60 @@ void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
>  	}
>  }
>  
> +struct aud_ts_cdclk_m_n {
> +	u8 m;
> +	u16 n;
> +};
> +
> +void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv)

Nitpick, switching to i915 variable name instead of dev_priv is
preferred for new code throughout.

> +{
> +	u32 tmp;
> +
> +	if (DISPLAY_VER(dev_priv) >= 13) {
> +		tmp = intel_de_read(dev_priv, AUD_TS_CDCLK_M);
> +		tmp &= ~AUD_TS_CDCLK_M_EN;
> +		intel_de_write(dev_priv, AUD_TS_CDCLK_M, tmp);

Nitpick, could use intel_de_rmw() to do this on a single line.

> +	}
> +}
> +
> +static int get_aud_ts_cdclk_m_n(int refclk, int cdclk, struct aud_ts_cdclk_m_n *aud_ts)
> +{
> +	if (!aud_ts)
> +		return -EINVAL;
> +
> +	if (refclk == 24000)
> +		aud_ts->m = 12;
> +	else
> +		aud_ts->m = 15;
> +
> +	aud_ts->n = cdclk * aud_ts->m / 24000;
> +
> +	return 0;

Is the return code added for future? For now, it just complicates this
for no apparent reason.

> +}
> +
> +void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv)
> +{
> +	struct aud_ts_cdclk_m_n aud_ts;
> +	int res;
> +
> +	if (DISPLAY_VER(dev_priv) >= 13) {
> +		res = get_aud_ts_cdclk_m_n(dev_priv->cdclk.hw.ref,
> +					   dev_priv->cdclk.hw.cdclk,
> +					   &aud_ts);
> +
> +		if (!res) {
> +			intel_de_write(dev_priv, AUD_TS_CDCLK_N, aud_ts.n);
> +			intel_de_write(dev_priv, AUD_TS_CDCLK_M, aud_ts.m | AUD_TS_CDCLK_M_EN);
> +			drm_dbg(&dev_priv->drm, "aud_ts_cdclk set to M=%u, N=%u\n",
> +				aud_ts.m, aud_ts.n);

Usually drm_dbg_kms() for display code, including audio.

I'll need to look up the bspec too, can't do that right now... this was
just the nitpicks. ;D

BR,
Jani.

> +		} else {
> +			drm_err(&dev_priv->drm,
> +				"failed to find aud_ts_cdclk values for refclk %u cdclk %u\n",
> +				dev_priv->cdclk.hw.ref, dev_priv->cdclk.hw.cdclk);
> +		}
> +	}
> +}
> +
>  static int glk_force_audio_cdclk_commit(struct intel_atomic_state *state,
>  					struct intel_crtc *crtc,
>  					bool enable)
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index a3657c7a7ba2..dcb259dd2da7 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -18,6 +18,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>  void intel_audio_codec_disable(struct intel_encoder *encoder,
>  			       const struct intel_crtc_state *old_crtc_state,
>  			       const struct drm_connector_state *old_conn_state);
> +void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
> +void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
>  void intel_audio_init(struct drm_i915_private *dev_priv);
>  void intel_audio_deinit(struct drm_i915_private *dev_priv);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 9aec17b33819..a1365f31142d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -24,6 +24,7 @@
>  #include <linux/time.h>
>  
>  #include "intel_atomic.h"
> +#include "intel_audio.h"
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
>  #include "intel_de.h"
> @@ -1943,6 +1944,8 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>  		intel_psr_pause(intel_dp);
>  	}
>  
> +	intel_audio_cdclk_change_pre(dev_priv);
> +
>  	/*
>  	 * Lock aux/gmbus while we change cdclk in case those
>  	 * functions use cdclk. Not all platforms/ports do,
> @@ -1971,6 +1974,8 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>  		intel_psr_resume(intel_dp);
>  	}
>  
> +	intel_audio_cdclk_change_post(dev_priv);
> +
>  	if (drm_WARN(&dev_priv->drm,
>  		     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config),
>  		     "cdclk state doesn't match!\n")) {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index bd63760207b0..795775c9e2eb 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9734,6 +9734,10 @@ enum {
>  #define AUD_PIN_BUF_CTL		_MMIO(0x48414)
>  #define   AUD_PIN_BUF_ENABLE		REG_BIT(31)
>  
> +#define AUD_TS_CDCLK_M			_MMIO(0x65ea0)
> +#define   AUD_TS_CDCLK_M_EN		REG_BIT(31)
> +#define AUD_TS_CDCLK_N			_MMIO(0x65ea4)
> +
>  /* Display Audio Config Reg */
>  #define AUD_CONFIG_BE			_MMIO(0x65ef0)
>  #define HBLANK_EARLY_ENABLE_ICL(pipe)		(0x1 << (20 - (pipe)))

-- 
Jani Nikula, Intel Open Source Graphics Center
