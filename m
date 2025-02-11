Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 981E8A3072D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 10:32:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E43C10E2D4;
	Tue, 11 Feb 2025 09:32:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SczyI+WU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193AB10E2D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 09:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739266348; x=1770802348;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ZzEEu1M6tJ1zEDPk/EqyLOOZ9fPOB+ApK6HG8tBMeos=;
 b=SczyI+WUU72tb6MZECADxYuZI0QfhvmlmhNqk/MT0b7+bMmHi+fTYASf
 eft1XemGLaNgODMqwJ7/PvDeIqrgJtcGLGBvNtWPijHBg85AuMdakr9b9
 6GPjNBTxQiSzlry9AcJ6LyQXcpIVwaPfT2OXhPlIp0ASDo20n8072Np4v
 JoSXJJZqipjlB+5+d+2n0vUl6rOI1B06jmYn5i0UT//yFE2bMencsD0rV
 bv2ZNZRItd01qzwZlSIHSXWcu3YIWyYSrn9X8lfbqfXJnlCQyd6pLmMOR
 C+gqGAaplcpLqXtsJ8sRFKaeUbnNAlXXF/EfASbdSz93EQpYR44ILMZUa w==;
X-CSE-ConnectionGUID: jeelxGzqTPWua6zOOp3DUw==
X-CSE-MsgGUID: gmoqY8UhT1OFlxCS6hjTvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50103249"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="50103249"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 01:32:24 -0800
X-CSE-ConnectionGUID: FQ8l0UhaTReOnxVhuYSGTQ==
X-CSE-MsgGUID: oH5pfzXURJq36gDN6OrAkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="112970136"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.29])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 01:32:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915: Fix CONFIG_DRM_I915_DEBUG_RUNTIME_PM=n build
In-Reply-To: <20250211000135.6096-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250211000135.6096-1-ville.syrjala@linux.intel.com>
 <20250211000135.6096-2-ville.syrjala@linux.intel.com>
Date: Tue, 11 Feb 2025 11:32:20 +0200
Message-ID: <87mses3jyz.fsf@intel.com>
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

On Tue, 11 Feb 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Looks like I missed one of myriad CONFIG_DRM_I915_DEBUG_RUNTIME_PM=3Dn
> special cases when converting the intel_display_power_{get,put}()
> code to use struct intel_display. Only noticed after the fact
> when building a EXPERT=3Dn kernel :/
>
> Fixes: 5dcfda5cfa42 ("drm/i915: Convert intel_display_power_{get,put}*() =
to intel_display")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I guess I was reviewing everything that was changed, and trusted the
unchanged stuff to the compiler.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index b5d67b6c73cf..1e4e113999fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -217,7 +217,7 @@ intel_display_power_put_async_delay(struct intel_disp=
lay *display,
>  	__intel_display_power_put_async(display, domain, wakeref, delay_ms);
>  }
>  #else
> -void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
> +void intel_display_power_put_unchecked(struct intel_display *display,
>  				       enum intel_display_power_domain domain);
>=20=20
>  static inline void

--=20
Jani Nikula, Intel
