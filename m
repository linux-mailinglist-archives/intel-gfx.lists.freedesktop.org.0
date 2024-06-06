Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB1F8FE562
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:31:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D14BD10E905;
	Thu,  6 Jun 2024 11:31:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YGWO/FNC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA42210E902
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717673494; x=1749209494;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=m1oK94vTmI9m4nuSul+BlYqkmnrutKvGmgFpt1exF6s=;
 b=YGWO/FNCGoVpLR8SHAhKr/qrPCiAwnPBtbgCXUygrDDlyHgoO8fcck9w
 dmn4iSyJG6To0OlCPSbqVH8MZDaGk0OjP0GaSvYDdp5zZDhcKrSPXf8zy
 7bPtW3eDszhuOKOtEsF6DLT+r2rpQM82Mjly/+IBaggQ3/nbLMZHv0hSI
 Aj5FIWpkTMuZfIGfk2//ZAAeQJkeftPvIZaffPjDihym7dRvsyP3IkWug
 cGM2D8mBJBfn2jNCMP00sSr9FiSv1aIG5n2kpTnjrX69O7Qo7PTNReLLF
 /7lbDOHLaqSUZlIS3KF2lthXSspgRbYeJqryMwacX4kHfIi30SmehbPQR g==;
X-CSE-ConnectionGUID: oD4ixe8yTkyN5tAlmLD3Uw==
X-CSE-MsgGUID: Bq6hHovzSTSm65L0FIFN5Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14469410"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14469410"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:31:33 -0700
X-CSE-ConnectionGUID: 7J8I1sxiSvywteO6URsc7Q==
X-CSE-MsgGUID: Q3IL5lDXQXiinfjC3e3phg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38007417"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:31:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/7] drm/i915: Extend GEN9_PIPE_PLANE_FLIP_DONE() to
 cover all universal planes
In-Reply-To: <20240605111832.21373-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
 <20240605111832.21373-5-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jun 2024 14:31:30 +0300
Message-ID: <87zfry9ujx.fsf@intel.com>
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

On Wed, 05 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> GEN9_PIPE_PLANE_FLIP_DONE() only works for planes 1-4. Extend
> it handle planes 5-7 as well. Somewhat annoyingly the bits are
> spread around into two distinct clumps.
>
> Currently this doesn't achieve anything, but if we ever extend
> async flip support to more than just the first plane then we'll
> need this.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 8e1053c60284..4d5438ce73a2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2631,6 +2631,9 @@
>  #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
>  #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
> +#define  GEN11_PIPE_PLANE7_FLIP_DONE	REG_BIT(18) /* icl/tgl */
> +#define  GEN11_PIPE_PLANE6_FLIP_DONE	REG_BIT(17) /* icl/tgl */

Need to be careful with these, as they're pipe DMC error and plane ATS
fault on mtl+.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +#define  GEN11_PIPE_PLANE5_FLIP_DONE	REG_BIT(16) /* icl+ */
>  #define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
>  #define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
>  #define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */
> @@ -2645,7 +2648,8 @@
>  #define  GEN9_PIPE_PLANE2_FLIP_DONE	REG_BIT(4) /* skl+ */
>  #define  GEN8_PIPE_PRIMARY_FLIP_DONE	REG_BIT(4) /* bdw */
>  #define  GEN9_PIPE_PLANE1_FLIP_DONE	REG_BIT(3) /* skl+ */
> -#define  GEN9_PIPE_PLANE_FLIP_DONE(p)	REG_BIT(3 + (p)) /* skl+ */
> +#define  GEN9_PIPE_PLANE_FLIP_DONE(plane_id) \
> +	REG_BIT(((plane_id) >=3D PLANE_5 ? 16 - PLANE_5 : 3 - PLANE_1) + (plane=
_id)) /* skl+ */
>  #define  GEN8_PIPE_SCAN_LINE_EVENT	REG_BIT(2)
>  #define  GEN8_PIPE_VSYNC		REG_BIT(1)
>  #define  GEN8_PIPE_VBLANK		REG_BIT(0)

--=20
Jani Nikula, Intel
