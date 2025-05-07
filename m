Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9866EAAE537
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 17:45:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA93B10E833;
	Wed,  7 May 2025 15:45:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FIlj2t3S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47E2C10E838;
 Wed,  7 May 2025 15:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746632721; x=1778168721;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DKP/wpPO9vAXs8uDiM4OZCsLvtlKI92I8E7J79ZyZks=;
 b=FIlj2t3SvofMChQw5uXNak2CVrU+jRYgTkjuEzfxvTCYQwtc+7CGlpH8
 CFVQa684PsVQqxooQbqmntpzQvrgWWTyNW5rp1d3wwB6PDIpzYCioRH/k
 ZFDLKuQfPs7Kr5wdjGX9Phz+BgpcLwp7XmqugjeyU9DtMGvMHzgOLwYyL
 GdGxLqBO7GpfzT4g/uEr5UhGDEneaJSoX52c2qmH89iAhXGz4hdyMyYhe
 JHNTxMTBX6DZmRe3rFFbhYQflnCy4AgrP9nXWyzN4wehX0BiBnz3uwZ9E
 M2R08GMNiM4Bq+b2RLZPL4FsV7cvL7qyvSPyGm0vzYZfzBMduc0MkrYjO g==;
X-CSE-ConnectionGUID: oKgC+sFIQRWg3ILXg+LUQA==
X-CSE-MsgGUID: yLT3l97zSKGlrenZxHqfJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48486246"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="48486246"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:45:21 -0700
X-CSE-ConnectionGUID: UG0fQpA7Rp+DzqnKWm8QCw==
X-CSE-MsgGUID: Bsfz0Pl2QdOMrgLuizEc+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="141117687"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.57])
 by orviesa005.jf.intel.com with SMTP; 07 May 2025 08:45:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 May 2025 18:45:17 +0300
Date: Wed, 7 May 2025 18:45:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v4 01/17] drm/i915/vrr: Fix the adjustment for the fixed
 rr vtotal for Display < 13
Message-ID: <aBuADboeEUwq1hI_@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250506145517.4129419-2-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506145517.4129419-2-mitulkumar.ajitkumar.golani@intel.com>
X-Patchwork-Hint: comment
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

On Tue, May 06, 2025 at 08:25:01PM +0530, Mitul Golani wrote:
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> 
> Correct the adjustment required for fixed refresh rate mode for Display
> < 13. The vblank delay must be added and not subtracted to get the fixed
> rr vtotal.
> 
> Fixes: bef1e60c7087 ("drm/i915/vrr: Prepare for fixed refresh rate timings")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index c6565baf815a..45445198129f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -263,7 +263,7 @@ int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
>  	if (DISPLAY_VER(display) >= 13)
>  		return crtc_vtotal;
>  	else
> -		return crtc_vtotal -
> +		return crtc_vtotal +
>  			intel_vrr_real_vblank_delay(crtc_state);

This change looks wrong. This serves the same purpose as the
the subtraction in intel_vrr_compute_config_late().

>  }
>  
> -- 
> 2.48.1

-- 
Ville Syrjälä
Intel
