Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FF74CD246
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 11:20:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B93AA10E659;
	Fri,  4 Mar 2022 10:20:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF7810E659
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 10:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646389240; x=1677925240;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NuGcpaTjoLA8GGnRjVpcJAZCC68dfmka9Jxzh8kfLXE=;
 b=GRSEZubvf63My476NUVwMmKzpGbpKcMrusPdRknz6RfMB/6jjdqUrpHF
 +1sX83zsYEEJFpLtbSEHcZzMhf11Y1m0ImiPkNnlxKVStvl989vahymo4
 JhGEEVQDIoGJTeCyw19hhTEB1DTHswRRn/smIv8Mldu+9GZqF8raT6UKx
 D6T65y0Euhici3QvWyYnpw7Kvq9HBPlRd9NX1cM8Pb5t5vH9a4GMK3ZQB
 8MpxTJ/yPn0+REmzXc4xCgwYiAoir2BV76NRV9AEEcDitelM6Z4zwvfH9
 Wjs78LYQXu1TMfqX+/XpfGIIHE9IdqXaaVM8oGFZRT/tJC8rjy+EFTRyt g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="233907134"
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="233907134"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 02:20:40 -0800
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="536230151"
Received: from pruilobx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.28.174])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 02:20:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220225070228.855138-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220225070228.855138-1-jouni.hogander@intel.com>
Date: Fri, 04 Mar 2022 12:20:36 +0200
Message-ID: <87ee3i3tor.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/psr: Set "SF Partial Frame
 Enable" also on full update
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
Cc: Mihai Harpau <mharpau@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 25 Feb 2022, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Currently we are observing occasional screen flickering when
> PSR2 selective fetch is enabled. More specifically glitch seems
> to happen on full frame update when cursor moves to coords
> x =3D -1 or y =3D -1.
>
> According to Bspec SF Single full frame should not be set if
> SF Partial Frame Enable is not set. This happened to be true for
> ADLP as PSR2_MAN_TRK_CTL_ENABLE is always set and for ADL_P it's
> actually "SF Partial Frame Enable" (Bit 31).
>
> Setting "SF Partial Frame Enable" bit also on full update seems to
> fix screen flickering.
>
> Also make code more clear by setting PSR2_MAN_TRK_CTL_ENABLE
> only if not on ADL_P. Bit 31 has different meaning in ADL_P.
>
> Bspec: 49274
>
> v2: Fix Mihai Harpau email address
> v3: Modify commit message and remove unnecessary comment
>
> Fixes: 7f6002e58025 ("drm/i915/display: Enable PSR2 selective fetch by de=
fault")
> Reported-by: Lyude Paul <lyude@redhat.com>
> Cc: Mihai Harpau <mharpau@gmail.com>
> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Bugzilla: https://gitlab.freedesktop.org/drm/intel/-/issues/5077
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Reviewed-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 16 ++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h          |  1 +
>  2 files changed, 15 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 2e0b092f4b6b..b6b7bb5be5ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1439,6 +1439,13 @@ static inline u32 man_trk_ctl_single_full_frame_bi=
t_get(struct drm_i915_private
>  	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
>  }
>=20=20
> +static inline u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_priv=
ate *dev_priv)

Generally, please don't use inline in .c files, just let the compiler do
its thing. We won't get warnings if inlines become unused.

Please name struct drm_i915_private * pointers i915 instead of dev_priv
in new code where possible. (We've still got some implicit assumptions
on dev_priv in some register macros unfortunately.)

> +{
> +	return IS_ALDERLAKE_P(dev_priv) ?
> +	       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
> +	       PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
> +}
> +
>  static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> @@ -1543,7 +1550,13 @@ static void psr2_man_trk_ctl_calc(struct intel_crt=
c_state *crtc_state,
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	u32 val =3D PSR2_MAN_TRK_CTL_ENABLE;
> +	u32 val =3D 0;
> +
> +	if (!IS_ALDERLAKE_P(dev_priv))
> +		val =3D PSR2_MAN_TRK_CTL_ENABLE;
> +
> +	/* SF partial frame enable has to be set even on full update */
> +	val |=3D man_trk_ctl_partial_frame_bit_get(dev_priv);

Not sure if the separate function for this is warranted if you're anyway
including an if (!IS_ALDERLAKE_P(dev_priv)) condition here.

BR,
Jani.

>=20=20
>  	if (full_update) {
>  		/*
> @@ -1563,7 +1576,6 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc=
_state *crtc_state,
>  	} else {
>  		drm_WARN_ON(crtc_state->uapi.crtc->dev, clip->y1 % 4 || clip->y2 % 4);
>=20=20
> -		val |=3D PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
>  		val |=3D PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1 / 4 + 1);
>  		val |=3D PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 / 4 + 1);
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index a2f36ef91cec..b347a8921178 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2316,6 +2316,7 @@
>  #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(=
ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
>  #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK		REG_GENMASK(12, =
0)
>  #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(A=
DLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
> +#define  ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE		REG_BIT(31)
>  #define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(14)
>  #define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(13)

--=20
Jani Nikula, Intel Open Source Graphics Center
