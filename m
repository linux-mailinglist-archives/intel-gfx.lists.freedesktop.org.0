Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9D545A2E7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 13:41:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B6E66F8B8;
	Tue, 23 Nov 2021 12:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 006D56F8B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 12:41:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="215723352"
X-IronPort-AV: E=Sophos;i="5.87,257,1631602800"; d="scan'208";a="215723352"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 04:41:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,257,1631602800"; d="scan'208";a="674456926"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga005.jf.intel.com with ESMTP; 23 Nov 2021 04:41:23 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 23 Nov 2021 12:41:21 +0000
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.012;
 Tue, 23 Nov 2021 04:41:20 -0800
From: "Chery, Nanley G" <nanley.g.chery@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, Nanley Chery
 <nanleychery@gmail.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg2: Tile 4 plane format support
Thread-Index: AQHX3+2SwoFlDoYHdUybS+QOIjdGjawRSmIA///DGvA=
Date: Tue, 23 Nov 2021 12:41:20 +0000
Message-ID: <3d74cdc0a6c94699b3e952ada6f903b3@intel.com>
References: <20211122211420.31584-1-stanislav.lisovskiy@intel.com>
 <CAJDL4uK=5sVT2Ae1gi8jUiFCtRmg_yzuoUn1VBMyX-K2mNbN5Q@mail.gmail.com>
 <20211123081358.GA17294@intel.com>
In-Reply-To: <20211123081358.GA17294@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Tile 4 plane format support
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: Tuesday, November 23, 2021 3:14 AM
> To: Nanley Chery <nanleychery@gmail.com>
> Cc: intel-gfx@lists.freedesktop.org; Chery, Nanley G
> <nanley.g.chery@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Tile 4 plane format suppor=
t
>=20
> On Mon, Nov 22, 2021 at 05:08:31PM -0500, Nanley Chery wrote:
> > Hi Stanislav,
> >
> > Are there IGT tests for this modifier?
>=20
> Hi Nanley
>=20
> Yes, there should be plenty of those, not sure they
> are all sent to upstream though.
> We have a separate team doing this.
> That modifier should be added to kms_plane_multiple
> and many others
>=20

Okay, I'll be on the lookout for them.

> Stan
>=20

Looks like you missed the other review comments I left in my prior email.

-Nanley

> >
> > On Mon, Nov 22, 2021 at 4:14 PM Stanislav Lisovskiy
> > <stanislav.lisovskiy@intel.com> wrote:
> > >
> > > TileF(Tile4 in bspec) format is 4K tile organized into
> > > 64B subtiles with same basic shape as for legacy TileY
> > > which will be supported by Display13.
> > >
> > > v2: - Fixed wrong case condition(Jani Nikula)
> > >     - Increased I915_FORMAT_MOD_F_TILED up to 12(Imre Deak)
> > >
> > > v3: - s/I915_TILING_F/TILING_4/g
> > >     - s/I915_FORMAT_MOD_F_TILED/I915_FORMAT_MOD_4_TILED/g
> > >     - Removed unneeded fencing code
> > >
> > > v4: - Rebased, fixed merge conflict with new table-oriented
> > >       format modifier checking(Stan)
> > >     - Replaced the rest of "Tile F" mentions to "Tile 4"(Stan)
> > >
> > > v5: - Still had to remove some Tile F mentionings
> > >     - Moved has_4tile from adlp to DG2(Ramalingam C)
> > >     - Check specifically for DG2, but not the Display13(Imre)
> > >
> > > v6: - Moved Tile4 assocating struct for modifier/display to
> > >       the beginning(Imre Deak)
> > >     - Removed unneeded case I915_FORMAT_MOD_4_TILED modifier
> > >       checks(Imre Deak)
> > >     - Fixed I915_FORMAT_MOD_4_TILED to be 9 instead of 12
> > >       (Imre Deak)
> > >
> > > v7: - Fixed display_ver to { 13, 13 }(Imre Deak)
> > >     - Removed redundant newline(Imre Deak)
> > >
> > > Reviewed-by: Imre Deak <imre.deak@intel.com>
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Juha-Pekka Heikkil=E4 <juha-pekka.heikkila@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  1 +
> > >  drivers/gpu/drm/i915/display/intel_fb.c       |  9 +++++++++
> > >  drivers/gpu/drm/i915/display/intel_fbc.c      |  1 +
> > >  .../drm/i915/display/intel_plane_initial.c    |  1 +
> > >  .../drm/i915/display/skl_universal_plane.c    | 20 +++++++++++------=
--
> > >  drivers/gpu/drm/i915/i915_drv.h               |  1 +
> > >  drivers/gpu/drm/i915/i915_pci.c               |  1 +
> > >  drivers/gpu/drm/i915/i915_reg.h               |  1 +
> > >  drivers/gpu/drm/i915/intel_device_info.h      |  1 +
> > >  drivers/gpu/drm/i915/intel_pm.c               |  1 +
> > >  include/uapi/drm/drm_fourcc.h                 |  8 ++++++++
> > >  11 files changed, 37 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> > > index f3c9208a30b1..7429965d3682 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -7766,6 +7766,7 @@ static int intel_atomic_check_async(struct
> intel_atomic_state *state, struct int
> > >                 case I915_FORMAT_MOD_X_TILED:
> > >                 case I915_FORMAT_MOD_Y_TILED:
> > >                 case I915_FORMAT_MOD_Yf_TILED:
> > > +               case I915_FORMAT_MOD_4_TILED:
> > >                         break;
> > >                 default:
> > >                         drm_dbg_kms(&i915->drm,
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c
> b/drivers/gpu/drm/i915/display/intel_fb.c
> > > index c4a743d0913f..b7f1ef62072c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > > @@ -139,6 +139,9 @@ struct intel_modifier_desc {
> > >
> > >  static const struct intel_modifier_desc intel_modifiers[] =3D {
> > >         {
> > > +               .modifier =3D I915_FORMAT_MOD_4_TILED,
> > > +               .display_ver =3D { 13, 13 },
> >
> > I see that every other modifier has the plane_cap field set. Why is it
> > okay for it to be zero here?
> >
> > > +       }, {
> > >                 .modifier =3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
> > >                 .display_ver =3D { 12, 13 },
> > >                 .plane_caps =3D INTEL_PLANE_CAP_TILING_Y |
> INTEL_PLANE_CAP_CCS_MC,
> > > @@ -544,6 +547,12 @@ intel_tile_width_bytes(const struct
> drm_framebuffer *fb, int color_plane)
> > >                         return 128;
> > >                 else
> > >                         return 512;
> > > +       case I915_FORMAT_MOD_4_TILED:
> > > +               /*
> > > +                * Each 4K tile consists of 64B(8*8) subtiles, with
> > > +                * same shape as Y Tile(i.e 4*16B OWords)
> > > +                */
> > > +               return 128;
> > >         case I915_FORMAT_MOD_Y_TILED_CCS:
> > >                 if (intel_fb_is_ccs_aux_plane(fb, color_plane))
> > >                         return 128;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index d0c34bc3af6c..0ceabe40d8c9 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -898,6 +898,7 @@ static bool tiling_is_valid(struct drm_i915_priva=
te
> *i915,
> > >         case I915_FORMAT_MOD_Y_TILED:
> > >         case I915_FORMAT_MOD_Yf_TILED:
> > >                 return DISPLAY_VER(i915) >=3D 9;
> > > +       case I915_FORMAT_MOD_4_TILED:
> >
> > The tile Y cases above check the display version. Should we do the same=
 here?
> >
> > >         case I915_FORMAT_MOD_X_TILED:
> > >                 return true;
> > >         default:
> > > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > > index dcd698a02da2..d80855ee9b96 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > > @@ -125,6 +125,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *=
crtc,
> > >         case DRM_FORMAT_MOD_LINEAR:
> > >         case I915_FORMAT_MOD_X_TILED:
> > >         case I915_FORMAT_MOD_Y_TILED:
> > > +       case I915_FORMAT_MOD_4_TILED:
> > >                 break;
> > >         default:
> > >                 drm_dbg(&dev_priv->drm,
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 28890876bdeb..e5cda5bcbde4 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -751,6 +751,8 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
> > >                 return PLANE_CTL_TILED_X;
> > >         case I915_FORMAT_MOD_Y_TILED:
> > >                 return PLANE_CTL_TILED_Y;
> > > +       case I915_FORMAT_MOD_4_TILED:
> > > +               return PLANE_CTL_TILED_4;
> > >         case I915_FORMAT_MOD_Y_TILED_CCS:
> > >         case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> > >                 return PLANE_CTL_TILED_Y |
> PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> > > @@ -1971,9 +1973,7 @@ static bool
> gen12_plane_format_mod_supported(struct drm_plane *_plane,
> > >         case DRM_FORMAT_Y216:
> > >         case DRM_FORMAT_XVYU12_16161616:
> > >         case DRM_FORMAT_XVYU16161616:
> > > -               if (modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> > > -                   modifier =3D=3D I915_FORMAT_MOD_X_TILED ||
> > > -                   modifier =3D=3D I915_FORMAT_MOD_Y_TILED)
> > > +               if (!intel_fb_is_ccs_modifier(modifier))
> > >                         return true;
> > >                 fallthrough;
> > >         default:
> > > @@ -2299,11 +2299,15 @@ skl_get_initial_plane_config(struct intel_crt=
c
> *crtc,
> > >                 else
> > >                         fb->modifier =3D I915_FORMAT_MOD_Y_TILED;
> > >                 break;
> > > -       case PLANE_CTL_TILED_YF:
> > > -               if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> > > -                       fb->modifier =3D I915_FORMAT_MOD_Yf_TILED_CCS=
;
> > > -               else
> > > -                       fb->modifier =3D I915_FORMAT_MOD_Yf_TILED;
> > > +       case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ =
*/
> >
> > To be safe, maybe add a static_assert(PLANE_CTL_TILED_YF =3D=3D
> > PLANE_CTL_TILED_4); ?
> >
> > > +               if (HAS_4TILE(dev_priv)) {
> > > +                       fb->modifier =3D I915_FORMAT_MOD_4_TILED;
> > > +               } else {
> > > +                       if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENAB=
LE)
> > > +                               fb->modifier =3D I915_FORMAT_MOD_Yf_T=
ILED_CCS;
> > > +                       else
> > > +                               fb->modifier =3D I915_FORMAT_MOD_Yf_T=
ILED;
> > > +               }
> > >                 break;
> > >         default:
> > >                 MISSING_CASE(tiling);
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h
> > > index 1bfadd9127fc..3d90bd732e91 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -1627,6 +1627,7 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> > >  #define CMDPARSER_USES_GGTT(dev_priv) (GRAPHICS_VER(dev_priv) =3D=3D=
 7)
> > >
> > >  #define HAS_LLC(dev_priv)      (INTEL_INFO(dev_priv)->has_llc)
> > > +#define HAS_4TILE(dev_priv)    (INTEL_INFO(dev_priv)->has_4tile)
> > >  #define HAS_SNOOP(dev_priv)    (INTEL_INFO(dev_priv)->has_snoop)
> > >  #define HAS_EDRAM(dev_priv)    ((dev_priv)->edram_size_mb)
> > >  #define HAS_SECURE_BATCHES(dev_priv) (GRAPHICS_VER(dev_priv) < 6)
> > > diff --git a/drivers/gpu/drm/i915/i915_pci.c
> b/drivers/gpu/drm/i915/i915_pci.c
> > > index f01cba4ec283..403d3a581ce7 100644
> > > --- a/drivers/gpu/drm/i915/i915_pci.c
> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > > @@ -1044,6 +1044,7 @@ static const struct intel_device_info dg2_info =
=3D {
> > >         DGFX_FEATURES,
> > >         .graphics.rel =3D 55,
> > >         .media.rel =3D 55,
> > > +       .has_4tile =3D 1,
> > >         PLATFORM(INTEL_DG2),
> > >         .platform_engine_mask =3D
> > >                 BIT(RCS0) | BIT(BCS0) |
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> > > index 3450818802c2..22d18a292430 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -7284,6 +7284,7 @@ enum {
> > >  #define   PLANE_CTL_TILED_X                    (1 << 10)
> > >  #define   PLANE_CTL_TILED_Y                    (4 << 10)
> > >  #define   PLANE_CTL_TILED_YF                   (5 << 10)
> > > +#define   PLANE_CTL_TILED_4                    (5 << 10)
> > >  #define   PLANE_CTL_ASYNC_FLIP                 (1 << 9)
> > >  #define   PLANE_CTL_FLIP_HORIZONTAL            (1 << 8)
> > >  #define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE (1 << 4) /* TGL+ */
> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> b/drivers/gpu/drm/i915/intel_device_info.h
> > > index 669f0d26c3c3..67177e18704a 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > > @@ -125,6 +125,7 @@ enum intel_ppgtt_type {
> > >         func(has_64bit_reloc); \
> > >         func(gpu_reset_clobbers_display); \
> > >         func(has_reset_engine); \
> > > +       func(has_4tile); \
> > >         func(has_global_mocs); \
> > >         func(has_gt_uc); \
> > >         func(has_l3_dpf); \
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> b/drivers/gpu/drm/i915/intel_pm.c
> > > index 01fa3fac1b57..167704f0acf0 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -5386,6 +5386,7 @@ skl_compute_wm_params(const struct
> intel_crtc_state *crtc_state,
> > >         }
> > >
> > >         wp->y_tiled =3D modifier =3D=3D I915_FORMAT_MOD_Y_TILED ||
> > > +                     modifier =3D=3D I915_FORMAT_MOD_4_TILED ||
> > >                       modifier =3D=3D I915_FORMAT_MOD_Yf_TILED ||
> > >                       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
> > >                       modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
> > > diff --git a/include/uapi/drm/drm_fourcc.h
> b/include/uapi/drm/drm_fourcc.h
> > > index 7f652c96845b..41184a94935d 100644
> > > --- a/include/uapi/drm/drm_fourcc.h
> > > +++ b/include/uapi/drm/drm_fourcc.h
> > > @@ -564,6 +564,14 @@ extern "C" {
> > >   * pitch is required to be a multiple of 4 tile widths.
> > >   */
> > >  #define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC
> fourcc_mod_code(INTEL, 8)
> > > +/*
> > > + * Intel F-tiling(aka Tile4) layout
> > > + *
> >
> > v4 and v5 attempted to get rid of the F-tile references, but this was
> > left behind.
> >
> > > + * This is a tiled layout using 4Kb tiles in row-major layout.
> > > + * Within the tile pixels are laid out in 64 byte units / sub-tiles =
in OWORD
> > > + * (16 bytes) chunks column-major..
> >
> > I can't picture how tile 4 is organized from this description. Could
> > we update it?
> > Here's a draft I came up with when wondering how I might do this myself=
:
> >
> > * This is a tiled layout using 4KB tiles in a row-major layout. It has =
the same
> > * shape as Tile Y at two granularities: 4KB (128B x 32) and 64B (16B x =
4). It
> > * only differs from Tile Y at the 256B granularity in between. At this
> > * granularity, Tile Y has a shape of 16B x 32 rows, but this tiling has=
 a shape
> > * of 64B x 8 rows.
> >
> > -Nanley
> >
> > > + */
> > > +#define I915_FORMAT_MOD_4_TILED         fourcc_mod_code(INTEL, 9)
> > >
> > >  /*
> > >   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macrobl=
ocks
> > > --
> > > 2.24.1.485.gad05a3d8e5
> > >
