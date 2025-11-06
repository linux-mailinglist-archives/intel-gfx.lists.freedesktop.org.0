Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6363BC3B372
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 14:30:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F87810E8C6;
	Thu,  6 Nov 2025 13:30:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hThUstyS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D1E510E8C2;
 Thu,  6 Nov 2025 13:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762435814; x=1793971814;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=V/tj6NdVefak47P6FAZ9zb/EK2jKBe/0O10R7zTwP7E=;
 b=hThUstySvb2UkBCtXc4HQUQ0V3lB6AZFtuBd3D+/ZN61En7Lkl84e1d/
 +0NovQEmkrUq4HIYWBhXh6bgrMTrLb+MHvjAm1pzOfYy37to423ZHAN98
 V1GWqTJJO+x8MQ9yzVEQGLAeOHmFXhuQ7sqNiudrY4M2kZjvYSDIj221g
 7KsPsv2URxtMbkoRuDJVgYP/YcqWqtNKKHK28V/aCfdUEXS5LRwdU4LIP
 ZEiS5Lk9XxHHcZSJlIUH5AZjbBgjNejLF8+ndECjfAK4sq5ZXR4g/rwnH
 rCdYKTtPuKCfWMqUivCF5pIZnzy8ZiVG2dJ88OpzH9bM5w9Pc/oLLCfM9 Q==;
X-CSE-ConnectionGUID: Ocrt3JtgRUqxuvQhgMPuiw==
X-CSE-MsgGUID: jD9ji7x+QSetkeZ+OnN1RA==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64609291"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64609291"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:30:13 -0800
X-CSE-ConnectionGUID: YQ4pG1BqT0eXTTquTwDrug==
X-CSE-MsgGUID: f2kponllQGeoAPoLzrAlvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187420652"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:30:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: arun.r.murthy@intel.com
Subject: Re: [PATCH] drm/i915/fbdev: Hold runtime PM ref during fbdev BO
 creation
In-Reply-To: <20251106120313.2670852-1-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106120313.2670852-1-dibin.moolakadan.subrahmanian@intel.com>
Date: Thu, 06 Nov 2025 15:30:09 +0200
Message-ID: <b07289038964a4082bf588602f13abb643ae4672@intel.com>
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

On Thu, 06 Nov 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrah=
manian@intel.com> wrote:
> During fbdev probe, the driver allocates and pins a framebuffer
> BO (via xe_bo_create_pin_map_novm() =E2=86=92 xe_ggtt_insert_bo()).

Might emphasize this is with the xe driver, since the subject prefix
says i915.

> Without a runtime PM reference, xe_pm_runtime_get_noresume() warns about
> missing outer PM protection as below:
>
> 	xe 0000:03:00.0: [drm] Missing outer runtime PM protection
>
> Acquire a runtime PM reference before framebuffer allocation to ensure
> xe_ggtt_insert_bo()  executes  under active runtime PM context.
>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6350
>

Superfluous newline.

Fixes: ?

BR,
Jani.

> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmani=
an@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index e5449c41cfa1..7173bd1cbffd 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -288,13 +288,18 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_he=
lper *helper,
>  		drm_framebuffer_put(&fb->base);
>  		fb =3D NULL;
>  	}
> +
> +	wakeref =3D intel_display_rpm_get(display);
> +
>  	if (!fb || drm_WARN_ON(display->drm, !intel_fb_bo(&fb->base))) {
>  		drm_dbg_kms(display->drm,
>  			    "no BIOS fb, allocating a new one\n");
>=20=20
>  		fb =3D __intel_fbdev_fb_alloc(display, sizes);
> -		if (IS_ERR(fb))
> -			return PTR_ERR(fb);
> +		if (IS_ERR(fb)) {
> +			ret =3D PTR_ERR(fb);
> +			goto out_unlock;
> +		}
>  	} else {
>  		drm_dbg_kms(display->drm, "re-using BIOS fb\n");
>  		prealloc =3D true;
> @@ -302,8 +307,6 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_help=
er *helper,
>  		sizes->fb_height =3D fb->base.height;
>  	}
>=20=20
> -	wakeref =3D intel_display_rpm_get(display);
> -
>  	/* Pin the GGTT vma for our access via info->screen_base.
>  	 * This also validates that any existing fb inherited from the
>  	 * BIOS is suitable for own access.

--=20
Jani Nikula, Intel
