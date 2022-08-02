Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FA9589CF9
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 15:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 217C498DA6;
	Thu,  4 Aug 2022 13:40:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D603592588
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 16:53:29 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id k26so11294292ejx.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Aug 2022 09:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9lhx0tATAsODf3BSCvUwVT2zXdDn0t7qK5A4Uq+v30k=;
 b=asZsXVsTjILsFsFhDn73E4hutUOqqOhiKO7rKxhhO/ETj7dcF8rip3zP5zoel7PK/i
 wejqExt0c3z0SMYUyhZxSke/NsBqw1DhPqtaNureiQyHXISNlovrs49emq5gBx4QgISe
 yDRD4rdNGTDHwhUd6Db+ZKD88DBx0rH1YF+LJd7B8M/gXOUr9XHFjuSZYfcein9FqA57
 GDXxmBhVYC925NULeaNyEljqauf7qXkEYb3yN/Bcn6lOg+vhopO0eOLAud1t22+zWNVV
 vz+Twg6JjuyhphQh4WsXEK1smk0kNTxS5C887MIinwW8dkQ8g/ezTY/P6KUrYMwgnUeZ
 t5BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9lhx0tATAsODf3BSCvUwVT2zXdDn0t7qK5A4Uq+v30k=;
 b=J1Hs4TKDsdsPZtp6K0+83F+jEQHUBamwzpi2qm1gMwdEGiSobycEN/g3a4fokVhRm2
 wJnsrWjt2grn2HozCQr/mQl9tVvG/c5tL5SFbWMO4MkAK5150NsAbIxUgE4Kv1TIfQkw
 hxL3MMaBtgblBQXcO0fWjVGCcGHv1uebeWNFZEbZtWjdlBxs2cA8MuVocC7vlQUO7A1a
 ILeHpn6K0/HGGzUPXX/YwzgdYZCuedFtf+2g+Wse+6O4SS2phOBZTxKp1z1Hyj8MLCes
 rmWeRDi4tR9RiGV0aS1/u9oCLhykUMba6oa7MkC9++mhA/YgUIK6ymsr9l7Dsu+MGGlc
 eVuA==
X-Gm-Message-State: AJIora/Me+XhV9eHSJ9HDpBTLwsZdtlQ855g8lG8hPgl5FyILRbmANdD
 RWBky8PlQB6WYcC08ldMJq7FqoZIDafMYqFL4W/g8puIMyM=
X-Google-Smtp-Source: AGRyM1uDcT/dG6Idzpdr5qx6v3QtEv7bxAk3erA4WOM/3Vx0vjUIhd9YemZbncpCbqOJ33wpm+cs/LdcdsrhvALrt7I=
X-Received: by 2002:a17:907:2d93:b0:72b:60a0:6b2e with SMTP id
 gt19-20020a1709072d9300b0072b60a06b2emr17226957ejc.487.1659459207905; Tue, 02
 Aug 2022 09:53:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-16-radhakrishna.sripada@intel.com>
In-Reply-To: <20220728013420.3750388-16-radhakrishna.sripada@intel.com>
From: Caz Yokoyama <cazyokoyama@gmail.com>
Date: Tue, 2 Aug 2022 09:53:16 -0700
Message-ID: <CABhNg0hbA_j8DHbk2_XGe1GncYJigWT3qLjFhzr4QucMQiYcAg@mail.gmail.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Content-Type: multipart/alternative; boundary="0000000000009b47e005e544f471"
X-Mailman-Approved-At: Thu, 04 Aug 2022 13:37:57 +0000
Subject: Re: [Intel-gfx] [PATCH 15/23] drm/i915/mtl: Obtain SAGV values from
 MMIO instead of GT pcode mailbox
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--0000000000009b47e005e544f471
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 27, 2022 at 6:34 PM Radhakrishna Sripada <
radhakrishna.sripada@intel.com> wrote:

> From Meteorlake, Latency Level, SAGV bloack time are read from
> LATENCY_SAGV register instead of the GT driver pcode mailbox. DDR type
> and QGV information are also tob read from Mem SS registers.
>
> Bspec: 49324, 64636
>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Original Author: Caz Yokoyama
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 49 +++++++++++++++++++------
>  drivers/gpu/drm/i915/display/intel_bw.h |  9 +++++
>  drivers/gpu/drm/i915/i915_reg.h         | 16 ++++++++
>  drivers/gpu/drm/i915/intel_dram.c       | 41 ++++++++++++++++++++-
>  drivers/gpu/drm/i915/intel_pm.c         |  8 +++-
>  5 files changed, 110 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> b/drivers/gpu/drm/i915/display/intel_bw.c
> index 79269d2c476b..8bbf47da1716 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -15,11 +15,6 @@
>  #include "intel_pcode.h"
>  #include "intel_pm.h"
>
> -/* Parameters for Qclk Geyserville (QGV) */
> -struct intel_qgv_point {
> -       u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
> -};
> -
>  struct intel_psf_gv_point {
>         u8 clk; /* clock in multiples of 16.6666 MHz */
>  };
> @@ -137,6 +132,42 @@ int icl_pcode_restrict_qgv_points(struct
> drm_i915_private *dev_priv,
>         return 0;
>  }
>
> +static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
>
No need to return value. i.e.

static void
mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
-caz

+                                  struct intel_qgv_point *sp, int point)
> +{
> +       u32 val, val2;
> +       u16 dclk;
> +
> +       val =3D intel_uncore_read(&dev_priv->uncore,
> +                               MTL_MEM_SS_INFO_QGV_POINT(point, 0));
> +       val2 =3D intel_uncore_read(&dev_priv->uncore,
> +                                MTL_MEM_SS_INFO_QGV_POINT(point, 1));
> +       dclk =3D REG_FIELD_GET(MTL_DCLK_MASK, val);
> +       sp->dclk =3D DIV_ROUND_UP((16667 * dclk) +  500, 1000);
> +       sp->t_rp =3D REG_FIELD_GET(MTL_TRP_MASK, val);
> +       sp->t_rcd =3D REG_FIELD_GET(MTL_TRCD_MASK, val);
> +
> +       sp->t_rdpre =3D REG_FIELD_GET(MTL_TRDPRE_MASK, val2);
> +       sp->t_ras =3D REG_FIELD_GET(MTL_TRAS_MASK, val2);
> +
> +       sp->t_rc =3D sp->t_rp + sp->t_ras;
> +
> +       return 0;
> +}
> +
> +int
> +intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
> +                         struct intel_qgv_point *sp,
> +                         int point)
> +{
> +       if (DISPLAY_VER(dev_priv) >=3D 14)
> +               return mtl_read_qgv_point_info(dev_priv, sp, point);
> +       else if (IS_DG1(dev_priv))
> +               return dg1_mchbar_read_qgv_point_info(dev_priv, sp, point=
);
> +       else
> +               return icl_pcode_read_qgv_point_info(dev_priv, sp, point)=
;
> +}
> +
>  static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>                               struct intel_qgv_info *qi,
>                               bool is_y_tile)
> @@ -193,11 +224,7 @@ static int icl_get_qgv_points(struct drm_i915_privat=
e
> *dev_priv,
>         for (i =3D 0; i < qi->num_points; i++) {
>                 struct intel_qgv_point *sp =3D &qi->points[i];
>
> -               if (IS_DG1(dev_priv))
> -                       ret =3D dg1_mchbar_read_qgv_point_info(dev_priv, =
sp,
> i);
> -               else
> -                       ret =3D icl_pcode_read_qgv_point_info(dev_priv, s=
p,
> i);
> -
> +               ret =3D intel_read_qgv_point_info(dev_priv, sp, i);
>                 if (ret)
>                         return ret;
>
> @@ -560,7 +587,7 @@ void intel_bw_init_hw(struct drm_i915_private
> *dev_priv)
>
>         if (IS_DG2(dev_priv))
>                 dg2_get_bw_info(dev_priv);
> -       else if (IS_ALDERLAKE_P(dev_priv))
> +       else if (DISPLAY_VER(dev_priv) >=3D 13 || IS_ALDERLAKE_P(dev_priv=
))
>                 tgl_get_bw_info(dev_priv, &adlp_sa_info);
>         else if (IS_ALDERLAKE_S(dev_priv))
>                 tgl_get_bw_info(dev_priv, &adls_sa_info);
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h
> b/drivers/gpu/drm/i915/display/intel_bw.h
> index cb7ee3a24a58..b4c6665b0cf0 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -46,6 +46,11 @@ struct intel_bw_state {
>         u8 num_active_planes[I915_MAX_PIPES];
>  };
>
> +/* Parameters for Qclk Geyserville (QGV) */
> +struct intel_qgv_point {
> +       u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
> +};
> +
>  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state,
> base)
>
>  struct intel_bw_state *
> @@ -69,4 +74,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state
> *state,
>  int intel_bw_min_cdclk(struct drm_i915_private *i915,
>                        const struct intel_bw_state *bw_state);
>
> +int intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
> +                             struct intel_qgv_point *sp,
> +                             int point);
> +
>  #endif /* __INTEL_BW_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> index 23b50d671550..d37607109398 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8761,4 +8761,20 @@ enum skl_power_gate {
>  #define  MTL_LATENCY_LEVEL0_2_4_MASK   REG_GENMASK(12, 0)
>  #define  MTL_LATENCY_LEVEL1_3_5_MASK   REG_GENMASK(28, 16)
>
> +#define MTL_LATENCY_SAGV               _MMIO(0x4578c)
> +#define  MTL_LATENCY_QCLK_SAGV         REG_GENMASK(12, 0)
> +
> +#define MTL_MEM_SS_INFO_GLOBAL                 _MMIO(0x45700)
> +#define  MTL_DDR_TYPE_MASK                     REG_GENMASK(3, 0)
> +#define  MTL_N_OF_POPULATED_CH_MASK            REG_GENMASK(7, 4)
> +#define  MTL_N_OF_ENABLED_QGV_POINTS_MASK      REG_GENMASK(11, 8)
> +
> +#define MTL_MEM_SS_INFO_QGV_POINT(point, bitgroup) \
> +        _MMIO(0x45710 + ((point) * 2 + (bitgroup)) * sizeof(u32))
> +#define  MTL_TRDPRE_MASK               REG_GENMASK(7, 0)
> +#define  MTL_TRAS_MASK                 REG_GENMASK(16, 8)
> +#define  MTL_DCLK_MASK                 REG_GENMASK(15, 0)
> +#define  MTL_TRP_MASK                  REG_GENMASK(23, 16)
> +#define  MTL_TRCD_MASK                 REG_GENMASK(31, 24)
> +
>  #endif /* _I915_REG_H_ */
> diff --git a/drivers/gpu/drm/i915/intel_dram.c
> b/drivers/gpu/drm/i915/intel_dram.c
> index 437447119770..2403ccd52c74 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -466,6 +466,43 @@ static int gen12_get_dram_info(struct
> drm_i915_private *i915)
>         return icl_pcode_read_mem_global_info(i915);
>  }
>
> +static int xelpdp_get_dram_info(struct drm_i915_private *i915)
> +{
> +       u32 val =3D intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOB=
AL);
> +       struct dram_info *dram_info =3D &i915->dram_info;
> +
> +       val =3D REG_FIELD_GET(MTL_DDR_TYPE_MASK, val);
> +       switch (val) {
> +       case 0:
> +               dram_info->type =3D INTEL_DRAM_DDR4;
> +               break;
> +       case 1:
> +               dram_info->type =3D INTEL_DRAM_DDR5;
> +               break;
> +       case 2:
> +               dram_info->type =3D INTEL_DRAM_LPDDR5;
> +               break;
> +       case 3:
> +               dram_info->type =3D INTEL_DRAM_LPDDR4;
> +               break;
> +       case 4:
> +               dram_info->type =3D INTEL_DRAM_DDR3;
> +               break;
> +       case 5:
> +               dram_info->type =3D INTEL_DRAM_LPDDR3;
> +               break;
> +       default:
> +               MISSING_CASE(val);
> +               return -EINVAL;
> +       }
> +
> +       dram_info->num_channels =3D
> REG_FIELD_GET(MTL_N_OF_POPULATED_CH_MASK, val);
> +       dram_info->num_qgv_points =3D
> REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
> +       /* PSF GV points not supported in D14+ */
> +
> +       return 0;
> +}
> +
>  void intel_dram_detect(struct drm_i915_private *i915)
>  {
>         struct dram_info *dram_info =3D &i915->dram_info;
> @@ -480,7 +517,9 @@ void intel_dram_detect(struct drm_i915_private *i915)
>          */
>         dram_info->wm_lv_0_adjust_needed =3D !IS_GEN9_LP(i915);
>
> -       if (GRAPHICS_VER(i915) >=3D 12)
> +       if (DISPLAY_VER(i915) >=3D 14)
> +               ret =3D xelpdp_get_dram_info(i915);
> +       else if (GRAPHICS_VER(i915) >=3D 12)
>                 ret =3D gen12_get_dram_info(i915);
>         else if (GRAPHICS_VER(i915) >=3D 11)
>                 ret =3D gen11_get_dram_info(i915);
> diff --git a/drivers/gpu/drm/i915/intel_pm.c
> b/drivers/gpu/drm/i915/intel_pm.c
> index fac565d23d57..f71b3b8b590c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3698,7 +3698,13 @@ intel_has_sagv(struct drm_i915_private *dev_priv)
>  static u32
>  intel_sagv_block_time(struct drm_i915_private *dev_priv)
>  {
> -       if (DISPLAY_VER(dev_priv) >=3D 12) {
> +       if (DISPLAY_VER(dev_priv) >=3D 14) {
> +               u32 val;
> +
> +               val =3D intel_uncore_read(&dev_priv->uncore,
> MTL_LATENCY_SAGV);
> +
> +               return REG_FIELD_GET(MTL_LATENCY_QCLK_SAGV, val);
> +       } else if (DISPLAY_VER(dev_priv) >=3D 12) {
>                 u32 val =3D 0;
>                 int ret;
>
> --
> 2.25.1
>
>

--=20
-caz, caz at caztech dot com, 503-six one zero - five six nine nine(m)

--0000000000009b47e005e544f471
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 27, 2022 at 6:34 PM Radha=
krishna Sripada &lt;<a href=3D"mailto:radhakrishna.sripada@intel.com">radha=
krishna.sripada@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">From Meteorlake, Latency Level, SAGV bloack time a=
re read from<br>
LATENCY_SAGV register instead of the GT driver pcode mailbox. DDR type<br>
and QGV information are also tob read from Mem SS registers.<br>
<br>
Bspec: 49324, 64636<br>
<br>
Cc: Matt Roper &lt;<a href=3D"mailto:matthew.d.roper@intel.com" target=3D"_=
blank">matthew.d.roper@intel.com</a>&gt;<br>
Original Author: Caz Yokoyama<br>
Signed-off-by: Jos=C3=A9 Roberto de Souza &lt;<a href=3D"mailto:jose.souza@=
intel.com" target=3D"_blank">jose.souza@intel.com</a>&gt;<br>
Signed-off-by: Radhakrishna Sripada &lt;<a href=3D"mailto:radhakrishna.srip=
ada@intel.com" target=3D"_blank">radhakrishna.sripada@intel.com</a>&gt;<br>
---<br>
=C2=A0drivers/gpu/drm/i915/display/intel_bw.c | 49 +++++++++++++++++++-----=
-<br>
=C2=A0drivers/gpu/drm/i915/display/intel_bw.h |=C2=A0 9 +++++<br>
=C2=A0drivers/gpu/drm/i915/i915_reg.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 16=
 ++++++++<br>
=C2=A0drivers/gpu/drm/i915/intel_dram.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 41 ++++=
++++++++++++++++-<br>
=C2=A0drivers/gpu/drm/i915/intel_pm.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 8 +++-<br>
=C2=A05 files changed, 110 insertions(+), 13 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915=
/display/intel_bw.c<br>
index 79269d2c476b..8bbf47da1716 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_bw.c<br>
+++ b/drivers/gpu/drm/i915/display/intel_bw.c<br>
@@ -15,11 +15,6 @@<br>
=C2=A0#include &quot;intel_pcode.h&quot;<br>
=C2=A0#include &quot;intel_pm.h&quot;<br>
<br>
-/* Parameters for Qclk Geyserville (QGV) */<br>
-struct intel_qgv_point {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;<br=
>
-};<br>
-<br>
=C2=A0struct intel_psf_gv_point {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 clk; /* clock in multiples of 16.6666 MHz */=
<br>
=C2=A0};<br>
@@ -137,6 +132,42 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_priv=
ate *dev_priv,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
=C2=A0}<br>
<br>
+static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,<br><=
/blockquote><div>No need to return value. i.e.</div><div><br></div><div>sta=
tic void</div><div>mtl_read_qgv_point_info(struct drm_i915_private *dev_pri=
v,</div><div>-caz</div><div><br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct intel_qgv_point *sp, i=
nt point)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 val, val2;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u16 dclk;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D intel_uncore_read(&amp;dev_priv-&gt;unc=
ore,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MTL_MEM_SS_INFO_QGV_POINT(point, 0));=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0val2 =3D intel_uncore_read(&amp;dev_priv-&gt;un=
core,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 MTL_MEM_SS_INFO_QGV_POINT(point, 1))=
;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dclk =3D REG_FIELD_GET(MTL_DCLK_MASK, val);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sp-&gt;dclk =3D DIV_ROUND_UP((16667 * dclk) +=
=C2=A0 500, 1000);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sp-&gt;t_rp =3D REG_FIELD_GET(MTL_TRP_MASK, val=
);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sp-&gt;t_rcd =3D REG_FIELD_GET(MTL_TRCD_MASK, v=
al);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sp-&gt;t_rdpre =3D REG_FIELD_GET(MTL_TRDPRE_MAS=
K, val2);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sp-&gt;t_ras =3D REG_FIELD_GET(MTL_TRAS_MASK, v=
al2);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0sp-&gt;t_rc =3D sp-&gt;t_rp + sp-&gt;t_ras;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
+}<br>
+<br>
+int<br>
+intel_read_qgv_point_info(struct drm_i915_private *dev_priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0struct intel_qgv_point *sp,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0int point)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (DISPLAY_VER(dev_priv) &gt;=3D 14)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return mtl_read_qgv=
_point_info(dev_priv, sp, point);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (IS_DG1(dev_priv))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return dg1_mchbar_r=
ead_qgv_point_info(dev_priv, sp, point);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return icl_pcode_re=
ad_qgv_point_info(dev_priv, sp, point);<br>
+}<br>
+<br>
=C2=A0static int icl_get_qgv_points(struct drm_i915_private *dev_priv,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct intel_qgv_info *qi,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool is_y_tile)<br>
@@ -193,11 +224,7 @@ static int icl_get_qgv_points(struct drm_i915_private =
*dev_priv,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; qi-&gt;num_points; i++) {<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct intel_qgv_po=
int *sp =3D &amp;qi-&gt;points[i];<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_DG1(dev_priv=
))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0ret =3D dg1_mchbar_read_qgv_point_info(dev_priv, sp, i);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0ret =3D icl_pcode_read_qgv_point_info(dev_priv, sp, i);<br>
-<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D intel_read_=
qgv_point_info(dev_priv, sp, i);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return ret;<br>
<br>
@@ -560,7 +587,7 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv=
)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (IS_DG2(dev_priv))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dg2_get_bw_info(dev=
_priv);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (IS_ALDERLAKE_P(dev_priv))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (DISPLAY_VER(dev_priv) &gt;=3D 13 || IS=
_ALDERLAKE_P(dev_priv))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tgl_get_bw_info(dev=
_priv, &amp;adlp_sa_info);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (IS_ALDERLAKE_S(dev_priv))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tgl_get_bw_info(dev=
_priv, &amp;adls_sa_info);<br>
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915=
/display/intel_bw.h<br>
index cb7ee3a24a58..b4c6665b0cf0 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_bw.h<br>
+++ b/drivers/gpu/drm/i915/display/intel_bw.h<br>
@@ -46,6 +46,11 @@ struct intel_bw_state {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 num_active_planes[I915_MAX_PIPES];<br>
=C2=A0};<br>
<br>
+/* Parameters for Qclk Geyserville (QGV) */<br>
+struct intel_qgv_point {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;<br=
>
+};<br>
+<br>
=C2=A0#define to_intel_bw_state(x) container_of((x), struct intel_bw_state,=
 base)<br>
<br>
=C2=A0struct intel_bw_state *<br>
@@ -69,4 +74,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *st=
ate,<br>
=C2=A0int intel_bw_min_cdclk(struct drm_i915_private *i915,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0const struct intel_bw_state *bw_state);<br>
<br>
+int intel_read_qgv_point_info(struct drm_i915_private *dev_priv,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct intel_qgv_point *sp,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int point);<br>
+<br>
=C2=A0#endif /* __INTEL_BW_H__ */<br>
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_re=
g.h<br>
index 23b50d671550..d37607109398 100644<br>
--- a/drivers/gpu/drm/i915/i915_reg.h<br>
+++ b/drivers/gpu/drm/i915/i915_reg.h<br>
@@ -8761,4 +8761,20 @@ enum skl_power_gate {<br>
=C2=A0#define=C2=A0 MTL_LATENCY_LEVEL0_2_4_MASK=C2=A0 =C2=A0REG_GENMASK(12,=
 0)<br>
=C2=A0#define=C2=A0 MTL_LATENCY_LEVEL1_3_5_MASK=C2=A0 =C2=A0REG_GENMASK(28,=
 16)<br>
<br>
+#define MTL_LATENCY_SAGV=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0_MMIO(0x4578c)<br>
+#define=C2=A0 MTL_LATENCY_QCLK_SAGV=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0REG_G=
ENMASK(12, 0)<br>
+<br>
+#define MTL_MEM_SS_INFO_GLOBAL=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0_MMIO(0x45700)<br>
+#define=C2=A0 MTL_DDR_TYPE_MASK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0REG_GENMASK(3, 0)<br>
+#define=C2=A0 MTL_N_OF_POPULATED_CH_MASK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 REG_GENMASK(7, 4)<br>
+#define=C2=A0 MTL_N_OF_ENABLED_QGV_POINTS_MASK=C2=A0 =C2=A0 =C2=A0 REG_GEN=
MASK(11, 8)<br>
+<br>
+#define MTL_MEM_SS_INFO_QGV_POINT(point, bitgroup) \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 _MMIO(0x45710 + ((point) * 2 + (bitgroup)) * s=
izeof(u32))<br>
+#define=C2=A0 MTL_TRDPRE_MASK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0REG_GENMASK(7, 0)<br>
+#define=C2=A0 MTL_TRAS_MASK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0REG_GENMASK(16, 8)<br>
+#define=C2=A0 MTL_DCLK_MASK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0REG_GENMASK(15, 0)<br>
+#define=C2=A0 MTL_TRP_MASK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 REG_GENMASK(23, 16)<br>
+#define=C2=A0 MTL_TRCD_MASK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0REG_GENMASK(31, 24)<br>
+<br>
=C2=A0#endif /* _I915_REG_H_ */<br>
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel=
_dram.c<br>
index 437447119770..2403ccd52c74 100644<br>
--- a/drivers/gpu/drm/i915/intel_dram.c<br>
+++ b/drivers/gpu/drm/i915/intel_dram.c<br>
@@ -466,6 +466,43 @@ static int gen12_get_dram_info(struct drm_i915_private=
 *i915)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return icl_pcode_read_mem_global_info(i915);<br=
>
=C2=A0}<br>
<br>
+static int xelpdp_get_dram_info(struct drm_i915_private *i915)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 val =3D intel_uncore_read(&amp;i915-&gt;unc=
ore, MTL_MEM_SS_INFO_GLOBAL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct dram_info *dram_info =3D &amp;i915-&gt;d=
ram_info;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D REG_FIELD_GET(MTL_DDR_TYPE_MASK, val);<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (val) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0case 0:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dram_info-&gt;type =
=3D INTEL_DRAM_DDR4;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0case 1:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dram_info-&gt;type =
=3D INTEL_DRAM_DDR5;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0case 2:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dram_info-&gt;type =
=3D INTEL_DRAM_LPDDR5;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0case 3:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dram_info-&gt;type =
=3D INTEL_DRAM_LPDDR4;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0case 4:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dram_info-&gt;type =
=3D INTEL_DRAM_DDR3;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0case 5:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dram_info-&gt;type =
=3D INTEL_DRAM_LPDDR3;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0default:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MISSING_CASE(val);<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dram_info-&gt;num_channels =3D REG_FIELD_GET(MT=
L_N_OF_POPULATED_CH_MASK, val);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dram_info-&gt;num_qgv_points =3D REG_FIELD_GET(=
MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* PSF GV points not supported in D14+ */<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
+}<br>
+<br>
=C2=A0void intel_dram_detect(struct drm_i915_private *i915)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct dram_info *dram_info =3D &amp;i915-&gt;d=
ram_info;<br>
@@ -480,7 +517,9 @@ void intel_dram_detect(struct drm_i915_private *i915)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dram_info-&gt;wm_lv_0_adjust_needed =3D !IS_GEN=
9_LP(i915);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (GRAPHICS_VER(i915) &gt;=3D 12)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (DISPLAY_VER(i915) &gt;=3D 14)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D xelpdp_get_=
dram_info(i915);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (GRAPHICS_VER(i915) &gt;=3D 12)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D gen12_get_d=
ram_info(i915);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (GRAPHICS_VER(i915) &gt;=3D 11)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D gen11_get_d=
ram_info(i915);<br>
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_p=
m.c<br>
index fac565d23d57..f71b3b8b590c 100644<br>
--- a/drivers/gpu/drm/i915/intel_pm.c<br>
+++ b/drivers/gpu/drm/i915/intel_pm.c<br>
@@ -3698,7 +3698,13 @@ intel_has_sagv(struct drm_i915_private *dev_priv)<br=
>
=C2=A0static u32<br>
=C2=A0intel_sagv_block_time(struct drm_i915_private *dev_priv)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (DISPLAY_VER(dev_priv) &gt;=3D 12) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (DISPLAY_VER(dev_priv) &gt;=3D 14) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 val;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D intel_uncor=
e_read(&amp;dev_priv-&gt;uncore, MTL_LATENCY_SAGV);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return REG_FIELD_GE=
T(MTL_LATENCY_QCLK_SAGV, val);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else if (DISPLAY_VER(dev_priv) &gt;=3D 12) {<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 val =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int ret;<br>
<br>
-- <br>
2.25.1<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>-caz, caz at =
caztech dot com, 503-six one zero - five six nine nine(m)<br></div></div></=
div></div></div></div></div></div></div></div></div></div>

--0000000000009b47e005e544f471--
