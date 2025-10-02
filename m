Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87464BB4428
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 17:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14DB110E1BD;
	Thu,  2 Oct 2025 15:06:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y4jZz9Wf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BF7210E1BD;
 Thu,  2 Oct 2025 15:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759417559; x=1790953559;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZTtSw4XOQSDHwiSog7MqdPeQPu0sEA0prLMOZgfm8tU=;
 b=Y4jZz9WfD9ZgwJ5ggc1Z7BaNILjvam9kH2upwyzJTDxEptxiAZOqJzSy
 74mZfoOueK27KXYdgT4HClGE6WTLht5aRrekEstO8A3tH7266Z6dcO8vf
 fTDd1Ub6SwDp/MRhvSsQNcAN8kVMHoxJ8x3f7ecji592xGPfTH17An95X
 TAKRnmcE5tbevB/ZezZLnJSHD/7wiStDCvpb+pqVAbd/bWMsGoREHrDIc
 9jeJJF8x8dyEc88wb9TsNjnP1LBqnx4Oiw1XYLfujkq/Jpe24zp1rzAR7
 JcD7/GmM1DjEyyWpmgDJ8uifuDwxLuk4xyJ5tuKRWnyz6z0OwvcgXThEN Q==;
X-CSE-ConnectionGUID: PX5kkNgxTZa2ZELv0Q+w5w==
X-CSE-MsgGUID: zoxgEyw8QOOcQvjg2sN8zQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11570"; a="73131341"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="73131341"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 08:05:59 -0700
X-CSE-ConnectionGUID: g9O4IyLCR3KxbY3gJ15LRQ==
X-CSE-MsgGUID: /MsS5OEtSXKavI5EHLI8iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="178669700"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.12])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 08:05:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/i915/wm: Use fb->modfier to check for tiled vs.
 untiled
In-Reply-To: <20251002115434.6486-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251002115434.6486-1-ville.syrjala@linux.intel.com>
 <20251002115434.6486-5-ville.syrjala@linux.intel.com>
Date: Thu, 02 Oct 2025 18:05:54 +0300
Message-ID: <ec4d7f704a17e9e7cef4068203902566852b1dd1@intel.com>
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
> There is no point in checking the bo fence tiling mode when
> we can just check the fb modifier instead.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i91=
5/display/i9xx_wm.c
> index fd3b7b35f351..b262319bc83d 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -2295,12 +2295,11 @@ static void i9xx_update_wm(struct intel_display *=
display)
>=20=20
>  	crtc =3D single_enabled_crtc(display);
>  	if (display->platform.i915gm && crtc) {
> -		struct drm_gem_object *obj;
> -
> -		obj =3D intel_fb_bo(crtc->base.primary->state->fb);
> +		const struct drm_framebuffer *fb =3D
> +			crtc->base.primary->state->fb;
>=20=20
>  		/* self-refresh seems busted with untiled */
> -		if (!intel_bo_is_tiled(obj))
> +		if (fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR)
>  			crtc =3D NULL;
>  	}

--=20
Jani Nikula, Intel
