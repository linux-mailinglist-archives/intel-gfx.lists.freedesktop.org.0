Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCC98C9A4E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 11:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83E7C10E57B;
	Mon, 20 May 2024 09:27:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mT6XwZOw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A875110E57B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 09:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716197245; x=1747733245;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=sDeA+K6rsg2ZPy/bjl6tYdlEu0WSCnfMYRf7LDnkqd4=;
 b=mT6XwZOwd9daZtzJfWVl7sXLrZyyuSIA6ukTe25pKUqwLlAMuFB9sFNd
 2SyivpvIpbEoYgsUpxefZQXSid47CnbVTDGgYGjE7V0q2+wNpJ1GM8jKb
 iO8gxrdvtjkiBNQVhF7X19yGHAjyodk5cznSFz5fR3l8JXQXSWKEnha8o
 JERzNCtym2+YjvrpYiKKNeOUl8gmdSuwi1W1TTeEz6WeuUHR/Fhi19+KT
 NksNP5R/WPYg3E7PyNdWR7fiDJ9EJZAh0DQYNuk31nqxAKvK8e9Yj6WKt
 XtN7l2P3vRH3WWJvDScCRRFSmZqVyEFbMM/fh2NLBCJ1fdjiaJnllnAhP g==;
X-CSE-ConnectionGUID: /u5ZKKU1TZmqj9prkV4lPA==
X-CSE-MsgGUID: RB2qw3qjSQSOPftVvPq5ow==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="12164366"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="12164366"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 02:27:25 -0700
X-CSE-ConnectionGUID: +nom5PsxTJGDyM2JdN7urg==
X-CSE-MsgGUID: EbtvfxNWRXuplNUzsPLnxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="37001560"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 02:27:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 03/13] drm/i915: Add separate define for
 SEL_FETCH_CUR_CTL()
In-Reply-To: <20240516135622.3498-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-4-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 12:27:20 +0300
Message-ID: <875xv8vnnr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Split the cursor stuff from the rest of the selective fetch
> plane registers so that we can collect all cursor registers
> in intel_cursor_regs.h. Also take the opportunity to rename
> the registers to match the spec.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c      | 6 +++---
>  drivers/gpu/drm/i915/display/intel_cursor_regs.h | 5 +++++
>  2 files changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index c780ce146131..b44809899502 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -508,7 +508,7 @@ static void i9xx_cursor_disable_sel_fetch_arm(struct =
intel_plane *plane,
>  	if (!crtc_state->enable_psr2_sel_fetch)
>  		return;
>=20=20
> -	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
> +	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), 0);
>  }
>=20=20
>  static void wa_16021440873(struct intel_plane *plane,
> @@ -523,7 +523,7 @@ static void wa_16021440873(struct intel_plane *plane,
>  	ctl &=3D ~MCURSOR_MODE_MASK;
>  	ctl |=3D MCURSOR_MODE_64_2B;
>=20=20
> -	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), ctl);
> +	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), ctl);
>=20=20
>  	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(dev_priv, pipe),
>  		       PIPESRC_HEIGHT(et_y_position));
> @@ -548,7 +548,7 @@ static void i9xx_cursor_update_sel_fetch_arm(struct i=
ntel_plane *plane,
>  					  val);
>  		}
>=20=20
> -		intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> +		intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe),
>  				  plane_state->ctl);
>  	} else {
>  		/* Wa_16021440873 */
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/g=
pu/drm/i915/display/intel_cursor_regs.h
> index 270c26c2e6df..ab02d497fba6 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
> @@ -95,4 +95,9 @@
>  #define _CUR_BUF_CFG_B		0x7117c
>  #define CUR_BUF_CFG(pipe)	_MMIO_PIPE((pipe), _CUR_BUF_CFG_A, _CUR_BUF_CF=
G_B)
>=20=20
> +#define _SEL_FETCH_CUR_CTL_A	0x70880 /* mtl+ */
> +#define _SEL_FETCH_CUR_CTL_B	0x71880
> +#define SEL_FETCH_CUR_CTL(pipe)	_MMIO_PIPE((pipe), _SEL_FETCH_CUR_CTL_A,=
 _SEL_FETCH_CUR_CTL_A)

_SEL_FETCH_CUR_CTL_A is doubled, the latter should be _B.

With that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

I must admit I was trying to follow how PLANE_SEL_FETCH_CTL(pipe,
CURSOR_A) ends up being identical to this new SEL_FETCH_CUR_CTL(pipe),
but holy crap it trips my brain completely. How did we come up with so
many levels of abstractions for this stuff, in such complicated ways?!
:o


> +#define   SEL_FETCH_CUR_CTL_ENABLE	REG_BIT(31)
> +
>  #endif /* __INTEL_CURSOR_REGS_H__ */

--=20
Jani Nikula, Intel
