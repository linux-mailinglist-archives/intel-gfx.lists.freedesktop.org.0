Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A40470153
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:13:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4AD410E246;
	Fri, 10 Dec 2021 13:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A549310E25D
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 13:12:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238145209"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="238145209"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:12:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="612925599"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:12:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211210122726.12577-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211210122726.12577-1-ville.syrjala@linux.intel.com>
Date: Fri, 10 Dec 2021 15:12:48 +0200
Message-ID: <87h7bg1u3z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move pipe/transcoder/abox masks
 under intel_device_info.display
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

On Fri, 10 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Collect the dipslay related mask under the display sub-structure
> in intel_device_info.
>
> Note that there is a slight change in behaviour in that we zero
> out .display entirely when !HAS_DISPLAY (aka. pipe_mask=3D=3D0), so
> now we also zero out the other masks (although cpu_transocder_mask
> should already be zero of pipe_mask is zero). abox_mask is
> only used by the display core init when HAS_DISPLAY is true, so
> the actual behaviour of the system shouldn't change despite the
> zeroing of these masks.
>
> There is a lot more display stuff directly in device info that
> could be moved over. Maybe someone else will be inspired to do it...
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.h  |  4 +-
>  .../drm/i915/display/intel_display_power.c    |  4 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  6 +-
>  drivers/gpu/drm/i915/i915_pci.c               | 76 +++++++++----------
>  drivers/gpu/drm/i915/intel_device_info.c      | 24 +++---
>  drivers/gpu/drm/i915/intel_device_info.h      |  9 +--
>  6 files changed, 61 insertions(+), 62 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 4b688a9727b3..43fd2f0a3e5e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -372,7 +372,7 @@ enum hpd_pin {
>=20=20
>  #define for_each_pipe(__dev_priv, __p) \
>  	for ((__p) =3D 0; (__p) < I915_MAX_PIPES; (__p)++) \
> -		for_each_if(INTEL_INFO(__dev_priv)->pipe_mask & BIT(__p))
> +		for_each_if(INTEL_INFO(__dev_priv)->display.pipe_mask & BIT(__p))
>=20=20
>  #define for_each_pipe_masked(__dev_priv, __p, __mask) \
>  	for_each_pipe(__dev_priv, __p) \
> @@ -380,7 +380,7 @@ enum hpd_pin {
>=20=20
>  #define for_each_cpu_transcoder(__dev_priv, __t) \
>  	for ((__t) =3D 0; (__t) < I915_MAX_TRANSCODERS; (__t)++)	\
> -		for_each_if (INTEL_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))
> +		for_each_if (INTEL_INFO(__dev_priv)->display.cpu_transcoder_mask & BIT=
(__t))
>=20=20
>  #define for_each_cpu_transcoder_masked(__dev_priv, __t, __mask) \
>  	for_each_cpu_transcoder(__dev_priv, __t) \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 229b4c127c6c..05babdcf5f2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5370,7 +5370,7 @@ static void gen12_dbuf_slices_config(struct drm_i91=
5_private *dev_priv)
>=20=20
>  static void icl_mbus_init(struct drm_i915_private *dev_priv)
>  {
> -	unsigned long abox_regs =3D INTEL_INFO(dev_priv)->abox_mask;
> +	unsigned long abox_regs =3D INTEL_INFO(dev_priv)->display.abox_mask;
>  	u32 mask, val, i;
>=20=20
>  	if (IS_ALDERLAKE_P(dev_priv))
> @@ -5830,7 +5830,7 @@ static void tgl_bw_buddy_init(struct drm_i915_priva=
te *dev_priv)
>  	enum intel_dram_type type =3D dev_priv->dram_info.type;
>  	u8 num_channels =3D dev_priv->dram_info.num_channels;
>  	const struct buddy_page_mask *table;
> -	unsigned long abox_mask =3D INTEL_INFO(dev_priv)->abox_mask;
> +	unsigned long abox_mask =3D INTEL_INFO(dev_priv)->display.abox_mask;
>  	int config, i;
>=20=20
>  	/* BW_BUDDY registers are not used on dgpu's beyond DG1 */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index a0f54a69b11d..47a9b1cb8eab 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1509,7 +1509,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_PSR_HW_TRACKING(dev_priv) \
>  	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
>  #define HAS_PSR2_SEL_FETCH(dev_priv)	 (GRAPHICS_VER(dev_priv) >=3D 12)
> -#define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->cpu_tra=
nscoder_mask & BIT(trans)) !=3D 0)
> +#define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display=
.cpu_transcoder_mask & BIT(trans)) !=3D 0)
>=20=20
>  #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
>  #define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
> @@ -1562,9 +1562,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define GT_FREQUENCY_MULTIPLIER 50
>  #define GEN9_FREQ_SCALER 3
>=20=20
> -#define INTEL_NUM_PIPES(dev_priv) (hweight8(INTEL_INFO(dev_priv)->pipe_m=
ask))
> +#define INTEL_NUM_PIPES(dev_priv) (hweight8(INTEL_INFO(dev_priv)->displa=
y.pipe_mask))
>=20=20
> -#define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->pipe_mask !=3D 0)
> +#define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->display.pipe_mask !=
=3D 0)
>=20=20
>  #define HAS_VRR(i915)	(GRAPHICS_VER(i915) >=3D 11)
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 708a23415e9c..27cba75eb255 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -162,8 +162,8 @@
>  #define I830_FEATURES \
>  	GEN(2), \
>  	.is_mobile =3D 1, \
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B), \
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B), \
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B),=
 \
>  	.display.has_overlay =3D 1, \
>  	.display.cursor_needs_physical =3D 1, \
>  	.display.overlay_needs_physical =3D 1, \
> @@ -183,8 +183,8 @@
>=20=20
>  #define I845_FEATURES \
>  	GEN(2), \
> -	.pipe_mask =3D BIT(PIPE_A), \
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A), \
> +	.display.pipe_mask =3D BIT(PIPE_A), \
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A), \
>  	.display.has_overlay =3D 1, \
>  	.display.overlay_needs_physical =3D 1, \
>  	.display.has_gmch =3D 1, \
> @@ -225,8 +225,8 @@ static const struct intel_device_info i865g_info =3D {
>=20=20
>  #define GEN3_FEATURES \
>  	GEN(3), \
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B), \
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B), \
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B),=
 \
>  	.display.has_gmch =3D 1, \
>  	.gpu_reset_clobbers_display =3D true, \
>  	.platform_engine_mask =3D BIT(RCS0), \
> @@ -315,8 +315,8 @@ static const struct intel_device_info pnv_m_info =3D {
>=20=20
>  #define GEN4_FEATURES \
>  	GEN(4), \
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B), \
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B), \
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B),=
 \
>  	.display.has_hotplug =3D 1, \
>  	.display.has_gmch =3D 1, \
>  	.gpu_reset_clobbers_display =3D true, \
> @@ -368,8 +368,8 @@ static const struct intel_device_info gm45_info =3D {
>=20=20
>  #define GEN5_FEATURES \
>  	GEN(5), \
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B), \
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B), \
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B),=
 \
>  	.display.has_hotplug =3D 1, \
>  	.platform_engine_mask =3D BIT(RCS0) | BIT(VCS0), \
>  	.has_snoop =3D true, \
> @@ -398,8 +398,8 @@ static const struct intel_device_info ilk_m_info =3D {
>=20=20
>  #define GEN6_FEATURES \
>  	GEN(6), \
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B), \
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B), \
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B),=
 \
>  	.display.has_hotplug =3D 1, \
>  	.display.has_fbc =3D 1, \
>  	.platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
> @@ -449,8 +449,8 @@ static const struct intel_device_info snb_m_gt2_info =
=3D {
>=20=20
>  #define GEN7_FEATURES  \
>  	GEN(7), \
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TR=
ANSCODER_C), \
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) =
| BIT(TRANSCODER_C), \
>  	.display.has_hotplug =3D 1, \
>  	.display.has_fbc =3D 1, \
>  	.platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
> @@ -504,8 +504,8 @@ static const struct intel_device_info ivb_q_info =3D {
>  	GEN7_FEATURES,
>  	PLATFORM(INTEL_IVYBRIDGE),
>  	.gt =3D 2,
> -	.pipe_mask =3D 0, /* legal, last one wins */
> -	.cpu_transcoder_mask =3D 0,
> +	.display.pipe_mask =3D 0, /* legal, last one wins */
> +	.display.cpu_transcoder_mask =3D 0,
>  	.has_l3_dpf =3D 1,
>  };
>=20=20
> @@ -513,8 +513,8 @@ static const struct intel_device_info vlv_info =3D {
>  	PLATFORM(INTEL_VALLEYVIEW),
>  	GEN(7),
>  	.is_lp =3D 1,
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B),
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B),
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
>  	.has_runtime_pm =3D 1,
>  	.has_rc6 =3D 1,
>  	.has_reset_engine =3D true,
> @@ -538,7 +538,7 @@ static const struct intel_device_info vlv_info =3D {
>  #define G75_FEATURES  \
>  	GEN7_FEATURES, \
>  	.platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0=
), \
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) =
| \
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
>  	.display.has_ddi =3D 1, \
>  	.display.has_fpga_dbg =3D 1, \
> @@ -608,8 +608,8 @@ static const struct intel_device_info bdw_gt3_info =
=3D {
>  static const struct intel_device_info chv_info =3D {
>  	PLATFORM(INTEL_CHERRYVIEW),
>  	GEN(8),
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TR=
ANSCODER_C),
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) =
| BIT(TRANSCODER_C),
>  	.display.has_hotplug =3D 1,
>  	.is_lp =3D 1,
>  	.platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0=
),
> @@ -686,8 +686,8 @@ static const struct intel_device_info skl_gt4_info =
=3D {
>  	.dbuf.slice_mask =3D BIT(DBUF_S1), \
>  	.display.has_hotplug =3D 1, \
>  	.platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0=
), \
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) =
| \
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>  		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
>  	.has_64bit_reloc =3D 1, \
> @@ -795,8 +795,8 @@ static const struct intel_device_info cml_gt2_info =
=3D {
>  #define GEN11_FEATURES \
>  	GEN9_FEATURES, \
>  	GEN11_DEFAULT_PAGE_SIZES, \
> -	.abox_mask =3D BIT(0), \
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
> +	.display.abox_mask =3D BIT(0), \
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) =
| \
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>  		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
>  	.pipe_offsets =3D { \
> @@ -847,9 +847,9 @@ static const struct intel_device_info jsl_info =3D {
>  #define GEN12_FEATURES \
>  	GEN11_FEATURES, \
>  	GEN(12), \
> -	.abox_mask =3D GENMASK(2, 1), \
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
> +	.display.abox_mask =3D GENMASK(2, 1), \
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PI=
PE_D), \
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) =
| \
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
>  		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
>  	.pipe_offsets =3D { \
> @@ -884,9 +884,9 @@ static const struct intel_device_info tgl_info =3D {
>  static const struct intel_device_info rkl_info =3D {
>  	GEN12_FEATURES,
>  	PLATFORM(INTEL_ROCKETLAKE),
> -	.abox_mask =3D BIT(0),
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +	.display.abox_mask =3D BIT(0),
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C),
>  	.display.has_hti =3D 1,
>  	.display.has_psr_hw_tracking =3D 0,
> @@ -906,7 +906,7 @@ static const struct intel_device_info dg1_info =3D {
>  	DGFX_FEATURES,
>  	.graphics.rel =3D 10,
>  	PLATFORM(INTEL_DG1),
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PI=
PE_D),
>  	.require_force_probe =3D 1,
>  	.platform_engine_mask =3D
>  		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
> @@ -918,7 +918,7 @@ static const struct intel_device_info dg1_info =3D {
>  static const struct intel_device_info adl_s_info =3D {
>  	GEN12_FEATURES,
>  	PLATFORM(INTEL_ALDERLAKE_S),
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PI=
PE_D),
>  	.display.has_hti =3D 1,
>  	.display.has_psr_hw_tracking =3D 0,
>  	.platform_engine_mask =3D
> @@ -935,7 +935,7 @@ static const struct intel_device_info adl_s_info =3D {
>  	}
>=20=20
>  #define XE_LPD_FEATURES \
> -	.abox_mask =3D GENMASK(1, 0),						\
> +	.display.abox_mask =3D GENMASK(1, 0),					\
>  	.color =3D { .degamma_lut_size =3D 128, .gamma_lut_size =3D 1024,		\
>  		   .degamma_lut_tests =3D DRM_COLOR_LUT_NON_DECREASING |		\
>  					DRM_COLOR_LUT_EQUAL_CHANNELS,		\
> @@ -955,7 +955,7 @@ static const struct intel_device_info adl_s_info =3D {
>  	.display.has_ipc =3D 1,							\
>  	.display.has_psr =3D 1,							\
>  	.display.ver =3D 13,							\
> -	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
> +	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PI=
PE_D),	\
>  	.pipe_offsets =3D {							\
>  		[TRANSCODER_A] =3D PIPE_A_OFFSET,					\
>  		[TRANSCODER_B] =3D PIPE_B_OFFSET,					\
> @@ -978,7 +978,7 @@ static const struct intel_device_info adl_p_info =3D {
>  	GEN12_FEATURES,
>  	XE_LPD_FEATURES,
>  	PLATFORM(INTEL_ALDERLAKE_P),
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
>  			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
>  	.display.has_cdclk_crawl =3D 1,
> @@ -1028,7 +1028,7 @@ static const struct intel_device_info xehpsdv_info =
=3D {
>  	PLATFORM(INTEL_XEHPSDV),
>  	.display =3D { },
>  	.has_64k_pages =3D 1,
> -	.pipe_mask =3D 0,
> +	.display.pipe_mask =3D 0,
>  	.platform_engine_mask =3D
>  		BIT(RCS0) | BIT(BCS0) |
>  		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
> @@ -1052,7 +1052,7 @@ static const struct intel_device_info dg2_info =3D {
>  		BIT(VECS0) | BIT(VECS1) |
>  		BIT(VCS0) | BIT(VCS2),
>  	.require_force_probe =3D 1,
> -	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
>  };
>=20=20
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index a3446a2abcb2..04fd266d70e2 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -326,33 +326,33 @@ void intel_device_info_runtime_init(struct drm_i915=
_private *dev_priv)
>  		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
>  			drm_info(&dev_priv->drm,
>  				 "Display fused off, disabling\n");
> -			info->pipe_mask =3D 0;
> -			info->cpu_transcoder_mask =3D 0;
> +			info->display.pipe_mask =3D 0;
> +			info->display.cpu_transcoder_mask =3D 0;
>  		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
>  			drm_info(&dev_priv->drm, "PipeC fused off\n");
> -			info->pipe_mask &=3D ~BIT(PIPE_C);
> -			info->cpu_transcoder_mask &=3D ~BIT(TRANSCODER_C);
> +			info->display.pipe_mask &=3D ~BIT(PIPE_C);
> +			info->display.cpu_transcoder_mask &=3D ~BIT(TRANSCODER_C);
>  		}
>  	} else if (HAS_DISPLAY(dev_priv) && DISPLAY_VER(dev_priv) >=3D 9) {
>  		u32 dfsm =3D intel_de_read(dev_priv, SKL_DFSM);
>=20=20
>  		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
> -			info->pipe_mask &=3D ~BIT(PIPE_A);
> -			info->cpu_transcoder_mask &=3D ~BIT(TRANSCODER_A);
> +			info->display.pipe_mask &=3D ~BIT(PIPE_A);
> +			info->display.cpu_transcoder_mask &=3D ~BIT(TRANSCODER_A);
>  		}
>  		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
> -			info->pipe_mask &=3D ~BIT(PIPE_B);
> -			info->cpu_transcoder_mask &=3D ~BIT(TRANSCODER_B);
> +			info->display.pipe_mask &=3D ~BIT(PIPE_B);
> +			info->display.cpu_transcoder_mask &=3D ~BIT(TRANSCODER_B);
>  		}
>  		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
> -			info->pipe_mask &=3D ~BIT(PIPE_C);
> -			info->cpu_transcoder_mask &=3D ~BIT(TRANSCODER_C);
> +			info->display.pipe_mask &=3D ~BIT(PIPE_C);
> +			info->display.cpu_transcoder_mask &=3D ~BIT(TRANSCODER_C);
>  		}
>=20=20
>  		if (DISPLAY_VER(dev_priv) >=3D 12 &&
>  		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
> -			info->pipe_mask &=3D ~BIT(PIPE_D);
> -			info->cpu_transcoder_mask &=3D ~BIT(TRANSCODER_D);
> +			info->display.pipe_mask &=3D ~BIT(PIPE_D);
> +			info->display.cpu_transcoder_mask &=3D ~BIT(TRANSCODER_D);
>  		}
>=20=20
>  		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index 213ae2c07126..78597d382445 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -196,11 +196,6 @@ struct intel_device_info {
>=20=20
>  	u8 gt; /* GT number, 0 if undefined */
>=20=20
> -	u8 pipe_mask;
> -	u8 cpu_transcoder_mask;
> -
> -	u8 abox_mask;
> -
>  #define DEFINE_FLAG(name) u8 name:1
>  	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
>  #undef DEFINE_FLAG
> @@ -209,6 +204,10 @@ struct intel_device_info {
>  		u8 ver;
>  		u8 rel;
>=20=20
> +		u8 pipe_mask;
> +		u8 cpu_transcoder_mask;
> +		u8 abox_mask;
> +
>  #define DEFINE_FLAG(name) u8 name:1
>  		DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
>  #undef DEFINE_FLAG

--=20
Jani Nikula, Intel Open Source Graphics Center
