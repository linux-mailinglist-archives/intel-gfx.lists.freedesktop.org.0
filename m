Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3847C4B9AA5
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 09:09:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F68610E9E2;
	Thu, 17 Feb 2022 08:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CA5F10E9E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 08:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645085364; x=1676621364;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Oxw68NUA6gb0fgg1wX/G3iNznK+YKMUZoZOdL59UY/Q=;
 b=GeTYep3kLd63LJ8R2B9tAPv2pSne6ICkhdx89vAzx58rcdYixFroLycf
 pDKhRdod5zH0dXSZCPayCDfvkXgFt/ftSdmG75MoovwPT8L7LAINgXmXY
 4Ce9JICx5FVJVmWytxQVjl/3frlihkxiTvpH41d9MtI+cuz+NB4mEL393
 2vku9MXp5cAOIStStGtlWDErJur2sx8f59l1i5iFf3LkhFc746DnDytUw
 b9goqmz5TsJBe6U5rcktMxghpvuD1usBtrYEggaULEhDi31UAiLPrX+Ds
 kzQtJ1Et498KX6GWfELKW20ZfwWVQK4lV+rguhwjIijrlhpd4tHP0aPyI Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250556992"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="250556992"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 00:09:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="545444328"
Received: from acushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.45])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 00:09:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20220215122957.2755529-2-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220215122957.2755529-1-jani.nikula@intel.com>
 <20220215122957.2755529-2-jani.nikula@intel.com>
Date: Thu, 17 Feb 2022 10:09:20 +0200
Message-ID: <874k4x52z3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/fbdev: hide struct
 intel_fbdev in intel_fbdev.c
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

On Tue, 15 Feb 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> As all access to struct intel_fbdev guts is nicely stowed away in
> intel_fbdev.c, we can hide the struct definition there too.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Pushed to din, thanks for the review.

BR,
Jani.

> ---
>  .../drm/i915/display/intel_display_types.h    | 21 -------------------
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 17 +++++++++++++++
>  2 files changed, 17 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 60e15226a8cb..ff9288eea541 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -26,7 +26,6 @@
>  #ifndef __INTEL_DISPLAY_TYPES_H__
>  #define __INTEL_DISPLAY_TYPES_H__
>=20=20
> -#include <linux/async.h>
>  #include <linux/i2c.h>
>  #include <linux/pm_qos.h>
>  #include <linux/pwm.h>
> @@ -38,7 +37,6 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_dsc.h>
>  #include <drm/drm_encoder.h>
> -#include <drm/drm_fb_helper.h>
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_rect.h>
> @@ -145,25 +143,6 @@ struct intel_framebuffer {
>  	struct i915_address_space *dpt_vm;
>  };
>=20=20
> -struct intel_fbdev {
> -	struct drm_fb_helper helper;
> -	struct intel_framebuffer *fb;
> -	struct i915_vma *vma;
> -	unsigned long vma_flags;
> -	async_cookie_t cookie;
> -	int preferred_bpp;
> -
> -	/* Whether or not fbdev hpd processing is temporarily suspended */
> -	bool hpd_suspended : 1;
> -	/* Set when a hotplug was received while HPD processing was
> -	 * suspended
> -	 */
> -	bool hpd_waiting : 1;
> -
> -	/* Protects hpd_suspended */
> -	struct mutex hpd_lock;
> -};
> -
>  enum intel_hotplug_state {
>  	INTEL_HOTPLUG_UNCHANGED,
>  	INTEL_HOTPLUG_CHANGED,
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm=
/i915/display/intel_fbdev.c
> index 0f188cd28f2d..fd5bc7acf08d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -50,6 +50,23 @@
>  #include "intel_fbdev.h"
>  #include "intel_frontbuffer.h"
>=20=20
> +struct intel_fbdev {
> +	struct drm_fb_helper helper;
> +	struct intel_framebuffer *fb;
> +	struct i915_vma *vma;
> +	unsigned long vma_flags;
> +	async_cookie_t cookie;
> +	int preferred_bpp;
> +
> +	/* Whether or not fbdev hpd processing is temporarily suspended */
> +	bool hpd_suspended: 1;
> +	/* Set when a hotplug was received while HPD processing was suspended */
> +	bool hpd_waiting: 1;
> +
> +	/* Protects hpd_suspended */
> +	struct mutex hpd_lock;
> +};
> +
>  static struct intel_frontbuffer *to_frontbuffer(struct intel_fbdev *ifbd=
ev)
>  {
>  	return ifbdev->fb->frontbuffer;

--=20
Jani Nikula, Intel Open Source Graphics Center
