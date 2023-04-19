Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D51C06E7DCE
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:13:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D28B10E9EF;
	Wed, 19 Apr 2023 15:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB8B610E078
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681917225; x=1713453225;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Q7ymLkiecqzvEs1xBj7fYjZ6ogO+1Z30RqU8i6mieTQ=;
 b=NUjtYZZfbL9hVVikBQkB5CDQHAqk3aD6XjHQn6eoKJKa4HUWUgyvRrjy
 AJt9/8V7ljYowtDNKgxrElSKq4cVYXMAW8ybM93ewPan6YmKFWnmUS+87
 a5fZKNu2R2h6okWAMbeIxuyOJFAhcX5mKQqOrbnrhmx5lAKj6SvBV3hnS
 yM/ybPWERKW8et/wEMBYqlVnKf0n/T4ZECjhf+wXxvjPU+OD5dN80BSRZ
 pA4JTON3jwoTyIVLSTd0dyodu55eR74biKHCTSXRXQQ90L7mNT3UGLPh7
 ZQ1Pe33KTRITqOQpNpcmIjYOx69Xsbwu8+0BUXVc/iKgBhFfcKJIpkbw3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="329649642"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="329649642"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:13:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="815653688"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="815653688"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:13:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418175528.13117-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-3-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:13:40 +0300
Message-ID: <87fs8vzyzf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/15] drm/i915: Relocate
 VBLANK_EVASION_TIME_US
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

On Tue, 18 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move the VBLANK_EVASION_TIME_US definition to a slightly
> better place.

I wish this could be hidden in intel_crtc.c but this is an improvement.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.h            | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_sprite.h          | 10 ----------
>  3 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/=
i915/display/intel_crtc.h
> index 73077137fb99..51a4c8df9e65 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -16,6 +16,16 @@ struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>=20=20
> +/*
> + * FIXME: We should instead only take spinlocks once for the entire upda=
te
> + * instead of once per mmio.
> + */
> +#if IS_ENABLED(CONFIG_PROVE_LOCKING)
> +#define VBLANK_EVASION_TIME_US 250
> +#else
> +#define VBLANK_EVASION_TIME_US 100
> +#endif
> +
>  int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mod=
e,
>  			     int usecs);
>  u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_stat=
e);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index abd16a2b1f7a..e72288662f02 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -12,6 +12,7 @@
>  #include "i915_debugfs.h"
>  #include "i915_irq.h"
>  #include "i915_reg.h"
> +#include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_crtc_state_dump.h"
>  #include "intel_display_debugfs.h"
> @@ -30,7 +31,6 @@
>  #include "intel_panel.h"
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
> -#include "intel_sprite.h"
>  #include "intel_wm.h"
>=20=20
>  static inline struct drm_i915_private *node_to_i915(struct drm_info_node=
 *node)
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/dr=
m/i915/display/intel_sprite.h
> index 4635c7ad23f9..91c6dca342b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.h
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.h
> @@ -16,16 +16,6 @@ struct intel_crtc_state;
>  struct intel_plane_state;
>  enum pipe;
>=20=20
> -/*
> - * FIXME: We should instead only take spinlocks once for the entire upda=
te
> - * instead of once per mmio.
> - */
> -#if IS_ENABLED(CONFIG_PROVE_LOCKING)
> -#define VBLANK_EVASION_TIME_US 250
> -#else
> -#define VBLANK_EVASION_TIME_US 100
> -#endif
> -
>  struct intel_plane *intel_sprite_plane_create(struct drm_i915_private *d=
ev_priv,
>  					      enum pipe pipe, int plane);
>  int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,

--=20
Jani Nikula, Intel Open Source Graphics Center
