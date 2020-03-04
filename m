Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DF71797EC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 19:30:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F4F6EB58;
	Wed,  4 Mar 2020 18:30:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD8756EB58
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 18:30:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 10:30:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="234126065"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 04 Mar 2020 10:30:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Mar 2020 20:30:07 +0200
Date: Wed, 4 Mar 2020 20:30:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200304183007.GF13686@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-8-ville.syrjala@linux.intel.com>
 <f0907e9776be49c8ab171a0a0caf900a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f0907e9776be49c8ab171a0a0caf900a@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 07/20] drm/i915: Unify the low level dbuf
 code
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 04, 2020 at 05:23:05PM +0000, Lisovskiy, Stanislav wrote:
> =

> >-       /* If 2nd DBuf slice required, enable it here */
> >        if (INTEL_GEN(dev_priv) >=3D 11 && slices_union !=3D hw_enabled_=
slices)
> >-               icl_dbuf_slices_update(dev_priv, slices_union);
> >+               gen9_dbuf_slices_update(dev_priv, slices_union);
> >}
> =

> > static void icl_dbuf_slice_post_update(struct intel_atomic_state *state)
> >@@ -15307,9 +15306,8 @@ static void icl_dbuf_slice_post_update(struct in=
tel_atomic_state *state)
> >        u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_mask;
> >        u8 required_slices =3D state->enabled_dbuf_slices_mask;
> =

> >-       /* If 2nd DBuf slice is no more required disable it */
> >         if (INTEL_GEN(dev_priv) >=3D 11 && required_slices !=3D hw_enab=
led_slices)
> >-               icl_dbuf_slices_update(dev_priv, required_slices);
> >+               gen9_dbuf_slices_update(dev_priv, required_slices);
> =

> =

> Doesn't make much sense. Just look - previously we were checking if INTEL=
_GEN is >=3D than 11(which _is_ ICL)
> =

> and now we still _do_ check if INTEL_GEN is >=3D 11, but... call now func=
tion renamed to gen9
> =

> =

> I guess you either need to change INTEL_GEN check to be >=3D9 to at least=
 look somewhat consistent
> =

> or leave it as is. Or at least rename icl_ prefix to gen11_ otherwise tha=
t looks inconsistent, i.e
> =

> you are now checking that gen is >=3D 11 and then OK - now let's call gen=
 9! :)

The standard practice is to name things based on the oldest platform
that introduced the thing.

> =

> =

> Stan
> =

> ________________________________
> From: Ville Syrjala <ville.syrjala@linux.intel.com>
> Sent: Tuesday, February 25, 2020 7:11:12 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav
> Subject: [PATCH v2 07/20] drm/i915: Unify the low level dbuf code
> =

> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The low level dbuf slice code is rather inconsitent with its
> functiona naming and organization. Make it more consistent.
> =

> Also share the enable/disable functions between all platforms
> since the same code works just fine for all of them.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 +--
>  .../drm/i915/display/intel_display_power.c    | 44 ++++++++-----------
>  .../drm/i915/display/intel_display_power.h    |  6 +--
>  3 files changed, 24 insertions(+), 32 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 3031e64ee518..6952c398cc43 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15296,9 +15296,8 @@ static void icl_dbuf_slice_pre_update(struct inte=
l_atomic_state *state)
>          u8 required_slices =3D state->enabled_dbuf_slices_mask;
>          u8 slices_union =3D hw_enabled_slices | required_slices;
> =

> -       /* If 2nd DBuf slice required, enable it here */
>          if (INTEL_GEN(dev_priv) >=3D 11 && slices_union !=3D hw_enabled_=
slices)
> -               icl_dbuf_slices_update(dev_priv, slices_union);
> +               gen9_dbuf_slices_update(dev_priv, slices_union);
>  }
> =

>  static void icl_dbuf_slice_post_update(struct intel_atomic_state *state)
> @@ -15307,9 +15306,8 @@ static void icl_dbuf_slice_post_update(struct int=
el_atomic_state *state)
>          u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_mask;
>          u8 required_slices =3D state->enabled_dbuf_slices_mask;
> =

> -       /* If 2nd DBuf slice is no more required disable it */
>          if (INTEL_GEN(dev_priv) >=3D 11 && required_slices !=3D hw_enabl=
ed_slices)
> -               icl_dbuf_slices_update(dev_priv, required_slices);
> +               gen9_dbuf_slices_update(dev_priv, required_slices);
>  }
> =

>  static void skl_commit_modeset_enables(struct intel_atomic_state *state)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index e81e561e8ac0..ce3bbc4c7a27 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4433,15 +4433,18 @@ static void intel_power_domains_sync_hw(struct dr=
m_i915_private *dev_priv)
>          mutex_unlock(&power_domains->lock);
>  }
> =

> -static void intel_dbuf_slice_set(struct drm_i915_private *dev_priv,
> -                                enum dbuf_slice slice, bool enable)
> +static void gen9_dbuf_slice_set(struct drm_i915_private *dev_priv,
> +                               enum dbuf_slice slice, bool enable)
>  {
>          i915_reg_t reg =3D DBUF_CTL_S(slice);
>          bool state;
>          u32 val;
> =

>          val =3D intel_de_read(dev_priv, reg);
> -       val =3D enable ? (val | DBUF_POWER_REQUEST) : (val & ~DBUF_POWER_=
REQUEST);
> +       if (enable)
> +               val |=3D DBUF_POWER_REQUEST;
> +       else
> +               val &=3D ~DBUF_POWER_REQUEST;
>          intel_de_write(dev_priv, reg, val);
>          intel_de_posting_read(dev_priv, reg);
>          udelay(10);
> @@ -4452,18 +4455,8 @@ static void intel_dbuf_slice_set(struct drm_i915_p=
rivate *dev_priv,
>                   slice, enable ? "enable" : "disable");
>  }
> =

> -static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
> -{
> -       icl_dbuf_slices_update(dev_priv, BIT(DBUF_S1));
> -}
> -
> -static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
> -{
> -       icl_dbuf_slices_update(dev_priv, 0);
> -}
> -
> -void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
> -                           u8 req_slices)
> +void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
> +                            u8 req_slices)
>  {
>          int num_slices =3D INTEL_INFO(dev_priv)->num_supported_dbuf_slic=
es;
>          struct i915_power_domains *power_domains =3D &dev_priv->power_do=
mains;
> @@ -4486,28 +4479,29 @@ void icl_dbuf_slices_update(struct drm_i915_priva=
te *dev_priv,
>          mutex_lock(&power_domains->lock);
> =

>          for (slice =3D DBUF_S1; slice < num_slices; slice++)
> -               intel_dbuf_slice_set(dev_priv, slice,
> -                                    req_slices & BIT(slice));
> +               gen9_dbuf_slice_set(dev_priv, slice, req_slices & BIT(sli=
ce));
> =

>          dev_priv->enabled_dbuf_slices_mask =3D req_slices;
> =

>          mutex_unlock(&power_domains->lock);
>  }
> =

> -static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
> +static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
>  {
> -       skl_ddb_get_hw_state(dev_priv);
> +       dev_priv->enabled_dbuf_slices_mask =3D
> +               intel_enabled_dbuf_slices_mask(dev_priv);
> +
>          /*
>           * Just power up at least 1 slice, we will
>           * figure out later which slices we have and what we need.
>           */
> -       icl_dbuf_slices_update(dev_priv, dev_priv->enabled_dbuf_slices_ma=
sk |
> -                              BIT(DBUF_S1));
> +       gen9_dbuf_slices_update(dev_priv, BIT(DBUF_S1) |
> +                               dev_priv->enabled_dbuf_slices_mask);
>  }
> =

> -static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
> +static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
>  {
> -       icl_dbuf_slices_update(dev_priv, 0);
> +       gen9_dbuf_slices_update(dev_priv, 0);
>  }
> =

>  static void icl_mbus_init(struct drm_i915_private *dev_priv)
> @@ -5067,7 +5061,7 @@ static void icl_display_core_init(struct drm_i915_p=
rivate *dev_priv,
>          intel_cdclk_init_hw(dev_priv);
> =

>          /* 5. Enable DBUF. */
> -       icl_dbuf_enable(dev_priv);
> +       gen9_dbuf_enable(dev_priv);
> =

>          /* 6. Setup MBUS. */
>          icl_mbus_init(dev_priv);
> @@ -5090,7 +5084,7 @@ static void icl_display_core_uninit(struct drm_i915=
_private *dev_priv)
>          /* 1. Disable all display engine functions -> aready done */
> =

>          /* 2. Disable DBUF */
> -       icl_dbuf_disable(dev_priv);
> +       gen9_dbuf_disable(dev_priv);
> =

>          /* 3. Disable CD clock */
>          intel_cdclk_uninit_hw(dev_priv);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index 601e000ffd0d..1a275611241e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -312,13 +312,13 @@ enum dbuf_slice {
>          DBUF_S2,
>  };
> =

> +void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
> +                            u8 req_slices);
> +
>  #define with_intel_display_power(i915, domain, wf) \
>          for ((wf) =3D intel_display_power_get((i915), (domain)); (wf); \
>               intel_display_power_put_async((i915), (domain), (wf)), (wf)=
 =3D 0)
> =

> -void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
> -                           u8 req_slices);
> -
>  void chv_phy_powergate_lanes(struct intel_encoder *encoder,
>                               bool override, unsigned int mask);
>  bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_p=
hy phy,
> --
> 2.24.1
> =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
