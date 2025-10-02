Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7108BB4285
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 16:25:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3594F10E7FD;
	Thu,  2 Oct 2025 14:25:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N83nORNH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4715B10E802;
 Thu,  2 Oct 2025 14:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759415146; x=1790951146;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=edcZ0cj2H+JM9RLFqOpQL3beZncNOMp/aKveUOCYP2k=;
 b=N83nORNHGC42rwOjWJX60MbeN1nCDJfqV8hYcXMI6Z8EbwdEzR80Z+S8
 hXJyGrO/dijyupe/AJ3MRuTTdlopFZBQ+pHpwcWIrxTN07PE9Al3KXVlv
 /fgIy2sLBrvLhgpZTlAAav8G8w2S0lWuOdIe/ue4l0kx8tAEKeAMtb35a
 ftnytSDCcev7VG/0Y8YNc1BWGngRCh9/7qTe+rH7ScNwDk3Kc2BRUYEpC
 mRWgnykD9tDZHIJfQ74L8m5jse/mBFGKkFmPJkLAZ9MRVAzHjlzb90U6i
 GMT70lmdVvufwWemjvOAVBHVcWHFwnVxoBzqcrnPU5r7YJSWJPyELywSY Q==;
X-CSE-ConnectionGUID: LStnKLruTL62LKNafLr1gQ==
X-CSE-MsgGUID: W7xi2AjtSN+agMYclVNw4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="73050240"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="73050240"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 07:25:46 -0700
X-CSE-ConnectionGUID: Y0c3wp0DQCKIJeVJQWmFcA==
X-CSE-MsgGUID: 9U9cAKQsRZCz6GO/KLXdKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="179499619"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.12])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 07:25:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915/fbdev: Select linear modifier explicitly
In-Reply-To: <20251002115434.6486-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251002115434.6486-1-ville.syrjala@linux.intel.com>
 <20251002115434.6486-3-ville.syrjala@linux.intel.com>
Date: Thu, 02 Oct 2025 17:25:41 +0300
Message-ID: <6d2ce6ca88742503f51ccec72a42f74ec6b722b3@intel.com>
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

On Thu, 02 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently we use the implicit modifier fb creation path for fbdev,
> but as we never call set_tiling on the bo it will always end up as
> linear anyway. The rest of the code (eg. stride alignment) also
> assumes that we'll use linear. Just select the linear modifier
> explicitly.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index 3fbdf75415cc..51d3d87caf43 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -214,12 +214,14 @@ static void intel_fbdev_fill_mode_cmd(struct drm_fb=
_helper_surface_size *sizes,
>  	if (sizes->surface_bpp =3D=3D 24)
>  		sizes->surface_bpp =3D 32;
>=20=20
> +	mode_cmd->flags =3D DRM_MODE_FB_MODIFIERS;
>  	mode_cmd->width =3D sizes->surface_width;
>  	mode_cmd->height =3D sizes->surface_height;
>=20=20
>  	mode_cmd->pitches[0] =3D ALIGN(mode_cmd->width * DIV_ROUND_UP(sizes->su=
rface_bpp, 8), 64);
>  	mode_cmd->pixel_format =3D drm_mode_legacy_fb_format(sizes->surface_bpp,
>  							   sizes->surface_depth);
> +	mode_cmd->modifier[0] =3D DRM_FORMAT_MOD_LINEAR;
>  }
>=20=20
>  static struct intel_framebuffer *

--=20
Jani Nikula, Intel
