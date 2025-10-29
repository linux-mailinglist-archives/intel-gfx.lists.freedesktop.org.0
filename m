Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64DFC1B78E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 15:58:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 768E410E7EC;
	Wed, 29 Oct 2025 14:58:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HechsRLv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A039F10E7EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 14:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761749918; x=1793285918;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=WYfpXQb36kSShJ4EqMDwnv4NfotsqsuaAM3EIXvUA2Y=;
 b=HechsRLvCaLq0NwjyNMvsF7FMWqvL6En93W/cxfpydDnUzqO3AmN9Nfo
 sCQrmkqgm/fiatAIuB2HkCTp3b2k3hRLqhU/RdBSTH4or0sqgDyUZahuz
 ql6u4d0tzDHw10UhGpL/5E1zsKvgMTWdM0QO8/LZnYDH4pR3z2m7QfwAt
 laHc0DA+DxpyNJsxUUw3Q98XsffFjMt3bUQhLA5iSlM66pz2TfhuqX/0F
 SooPz+WlC7VGVJeUZpZy7cwE59gqJxAyyym92n0ZwlOf8qS1Hu6S6rwNP
 UWFQCFalFJQz+gn1Zb6oHrkxWkyMvKO/9/lYrRhK1wOahRUdtiCDngGFt g==;
X-CSE-ConnectionGUID: SZYE7tFyTbGUlqz25jfh3A==
X-CSE-MsgGUID: uhJywienTDmSEJRzAHR+lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="89341993"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="89341993"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:58:38 -0700
X-CSE-ConnectionGUID: japFqkGcQPuxDkcq0+fF5w==
X-CSE-MsgGUID: OoaZ3vGTTQ2UdVZge4yYfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="186437173"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:58:37 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 29 Oct 2025 16:58:34 +0200
Resent-Message-ID: <a83b03e548c882b97bcb7cf12978355343bef375@intel.com>
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 05/10] drm/i915/frontbuffer: Handle the dirtyfb cache
 flush inside intel_frontbuffer_flush()
In-Reply-To: <20251016185408.22735-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
 <20251016185408.22735-6-ville.syrjala@linux.intel.com>
Date: Wed, 29 Oct 2025 15:34:41 +0200
Message-ID: <563c7783ed3df2e81202be6e91eb846fcc022aea@intel.com>
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

On Thu, 16 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_bo_frontbuffer_flush_for_display() is a bit too low level
> to be direclty in the high level dirtyfb code. Move the calls

*directly

> into intel_frontbuffer_flush().
>
> There is a slight beahavioural change here in that we now skip

*behavioural

> the flush if the bo is not a current scanout buffer (front->bits
> =3D=3D 0). But that is fine as the flush will eventually happen via
> the fb pinning code if/when the bo becomes a scanout buffer again.
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Upgrade to

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c          | 1 -
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c | 4 +++-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index ab301c657395..088e194ecf69 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -2194,7 +2194,6 @@ static int intel_user_framebuffer_dirty(struct drm_=
framebuffer *fb,
>  	return ret;
>=20=20
>  flush:
> -	intel_bo_frontbuffer_flush_for_display(front);
>  	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index 5562801d2ea3..bdf8bfa7deb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -150,6 +150,9 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
>  {
>  	struct intel_display *display =3D to_intel_display(front->obj->dev);
>=20=20
> +	if (origin =3D=3D ORIGIN_DIRTYFB)
> +		intel_bo_frontbuffer_flush_for_display(front);
> +
>  	if (origin =3D=3D ORIGIN_CS) {
>  		spin_lock(&display->fb_tracking.lock);
>  		/* Filter out new bits since rendering started. */
> @@ -167,7 +170,6 @@ static void intel_frontbuffer_flush_work(struct work_=
struct *work)
>  	struct intel_frontbuffer *front =3D
>  		container_of(work, struct intel_frontbuffer, flush_work);
>=20=20
> -	intel_bo_frontbuffer_flush_for_display(front);
>  	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
>  	intel_frontbuffer_put(front);
>  }

--=20
Jani Nikula, Intel
