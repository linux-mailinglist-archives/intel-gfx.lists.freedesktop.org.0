Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B983FC063D9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 14:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C8810EA7C;
	Fri, 24 Oct 2025 12:26:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EUpmTctX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D276C10EA7C;
 Fri, 24 Oct 2025 12:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761308772; x=1792844772;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RStL4J/lIGk/E5IteMU54Rr1Z0C8vaHPkROfF/ojM9M=;
 b=EUpmTctXl8fVlFghMyU+oF4zpjNnmHpz6h6093/Kx7PnCBoSyGQWLhqq
 MZ9H20XDF9vfYSsudTeb/4P/YVU4AHjHzafQcY4ZQAzURUVZM/xpTbNy+
 gAeKnB0skSrD1ZjegWj/f/WQNH96TuejP9aV4ptLvkzcr30/y2Yhv7A6w
 bbxvxOvcVQSqBvHf4C0lshFQJ+fDnKU9QaQbd0MOPtHFu7skMnWeqsGmA
 3jnBXsh24ifTP70K9Jn9d0dt9QV3ng0P4vZqM8PrO6tKK0wkoSq/qGd3m
 0Rzr1k00Yo05NwaO0Cf2nd6E3AHJ3lVp4ZYUtbtbj7d4n9uMi5n/ZMUKG g==;
X-CSE-ConnectionGUID: IDj7u7YuRu68Gql3O5ppvA==
X-CSE-MsgGUID: 4+QyAJJYSiO3rzCf35J6iA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63391271"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63391271"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:26:12 -0700
X-CSE-ConnectionGUID: bFfSmeYxQ7SL/eR54TO9lw==
X-CSE-MsgGUID: YmKGvPfaQvCX08vyZNT8rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="184131888"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:26:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 3/6] drm/i915/display: Runtime pm wrappers for
 display parent interface
In-Reply-To: <20251024093113.1119070-4-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251024093113.1119070-1-jouni.hogander@intel.com>
 <20251024093113.1119070-4-jouni.hogander@intel.com>
Date: Fri, 24 Oct 2025 15:26:07 +0300
Message-ID: <04c1acfe903a57791b792d0a6b2699df278e7ffc@intel.com>
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

On Fri, 24 Oct 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Implement runtime pm wrappers for i915 driver and add them into display
> parent interface.
>
> v2:
>   - move i915 display rpm interface implementation to intel_runtime_pm.c
>   - rename intel_display as i915_display
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_driver.c      |  1 +
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 77 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_runtime_pm.h |  3 +
>  3 files changed, 81 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index b295326eb4331..c97b767719176 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -740,6 +740,7 @@ static void i915_welcome_messages(struct drm_i915_pri=
vate *dev_priv)
>  }
>=20=20
>  static const struct intel_display_parent_interface parent =3D {
> +	.rpm =3D &i915_display_rpm_interface,
>  };
>=20=20
>  const struct intel_display_parent_interface *i915_driver_parent_interfac=
e(void)
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i9=
15/intel_runtime_pm.c
> index 7ce3e6de0c197..d11c2814b787b 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -29,6 +29,7 @@
>  #include <linux/pm_runtime.h>
>=20=20
>  #include <drm/drm_print.h>
> +#include <drm/intel/display_parent_interface.h>
>=20=20
>  #include "i915_drv.h"
>  #include "i915_trace.h"
> @@ -177,6 +178,82 @@ static intel_wakeref_t __intel_runtime_pm_get(struct=
 intel_runtime_pm *rpm,
>  	return track_intel_runtime_pm_wakeref(rpm);
>  }
>=20=20
> +static struct intel_runtime_pm *drm_to_rpm(const struct drm_device *drm)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(drm);
> +
> +	return &i915->runtime_pm;
> +}
> +
> +static struct ref_tracker *i915_display_rpm_get(const struct drm_device =
*drm)
> +{
> +	return intel_runtime_pm_get(drm_to_rpm(drm));
> +}
> +
> +static struct ref_tracker *i915_display_rpm_get_raw(const struct drm_dev=
ice *drm)
> +{
> +	return intel_runtime_pm_get_raw(drm_to_rpm(drm));
> +}
> +
> +static struct ref_tracker *i915_display_rpm_get_if_in_use(const struct d=
rm_device *drm)
> +{
> +	return intel_runtime_pm_get_if_in_use(drm_to_rpm(drm));
> +}
> +
> +static struct ref_tracker *i915_display_rpm_get_noresume(const struct dr=
m_device *drm)
> +{
> +	return intel_runtime_pm_get_noresume(drm_to_rpm(drm));
> +}
> +
> +static void i915_display_rpm_put(const struct drm_device *drm, struct re=
f_tracker *wakeref)
> +{
> +	intel_runtime_pm_put(drm_to_rpm(drm), wakeref);
> +}
> +
> +static void i915_display_rpm_put_raw(const struct drm_device *drm, struc=
t ref_tracker *wakeref)
> +{
> +	intel_runtime_pm_put_raw(drm_to_rpm(drm), wakeref);
> +}
> +
> +static void i915_display_rpm_put_unchecked(const struct drm_device *drm)
> +{
> +	intel_runtime_pm_put_unchecked(drm_to_rpm(drm));
> +}
> +
> +static bool i915_display_rpm_suspended(const struct drm_device *drm)
> +{
> +	return intel_runtime_pm_suspended(drm_to_rpm(drm));
> +}
> +
> +static void i915_display_rpm_assert_held(const struct drm_device *drm)
> +{
> +	assert_rpm_wakelock_held(drm_to_rpm(drm));
> +}
> +
> +static void i915_display_rpm_assert_block(const struct drm_device *drm)
> +{
> +	disable_rpm_wakeref_asserts(drm_to_rpm(drm));
> +}
> +
> +static void i915_display_rpm_assert_unblock(const struct drm_device *drm)
> +{
> +	enable_rpm_wakeref_asserts(drm_to_rpm(drm));
> +}
> +
> +const struct intel_display_rpm_interface i915_display_rpm_interface =3D {
> +	.get =3D i915_display_rpm_get,
> +	.get_raw =3D i915_display_rpm_get_raw,
> +	.get_if_in_use =3D i915_display_rpm_get_if_in_use,
> +	.get_noresume =3D i915_display_rpm_get_noresume,
> +	.put =3D i915_display_rpm_put,
> +	.put_raw =3D i915_display_rpm_put_raw,
> +	.put_unchecked =3D i915_display_rpm_put_unchecked,
> +	.suspended =3D i915_display_rpm_suspended,
> +	.assert_held =3D i915_display_rpm_assert_held,
> +	.assert_block =3D i915_display_rpm_assert_block,
> +	.assert_unblock =3D i915_display_rpm_assert_unblock
> +};
> +
>  /**
>   * intel_runtime_pm_get_raw - grab a raw runtime pm reference
>   * @rpm: the intel_runtime_pm structure
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i9=
15/intel_runtime_pm.h
> index 7428bd8fa67f4..ed6c43b17f9ae 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -14,6 +14,7 @@
>  struct device;
>  struct drm_i915_private;
>  struct drm_printer;
> +struct intel_display_rpm_interface;
>=20=20
>  /*
>   * This struct helps tracking the state needed for runtime PM, which put=
s the
> @@ -226,4 +227,6 @@ static inline void print_intel_runtime_pm_wakeref(str=
uct intel_runtime_pm *rpm,
>  }
>  #endif
>=20=20
> +extern const struct intel_display_rpm_interface i915_display_rpm_interfa=
ce;
> +
>  #endif /* __INTEL_RUNTIME_PM_H__ */

--=20
Jani Nikula, Intel
