Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DD88D32DB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D7A10FDAF;
	Wed, 29 May 2024 09:23:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8NBI3Tl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E999F10E1C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716974574; x=1748510574;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=b8NklXRvV8ArZkr+gedcd5b/ixXQet2S7WZPS0mE3jM=;
 b=B8NBI3TlLn1G/UhNxVh4wXVVUlJX22Vag8wHE4SkfXiTLA9vONDUBa4X
 +JGdxNLK+wTI7mFNuomItz6wt/cB9o64NdniH0DYt2LtatMVSmjDes/e8
 oh48WN1mqvHCCd06b2KbL8T6ZehYb42XX7KqsEuLyxzR6hLREt9AOnxNz
 mZL0pSwEkQVs/7ICOGThRRlUycMOdtOEiNAh4c1mwnXm7vEF0+gEwHZCN
 jTE9ToXaVG2Sno1+txWfMBPp1jPid0AHfpa6M5uenh1aKKnwl6esEku9I
 /V5iAwunaYjie0hxBUaToGd0ILwG55w+8tYGe000AFn8vnDR6QHKuh1oa w==;
X-CSE-ConnectionGUID: 78+4wGAMSd2nppgV8Jjftg==
X-CSE-MsgGUID: +Nsa3+fRRlOMW4lexO9c9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24782503"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="24782503"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:22:53 -0700
X-CSE-ConnectionGUID: f5FlBBuwQSyR3UadpQFNWw==
X-CSE-MsgGUID: P9tiedGTSs2Mm6YbkU7nEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="35457939"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:22:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/7] drm/i915: Switch intel_usecs_to_scanlines() to
 64bit maths
In-Reply-To: <20240528185647.7765-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
 <20240528185647.7765-7-ville.syrjala@linux.intel.com>
Date: Wed, 29 May 2024 12:22:52 +0300
Message-ID: <87jzjdj7kj.fsf@intel.com>
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

On Tue, 28 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Dotclocks can reach ~1GHz these days, so intel_usecs_to_scanlines(),
> with its 32bit maths, is currently limited to a few milliseconds.
> I want bigger numbers in DSB selftests, so switch over to 64bit
> maths.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index ca6dc1dc56c8..17edd6099287 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -454,8 +454,8 @@ int intel_usecs_to_scanlines(const struct drm_display=
_mode *adjusted_mode,
>  	if (!adjusted_mode->crtc_htotal)
>  		return 1;
>=20=20
> -	return DIV_ROUND_UP(usecs * adjusted_mode->crtc_clock,
> -			    1000 * adjusted_mode->crtc_htotal);
> +	return DIV_ROUND_UP_ULL(mul_u32_u32(usecs, adjusted_mode->crtc_clock),
> +				1000 * adjusted_mode->crtc_htotal);
>  }
>=20=20
>  /**

--=20
Jani Nikula, Intel
