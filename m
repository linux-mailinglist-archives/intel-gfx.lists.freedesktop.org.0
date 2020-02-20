Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84400166423
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 18:16:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F5A6EDFF;
	Thu, 20 Feb 2020 17:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A78E56E216
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 17:16:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 09:16:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,465,1574150400"; d="scan'208";a="254539235"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 20 Feb 2020 09:16:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Feb 2020 19:16:32 +0200
Date: Thu, 20 Feb 2020 19:16:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200220171632.GF13686@intel.com>
References: <20200211172532.14287-1-anshuman.gupta@intel.com>
 <20200211172532.14287-4-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211172532.14287-4-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 3/7] drm/i915: Fix broken transcoder err
 state
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 11, 2020 at 10:55:28PM +0530, Anshuman Gupta wrote:
> Skip the transcoder whose pipe is disabled while
> initializing transcoder error state in 3 non-contiguous
> display pipe system.
> =

> v2:
> - Don't skip EDP_TRANSCODER error state. [Ville]
> - Use a helper has_transcoder(). [Ville]
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_types.h | 14 ++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h                    |  2 ++
>  3 files changed, 17 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 5333f7a7db42..a3649020ea97 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -19051,7 +19051,7 @@ intel_display_capture_error_state(struct drm_i915=
_private *dev_priv)
>  	for (i =3D 0; i < ARRAY_SIZE(error->transcoder); i++) {
>  		enum transcoder cpu_transcoder =3D transcoders[i];
>  =

> -		if (!INTEL_INFO(dev_priv)->trans_offsets[cpu_transcoder])
> +		if (!has_transcoder(dev_priv, cpu_transcoder))
>  			continue;
>  =

>  		error->transcoder[i].available =3D true;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 14e3d78fef7c..d359f1636ba8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1626,4 +1626,18 @@ static inline u32 intel_plane_ggtt_offset(const st=
ruct intel_plane_state *state)
>  	return i915_ggtt_offset(state->vma);
>  }
>  =

> +static inline bool
> +has_transcoder(struct drm_i915_private *dev_priv, enum transcoder transc=
oder) {

{ is in the wrong place.

> +	switch (transcoder) {
> +	case TRANSCODER_EDP:
> +		return HAS_TRANSCODER_EDP(dev_priv);
> +	case TRANSCODER_DSI_0:
> +		return HAS_TRANSCODER_DSI0(dev_priv);
> +	case TRANSCODER_DSI_1:
> +		return HAS_TRANSCODER_DSI1(dev_priv);

The error capture so far doesn't care about DSI, so I wouldn't bother
with these for now.

> +	default:
> +		return INTEL_INFO(dev_priv)->pipe_mask & BIT(transcoder);
> +	}
> +}

This functions has one user so no point in putting it into a header.

> +
>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index da509d9b8895..17bbaf7f0844 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1674,6 +1674,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->has_fpga=
_dbg)
>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
>  #define HAS_TRANSCODER_EDP(dev_priv)	 (INTEL_INFO(dev_priv)->trans_offse=
ts[TRANSCODER_EDP] !=3D 0)
> +#define HAS_TRANSCODER_DSI0(dev_priv)	 (INTEL_INFO(dev_priv)->trans_offs=
ets[TRANSCODER_DSI_0] !=3D 0)
> +#define HAS_TRANSCODER_DSI1(dev_priv)	 (INTEL_INFO(dev_priv)->trans_offs=
ets[TRANSCODER_DSI_1] !=3D 0)
>  =

>  #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
>  #define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
> -- =

> 2.24.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
