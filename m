Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C48B6E7E45
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:30:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93E510E19B;
	Wed, 19 Apr 2023 15:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 176C710E19B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681918202; x=1713454202;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=i3OOC0EDU70Fmg+zFmbknZMqgV995UtMoEFuy4xv4UM=;
 b=I3mPtatkPEfxhMmFKhu1n086NQwa4XIwiGZbzsV2EbRudVcViWHusjax
 pIxuGxSSkjbzEC7D/SDReq6waUTef74txLtEHvjHgxzChqCMwdaNZBPRZ
 ui6p1Bqq9Z5JXYbvnHxpMtjJs4tWPkV78IAm8qh3LhGYPmPkV6c+gLXbj
 BRfrJ0IS9XJVfPnFZTJNWFvoSwQEBpSJp5/jBL1QUG/WYqbBj3VGzshwQ
 lMvvQxWFsWNm8lpVKYCLSaC9J3HSYGHEsF14fMR5/nIPL29gyCTSIlz/F
 Kg/Fb4KnxMi76OXCLwI2NXJm0fUevwJI9tgD7/DTbtWhs4N45GgfZwZ5J A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="329654134"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="329654134"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:30:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="669005995"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="669005995"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:30:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418175528.13117-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-8-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:29:58 +0300
Message-ID: <871qkfzy89.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/15] drm/i915: Use REG_BIT() & co. for
 ilk+ pfit registers
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
> Polish the ilk+ pfit registers with REG_BIT() & co., and
> also take the opportunity to unify the ivb/hsw vs. not checks
> in ilk_pfit_enable() and ilk_get_pfit_config().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  9 +++++++--
>  drivers/gpu/drm/i915/i915_reg.h              | 20 ++++++++++----------
>  2 files changed, 17 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index ea1b0e87ae35..e9000ed15e7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3230,11 +3230,17 @@ static void ilk_get_pfit_config(struct intel_crtc=
_state *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 ctl, pos, size;
> +	enum pipe pipe;
>=20=20
>  	ctl =3D intel_de_read(dev_priv, PF_CTL(crtc->pipe));
>  	if ((ctl & PF_ENABLE) =3D=3D 0)
>  		return;
>=20=20
> +	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
> +		pipe =3D REG_FIELD_GET(PF_PIPE_SEL_MASK_IVB, ctl);
> +	else
> +		pipe =3D crtc->pipe;
> +
>  	crtc_state->pch_pfit.enabled =3D true;
>=20=20
>  	pos =3D intel_de_read(dev_priv, PF_WIN_POS(crtc->pipe));
> @@ -3249,8 +3255,7 @@ static void ilk_get_pfit_config(struct intel_crtc_s=
tate *crtc_state)
>  	 * ivb/hsw (since we don't use the higher upscaling modes which
>  	 * differentiates them) so just WARN about this case for now.
>  	 */
> -	drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) =3D=3D 7 &&
> -		    (ctl & PF_PIPE_SEL_MASK_IVB) !=3D PF_PIPE_SEL_IVB(crtc->pipe));
> +	drm_WARN_ON(&dev_priv->drm, pipe !=3D crtc->pipe);
>  }
>=20=20
>  static bool ilk_get_pipe_config(struct intel_crtc *crtc,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index eea739e0b48a..3c02f6c70733 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4008,16 +4008,16 @@
>=20=20
>  /* CPU panel fitter */
>  /* IVB+ has 3 fitters, 0 is 7x5 capable, the other two only 3x3 */
> -#define _PFA_CTL_1               0x68080
> -#define _PFB_CTL_1               0x68880
> -#define  PF_ENABLE              (1 << 31)
> -#define  PF_PIPE_SEL_MASK_IVB	(3 << 29)
> -#define  PF_PIPE_SEL_IVB(pipe)	((pipe) << 29)
> -#define  PF_FILTER_MASK		(3 << 23)
> -#define  PF_FILTER_PROGRAMMED	(0 << 23)
> -#define  PF_FILTER_MED_3x3	(1 << 23)
> -#define  PF_FILTER_EDGE_ENHANCE	(2 << 23)
> -#define  PF_FILTER_EDGE_SOFTEN	(3 << 23)
> +#define _PFA_CTL_1		0x68080
> +#define _PFB_CTL_1		0x68880
> +#define   PF_ENABLE			REG_BIT(31)
> +#define   PF_PIPE_SEL_MASK_IVB		REG_GENMASK(30, 29) /* ivb/hsw */
> +#define   PF_PIPE_SEL_IVB(pipe)		REG_FIELD_PREP(PF_PIPE_SEL_MASK_IVB, (p=
ipe))
> +#define   PF_FILTER_MASK		REG_GENMASK(24, 23)
> +#define   PF_FILTER_PROGRAMMED		REG_FIELD_PREP(PF_FILTER_MASK, 0)
> +#define   PF_FILTER_MED_3x3		REG_FIELD_PREP(PF_FILTER_MASK, 1)
> +#define   PF_FILTER_EDGE_ENHANCE	REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 2)
> +#define   PF_FILTER_EDGE_SOFTEN		REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 3)
>  #define _PFA_WIN_SZ		0x68074
>  #define _PFB_WIN_SZ		0x68874
>  #define _PFA_WIN_POS		0x68070

--=20
Jani Nikula, Intel Open Source Graphics Center
