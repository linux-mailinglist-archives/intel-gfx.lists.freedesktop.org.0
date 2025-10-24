Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A4FC0643C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 14:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9404010EA70;
	Fri, 24 Oct 2025 12:32:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TOcI2TAa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7AE510EA70;
 Fri, 24 Oct 2025 12:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761309121; x=1792845121;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=cjQaVauCBGy7brCbhA12bo6so85vJE5TmMIcfgSOkMc=;
 b=TOcI2TAajg50RdudmY/rP7Rc/FdNBup/tBO/24QTClEEyr9oCxDYRRNB
 5fRdq4vD0RtjGozK88Pm1+nOe7dkb5im4lUW4WfuDNVE9530+S6dlDtFK
 NOwdo8Jnmv7seIgzG4G6lm414gsJYCR6DpzwFLpB/a0yptxSDrwhqd/xq
 oyK07zBp83VoOV/d4oBwWI/Ea7bls9NbVkhmMV1STl9u9hddl+uvU1+N7
 NpJPCfZ4supaPAlV9WfKRrwEGYvk03cJ3eFWNpj6LVfSDYgs8qOiyBKq+
 GXTI4Q65YFV9t25SUN4/o59giH3q4bFyJDaFXAXoTZC+YxRlIquEgKUsA g==;
X-CSE-ConnectionGUID: sJxxdMfESb6ktdD5h/LqnA==
X-CSE-MsgGUID: an87iN2ESrmrBTcQ8bepvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63396529"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63396529"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:32:01 -0700
X-CSE-ConnectionGUID: Ul3oh0PdR4e1u3psgYdyYw==
X-CSE-MsgGUID: Ka7ah5RcQS+opXW8tbaCKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="184492879"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:31:59 -0700
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
Date: Fri, 24 Oct 2025 15:31:56 +0300
Message-ID: <8f4bb6d726a6363f125f2ea8bda7c44afe51ee7c@intel.com>
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

Oh, just an observation, you could also just point both .get and
.get_raw at xe_display_rpm_get in the struct initialization. Dunno
what's easier on the reader. *shrug*

Ditto for put.

BR,
Jani.

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
