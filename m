Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDB01EEA48
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 20:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C215E6E091;
	Thu,  4 Jun 2020 18:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D99B16E091
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 18:29:34 +0000 (UTC)
IronPort-SDR: XYqtOec3cnYFQDSDRvam1QwSvV1JRRApp9gJjNF6SgD6zXSoQCaKb1fJPCpHMAA+cMoTbTGz5F
 XeeiQPRW18BA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 11:29:22 -0700
IronPort-SDR: Mhv/0Ykwqr3wImoV/ueZDa2kJRadYy7HXn/dORO3ouPFPak9IZeWHf17oDXKX/4y8uNMBfE7iL
 Fo24RUBVU7pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="312974367"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 04 Jun 2020 11:29:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Jun 2020 21:29:19 +0300
Date: Thu, 4 Jun 2020 21:29:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200604182919.GB6112@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <20200603211529.3005059-8-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603211529.3005059-8-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 07/15] drm/i915/rkl: Update TGP's pin
 mapping when paired with RKL
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

On Wed, Jun 03, 2020 at 02:15:21PM -0700, Matt Roper wrote:
> When TGP is paired with RKL it uses a different HPD pin mapping than
> when paired with TGL.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 490574669eaa..f3ea81a17352 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -167,6 +167,17 @@ static const u32 hpd_tgp[HPD_NUM_PINS] =3D {
>  	[HPD_PORT_I] =3D SDE_TC_HOTPLUG_ICP(PORT_TC6),
>  };
>  =

> +/*
> + * TGP when paired with RKL has different pin mappings than when paired
> + * with TGL.
> + */
> +static const u32 hpd_rkl_tgp[HPD_NUM_PINS] =3D {
> +	[HPD_PORT_A] =3D SDE_DDI_HOTPLUG_ICP(PORT_A),
> +	[HPD_PORT_B] =3D SDE_DDI_HOTPLUG_ICP(PORT_B),
> +	[HPD_PORT_C] =3D SDE_TC_HOTPLUG_ICP(PORT_TC1),
> +	[HPD_PORT_D] =3D SDE_TC_HOTPLUG_ICP(PORT_TC2),
> +};

Hmm. So basically it looks like we'd want to pick the hpd_pin
based on the DDI rather than the PHY on this platform?

OK, I guess we need to remap somehow. The question is
whether we want to do it before or after selecting hpd_pin...
I think we would want to do it before, as otherwise the
long_detect() stuff won't work right AFAICS. Or am I
missing something?

Side note: we should probably convert the long_detect()
switches to arrays just like we have for the isr bits here.
Would potentially avoid having to touch that code every time
they tweak these thinhs in hw.

And in fact it looks like icp already has all the same hpd
pins as tgp, so I'm thinking we should just s/hpd_tgp/hpd_icp/
and for icl/jsl we should remap hpd_pin as well. Oh and the
mcc case would just need a slightly different mapping of
port C -> HPD_PORT_D (aka. tc1).

This way all the hpd[] arrays and whatnot would just be based
on the actual pch type and not based on what it happens to be
paired with.

Anwyays, most of that is out of scope for this rkl stuff, so
I guess for now just add a bit of logic to remap hpd_pin for rkl?

> +
>  static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>  {
>  	struct i915_hotplug *hpd =3D &dev_priv->hotplug;
> @@ -196,7 +207,9 @@ static void intel_hpd_init_pins(struct drm_i915_priva=
te *dev_priv)
>  	if (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv))
>  		return;
>  =

> -	if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv))
> +	if (HAS_PCH_TGP(dev_priv) && IS_ROCKETLAKE(dev_priv))
> +		hpd->pch_hpd =3D hpd_rkl_tgp;
> +	else if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv))
>  		hpd->pch_hpd =3D hpd_tgp;
>  	else if (HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
>  		hpd->pch_hpd =3D hpd_icp;
> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
