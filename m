Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AC8C063F4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 14:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A041710EA7D;
	Fri, 24 Oct 2025 12:27:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aseNNVnw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00EE010EA7D;
 Fri, 24 Oct 2025 12:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761308828; x=1792844828;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=abdSEF64NLkSC3PTVUCpJlidKNOHJVhMJmkp+ONgK70=;
 b=aseNNVnwyJh5BDvbx/j+I7NRaIu0rob8uDLOx3NKZQMAtaPYNLpA0PSw
 Bt50M8fneDBZ++WSii0UYFugfGetSH7zlLOv2evhGsliVOw3pfVH/Fd/V
 m38VlZK1utvNg6rh1fUaISAdTrWcUP92GUKtqd+pG9+8vKD3zv/eCka6M
 hPaEgjiDvV/iQ9qb2ewosuvvDkaDKEYqVpf2CS1mmEIyuXD/ohSipd3Vb
 l6DP+uEWJ+bUOsqCqp0Bi4PlqYJgPxbX0WVEE3wKOMkSYotlDd2S9MgGx
 VYpj+PFXrSzwJgQPa0u9okmNq21tu2cj2TDu7GbtE6mJoMkSDlcJ/VW2Q Q==;
X-CSE-ConnectionGUID: f8c5H6NKQfSbOeSsWSfm0w==
X-CSE-MsgGUID: 2iKggsoGSq6IAuAI4DbGjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63193506"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63193506"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:27:08 -0700
X-CSE-ConnectionGUID: NeKEx8giSQ+suUNxz8wmNA==
X-CSE-MsgGUID: b2nj19usRvy4abqzoF162Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="189665013"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:27:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 4/6] drm/xe/display: Runtime pm wrappers for display
 parent interface
In-Reply-To: <20251024093113.1119070-5-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251024093113.1119070-1-jouni.hogander@intel.com>
 <20251024093113.1119070-5-jouni.hogander@intel.com>
Date: Fri, 24 Oct 2025 15:27:03 +0300
Message-ID: <965d33e3a392f892b9f55733e0ca052932a1c867@intel.com>
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
> Implement runtime pm wrappers for xe driver and add them into display
> parent interface.
>
> v2:
>   - move xe_display_rpm_interface code into xe_display_rpm.c
>   - rename xe_rpm as xe_display_rpm
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c     |  3 +
>  drivers/gpu/drm/xe/display/xe_display_rpm.c | 76 +++++++++++++++++++++
>  drivers/gpu/drm/xe/display/xe_display_rpm.h | 11 +++
>  3 files changed, 90 insertions(+)
>  create mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.h
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 0e38c96eb6def..be7f3c7ef5c3f 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -35,7 +35,9 @@
>  #include "intel_hotplug.h"
>  #include "intel_opregion.h"
>  #include "skl_watermark.h"
> +#include "xe_display_rpm.h"
>  #include "xe_module.h"
> +#include "xe_pm.h"

That's probably leftovers from the previous version?

Anyway,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>=20=20
>  /* Ensure drm and display members are placed properly. */
>  INTEL_DISPLAY_MEMBER_STATIC_ASSERT(struct xe_device, drm, display);
> @@ -516,6 +518,7 @@ static void display_device_remove(struct drm_device *=
dev, void *arg)
>  }
>=20=20
>  static const struct intel_display_parent_interface parent =3D {
> +	.rpm =3D &xe_display_rpm_interface,
>  };
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/dr=
m/xe/display/xe_display_rpm.c
> index 3825376e98ccd..72a351e26a008 100644
> --- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
> +++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
> @@ -1,6 +1,8 @@
>  // SPDX-License-Identifier: MIT
>  /* Copyright =C2=A9 2025 Intel Corporation */
>=20=20
> +#include <drm/intel/display_parent_interface.h>
> +
>  #include "intel_display_core.h"
>  #include "intel_display_rpm.h"
>  #include "xe_device.h"
> @@ -71,3 +73,77 @@ void intel_display_rpm_assert_unblock(struct intel_dis=
play *display)
>  {
>  	/* FIXME */
>  }
> +
> +static struct ref_tracker *xe_display_rpm_get(const struct drm_device *d=
rm)
> +{
> +	return xe_pm_runtime_resume_and_get(to_xe_device(drm)) ? INTEL_WAKEREF_=
DEF : NULL;
> +}
> +
> +static struct ref_tracker *xe_display_rpm_get_raw(const struct drm_devic=
e *drm)
> +{
> +	return xe_display_rpm_get(drm);
> +}
> +
> +static struct ref_tracker *xe_display_rpm_get_if_in_use(const struct drm=
_device *drm)
> +{
> +	return xe_pm_runtime_get_if_in_use(to_xe_device(drm)) ? INTEL_WAKEREF_D=
EF : NULL;
> +}
> +
> +static struct ref_tracker *xe_display_rpm_get_noresume(const struct drm_=
device *drm)
> +{
> +	xe_pm_runtime_get_noresume(to_xe_device(drm));
> +
> +	return INTEL_WAKEREF_DEF;
> +}
> +
> +static void xe_display_rpm_put(const struct drm_device *drm, struct ref_=
tracker *wakeref)
> +{
> +	if (wakeref)
> +		xe_pm_runtime_put(to_xe_device(drm));
> +}
> +
> +static void xe_display_rpm_put_raw(const struct drm_device *drm, struct =
ref_tracker *wakeref)
> +{
> +	xe_display_rpm_put(drm, wakeref);
> +}
> +
> +static void xe_display_rpm_put_unchecked(const struct drm_device *drm)
> +{
> +	xe_pm_runtime_put(to_xe_device(drm));
> +}
> +
> +static bool xe_display_rpm_suspended(const struct drm_device *drm)
> +{
> +	struct xe_device *xe =3D to_xe_device(drm);
> +
> +	return pm_runtime_suspended(xe->drm.dev);
> +}
> +
> +static void xe_display_rpm_assert_held(const struct drm_device *drm)
> +{
> +	/* FIXME */
> +}
> +
> +static void xe_display_rpm_assert_block(const struct drm_device *drm)
> +{
> +	/* FIXME */
> +}
> +
> +static void xe_display_rpm_assert_unblock(const struct drm_device *drm)
> +{
> +	/* FIXME */
> +}
> +
> +const struct intel_display_rpm_interface xe_display_rpm_interface =3D {
> +	.get =3D xe_display_rpm_get,
> +	.get_raw =3D xe_display_rpm_get_raw,
> +	.get_if_in_use =3D xe_display_rpm_get_if_in_use,
> +	.get_noresume =3D xe_display_rpm_get_noresume,
> +	.put =3D xe_display_rpm_put,
> +	.put_raw =3D xe_display_rpm_put_raw,
> +	.put_unchecked =3D xe_display_rpm_put_unchecked,
> +	.suspended =3D xe_display_rpm_suspended,
> +	.assert_held =3D xe_display_rpm_assert_held,
> +	.assert_block =3D xe_display_rpm_assert_block,
> +	.assert_unblock =3D xe_display_rpm_assert_unblock
> +};
> diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.h b/drivers/gpu/dr=
m/xe/display/xe_display_rpm.h
> new file mode 100644
> index 0000000000000..0bf9d31e87c17
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/display/xe_display_rpm.h
> @@ -0,0 +1,11 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2025 Intel Corporation
> + */
> +
> +#ifndef _XE_DISPLAY_RPM_H_
> +#define _XE_DISPLAY_RPM_H_
> +
> +extern const struct intel_display_rpm_interface xe_display_rpm_interface;
> +
> +#endif /* _XE_DISPLAY_RPM_H_ */

--=20
Jani Nikula, Intel
