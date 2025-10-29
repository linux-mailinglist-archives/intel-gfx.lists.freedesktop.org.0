Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5718CC1B787
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 15:58:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E10D310E7E7;
	Wed, 29 Oct 2025 14:58:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WK+yCJzf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D3610E7E7
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Oct 2025 14:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761749901; x=1793285901;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xu2O140RiAmE8Wg2/X4t1CZETiXbH1xGWk1ZaBHcZhU=;
 b=WK+yCJzfBhoTB5S08d4m3G2UUbZ8lJ3ELpMD47Ns5IuTIV+P7rVpa5TS
 22wOvEzHt1rXPXLb9h7zJs1IldsJCl+zjFVs+zn3Yo7EW2FAzfnMMV5B1
 zRhpeVJl/vhuXFA7QKtpx8qQwTFhWOmO8e7itevcMPTZcaUzUbuQUQ7jz
 9TFNRU5IYMOHOtJhx7oP5VikeXhkDIeIH89C7gG4ANxfjTvhTeXuX34r/
 BVBWSNJUqN7hpeKnkH+dmq7DGeEVSw68lNsMQ5IeyB5WGpMyf32T0DuTz
 q2HymTCgMPdz6gqgpkiE48TUGzPNT67M7LColtZguejfrgkgB0MVrJ6zb g==;
X-CSE-ConnectionGUID: VA22ePm/RPCINd4bD0bX3Q==
X-CSE-MsgGUID: +AVfTMOfRaqp4qhd4d/TAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="81294152"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="81294152"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:58:21 -0700
X-CSE-ConnectionGUID: axbBwaBpStG1GKze9OGfmQ==
X-CSE-MsgGUID: xthZPxZoRPyKIS83/59DiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="216347047"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 07:58:20 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 29 Oct 2025 16:58:17 +0200
Resent-Message-ID: <c0dfcb8f43b73ad883f4a7d364dba41c3aa4946a@intel.com>
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 03/10] drm/i915/frontbuffer: Nuke
 intel_frontbuffer_flip_{prepare,complete}()
In-Reply-To: <20251016185408.22735-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
 <20251016185408.22735-4-ville.syrjala@linux.intel.com>
Date: Wed, 29 Oct 2025 15:32:52 +0200
Message-ID: <7f69f0d94b26c26931a59d348a0533a27ab55e09@intel.com>
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
> Get rid of intel_frontbuffer_flip_{prepare,complete}() (and
> the accompanying flip_bits) since they are unused.
>
> I suppose these could technically provide a minor optiimization

*optimization

> over intel_frontbuffer_flip() in that the flush would get
> deferred further if new rendering were to sneak in between the
> prepare() and complete() calls. But for correctness it should
> not make any difference since another flush will anyway follow
> once the new rendering finishes.
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  4 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  3 --
>  .../gpu/drm/i915/display/intel_frontbuffer.c  | 46 -------------------
>  .../gpu/drm/i915/display/intel_frontbuffer.h  |  4 --
>  4 files changed, 1 insertion(+), 56 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index df4da52cbdb3..fa43636b89fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -144,11 +144,9 @@ struct intel_frontbuffer_tracking {
>  	spinlock_t lock;
>=20=20
>  	/*
> -	 * Tracking bits for delayed frontbuffer flushing du to gpu activity or
> -	 * scheduled flips.
> +	 * Tracking bits for delayed frontbuffer flushing due to gpu activity.
>  	 */
>  	unsigned busy_bits;
> -	unsigned flip_bits;
>  };
>=20=20
>  struct intel_hotplug {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 10dddec3796f..4e8397504774 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -76,9 +76,6 @@ static int i915_frontbuffer_tracking(struct seq_file *m=
, void *unused)
>  	seq_printf(m, "FB tracking busy bits: 0x%08x\n",
>  		   display->fb_tracking.busy_bits);
>=20=20
> -	seq_printf(m, "FB tracking flip bits: 0x%08x\n",
> -		   display->fb_tracking.flip_bits);
> -
>  	spin_unlock(&display->fb_tracking.lock);
>=20=20
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index 73ed28ac9573..53e93985c7d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -102,51 +102,6 @@ static void frontbuffer_flush(struct intel_display *=
display,
>  	intel_fbc_flush(display, frontbuffer_bits, origin);
>  }
>=20=20
> -/**
> - * intel_frontbuffer_flip_prepare - prepare asynchronous frontbuffer flip
> - * @display: display device
> - * @frontbuffer_bits: frontbuffer plane tracking bits
> - *
> - * This function gets called after scheduling a flip on @obj. The actual
> - * frontbuffer flushing will be delayed until completion is signalled wi=
th
> - * intel_frontbuffer_flip_complete. If an invalidate happens in between =
this
> - * flush will be cancelled.
> - *
> - * Can be called without any locks held.
> - */
> -void intel_frontbuffer_flip_prepare(struct intel_display *display,
> -				    unsigned frontbuffer_bits)
> -{
> -	spin_lock(&display->fb_tracking.lock);
> -	display->fb_tracking.flip_bits |=3D frontbuffer_bits;
> -	/* Remove stale busy bits due to the old buffer. */
> -	display->fb_tracking.busy_bits &=3D ~frontbuffer_bits;
> -	spin_unlock(&display->fb_tracking.lock);
> -}
> -
> -/**
> - * intel_frontbuffer_flip_complete - complete asynchronous frontbuffer f=
lip
> - * @display: display device
> - * @frontbuffer_bits: frontbuffer plane tracking bits
> - *
> - * This function gets called after the flip has been latched and will co=
mplete
> - * on the next vblank. It will execute the flush if it hasn't been cance=
lled yet.
> - *
> - * Can be called without any locks held.
> - */
> -void intel_frontbuffer_flip_complete(struct intel_display *display,
> -				     unsigned frontbuffer_bits)
> -{
> -	spin_lock(&display->fb_tracking.lock);
> -	/* Mask any cancelled flips. */
> -	frontbuffer_bits &=3D display->fb_tracking.flip_bits;
> -	display->fb_tracking.flip_bits &=3D ~frontbuffer_bits;
> -	spin_unlock(&display->fb_tracking.lock);
> -
> -	if (frontbuffer_bits)
> -		frontbuffer_flush(display, frontbuffer_bits, ORIGIN_FLIP);
> -}
> -
>  /**
>   * intel_frontbuffer_flip - synchronous frontbuffer flip
>   * @display: display device
> @@ -178,7 +133,6 @@ void __intel_fb_invalidate(struct intel_frontbuffer *=
front,
>  	if (origin =3D=3D ORIGIN_CS) {
>  		spin_lock(&display->fb_tracking.lock);
>  		display->fb_tracking.busy_bits |=3D frontbuffer_bits;
> -		display->fb_tracking.flip_bits &=3D ~frontbuffer_bits;
>  		spin_unlock(&display->fb_tracking.lock);
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.h
> index 2fee12eaf9b6..293c2d0152d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
> @@ -68,10 +68,6 @@ struct intel_frontbuffer {
>  	GENMASK(INTEL_FRONTBUFFER_BITS_PER_PIPE * ((pipe) + 1) - 1,	\
>  		INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))
>=20=20
> -void intel_frontbuffer_flip_prepare(struct intel_display *display,
> -				    unsigned frontbuffer_bits);
> -void intel_frontbuffer_flip_complete(struct intel_display *display,
> -				     unsigned frontbuffer_bits);
>  void intel_frontbuffer_flip(struct intel_display *display,
>  			    unsigned frontbuffer_bits);

--=20
Jani Nikula, Intel
