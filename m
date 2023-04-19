Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8EE6E7E7A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6177F10E9F7;
	Wed, 19 Apr 2023 15:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E809110E140
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681918706; x=1713454706;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=CK4qHQMOMKdUt62AwQDcfj5HhZkkbeIn9RDUmY8EGfk=;
 b=k8LYEqawS+T2zUxxHuruo8OHPTdEc4iJ0S1v1yw+c/MQWeYEl/16Zq4G
 e1DMtK9iG+AdKCw0rs/OYhncklGiYoGrsU+rYITQ+SnPBTYPB5zbWlt1b
 Kqj41GguuMrtqZS0yx+QU4dGM3Jr+B5lYGqMAWXrceHAix5Ruh/c3qsjI
 obQFEZYvldhZa9aH7InBKb8X16R4ABmWRoeXXoZBgr46EqSD05rfqUdhu
 0JvBbtzCAyC2OFkBD6tBjQC9dtLYrZkdTrw5vY2pLyiq4eoqLqaNW+4BQ
 gpyKFPA9E+79KJHYDkNnxyp5h4BXWmYlwYMrBbDDIEfcFr9gyb4IqC9rP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="345484097"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="345484097"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:38:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="685025136"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="685025136"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:38:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418193653.22278-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-12-ville.syrjala@linux.intel.com>
 <20230418193653.22278-1-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:38:23 +0300
Message-ID: <87mt33yj9s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 11/15] drm/i915: Rename skl+ scaler
 binding bits
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

On Tue, 18 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rename the scaler binding bits to match the spec more closely.
> Also call the parameters 'plane_id' to make it a bit more clear
> what to pass in.
>
> v2: Don't break gvt
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 12 ++++++------
>  drivers/gpu/drm/i915/gvt/handlers.c       |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h           |  9 +++++----
>  3 files changed, 12 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index ec930aec21c4..a96f8ecbeec1 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -396,7 +396,7 @@ static int intel_atomic_setup_scaler(struct intel_crt=
c_scaler_state *scaler_stat
>  			mode =3D PS_SCALER_MODE_PLANAR;
>=20=20
>  			if (linked)
> -				mode |=3D PS_PLANE_Y_SEL(linked->id);
> +				mode |=3D PS_BINDING_Y_PLANE(linked->id);
>  		}
>  	} else if (DISPLAY_VER(dev_priv) >=3D 10) {
>  		mode =3D PS_SCALER_MODE_NORMAL;
> @@ -741,8 +741,8 @@ void skl_pfit_enable(const struct intel_crtc_state *c=
rtc_state)
>=20=20
>  	id =3D scaler_state->scaler_id;
>=20=20
> -	ps_ctrl =3D skl_scaler_get_filter_select(crtc_state->hw.scaling_filter,=
 0);
> -	ps_ctrl |=3D  PS_SCALER_EN | scaler_state->scalers[id].mode;
> +	ps_ctrl =3D PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].=
mode |
> +		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, 0);
>=20=20
>  	skl_scaler_setup_filter(dev_priv, pipe, id, 0,
>  				crtc_state->hw.scaling_filter);
> @@ -804,8 +804,8 @@ skl_program_plane_scaler(struct intel_plane *plane,
>  		uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
>  	}
>=20=20
> -	ps_ctrl =3D skl_scaler_get_filter_select(plane_state->hw.scaling_filter=
, 0);
> -	ps_ctrl |=3D PS_SCALER_EN | PS_PLANE_SEL(plane->id) | scaler->mode;
> +	ps_ctrl =3D PS_SCALER_EN | PS_BINDING_PLANE(plane->id) | scaler->mode |
> +		skl_scaler_get_filter_select(plane_state->hw.scaling_filter, 0);
>=20=20
>  	skl_scaler_setup_filter(dev_priv, pipe, scaler_id, 0,
>  				plane_state->hw.scaling_filter);
> @@ -870,7 +870,7 @@ void skl_scaler_get_config(struct intel_crtc_state *c=
rtc_state)
>  		u32 ctl, pos, size;
>=20=20
>  		ctl =3D intel_de_read(dev_priv, SKL_PS_CTRL(crtc->pipe, i));
> -		if ((ctl & (PS_SCALER_EN | PS_PLANE_SEL_MASK)) !=3D PS_SCALER_EN)
> +		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) !=3D (PS_SCALER_EN | PS_B=
INDING_PIPE))
>  			continue;
>=20=20
>  		id =3D i;
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index 4b45a041ac5c..a9f7fa9b90bd 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -1562,7 +1562,7 @@ static int pf_write(struct intel_vgpu *vgpu,
>=20=20
>  	if ((offset =3D=3D _PS_1A_CTRL || offset =3D=3D _PS_2A_CTRL ||
>  	   offset =3D=3D _PS_1B_CTRL || offset =3D=3D _PS_2B_CTRL ||
> -	   offset =3D=3D _PS_1C_CTRL) && (val & PS_PLANE_SEL_MASK) !=3D 0) {
> +	   offset =3D=3D _PS_1C_CTRL) && (val & PS_BINDING_MASK) !=3D PS_BINDIN=
G_PIPE) {
>  		drm_WARN_ONCE(&i915->drm, true,
>  			      "VM(%d): guest is trying to scaling a plane\n",
>  			      vgpu->id);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 919d999a2345..f8e6b86facc3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4056,8 +4056,9 @@
>  #define SKL_PS_SCALER_MODE_NV12 (2 << 28)
>  #define PS_SCALER_MODE_PLANAR (1 << 29)
>  #define PS_SCALER_MODE_NORMAL (0 << 29)
> -#define PS_PLANE_SEL_MASK  (7 << 25)
> -#define PS_PLANE_SEL(plane) (((plane) + 1) << 25)
> +#define PS_BINDING_MASK (7 << 25)
> +#define PS_BINDING_PIPE (0 << 25)
> +#define PS_BINDING_PLANE(plane_id) (((plane_id) + 1) << 25)
>  #define PS_FILTER_MASK         (3 << 23)
>  #define PS_FILTER_MEDIUM       (0 << 23)
>  #define PS_FILTER_PROGRAMMED   (1 << 23)
> @@ -4073,8 +4074,8 @@
>  #define PS_VADAPT_MODE_LEAST_ADAPT (0 << 5)
>  #define PS_VADAPT_MODE_MOD_ADAPT   (1 << 5)
>  #define PS_VADAPT_MODE_MOST_ADAPT  (3 << 5)
> -#define PS_PLANE_Y_SEL_MASK  (7 << 5)
> -#define PS_PLANE_Y_SEL(plane) (((plane) + 1) << 5)
> +#define PS_BINDING_Y_MASK  (7 << 5)
> +#define PS_BINDING_Y_PLANE(plane_id) (((plane_id) + 1) << 5)
>  #define PS_Y_VERT_FILTER_SELECT(set)   ((set) << 4)
>  #define PS_Y_HORZ_FILTER_SELECT(set)   ((set) << 3)
>  #define PS_UV_VERT_FILTER_SELECT(set)  ((set) << 2)

--=20
Jani Nikula, Intel Open Source Graphics Center
