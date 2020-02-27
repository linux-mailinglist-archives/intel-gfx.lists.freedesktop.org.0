Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B61F17231D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 17:22:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37736E05A;
	Thu, 27 Feb 2020 16:22:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 785686E05A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 16:22:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 08:22:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="350716132"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 27 Feb 2020 08:22:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Feb 2020 18:22:16 +0200
Date: Thu, 27 Feb 2020 18:22:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200227162216.GT13686@intel.com>
References: <20200227161253.15741-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227161253.15741-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/crc: move pipe_crc from
 drm_i915_private to intel_crtc
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 27, 2020 at 06:12:53PM +0200, Jani Nikula wrote:
> Having an array pipe_crc[I915_MAX_PIPES] in struct drm_i915_private
> should be an obvious clue this should be located in struct intel_crtc
> instead. Make it so.
> =

> As a side-effect, fix some errors in indexing pipe_crc with both pipe
> and crtc index. And, of course, reduce the size of i915_drv.h.
> =

> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

lgtm
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 ++
>  .../drm/i915/display/intel_display_types.h    | 30 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c | 17 +++++------
>  drivers/gpu/drm/i915/display/intel_pipe_crc.h |  4 +--
>  drivers/gpu/drm/i915/i915_drv.c               |  1 -
>  drivers/gpu/drm/i915/i915_drv.h               | 30 -------------------
>  drivers/gpu/drm/i915/i915_irq.c               |  2 +-
>  7 files changed, 42 insertions(+), 44 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b8e57ce096a7..f388cfaf408d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16705,6 +16705,8 @@ static int intel_crtc_init(struct drm_i915_privat=
e *dev_priv, enum pipe pipe)
>  =

>  	intel_color_init(crtc);
>  =

> +	intel_crtc_crc_init(crtc);
> +
>  	drm_WARN_ON(&dev_priv->drm, drm_crtc_index(&crtc->base) !=3D crtc->pipe=
);
>  =

>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 0a06043d4d4c..ac5d066e23a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1045,6 +1045,32 @@ struct intel_crtc_state {
>  	enum transcoder mst_master_transcoder;
>  };
>  =

> +enum intel_pipe_crc_source {
> +	INTEL_PIPE_CRC_SOURCE_NONE,
> +	INTEL_PIPE_CRC_SOURCE_PLANE1,
> +	INTEL_PIPE_CRC_SOURCE_PLANE2,
> +	INTEL_PIPE_CRC_SOURCE_PLANE3,
> +	INTEL_PIPE_CRC_SOURCE_PLANE4,
> +	INTEL_PIPE_CRC_SOURCE_PLANE5,
> +	INTEL_PIPE_CRC_SOURCE_PLANE6,
> +	INTEL_PIPE_CRC_SOURCE_PLANE7,
> +	INTEL_PIPE_CRC_SOURCE_PIPE,
> +	/* TV/DP on pre-gen5/vlv can't use the pipe source. */
> +	INTEL_PIPE_CRC_SOURCE_TV,
> +	INTEL_PIPE_CRC_SOURCE_DP_B,
> +	INTEL_PIPE_CRC_SOURCE_DP_C,
> +	INTEL_PIPE_CRC_SOURCE_DP_D,
> +	INTEL_PIPE_CRC_SOURCE_AUTO,
> +	INTEL_PIPE_CRC_SOURCE_MAX,
> +};
> +
> +#define INTEL_PIPE_CRC_ENTRIES_NR	128
> +struct intel_pipe_crc {
> +	spinlock_t lock;
> +	int skipped;
> +	enum intel_pipe_crc_source source;
> +};
> +
>  struct intel_crtc {
>  	struct drm_crtc base;
>  	enum pipe pipe;
> @@ -1088,6 +1114,10 @@ struct intel_crtc {
>  =

>  	/* per pipe DSB related info */
>  	struct intel_dsb dsb;
> +
> +#ifdef CONFIG_DEBUG_FS
> +	struct intel_pipe_crc pipe_crc;
> +#endif
>  };
>  =

>  struct intel_plane {
> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/=
drm/i915/display/intel_pipe_crc.c
> index 59d7e3cb3445..a9a5df2fee4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> @@ -441,15 +441,11 @@ display_crc_ctl_parse_source(const char *buf, enum =
intel_pipe_crc_source *s)
>  	return 0;
>  }
>  =

> -void intel_display_crc_init(struct drm_i915_private *dev_priv)
> +void intel_crtc_crc_init(struct intel_crtc *crtc)
>  {
> -	enum pipe pipe;
> +	struct intel_pipe_crc *pipe_crc =3D &crtc->pipe_crc;
>  =

> -	for_each_pipe(dev_priv, pipe) {
> -		struct intel_pipe_crc *pipe_crc =3D &dev_priv->pipe_crc[pipe];
> -
> -		spin_lock_init(&pipe_crc->lock);
> -	}
> +	spin_lock_init(&pipe_crc->lock);
>  }
>  =

>  static int i8xx_crc_source_valid(struct drm_i915_private *dev_priv,
> @@ -587,7 +583,8 @@ int intel_crtc_verify_crc_source(struct drm_crtc *crt=
c, const char *source_name,
>  int intel_crtc_set_crc_source(struct drm_crtc *crtc, const char *source_=
name)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> -	struct intel_pipe_crc *pipe_crc =3D &dev_priv->pipe_crc[crtc->index];
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +	struct intel_pipe_crc *pipe_crc =3D &intel_crtc->pipe_crc;
>  	enum intel_display_power_domain power_domain;
>  	enum intel_pipe_crc_source source;
>  	intel_wakeref_t wakeref;
> @@ -640,7 +637,7 @@ void intel_crtc_enable_pipe_crc(struct intel_crtc *in=
tel_crtc)
>  {
>  	struct drm_crtc *crtc =3D &intel_crtc->base;
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> -	struct intel_pipe_crc *pipe_crc =3D &dev_priv->pipe_crc[crtc->index];
> +	struct intel_pipe_crc *pipe_crc =3D &intel_crtc->pipe_crc;
>  	u32 val =3D 0;
>  =

>  	if (!crtc->crc.opened)
> @@ -660,7 +657,7 @@ void intel_crtc_disable_pipe_crc(struct intel_crtc *i=
ntel_crtc)
>  {
>  	struct drm_crtc *crtc =3D &intel_crtc->base;
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> -	struct intel_pipe_crc *pipe_crc =3D &dev_priv->pipe_crc[crtc->index];
> +	struct intel_pipe_crc *pipe_crc =3D &intel_crtc->pipe_crc;
>  =

>  	/* Swallow crc's until we stop generating them. */
>  	spin_lock_irq(&pipe_crc->lock);
> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.h b/drivers/gpu/=
drm/i915/display/intel_pipe_crc.h
> index db258a756fc6..43012b189415 100644
> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.h
> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.h
> @@ -13,7 +13,7 @@ struct drm_i915_private;
>  struct intel_crtc;
>  =

>  #ifdef CONFIG_DEBUG_FS
> -void intel_display_crc_init(struct drm_i915_private *dev_priv);
> +void intel_crtc_crc_init(struct intel_crtc *crtc);
>  int intel_crtc_set_crc_source(struct drm_crtc *crtc, const char *source_=
name);
>  int intel_crtc_verify_crc_source(struct drm_crtc *crtc,
>  				 const char *source_name, size_t *values_cnt);
> @@ -22,7 +22,7 @@ const char *const *intel_crtc_get_crc_sources(struct dr=
m_crtc *crtc,
>  void intel_crtc_disable_pipe_crc(struct intel_crtc *crtc);
>  void intel_crtc_enable_pipe_crc(struct intel_crtc *crtc);
>  #else
> -static inline void intel_display_crc_init(struct drm_i915_private *dev_p=
riv) {}
> +static inline void intel_crtc_crc_init(struct intel_crtc *crtc) {}
>  #define intel_crtc_set_crc_source NULL
>  #define intel_crtc_verify_crc_source NULL
>  #define intel_crtc_get_crc_sources NULL
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index b086132df1b7..939ba864d802 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -465,7 +465,6 @@ static int i915_driver_early_probe(struct drm_i915_pr=
ivate *dev_priv)
>  	intel_init_display_hooks(dev_priv);
>  	intel_init_clock_gating_hooks(dev_priv);
>  	intel_init_audio_hooks(dev_priv);
> -	intel_display_crc_init(dev_priv);
>  =

>  	intel_detect_preproduction_hw(dev_priv);
>  =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index ea13fc0b409b..ceec27a33eec 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -822,32 +822,6 @@ struct skl_wm_params {
>  	u32 dbuf_block_size;
>  };
>  =

> -enum intel_pipe_crc_source {
> -	INTEL_PIPE_CRC_SOURCE_NONE,
> -	INTEL_PIPE_CRC_SOURCE_PLANE1,
> -	INTEL_PIPE_CRC_SOURCE_PLANE2,
> -	INTEL_PIPE_CRC_SOURCE_PLANE3,
> -	INTEL_PIPE_CRC_SOURCE_PLANE4,
> -	INTEL_PIPE_CRC_SOURCE_PLANE5,
> -	INTEL_PIPE_CRC_SOURCE_PLANE6,
> -	INTEL_PIPE_CRC_SOURCE_PLANE7,
> -	INTEL_PIPE_CRC_SOURCE_PIPE,
> -	/* TV/DP on pre-gen5/vlv can't use the pipe source. */
> -	INTEL_PIPE_CRC_SOURCE_TV,
> -	INTEL_PIPE_CRC_SOURCE_DP_B,
> -	INTEL_PIPE_CRC_SOURCE_DP_C,
> -	INTEL_PIPE_CRC_SOURCE_DP_D,
> -	INTEL_PIPE_CRC_SOURCE_AUTO,
> -	INTEL_PIPE_CRC_SOURCE_MAX,
> -};
> -
> -#define INTEL_PIPE_CRC_ENTRIES_NR	128
> -struct intel_pipe_crc {
> -	spinlock_t lock;
> -	int skipped;
> -	enum intel_pipe_crc_source source;
> -};
> -
>  struct i915_frontbuffer_tracking {
>  	spinlock_t lock;
>  =

> @@ -1043,10 +1017,6 @@ struct drm_i915_private {
>  	struct intel_crtc *plane_to_crtc_mapping[I915_MAX_PIPES];
>  	struct intel_crtc *pipe_to_crtc_mapping[I915_MAX_PIPES];
>  =

> -#ifdef CONFIG_DEBUG_FS
> -	struct intel_pipe_crc pipe_crc[I915_MAX_PIPES];
> -#endif
> -
>  	/* dpll and cdclk state is protected by connection_mutex */
>  	int num_shared_dpll;
>  	struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index fce8835ab24c..9f0653cf0510 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1217,8 +1217,8 @@ static void display_pipe_crc_irq_handler(struct drm=
_i915_private *dev_priv,
>  					 u32 crc2, u32 crc3,
>  					 u32 crc4)
>  {
> -	struct intel_pipe_crc *pipe_crc =3D &dev_priv->pipe_crc[pipe];
>  	struct intel_crtc *crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> +	struct intel_pipe_crc *pipe_crc =3D &crtc->pipe_crc;
>  	u32 crcs[5] =3D { crc0, crc1, crc2, crc3, crc4 };
>  =

>  	trace_intel_pipe_crc(crtc, crcs);
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
