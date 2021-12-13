Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A751B473548
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 20:54:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C05410E7AC;
	Mon, 13 Dec 2021 19:54:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B44010E7AC
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 19:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639425249; x=1670961249;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uUYv92JwUI/mLG5jSOf5XatlkBv76RuFPeZ1WdXfjJM=;
 b=Jj1hzG5bmNvbK5xLsln9seUP959B7+0mHbh11LTwRwebeU3oii33QMTR
 9Oe0VGGVOsYcH8RiMOHLj2J4g2APxSYvxvHDuPdOpiVQEE9i4iAUgusVM
 PuPCpHvg8rJeBJDUwNf9KyZHL4rChYzDH/Sr5d2SO8KTF8QscmI+Jo2ER
 KskrJSAccKsMNcuu3oNSXjVNiu6YbLMFFu85DrWJJaW6xjjFR/05v587p
 7Wsi7YO8r6HBETpGGegciUnYrauc4PQcYaZmyRz6VYVZbVEBpKO7F0u01
 y/cOLfKWzCXVJan+fhBv0YappWYq1OMaSxx9sO/UTsu0+OM9n0vAxnH57 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="238760902"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="238760902"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 11:54:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="681759194"
Received: from ppolasze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.20.7])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 11:54:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211213134450.3082-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
 <20211213134450.3082-2-ville.syrjala@linux.intel.com>
Date: Mon, 13 Dec 2021 21:54:04 +0200
Message-ID: <871r2g702r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/fbc: Parametrize FBC
 register offsets
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

On Mon, 13 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Parametrize ilk+ FBC register offsets based on the FBC instance.
>
> v2: More intel_ namespace (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Some questions below, apart from that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 34 +++++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_fbc.h |  6 +++++
>  drivers/gpu/drm/i915/i915_reg.h          | 34 ++++++++++++------------
>  drivers/gpu/drm/i915/intel_pm.c          | 31 ++++++++++++---------
>  4 files changed, 60 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 8be01b93015f..112aafa72253 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -85,6 +85,8 @@ struct intel_fbc {
>  	struct drm_mm_node compressed_fb;
>  	struct drm_mm_node compressed_llb;
>=20=20
> +	enum intel_fbc_id id;
> +
>  	u8 limit;
>=20=20
>  	bool false_color;
> @@ -454,10 +456,10 @@ static void ilk_fbc_activate(struct intel_fbc *fbc)
>  	struct intel_fbc_state *fbc_state =3D &fbc->state;
>  	struct drm_i915_private *i915 =3D fbc->i915;
>=20=20
> -	intel_de_write(i915, ILK_DPFC_FENCE_YOFF,
> +	intel_de_write(i915, ILK_DPFC_FENCE_YOFF(fbc->id),
>  		       fbc_state->fence_y_offset);
>=20=20
> -	intel_de_write(i915, ILK_DPFC_CONTROL,
> +	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
>  		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
>  }
>=20=20
> @@ -467,28 +469,28 @@ static void ilk_fbc_deactivate(struct intel_fbc *fb=
c)
>  	u32 dpfc_ctl;
>=20=20
>  	/* Disable compression */
> -	dpfc_ctl =3D intel_de_read(i915, ILK_DPFC_CONTROL);
> +	dpfc_ctl =3D intel_de_read(i915, ILK_DPFC_CONTROL(fbc->id));
>  	if (dpfc_ctl & DPFC_CTL_EN) {
>  		dpfc_ctl &=3D ~DPFC_CTL_EN;
> -		intel_de_write(i915, ILK_DPFC_CONTROL, dpfc_ctl);
> +		intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
>  	}
>  }
>=20=20
>  static bool ilk_fbc_is_active(struct intel_fbc *fbc)
>  {
> -	return intel_de_read(fbc->i915, ILK_DPFC_CONTROL) & DPFC_CTL_EN;
> +	return intel_de_read(fbc->i915, ILK_DPFC_CONTROL(fbc->id)) & DPFC_CTL_E=
N;
>  }
>=20=20
>  static bool ilk_fbc_is_compressing(struct intel_fbc *fbc)
>  {
> -	return intel_de_read(fbc->i915, ILK_DPFC_STATUS) & DPFC_COMP_SEG_MASK;
> +	return intel_de_read(fbc->i915, ILK_DPFC_STATUS(fbc->id)) & DPFC_COMP_S=
EG_MASK;
>  }
>=20=20
>  static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
>  {
>  	struct drm_i915_private *i915 =3D fbc->i915;
>=20=20
> -	intel_de_write(i915, ILK_DPFC_CB_BASE, fbc->compressed_fb.start);
> +	intel_de_write(i915, ILK_DPFC_CB_BASE(fbc->id), fbc->compressed_fb.star=
t);
>  }
>=20=20
>  static const struct intel_fbc_funcs ilk_fbc_funcs =3D {
> @@ -524,8 +526,8 @@ static void snb_fbc_nuke(struct intel_fbc *fbc)
>  {
>  	struct drm_i915_private *i915 =3D fbc->i915;
>=20=20
> -	intel_de_write(i915, MSG_FBC_REND_STATE, FBC_REND_NUKE);
> -	intel_de_posting_read(i915, MSG_FBC_REND_STATE);
> +	intel_de_write(i915, MSG_FBC_REND_STATE(fbc->id), FBC_REND_NUKE);
> +	intel_de_posting_read(i915, MSG_FBC_REND_STATE(fbc->id));
>  }
>=20=20
>  static const struct intel_fbc_funcs snb_fbc_funcs =3D {
> @@ -547,7 +549,7 @@ static void glk_fbc_program_cfb_stride(struct intel_f=
bc *fbc)
>  		val |=3D FBC_STRIDE_OVERRIDE |
>  			FBC_STRIDE(fbc_state->override_cfb_stride / fbc->limit);
>=20=20
> -	intel_de_write(i915, GLK_FBC_STRIDE, val);
> +	intel_de_write(i915, GLK_FBC_STRIDE(fbc->id), val);
>  }
>=20=20
>  static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
> @@ -598,19 +600,19 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
>  	if (i915->ggtt.num_fences)
>  		snb_fbc_program_fence(fbc);
>=20=20
> -	intel_de_write(i915, ILK_DPFC_CONTROL,
> +	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
>  		       DPFC_CTL_EN | ivb_dpfc_ctl(fbc));
>  }
>=20=20
>  static bool ivb_fbc_is_compressing(struct intel_fbc *fbc)
>  {
> -	return intel_de_read(fbc->i915, ILK_DPFC_STATUS2) & DPFC_COMP_SEG_MASK_=
IVB;
> +	return intel_de_read(fbc->i915, ILK_DPFC_STATUS2(fbc->id)) & DPFC_COMP_=
SEG_MASK_IVB;
>  }
>=20=20
>  static void ivb_fbc_set_false_color(struct intel_fbc *fbc,
>  				    bool enable)
>  {
> -	intel_de_rmw(fbc->i915, ILK_DPFC_CONTROL,
> +	intel_de_rmw(fbc->i915, ILK_DPFC_CONTROL(fbc->id),
>  		     DPFC_CTL_FALSE_COLOR, enable ? DPFC_CTL_FALSE_COLOR : 0);
>  }
>=20=20
> @@ -1620,7 +1622,8 @@ void intel_fbc_add_plane(struct intel_fbc *fbc, str=
uct intel_plane *plane)
>  	fbc->possible_framebuffer_bits |=3D plane->frontbuffer_bit;
>  }
>=20=20
> -static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915)
> +static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915,
> +					  enum intel_fbc_id fbc_id)
>  {
>  	struct intel_fbc *fbc;
>=20=20
> @@ -1628,6 +1631,7 @@ static struct intel_fbc *intel_fbc_create(struct dr=
m_i915_private *i915)
>  	if (!fbc)
>  		return NULL;
>=20=20
> +	fbc->id =3D fbc_id;
>  	fbc->i915 =3D i915;
>  	INIT_WORK(&fbc->underrun_work, intel_fbc_underrun_work_fn);
>  	mutex_init(&fbc->lock);
> @@ -1671,7 +1675,7 @@ void intel_fbc_init(struct drm_i915_private *i915)
>  	if (!HAS_FBC(i915))
>  		return;
>=20=20
> -	fbc =3D intel_fbc_create(i915);
> +	fbc =3D intel_fbc_create(i915, INTEL_FBC_A);
>  	if (!fbc)
>  		return;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i=
915/display/intel_fbc.h
> index 07ad0411fcc3..7b7631aec527 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -17,6 +17,12 @@ struct intel_fbc;
>  struct intel_plane;
>  struct intel_plane_state;
>=20=20
> +enum intel_fbc_id {
> +	INTEL_FBC_A,
> +
> +	I915_MAX_FBCS,
> +};
> +
>  int intel_fbc_atomic_check(struct intel_atomic_state *state);
>  bool intel_fbc_pre_update(struct intel_atomic_state *state,
>  			  struct intel_crtc *crtc);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index d27ba273cc68..698a023e70f5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3386,10 +3386,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t=
 reg)
>  #define FBC_LL_SIZE		(1536)
>=20=20
>  /* Framebuffer compression for GM45+ */
> -#define DPFC_CB_BASE		_MMIO(0x3200)
> -#define ILK_DPFC_CB_BASE	_MMIO(0x43200)
> -#define DPFC_CONTROL		_MMIO(0x3208)
> -#define ILK_DPFC_CONTROL	_MMIO(0x43208)
> +#define DPFC_CB_BASE			_MMIO(0x3200)
> +#define ILK_DPFC_CB_BASE(fbc_id)	_MMIO_PIPE((fbc_id), 0x43200, 0x43240)
> +#define DPFC_CONTROL			_MMIO(0x3208)
> +#define ILK_DPFC_CONTROL(fbc_id)	_MMIO_PIPE((fbc_id), 0x43208, 0x43248)
>  #define   DPFC_CTL_EN				REG_BIT(31)
>  #define   DPFC_CTL_PLANE_MASK_G4X		REG_BIT(30) /* g4x-snb */
>  #define   DPFC_CTL_PLANE_G4X(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_M=
ASK_G4X, (i9xx_plane))
> @@ -3407,28 +3407,28 @@ static inline bool i915_mmio_reg_valid(i915_reg_t=
 reg)
>  #define   DPFC_CTL_LIMIT_4X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 2)
>  #define   DPFC_CTL_FENCENO_MASK			REG_GENMASK(3, 0)
>  #define   DPFC_CTL_FENCENO(fence)		REG_FIELD_PREP(DPFC_CTL_FENCENO_MASK,=
 (fence))
> -#define DPFC_RECOMP_CTL		_MMIO(0x320c)
> -#define ILK_DPFC_RECOMP_CTL	_MMIO(0x4320c)
> +#define DPFC_RECOMP_CTL			_MMIO(0x320c)
> +#define ILK_DPFC_RECOMP_CTL(fbc_id)	_MMIO_PIPE((fbc_id), 0x4320c, 0x4324=
c)

This is display 5 and 6 only, right? Will there be a register instance
for fbc_id > INTEL_FBC_A? Or is the parametrization just for
completeness?

This one is only used in gvt, anyway. And that actually makes me wonder
if this should be breaking the build. Does CI not have gvt enabled?

>  #define   DPFC_RECOMP_STALL_EN			REG_BIT(27)
>  #define   DPFC_RECOMP_STALL_WM_MASK		REG_GENMASK(26, 16)
>  #define   DPFC_RECOMP_TIMER_COUNT_MASK		REG_GENMASK(5, 0)
> -#define DPFC_STATUS		_MMIO(0x3210)
> -#define ILK_DPFC_STATUS		_MMIO(0x43210)
> +#define DPFC_STATUS			_MMIO(0x3210)
> +#define ILK_DPFC_STATUS(fbc_id)		_MMIO_PIPE((fbc_id), 0x43210, 0x43250)

Ditto, apart from the gvt part.

>  #define   DPFC_INVAL_SEG_MASK			REG_GENMASK(26, 16)
>  #define   DPFC_COMP_SEG_MASK			REG_GENMASK(10, 0)
> -#define DPFC_STATUS2		_MMIO(0x3214)
> -#define ILK_DPFC_STATUS2		_MMIO(0x43214)
> +#define DPFC_STATUS2			_MMIO(0x3214)
> +#define ILK_DPFC_STATUS2(fbc_id)	_MMIO_PIPE((fbc_id), 0x43214, 0x43254)
>  #define   DPFC_COMP_SEG_MASK_IVB		REG_GENMASK(11, 0)
> -#define DPFC_FENCE_YOFF		_MMIO(0x3218)
> -#define ILK_DPFC_FENCE_YOFF	_MMIO(0x43218)
> -#define DPFC_CHICKEN		_MMIO(0x3224)
> -#define ILK_DPFC_CHICKEN	_MMIO(0x43224)
> +#define DPFC_FENCE_YOFF			_MMIO(0x3218)
> +#define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x4325=
8)

Ditto.

BR,
Jani.

> +#define DPFC_CHICKEN			_MMIO(0x3224)
> +#define ILK_DPFC_CHICKEN(fbc_id)	_MMIO_PIPE((fbc_id), 0x43224, 0x43264)
>  #define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
>  #define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
>  #define   DPFC_CHICKEN_COMP_DUMMY_PIXEL		REG_BIT(14) /* glk+ */
>  #define   DPFC_DISABLE_DUMMY0			REG_BIT(8) /* ivb+ */
>=20=20
> -#define GLK_FBC_STRIDE		_MMIO(0x43228)
> +#define GLK_FBC_STRIDE(fbc_id)	_MMIO_PIPE((fbc_id), 0x43228, 0x43268)
>  #define   FBC_STRIDE_OVERRIDE	REG_BIT(15)
>  #define   FBC_STRIDE_MASK	REG_GENMASK(14, 0)
>  #define   FBC_STRIDE(x)		REG_FIELD_PREP(FBC_STRIDE_MASK, (x))
> @@ -3471,9 +3471,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
>  #define IPS_CTL		_MMIO(0x43408)
>  #define   IPS_ENABLE	(1 << 31)
>=20=20
> -#define MSG_FBC_REND_STATE	_MMIO(0x50380)
> +#define MSG_FBC_REND_STATE(fbc_id)	_MMIO_PIPE((fbc_id), 0x50380, 0x50384)
>  #define   FBC_REND_NUKE			REG_BIT(2)
> -#define   FBC_REND_CACHE_CLEAN			REG_BIT(1)
> +#define   FBC_REND_CACHE_CLEAN		REG_BIT(1)
>=20=20
>  /*
>   * GPIO regs
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 434b1f8b7fe3..bdf97a8c9ef3 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -160,8 +160,9 @@ static void bxt_init_clock_gating(struct drm_i915_pri=
vate *dev_priv)
>  	 * WaFbcHighMemBwCorruptionAvoidance:bxt
>  	 * Display WA #0883: bxt
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_re=
ad(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
> -		   DPFC_DISABLE_DUMMY0);
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)=
) |
> +			   DPFC_DISABLE_DUMMY0);
>  }
>=20=20
>  static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -7451,8 +7452,8 @@ static void gen8_set_l3sqc_credits(struct drm_i915_=
private *dev_priv,
>  static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/* Wa_1409120013:icl,ehl */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
> -		   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +			   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>=20=20
>  	/*Wa_14010594013:icl, ehl */
>  	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
> @@ -7464,7 +7465,7 @@ static void gen12lp_init_clock_gating(struct drm_i9=
15_private *dev_priv)
>  	/* Wa_1409120013:tgl,rkl,adl-s,dg1,dg2 */
>  	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
>  	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv) || IS_DG2(dev_priv))
> -		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
> +		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>  				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>=20=20
>  	/* Wa_1409825376:tgl (pre-prod)*/
> @@ -7549,8 +7550,9 @@ static void cfl_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
>  	 * WaFbcNukeOnHostModify:cfl
>  	 * Display WA #0873: cfl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_re=
ad(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
> -		   DPFC_NUKE_ON_ANY_MODIFICATION);
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)=
) |
> +			   DPFC_NUKE_ON_ANY_MODIFICATION);
>  }
>=20=20
>  static void kbl_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -7582,8 +7584,9 @@ static void kbl_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
>  	 * WaFbcNukeOnHostModify:kbl
>  	 * Display WA #0873: kbl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_re=
ad(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
> -		   DPFC_NUKE_ON_ANY_MODIFICATION);
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)=
) |
> +			   DPFC_NUKE_ON_ANY_MODIFICATION);
>  }
>=20=20
>  static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -7609,15 +7612,17 @@ static void skl_init_clock_gating(struct drm_i915=
_private *dev_priv)
>  	 * WaFbcNukeOnHostModify:skl
>  	 * Display WA #0873: skl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_re=
ad(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
> -		   DPFC_NUKE_ON_ANY_MODIFICATION);
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)=
) |
> +			   DPFC_NUKE_ON_ANY_MODIFICATION);
>=20=20
>  	/*
>  	 * WaFbcHighMemBwCorruptionAvoidance:skl
>  	 * Display WA #0883: skl
>  	 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN, intel_uncore_re=
ad(&dev_priv->uncore, ILK_DPFC_CHICKEN) |
> -		   DPFC_DISABLE_DUMMY0);
> +	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> +			   intel_uncore_read(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A)=
) |
> +			   DPFC_DISABLE_DUMMY0);
>  }
>=20=20
>  static void bdw_init_clock_gating(struct drm_i915_private *dev_priv)

--=20
Jani Nikula, Intel Open Source Graphics Center
