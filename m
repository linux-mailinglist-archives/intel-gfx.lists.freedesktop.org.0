Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A7A459725
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 23:09:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BBDC89CD5;
	Mon, 22 Nov 2021 22:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B128889CD5
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 22:09:07 +0000 (UTC)
Received: by mail-yb1-xb32.google.com with SMTP id q74so53957942ybq.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 14:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=J1AMUzb4y1mvK3hvzEVTR+6RstYRlzLosIZ9GokWZoc=;
 b=H/q+V/qL+DKNlPxoExm0amyfke5RFLy4g3owFjKQI4z9iVshUZTeauv/2l9oAE2+lH
 uxrvcaIml+porOmceUvjCmBHRPerTa1Qe9/ZcY9MtjIprdxq1cbCEqGQRXnTVSrlCiNT
 YnQTkTuMWz5ECvYyWcEslWnVRktPA6T48s3bsgsIDnp4YEv7AlBonUR1KGBok/kb8gUy
 CrYhynBg3FaRrBlmiD0sYEMCPszhBVV9yYXZ7rqpf9QevlpmfVa8Z1AfWpwUSITQBVRx
 90lU26nARWo0gpuioZ0lqi5yrNCckmMZ4R/69hZkDPM2ww/3+jaRyMz3iI4FuZ2oi5ld
 RoJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=J1AMUzb4y1mvK3hvzEVTR+6RstYRlzLosIZ9GokWZoc=;
 b=xyr6SrAz/bJ8t1rL70VCq2nt+jfqdlYuhGSElK1tC/e87ciYGrC9Dg8hrkhjan0Yal
 tDSPEMm4reNJZNpHqQqFi+t6xbaVyzl+0vnphySjxP1001YRgriORVMzXExL4pUZvEr1
 9NjDXko4KDJ4TLZ+6prMa4x5BW8cMcHFlHD9uSaejIRbsuveO+wtYArfvc7pe8kU+zn1
 k09pyhlafl8zXwPbnYHKKGNOGFHlc0mZObZ8FxnI1RP2m6a2z9s6MhQuP+MMn3NhujJk
 YOq90rzdG5NvcMwVfwor+NSmKmb0aHbmNoz/O3ZC/7eTzv2Ca5bmZW5IYmL//LIyKkUq
 Ajlg==
X-Gm-Message-State: AOAM53221L5z+nP7mWBc7sW1/ViP90Ugb8vLmvjlN+rYs6UOQVCC6GZD
 vHs6yBDKWMBLJT9FAm4/DnhLuUvjf2VHM5qYd5Q=
X-Google-Smtp-Source: ABdhPJzNWjk8KVFyvtQbWkvjvJkUcR0e4l8eqss4ltjrwXGZ6vqEpJj8Y+P9n9rk8snbZb0ux1NASI5t+ovLA7VJnUQ=
X-Received: by 2002:a25:56c3:: with SMTP id k186mr400279ybb.543.1637618946763; 
 Mon, 22 Nov 2021 14:09:06 -0800 (PST)
MIME-Version: 1.0
References: <20211122211420.31584-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20211122211420.31584-1-stanislav.lisovskiy@intel.com>
From: Nanley Chery <nanleychery@gmail.com>
Date: Mon, 22 Nov 2021 17:08:31 -0500
Message-ID: <CAJDL4uK=5sVT2Ae1gi8jUiFCtRmg_yzuoUn1VBMyX-K2mNbN5Q@mail.gmail.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Cc: intel-gfx@lists.freedesktop.org, Nanley Chery <nanley.g.chery@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Stanislav,

Are there IGT tests for this modifier?

On Mon, Nov 22, 2021 at 4:14 PM Stanislav Lisovskiy
<stanislav.lisovskiy@intel.com> wrote:
>
> TileF(Tile4 in bspec) format is 4K tile organized into
> 64B subtiles with same basic shape as for legacy TileY
> which will be supported by Display13.
>
> v2: - Fixed wrong case condition(Jani Nikula)
>     - Increased I915_FORMAT_MOD_F_TILED up to 12(Imre Deak)
>
> v3: - s/I915_TILING_F/TILING_4/g
>     - s/I915_FORMAT_MOD_F_TILED/I915_FORMAT_MOD_4_TILED/g
>     - Removed unneeded fencing code
>
> v4: - Rebased, fixed merge conflict with new table-oriented
>       format modifier checking(Stan)
>     - Replaced the rest of "Tile F" mentions to "Tile 4"(Stan)
>
> v5: - Still had to remove some Tile F mentionings
>     - Moved has_4tile from adlp to DG2(Ramalingam C)
>     - Check specifically for DG2, but not the Display13(Imre)
>
> v6: - Moved Tile4 assocating struct for modifier/display to
>       the beginning(Imre Deak)
>     - Removed unneeded case I915_FORMAT_MOD_4_TILED modifier
>       checks(Imre Deak)
>     - Fixed I915_FORMAT_MOD_4_TILED to be 9 instead of 12
>       (Imre Deak)
>
> v7: - Fixed display_ver to { 13, 13 }(Imre Deak)
>     - Removed redundant newline(Imre Deak)
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Juha-Pekka Heikkil=C3=A4 <juha-pekka.heikkila@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  1 +
>  drivers/gpu/drm/i915/display/intel_fb.c       |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  1 +
>  .../drm/i915/display/intel_plane_initial.c    |  1 +
>  .../drm/i915/display/skl_universal_plane.c    | 20 +++++++++++--------
>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
>  drivers/gpu/drm/i915/i915_pci.c               |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h      |  1 +
>  drivers/gpu/drm/i915/intel_pm.c               |  1 +
>  include/uapi/drm/drm_fourcc.h                 |  8 ++++++++
>  11 files changed, 37 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f3c9208a30b1..7429965d3682 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7766,6 +7766,7 @@ static int intel_atomic_check_async(struct intel_at=
omic_state *state, struct int
>                 case I915_FORMAT_MOD_X_TILED:
>                 case I915_FORMAT_MOD_Y_TILED:
>                 case I915_FORMAT_MOD_Yf_TILED:
> +               case I915_FORMAT_MOD_4_TILED:
>                         break;
>                 default:
>                         drm_dbg_kms(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index c4a743d0913f..b7f1ef62072c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -139,6 +139,9 @@ struct intel_modifier_desc {
>
>  static const struct intel_modifier_desc intel_modifiers[] =3D {
>         {
> +               .modifier =3D I915_FORMAT_MOD_4_TILED,
> +               .display_ver =3D { 13, 13 },

I see that every other modifier has the plane_cap field set. Why is it
okay for it to be zero here?

> +       }, {
>                 .modifier =3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
>                 .display_ver =3D { 12, 13 },
>                 .plane_caps =3D INTEL_PLANE_CAP_TILING_Y | INTEL_PLANE_CA=
P_CCS_MC,
> @@ -544,6 +547,12 @@ intel_tile_width_bytes(const struct drm_framebuffer =
*fb, int color_plane)
>                         return 128;
>                 else
>                         return 512;
> +       case I915_FORMAT_MOD_4_TILED:
> +               /*
> +                * Each 4K tile consists of 64B(8*8) subtiles, with
> +                * same shape as Y Tile(i.e 4*16B OWords)
> +                */
> +               return 128;
>         case I915_FORMAT_MOD_Y_TILED_CCS:
>                 if (intel_fb_is_ccs_aux_plane(fb, color_plane))
>                         return 128;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index d0c34bc3af6c..0ceabe40d8c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -898,6 +898,7 @@ static bool tiling_is_valid(struct drm_i915_private *=
i915,
>         case I915_FORMAT_MOD_Y_TILED:
>         case I915_FORMAT_MOD_Yf_TILED:
>                 return DISPLAY_VER(i915) >=3D 9;
> +       case I915_FORMAT_MOD_4_TILED:

The tile Y cases above check the display version. Should we do the same her=
e?

>         case I915_FORMAT_MOD_X_TILED:
>                 return true;
>         default:
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers=
/gpu/drm/i915/display/intel_plane_initial.c
> index dcd698a02da2..d80855ee9b96 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -125,6 +125,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc=
,
>         case DRM_FORMAT_MOD_LINEAR:
>         case I915_FORMAT_MOD_X_TILED:
>         case I915_FORMAT_MOD_Y_TILED:
> +       case I915_FORMAT_MOD_4_TILED:
>                 break;
>         default:
>                 drm_dbg(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 28890876bdeb..e5cda5bcbde4 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -751,6 +751,8 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
>                 return PLANE_CTL_TILED_X;
>         case I915_FORMAT_MOD_Y_TILED:
>                 return PLANE_CTL_TILED_Y;
> +       case I915_FORMAT_MOD_4_TILED:
> +               return PLANE_CTL_TILED_4;
>         case I915_FORMAT_MOD_Y_TILED_CCS:
>         case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>                 return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION=
_ENABLE;
> @@ -1971,9 +1973,7 @@ static bool gen12_plane_format_mod_supported(struct=
 drm_plane *_plane,
>         case DRM_FORMAT_Y216:
>         case DRM_FORMAT_XVYU12_16161616:
>         case DRM_FORMAT_XVYU16161616:
> -               if (modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> -                   modifier =3D=3D I915_FORMAT_MOD_X_TILED ||
> -                   modifier =3D=3D I915_FORMAT_MOD_Y_TILED)
> +               if (!intel_fb_is_ccs_modifier(modifier))
>                         return true;
>                 fallthrough;
>         default:
> @@ -2299,11 +2299,15 @@ skl_get_initial_plane_config(struct intel_crtc *c=
rtc,
>                 else
>                         fb->modifier =3D I915_FORMAT_MOD_Y_TILED;
>                 break;
> -       case PLANE_CTL_TILED_YF:
> -               if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> -                       fb->modifier =3D I915_FORMAT_MOD_Yf_TILED_CCS;
> -               else
> -                       fb->modifier =3D I915_FORMAT_MOD_Yf_TILED;
> +       case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */

To be safe, maybe add a static_assert(PLANE_CTL_TILED_YF =3D=3D
PLANE_CTL_TILED_4); ?

> +               if (HAS_4TILE(dev_priv)) {
> +                       fb->modifier =3D I915_FORMAT_MOD_4_TILED;
> +               } else {
> +                       if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> +                               fb->modifier =3D I915_FORMAT_MOD_Yf_TILED=
_CCS;
> +                       else
> +                               fb->modifier =3D I915_FORMAT_MOD_Yf_TILED=
;
> +               }
>                 break;
>         default:
>                 MISSING_CASE(tiling);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 1bfadd9127fc..3d90bd732e91 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1627,6 +1627,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define CMDPARSER_USES_GGTT(dev_priv) (GRAPHICS_VER(dev_priv) =3D=3D 7)
>
>  #define HAS_LLC(dev_priv)      (INTEL_INFO(dev_priv)->has_llc)
> +#define HAS_4TILE(dev_priv)    (INTEL_INFO(dev_priv)->has_4tile)
>  #define HAS_SNOOP(dev_priv)    (INTEL_INFO(dev_priv)->has_snoop)
>  #define HAS_EDRAM(dev_priv)    ((dev_priv)->edram_size_mb)
>  #define HAS_SECURE_BATCHES(dev_priv) (GRAPHICS_VER(dev_priv) < 6)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index f01cba4ec283..403d3a581ce7 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1044,6 +1044,7 @@ static const struct intel_device_info dg2_info =3D =
{
>         DGFX_FEATURES,
>         .graphics.rel =3D 55,
>         .media.rel =3D 55,
> +       .has_4tile =3D 1,
>         PLATFORM(INTEL_DG2),
>         .platform_engine_mask =3D
>                 BIT(RCS0) | BIT(BCS0) |
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 3450818802c2..22d18a292430 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7284,6 +7284,7 @@ enum {
>  #define   PLANE_CTL_TILED_X                    (1 << 10)
>  #define   PLANE_CTL_TILED_Y                    (4 << 10)
>  #define   PLANE_CTL_TILED_YF                   (5 << 10)
> +#define   PLANE_CTL_TILED_4                    (5 << 10)
>  #define   PLANE_CTL_ASYNC_FLIP                 (1 << 9)
>  #define   PLANE_CTL_FLIP_HORIZONTAL            (1 << 8)
>  #define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE (1 << 4) /* TGL+ */
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index 669f0d26c3c3..67177e18704a 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -125,6 +125,7 @@ enum intel_ppgtt_type {
>         func(has_64bit_reloc); \
>         func(gpu_reset_clobbers_display); \
>         func(has_reset_engine); \
> +       func(has_4tile); \
>         func(has_global_mocs); \
>         func(has_gt_uc); \
>         func(has_l3_dpf); \
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 01fa3fac1b57..167704f0acf0 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5386,6 +5386,7 @@ skl_compute_wm_params(const struct intel_crtc_state=
 *crtc_state,
>         }
>
>         wp->y_tiled =3D modifier =3D=3D I915_FORMAT_MOD_Y_TILED ||
> +                     modifier =3D=3D I915_FORMAT_MOD_4_TILED ||
>                       modifier =3D=3D I915_FORMAT_MOD_Yf_TILED ||
>                       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
>                       modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.=
h
> index 7f652c96845b..41184a94935d 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -564,6 +564,14 @@ extern "C" {
>   * pitch is required to be a multiple of 4 tile widths.
>   */
>  #define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC fourcc_mod_code(INTEL, 8=
)
> +/*
> + * Intel F-tiling(aka Tile4) layout
> + *

v4 and v5 attempted to get rid of the F-tile references, but this was
left behind.

> + * This is a tiled layout using 4Kb tiles in row-major layout.
> + * Within the tile pixels are laid out in 64 byte units / sub-tiles in O=
WORD
> + * (16 bytes) chunks column-major..

I can't picture how tile 4 is organized from this description. Could
we update it?
Here's a draft I came up with when wondering how I might do this myself:

* This is a tiled layout using 4KB tiles in a row-major layout. It has the =
same
* shape as Tile Y at two granularities: 4KB (128B x 32) and 64B (16B x 4). =
It
* only differs from Tile Y at the 256B granularity in between. At this
* granularity, Tile Y has a shape of 16B x 32 rows, but this tiling has a s=
hape
* of 64B x 8 rows.

-Nanley

> + */
> +#define I915_FORMAT_MOD_4_TILED         fourcc_mod_code(INTEL, 9)
>
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
> --
> 2.24.1.485.gad05a3d8e5
>
