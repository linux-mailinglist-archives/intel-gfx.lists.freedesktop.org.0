Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CE4633C8A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:33:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0273B10E3E3;
	Tue, 22 Nov 2022 12:33:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82C810E3DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669120404; x=1700656404;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=FlRz0uCZ+r2EZ2/6NMjBXWGR3SuOraC/0h78TbsctmU=;
 b=EGfTatkcpjNlQuSOo0c4aJKPEzsbjqHwnptekGfH3j3kg45bqW4Z11ko
 lfHgbaRXwsgL+tUZdANJxKrptJLtDKvo/Je2Y3Yp2iCjAze8RF/WTTwGN
 7dhQvgHWEcuK59LdzEIwjj8/bwih0aNcBUYhDFVGKE+NcrD7pPlaLY6qF
 Vz83qHUnwaKissyM05bsBI2m0yEIX010+v1Ft3gFs3L/ccxZmoB0tfxzh
 hucUxl4DOtRVPLJr2r4Zq6Ia2uIW/3VG3+fsrOaUPQOf3mlHi5rmykHkZ
 qgbmB+vSCbnOfyo8miXWFn8wOA85lzXHUuq2mv/5bRL0K7Ge/7RNFHzSp A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="375946565"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="375946565"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:33:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="592129018"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="592129018"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:33:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221122120825.26338-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
 <20221122120825.26338-6-ville.syrjala@linux.intel.com>
Date: Tue, 22 Nov 2022 14:33:20 +0200
Message-ID: <87sfibxj73.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915/dvo: Define a few more DVO
 register bits
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

On Tue, 22 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Define a few extra interrupt related bits on the DVO register.
> One of these we included in the DVO_PRESERVE_MASK already.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dvo.c | 3 ++-
>  drivers/gpu/drm/i915/i915_reg.h          | 4 +++-
>  2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index d20334d3394c..255deb55b932 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -290,7 +290,8 @@ static void intel_dvo_pre_enable(struct intel_atomic_=
state *state,
>=20=20
>  	/* Save the data order, since I don't know what it should be set to. */
>  	dvo_val =3D intel_de_read(i915, DVO(port)) &
> -		  (DVO_PRESERVE_MASK | DVO_DATA_ORDER_GBRG);
> +		  (DVO_DEDICATED_INT_ENABLE |
> +		   DVO_PRESERVE_MASK | DVO_DATA_ORDER_GBRG);
>  	dvo_val |=3D DVO_DATA_ORDER_FP | DVO_BORDER_ENABLE |
>  		   DVO_BLANK_ACTIVE_HIGH;
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f5ae171eaee0..89c834d8fff8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2589,6 +2589,9 @@
>  #define   DVO_PIPE_STALL		(1 << 28)
>  #define   DVO_PIPE_STALL_TV		(2 << 28)
>  #define   DVO_PIPE_STALL_MASK		(3 << 28)
> +#define   DVO_INTERRUPT_SELECT		(1 << 27)
> +#define   DVO_DEDICATED_INT_ENABLE	(1 << 26)
> +#define   DVO_PRESERVE_MASK		(0x3 << 24)
>  #define   DVO_USE_VGA_SYNC		(1 << 15)
>  #define   DVO_DATA_ORDER_I740		(0 << 14)
>  #define   DVO_DATA_ORDER_FP		(1 << 14)
> @@ -2606,7 +2609,6 @@
>  #define   DVO_BLANK_ACTIVE_HIGH		(1 << 2)
>  #define   DVO_OUTPUT_CSTATE_PIXELS	(1 << 1)	/* SDG only */
>  #define   DVO_OUTPUT_SOURCE_SIZE_PIXELS	(1 << 0)	/* SDG only */
> -#define   DVO_PRESERVE_MASK		(0x7 << 24)
>  #define _DVOA_SRCDIM		0x61124
>  #define _DVOB_SRCDIM		0x61144
>  #define _DVOC_SRCDIM		0x61164

--=20
Jani Nikula, Intel Open Source Graphics Center
