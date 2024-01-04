Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 109188246C4
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 17:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C53B10E4EB;
	Thu,  4 Jan 2024 16:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCCE010E4E5;
 Thu,  4 Jan 2024 16:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704387500; x=1735923500;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=PW6dVuHna9fFsdBgYbxX3gEA1l21yRWnHtKOyWICTT8=;
 b=O1n+Un8b5TeB2udjdttwYH11SHPWISRn6uCyUo1CnZGy5sUC8f0QvcAd
 +s4Hc+FZYj4vA9n+EE1K59QzDN/o9M2DGGSiNcG0YJiOvw8ZS6EZCxGQn
 UvGgipgea1U7kkpkV1l8TBs6LEEdsseIITGINFpc3l/9bU5VgLgAhqFkY
 KoeAXhcu4lsKJ4LrTqUHwBGi8Rj2YGwCkukWnw4syRUrNc0C4bPSsHYfE
 sfLibKqXGoy8MsRnmcvjW2+mYuKtUYpCQzAKDEM45j11pNidkYak5oRK5
 SYtrPoa7JaA5EE1e9bHRTNoVA04ZSwgcBYAfrOyvO5UJlWIz5TgikwcCR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4076322"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4076322"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:58:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="22229424"
Received: from pdelarag-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.32])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:58:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v4 3/3] drm/xe: Use intel_wakeref_t in intel_runtime_pm
 functions
In-Reply-To: <20240104162411.56085-3-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240104162411.56085-1-jose.souza@intel.com>
 <20240104162411.56085-3-jose.souza@intel.com>
Date: Thu, 04 Jan 2024 18:58:14 +0200
Message-ID: <877ckpyr15.fsf@intel.com>
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

On Thu, 04 Jan 2024, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> Now intel_wakeref_t is a unsigned long and Xe KMD version of those
> functions should use the same type, so changing from bool to
> intel_wakeref_t.
>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>

I don't think it was ever a bool in i915.

Wish we'd get the ref tracker in xe too.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/=
gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 5d2a77b52db41..420eba0e4be00 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -162,18 +162,18 @@ static inline struct drm_i915_private *kdev_to_i915=
(struct device *kdev)
>=20=20
>  #include "intel_wakeref.h"
>=20=20
> -static inline bool intel_runtime_pm_get(struct xe_runtime_pm *pm)
> +static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm =
*pm)
>  {
>  	struct xe_device *xe =3D container_of(pm, struct xe_device, runtime_pm);
>=20=20
>  	if (xe_pm_runtime_get(xe) < 0) {
>  		xe_pm_runtime_put(xe);
> -		return false;
> +		return 0;
>  	}
> -	return true;
> +	return 1;
>  }
>=20=20
> -static inline bool intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *=
pm)
> +static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_r=
untime_pm *pm)
>  {
>  	struct xe_device *xe =3D container_of(pm, struct xe_device, runtime_pm);
>=20=20
> @@ -187,7 +187,7 @@ static inline void intel_runtime_pm_put_unchecked(str=
uct xe_runtime_pm *pm)
>  	xe_pm_runtime_put(xe);
>  }
>=20=20
> -static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, bool w=
akeref)
> +static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_=
wakeref_t wakeref)
>  {
>  	if (wakeref)
>  		intel_runtime_pm_put_unchecked(pm);

--=20
Jani Nikula, Intel
