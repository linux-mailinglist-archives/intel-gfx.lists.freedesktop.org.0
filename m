Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BEA12A45B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Dec 2019 00:08:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CE0D89C56;
	Tue, 24 Dec 2019 23:08:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E1289C56
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 23:08:20 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Dec 2019 15:08:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,353,1571727600"; d="scan'208";a="300049024"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga001.jf.intel.com with ESMTP; 24 Dec 2019 15:08:18 -0800
Date: Tue, 24 Dec 2019 15:08:18 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20191224230818.GA2877816@mdroper-desk1.amr.corp.intel.com>
References: <20190920083918.27057-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920083918.27057-1-kai.vehmanen@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: save AUD_FREQ_CNTRL state at
 audio domain suspend
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 20, 2019 at 11:39:18AM +0300, Kai Vehmanen wrote:
> When audio power domain is suspended, the display driver must
> save state of AUD_FREQ_CNTRL on Tiger Lake and Ice Lake
> systems. The initial value of the register is set by BIOS and
> is read by driver during the audio component init sequence.
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Hi Kai.

I realize this patch landed several months ago, but I was just glancing
through places in the driver where we call out specific platforms with
IS_FOO() rather than using generation tests and noticed this one.
Should this programming be specific to just ICL and TGL, or should it
also apply to other recent platforms like EHL/JSL?

Our convention in i915 is to usually just assume that future platforms
will follow the lead of the current latest platform until we find out
otherwise.  So we may want to add another patch to change the test to
use either an

        if (INTEL_GEN(dev_priv) >= 11)

or a

        if (INTEL_GEN(dev_priv) >= 12 || IS_ICELAKE(dev_priv))

depending on whether EHL/JSL also need this.

Thanks!


Matt


> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 17 +++++++++++++++--
>  drivers/gpu/drm/i915/i915_drv.h            |  1 +
>  drivers/gpu/drm/i915/i915_reg.h            |  2 ++
>  3 files changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index aac089c79ceb..54638d99e021 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -852,10 +852,17 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
>  
>  	ret = intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO);
>  
> -	/* Force CDCLK to 2*BCLK as long as we need audio to be powered. */
> -	if (dev_priv->audio_power_refcount++ == 0)
> +	if (dev_priv->audio_power_refcount++ == 0) {
> +		if (IS_TIGERLAKE(dev_priv) || IS_ICELAKE(dev_priv)) {
> +			I915_WRITE(AUD_FREQ_CNTRL, dev_priv->audio_freq_cntrl);
> +			DRM_DEBUG_KMS("restored AUD_FREQ_CNTRL to 0x%x\n",
> +				      dev_priv->audio_freq_cntrl);
> +		}
> +
> +		/* Force CDCLK to 2*BCLK as long as we need audio powered. */
>  		if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
>  			glk_force_audio_cdclk(dev_priv, true);
> +	}
>  
>  	return ret;
>  }
> @@ -1116,6 +1123,12 @@ static void i915_audio_component_init(struct drm_i915_private *dev_priv)
>  		return;
>  	}
>  
> +	if (IS_TIGERLAKE(dev_priv) || IS_ICELAKE(dev_priv)) {
> +		dev_priv->audio_freq_cntrl = I915_READ(AUD_FREQ_CNTRL);
> +		DRM_DEBUG_KMS("init value of AUD_FREQ_CNTRL of 0x%x\n",
> +			      dev_priv->audio_freq_cntrl);
> +	}
> +
>  	dev_priv->audio_component_registered = true;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 4faec2f94e19..5bb19f1c0ef4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1540,6 +1540,7 @@ struct drm_i915_private {
>  	 */
>  	struct mutex av_mutex;
>  	int audio_power_refcount;
> +	u32 audio_freq_cntrl;
>  
>  	struct {
>  		struct mutex mutex;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index bf37ecebc82f..dff077aa4cc6 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9119,6 +9119,8 @@ enum {
>  #define HSW_AUD_CHICKENBIT			_MMIO(0x65f10)
>  #define   SKL_AUD_CODEC_WAKE_SIGNAL		(1 << 15)
>  
> +#define AUD_FREQ_CNTRL			_MMIO(0x65900)
> +
>  /*
>   * HSW - ICL power wells
>   *
> -- 
> 2.18.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
