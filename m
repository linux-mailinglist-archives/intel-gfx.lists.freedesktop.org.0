Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF60A307B6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 10:54:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 285CA10E453;
	Tue, 11 Feb 2025 09:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mpanLiiy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D14FE10E453
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 09:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739267678; x=1770803678;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TmYG1uekAbl8leIz2hbwQ6i0/TluQIEXHBw0YCkForI=;
 b=mpanLiiykeh/kNsqyMXQXstzwBXVToYAS4Nm3I19O0GIxfnmToi4bB4E
 uAsAQ18IHS1q3+A3eJ3sPlihN9Eer/1wtEaAruiS1/wBphRJbq5PaQnXv
 tCj5C0S+RkGek0lzuCua+4ttA67Oir1riDIYdq62g+S3kOAiwZ94ruwFn
 yuRQwiy+G+G9mi0j5RYx+kzTdzXsvf9LWctuiSKqwV4IKVgEUCk/YNM6N
 Y3Kynwhfdt3hn3KlH/7IKBf0hVUZsi2oVEkHq8T/Rt/PbrCK42rymlEHE
 feCcabSE03bgPWoIRPOZYUTT3g68dq2bXql5XsK7ZyEa9wgpmsvWgXy6h w==;
X-CSE-ConnectionGUID: Dy0M6rA3RC61DEBMcSzMwA==
X-CSE-MsgGUID: kho3r/C8TKiw/yVmKrRARA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="27476472"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="27476472"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 01:54:35 -0800
X-CSE-ConnectionGUID: smsYaDnJS1eV6QxfPVOx+Q==
X-CSE-MsgGUID: h48ZpGfWR8CMjnwvMqrsiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112320779"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.29])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 01:54:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com
Subject: Re: [PATCH 4/4] drm/i915: Get rid of the _unchecked() runime pm stuff
In-Reply-To: <20250211000135.6096-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250211000135.6096-1-ville.syrjala@linux.intel.com>
 <20250211000135.6096-5-ville.syrjala@linux.intel.com>
Date: Tue, 11 Feb 2025 11:54:29 +0200
Message-ID: <87ed043iy2.fsf@intel.com>
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
> Seem to me that intel_runtime_pm.c already handles the
> CONFIG_DRM_I915_DEBUG_RUNTIME_PM=3Dn case perfectly fine
> internally, so I don't understand why it's being leaked into
> all the callers as well. Get rid of all this the externally
> visible _unchecked() stuff.

I think I've sent a similar patch in the past, and I think Imre
explained the rationale was that passing the wakeref around for
non-debug builds increases code size by 1k or something.

Yet this optimization makes the code harder to read.

I'm a bit divided on this one.

Cc: Imre


BR,
Jani.









>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 24 ---------------
>  .../drm/i915/display/intel_display_power.h    | 30 -------------------
>  drivers/gpu/drm/i915/intel_gvt.c              |  3 --
>  drivers/gpu/drm/i915/intel_runtime_pm.c       | 19 ------------
>  drivers/gpu/drm/i915/intel_runtime_pm.h       |  9 ------
>  5 files changed, 85 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index d93f43d145a9..20296ab450bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -809,7 +809,6 @@ intel_display_power_flush_work_sync(struct intel_disp=
lay *display)
>  	drm_WARN_ON(display->drm, power_domains->async_put_wakeref);
>  }
>=20=20
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  /**
>   * intel_display_power_put - release a power domain reference
>   * @display: display device instance
> @@ -829,29 +828,6 @@ void intel_display_power_put(struct intel_display *d=
isplay,
>  	__intel_display_power_put(display, domain);
>  	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
>  }
> -#else
> -/**
> - * intel_display_power_put_unchecked - release an unchecked power domain=
 reference
> - * @display: display device instance
> - * @domain: power domain to reference
> - *
> - * This function drops the power domain reference obtained by
> - * intel_display_power_get() and might power down the corresponding hard=
ware
> - * block right away if this is the last reference.
> - *
> - * This function is only for the power domain code's internal use to sup=
press wakeref
> - * tracking when the corresponding debug kconfig option is disabled, sho=
uld not
> - * be used otherwise.
> - */
> -void intel_display_power_put_unchecked(struct intel_display *display,
> -				       enum intel_display_power_domain domain)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
> -	__intel_display_power_put(display, domain);
> -	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
> -}
> -#endif
>=20=20
>  void
>  intel_display_power_get_in_set(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index a3a5c1be8bab..52b8a89b96eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -195,7 +195,6 @@ void __intel_display_power_put_async(struct intel_dis=
play *display,
>  				     intel_wakeref_t wakeref,
>  				     int delay_ms);
>  void intel_display_power_flush_work(struct intel_display *display);
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  void intel_display_power_put(struct intel_display *display,
>  			     enum intel_display_power_domain domain,
>  			     intel_wakeref_t wakeref);
> @@ -215,35 +214,6 @@ intel_display_power_put_async_delay(struct intel_dis=
play *display,
>  {
>  	__intel_display_power_put_async(display, domain, wakeref, delay_ms);
>  }
> -#else
> -void intel_display_power_put_unchecked(struct intel_display *display,
> -				       enum intel_display_power_domain domain);
> -
> -static inline void
> -intel_display_power_put(struct intel_display *display,
> -			enum intel_display_power_domain domain,
> -			intel_wakeref_t wakeref)
> -{
> -	intel_display_power_put_unchecked(display, domain);
> -}
> -
> -static inline void
> -intel_display_power_put_async(struct intel_display *display,
> -			      enum intel_display_power_domain domain,
> -			      intel_wakeref_t wakeref)
> -{
> -	__intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, -1);
> -}
> -
> -static inline void
> -intel_display_power_put_async_delay(struct intel_display *display,
> -				    enum intel_display_power_domain domain,
> -				    intel_wakeref_t wakeref,
> -				    int delay_ms)
> -{
> -	__intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, del=
ay_ms);
> -}
> -#endif
>=20=20
>  void
>  intel_display_power_get_in_set(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/inte=
l_gvt.c
> index dae9dce7d1b3..164be5b8acb3 100644
> --- a/drivers/gpu/drm/i915/intel_gvt.c
> +++ b/drivers/gpu/drm/i915/intel_gvt.c
> @@ -310,10 +310,7 @@ EXPORT_SYMBOL_NS_GPL(__intel_context_do_pin, "I915_G=
VT");
>  EXPORT_SYMBOL_NS_GPL(__intel_context_do_unpin, "I915_GVT");
>  EXPORT_SYMBOL_NS_GPL(intel_ring_begin, "I915_GVT");
>  EXPORT_SYMBOL_NS_GPL(intel_runtime_pm_get, "I915_GVT");
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  EXPORT_SYMBOL_NS_GPL(intel_runtime_pm_put, "I915_GVT");
> -#endif
> -EXPORT_SYMBOL_NS_GPL(intel_runtime_pm_put_unchecked, "I915_GVT");
>  EXPORT_SYMBOL_NS_GPL(intel_uncore_forcewake_for_reg, "I915_GVT");
>  EXPORT_SYMBOL_NS_GPL(intel_uncore_forcewake_get, "I915_GVT");
>  EXPORT_SYMBOL_NS_GPL(intel_uncore_forcewake_put, "I915_GVT");
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i9=
15/intel_runtime_pm.c
> index 8d9f4c410546..070bafb0a460 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -322,24 +322,6 @@ intel_runtime_pm_put_raw(struct intel_runtime_pm *rp=
m, intel_wakeref_t wref)
>  	__intel_runtime_pm_put(rpm, wref, false);
>  }
>=20=20
> -/**
> - * intel_runtime_pm_put_unchecked - release an unchecked runtime pm refe=
rence
> - * @rpm: the intel_runtime_pm structure
> - *
> - * This function drops the device-level runtime pm reference obtained by
> - * intel_runtime_pm_get() and might power down the corresponding
> - * hardware block right away if this is the last reference.
> - *
> - * This function exists only for historical reasons and should be avoide=
d in
> - * new code, as the correctness of its use cannot be checked. Always use
> - * intel_runtime_pm_put() instead.
> - */
> -void intel_runtime_pm_put_unchecked(struct intel_runtime_pm *rpm)
> -{
> -	__intel_runtime_pm_put(rpm, INTEL_WAKEREF_DEF, true);
> -}
> -
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  /**
>   * intel_runtime_pm_put - release a runtime pm reference
>   * @rpm: the intel_runtime_pm structure
> @@ -353,7 +335,6 @@ void intel_runtime_pm_put(struct intel_runtime_pm *rp=
m, intel_wakeref_t wref)
>  {
>  	__intel_runtime_pm_put(rpm, wref, true);
>  }
> -#endif
>=20=20
>  /**
>   * intel_runtime_pm_enable - enable runtime pm
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i9=
15/intel_runtime_pm.h
> index 7428bd8fa67f..6eee55e3ff0b 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -204,16 +204,7 @@ intel_wakeref_t intel_runtime_pm_get_raw(struct inte=
l_runtime_pm *rpm);
>  	for ((wf) =3D intel_runtime_pm_get_if_active(rpm); (wf); \
>  	     intel_runtime_pm_put((rpm), (wf)), (wf) =3D NULL)
>=20=20
> -void intel_runtime_pm_put_unchecked(struct intel_runtime_pm *rpm);
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  void intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t =
wref);
> -#else
> -static inline void
> -intel_runtime_pm_put(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
> -{
> -	intel_runtime_pm_put_unchecked(rpm);
> -}
> -#endif
>  void intel_runtime_pm_put_raw(struct intel_runtime_pm *rpm, intel_wakere=
f_t wref);
>=20=20
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)

--=20
Jani Nikula, Intel
