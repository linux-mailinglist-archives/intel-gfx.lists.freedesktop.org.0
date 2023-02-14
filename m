Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D33A69639F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 13:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9B910E0D6;
	Tue, 14 Feb 2023 12:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E9910E0DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 12:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676378210; x=1707914210;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wmkIxBzFpNe++UFIqog/L9nTEE0kWrWgrZgSv2VOStA=;
 b=BnDTR7SLAMEvHVIiSCo8RC+WERqlmYaebPm3tpxNVCk0i1RSwVUfZ5rS
 Faud3epitTXr6EGNw627CxMbprRYCOj6kURp0/BZPOMs13MCPiJYzNGb8
 TSgECOn6GWbot0tOCBGAyuVMuAPr+Fo+6Rs/3q+h4st+wYsM74tNVkBgY
 Zty1GU7uPJyup/liUka1MgKRUh5+EVZ4vFU7MU73xd4wRiJ3ePHJVYr5r
 vAoHIOic4mgOGjbgyWWv1rIf4JSIe5sq99sajrppYdXtfZfi64mZQtapx
 fMnUeh6bu1CGNtsd3K2wHsgJvinH0KE0VZP3lLto4ETodG+R02xBao/W8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="395765090"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="395765090"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 04:36:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="737871155"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="737871155"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 04:36:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230207140557.18164-1-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230207140557.18164-1-swati2.sharma@intel.com>
Date: Tue, 14 Feb 2023 14:36:42 +0200
Message-ID: <87cz6cs9t1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/selftest: Add pcode
 selftest
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 07 Feb 2023, Swati Sharma <swati2.sharma@intel.com> wrote:
> From: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
>
> Include pcode selftest for display to validate QGV points read.
> Failure of this selftest indicates a bad firmware rather than regular
> display issue.
>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  3 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       |  4 ++
>  .../drm/i915/display/selftests/selftest_bw.c  | 54 +++++++++++++++++++
>  .../i915/display/selftests/selftest_display.c | 18 +++++++
>  .../i915/display/selftests/selftest_display.h |  6 +++
>  .../drm/i915/selftests/i915_live_selftests.h  |  1 +
>  6 files changed, 85 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/i915/display/selftests/selftest_bw.c
>  create mode 100644 drivers/gpu/drm/i915/display/selftests/selftest_displ=
ay.c
>  create mode 100644 drivers/gpu/drm/i915/display/selftests/selftest_displ=
ay.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 918470a04591..aa7d34b3f71c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -350,7 +350,8 @@ i915-$(CONFIG_DRM_I915_SELFTEST) +=3D \
>  	selftests/igt_mmap.o \
>  	selftests/igt_reset.o \
>  	selftests/igt_spinner.o \
> -	selftests/librapl.o
> +	selftests/librapl.o \
> +	display/selftests/selftest_display.o

I think we'll want to start adding display selftests under a separate
Kconfig, and in separate build lists. CONFIG_DRM_I915_DISPLAY_SELFTEST
maybe.

>=20=20
>  # virtual gpu code
>  i915-y +=3D i915_vgpu.o
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 202321ffbe2a..b0bfe04f2835 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -1211,3 +1211,7 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
>=20=20
>  	return 0;
>  }
> +
> +#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> +#include "selftests/selftest_bw.c"
> +#endif

Why here, why bw?

> diff --git a/drivers/gpu/drm/i915/display/selftests/selftest_bw.c b/drive=
rs/gpu/drm/i915/display/selftests/selftest_bw.c
> new file mode 100644
> index 000000000000..69d52201bd9b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/selftests/selftest_bw.c

bw?

> @@ -0,0 +1,54 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2020 Intel Corporation

Year.

> + */
> +
> +#include "display/intel_bw.h"
> +#include "i915_drv.h"
> +#include "i915_selftest.h"
> +#include "soc/intel_dram.h"
> +#include "selftest_display.h"

Please keep these sorted.

> +
> +/**
> + * intel_pcode_read_qgv_points_read_test - Test QGV point reads from pco=
de
> + * @arg: i915 device instance
> + *
> + * Return 0 on success and error on fail and when dclk is zero
> + */
> +int intel_pcode_read_qgv_points_test(void *arg)
> +{
> +	struct drm_i915_private *i915 =3D arg;
> +	struct intel_qgv_info qi;
> +	struct intel_qgv_point qp;
> +	int i, ret;
> +	bool fail =3D false;
> +	intel_wakeref_t wakeref;
> +
> +	if (DISPLAY_VER(i915) < 11) {
> +		drm_info(&i915->drm, "QGV doesn't support, skipping\n");
> +		return 0;
> +	}
> +
> +	with_intel_runtime_pm(i915->uncore.rpm, wakeref)
> +		intel_dram_detect(i915);
> +
> +	qi.num_points =3D i915->dram_info.num_qgv_points;

Not entirely happy about sprinkling new dram_info access outside of
intel_dram.c. I'd rather we moved in the other direction. So maybe the
whole thing should be in intel_dram.

Which kind of makes this selftest not about display too, but rather the
"soc" stuff.

> +
> +	for (i =3D 0; i < qi.num_points; i++) {
> +		ret =3D intel_read_qgv_point_info(i915, &qp, i);
> +		if (ret) {
> +			drm_err(&i915->drm, "Pcode failed to read qgv point %d\n", i);
> +			fail =3D true;
> +		}
> +
> +		if (qp.dclk =3D=3D 0) {
> +			drm_err(&i915->drm, "DCLK set to 0 for qgv point %d\n", i);
> +			fail =3D true;
> +		}
> +	}
> +
> +	if (fail)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/selftests/selftest_display.c b/=
drivers/gpu/drm/i915/display/selftests/selftest_display.c
> new file mode 100644
> index 000000000000..1663c69f9ddc
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/selftests/selftest_display.c
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2020 Intel Corporation

Year.

> + */
> +
> +#include "i915_drv.h"
> +#include "i915_selftest.h"
> +
> +#include "selftest_display.h"
> +
> +int intel_display_live_selftests(struct drm_i915_private *i915)

What's with the "live" here?

> +{
> +	static const struct i915_subtest tests[] =3D {
> +		SUBTEST(intel_pcode_read_qgv_points_test),
> +	};
> +
> +	return i915_subtests(tests, i915);
> +}
> diff --git a/drivers/gpu/drm/i915/display/selftests/selftest_display.h b/=
drivers/gpu/drm/i915/display/selftests/selftest_display.h
> new file mode 100644
> index 000000000000..c8d80d5945bb
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/selftests/selftest_display.h
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2020 Intel Corporation

Year.

> + */
> +
> +int intel_pcode_read_qgv_points_test(void *arg);
> diff --git a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h b/drive=
rs/gpu/drm/i915/selftests/i915_live_selftests.h
> index 5aee6c9a8295..8f980483cca8 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
> +++ b/drivers/gpu/drm/i915/selftests/i915_live_selftests.h

We probably don't want display tests in this file either.

> @@ -42,6 +42,7 @@ selftest(gem_contexts, i915_gem_context_live_selftests)
>  selftest(client, i915_gem_client_blt_live_selftests)
>  selftest(gem_migrate, i915_gem_migrate_live_selftests)
>  selftest(reset, intel_reset_live_selftests)
> +selftest(display, intel_display_live_selftests)
>  selftest(memory_region, intel_memory_region_live_selftests)
>  selftest(hangcheck, intel_hangcheck_live_selftests)
>  selftest(execlists, intel_execlists_live_selftests)

--=20
Jani Nikula, Intel Open Source Graphics Center
