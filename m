Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5FC4D43AE
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:44:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA6310E5C8;
	Thu, 10 Mar 2022 09:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755B210E33E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646905488; x=1678441488;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=HXoVVTD+ujdMMzCNdzg5idjh8trqhfZfcQHlJ8xKDLE=;
 b=byM7vu19ZXteKUwx7UrPeWeSNhlEdVcVfN9QegDJUq1S68H9NJQmnXNo
 SASkpc6H9o0uO1QX/d2tDBrIT9CZENmyTJzheWmODfA2a8UD4SWYnUQoW
 Ipi26vWltyNNz6cSZsJaJe5S5c5B7/a5p1WfR5b/yRLjFE3LbaYnkoYLr
 9odNGK6yjVCpkf7kSu0W5P0u26n1iAiamW0W8LKzObe4CYCxY5RZmdkgP
 trjDNiupmGPtX9dkm9MgurjRW718DpquhkB3717asT7NJzA4cRBSWKRih
 725hTjPnnvTIKoOwKwtxT/7dbJ/NVlr3HUj9iiF05NpAkJoqjccTY61g9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="254036973"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="254036973"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:44:48 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="538385529"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:44:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-9-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 11:44:44 +0200
Message-ID: <87k0d2xhtf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915: Rename PIPECONF refresh
 select bits
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

On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rename the PIPECONF refresh rate select bits to be
> less cryptic. Also nothing eDP specific about these as they
> also select between FP0 vs. FP1 for the DPLL and thus can be
> used to change the refresh rate on other output types as well.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_drrs.c | 4 ++--
>  drivers/gpu/drm/i915/i915_reg.h           | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 3979ceaaf651..c97b5dee8cae 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -111,9 +111,9 @@ intel_drrs_set_refresh_rate_pipeconf(const struct int=
el_crtc_state *crtc_state,
>  	u32 val, bit;
>=20=20
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		bit =3D PIPECONF_EDP_RR_MODE_SWITCH_VLV;
> +		bit =3D PIPECONF_REFRESH_RATE_ALT_VLV;
>  	else
> -		bit =3D PIPECONF_EDP_RR_MODE_SWITCH;
> +		bit =3D PIPECONF_REFRESH_RATE_ALT_ILK;
>=20=20
>  	val =3D intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index c106fb23e245..f66309a7566f 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3705,11 +3705,11 @@
>  #define   PIPECONF_INTERLACE_IF_ID_ILK		REG_FIELD_PREP(PIPECONF_INTERLAC=
E_MASK_ILK, 3)
>  #define   PIPECONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTER=
LACE_MASK_ILK, 4) /* ilk/snb only */
>  #define   PIPECONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTER=
LACE_MASK_ILK, 5) /* ilk/snb only */
> -#define   PIPECONF_EDP_RR_MODE_SWITCH		REG_BIT(20)
> +#define   PIPECONF_REFRESH_RATE_ALT_ILK		REG_BIT(20)
>  #define   PIPECONF_MSA_TIMING_DELAY_MASK	REG_GENMASK(19, 18) /* ilk/snb/=
ivb */
>  #define   PIPECONF_MSA_TIMING_DELAY(x)		REG_FIELD_PREP(PIPECONF_MSA_TIMI=
NG_DELAY_MASK, (x))
>  #define   PIPECONF_CXSR_DOWNCLOCK		REG_BIT(16)
> -#define   PIPECONF_EDP_RR_MODE_SWITCH_VLV	REG_BIT(14)
> +#define   PIPECONF_REFRESH_RATE_ALT_VLV		REG_BIT(14)
>  #define   PIPECONF_COLOR_RANGE_SELECT		REG_BIT(13)
>  #define   PIPECONF_OUTPUT_COLORSPACE_MASK	REG_GENMASK(12, 11) /* ilk-ivb=
 */
>  #define   PIPECONF_OUTPUT_COLORSPACE_RGB	REG_FIELD_PREP(PIPECONF_OUTPUT_=
COLORSPACE_MASK, 0) /* ilk-ivb */

--=20
Jani Nikula, Intel Open Source Graphics Center
