Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5011B79E77B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 14:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB55F10E4AB;
	Wed, 13 Sep 2023 12:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C99C10E4AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 12:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694606583; x=1726142583;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PXJZlQO118J2H5QARhCp+/mxJ6tIeR802fwEAiITu0o=;
 b=m3hKdGjU0hj5CXujCa81uewEP+iw2CEAOifOX4GRaRv7VzFTqVt2L3J6
 ktIu4J9usqSXgoVdjSFvoiZ4Nb9s3nYPH9WSv98xd8OgZEPzvdZYOBjUg
 fOp45j6XAoI4Y8C5PRGcjthbFcHWJ4tDnIputUnSQ2EKHCfE2MXvCBmA9
 UVwB+uJkGPYaIzIxJ0pQXiw2fTaMoHPpuj+G0C9Ht14cfUEKTbZa2YDvd
 +SyuM8GXj+bfl4VXqwP0MnxqncMo54elSnF7JqxW636Dhn4hT0Ji01D5w
 YXCbJXr/9MYbHO6jNsdj6jO/BbpBYgCL2oCxMKYVJgGo0GofTfJS5oYIW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="368904776"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="368904776"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 05:03:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="737472034"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="737472034"
Received: from lfgiles-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.138])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 05:03:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230913100430.3433969-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230913100430.3433969-1-jouni.hogander@intel.com>
Date: Wed, 13 Sep 2023 15:02:58 +0300
Message-ID: <87pm2mwaa5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove runtime suspended boolean
 from intel_runtime_pm struct
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

On Wed, 13 Sep 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> It's not necessary to carry separate suspended status information in
> intel_runtime_pm struct as this information is already in underlying devi=
ce
> structure. Remove it and use pm_runtime_suspended() to obtain suspended
> status information when needed.

I started wondering if this is racy, and my conclusion is that it's
"less" racy than the original. rpm->suspended gets toggled in the middle
of the suspend/resume sequences. So it could be halfway. Dunno if
anything *after* those toggles depends on the state having been changed
already; didn't find any. Maybe Imre has a better idea.

Also, pm_runtime_suspended() seems more reliable when suspend/resume
fails.

Acked-by: Jani Nikula <jani.nikula@intel.com>


>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  drivers/gpu/drm/i915/i915_driver.c                 | 3 ---
>  drivers/gpu/drm/i915/i915_gpu_error.c              | 2 +-
>  drivers/gpu/drm/i915/intel_runtime_pm.c            | 1 -
>  drivers/gpu/drm/i915/intel_runtime_pm.h            | 4 ++--
>  5 files changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 68cf5e6b0b46..889bb26009a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -216,7 +216,7 @@ bool __intel_display_power_is_enabled(struct drm_i915=
_private *dev_priv,
>  	struct i915_power_well *power_well;
>  	bool is_enabled;
>=20=20
> -	if (dev_priv->runtime_pm.suspended)
> +	if (pm_runtime_suspended(dev_priv->drm.dev))
>  		return false;
>=20=20
>  	is_enabled =3D true;
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index f8dbee7a5af7..cd98ee740976 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1569,8 +1569,6 @@ static int intel_runtime_suspend(struct device *kde=
v)
>  	if (root_pdev)
>  		pci_d3cold_disable(root_pdev);
>=20=20
> -	rpm->suspended =3D true;
> -
>  	/*
>  	 * FIXME: We really should find a document that references the arguments
>  	 * used below!
> @@ -1621,7 +1619,6 @@ static int intel_runtime_resume(struct device *kdev)
>  	disable_rpm_wakeref_asserts(rpm);
>=20=20
>  	intel_opregion_notify_adapter(dev_priv, PCI_D0);
> -	rpm->suspended =3D false;
>=20=20
>  	root_pdev =3D pcie_find_root_port(pdev);
>  	if (root_pdev)
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915=
/i915_gpu_error.c
> index 4008bb09fdb5..a60bab177c55 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1972,7 +1972,7 @@ static void capture_gen(struct i915_gpu_coredump *e=
rror)
>  	struct drm_i915_private *i915 =3D error->i915;
>=20=20
>  	error->wakelock =3D atomic_read(&i915->runtime_pm.wakeref_count);
> -	error->suspended =3D i915->runtime_pm.suspended;
> +	error->suspended =3D pm_runtime_suspended(i915->drm.dev);
>=20=20
>  	error->iommu =3D i915_vtd_active(i915);
>  	error->reset_count =3D i915_reset_count(&i915->gpu_error);
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i9=
15/intel_runtime_pm.c
> index 6d8e5e5c0cba..8743153fad87 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -652,7 +652,6 @@ void intel_runtime_pm_init_early(struct intel_runtime=
_pm *rpm)
>=20=20
>  	rpm->kdev =3D kdev;
>  	rpm->available =3D HAS_RUNTIME_PM(i915);
> -	rpm->suspended =3D false;
>  	atomic_set(&rpm->wakeref_count, 0);
>=20=20
>  	init_intel_runtime_pm_wakeref(rpm);
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i9=
15/intel_runtime_pm.h
> index 764b183ae452..f79cda7a2503 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -6,6 +6,7 @@
>  #ifndef __INTEL_RUNTIME_PM_H__
>  #define __INTEL_RUNTIME_PM_H__
>=20=20
> +#include <linux/pm_runtime.h>
>  #include <linux/types.h>
>=20=20
>  #include "intel_wakeref.h"
> @@ -43,7 +44,6 @@ struct intel_runtime_pm {
>  	atomic_t wakeref_count;
>  	struct device *kdev; /* points to i915->drm.dev */
>  	bool available;
> -	bool suspended;
>  	bool irqs_enabled;
>  	bool no_wakeref_tracking;
>=20=20
> @@ -110,7 +110,7 @@ intel_rpm_wakelock_count(int wakeref_count)
>  static inline void
>  assert_rpm_device_not_suspended(struct intel_runtime_pm *rpm)
>  {
> -	WARN_ONCE(rpm->suspended,
> +	WARN_ONCE(pm_runtime_suspended(rpm->kdev),
>  		  "Device suspended during HW access\n");
>  }

--=20
Jani Nikula, Intel
