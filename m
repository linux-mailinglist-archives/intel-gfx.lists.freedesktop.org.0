Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C30FCC06403
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 14:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B533210E1FF;
	Fri, 24 Oct 2025 12:28:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UA4/LvmZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8981210E1E9;
 Fri, 24 Oct 2025 12:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761308903; x=1792844903;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=5M5Y7dE7JCySjQZ4Y/tRmRcGNWNudW229mwgXYAGuB0=;
 b=UA4/LvmZ07mOVnygp3EkaHNIjnNuD8JU9ZL/xKoLRgFKiVMWRDAtUrGg
 HFNiJZtPxLiP/urPl5Qcj+V5UthQhf2JOjePyFQ8LMjKaPOWGTN1OZt7z
 BwIIxFzp4OOlHWJ7QxZ1vBZEMYQ/gripyAT+K6JOocVqOrVWeoFMIDXR/
 Sj2tz9lxcQEHaS7jyThf3LpUIxyZu60LExp9kHRMQumr2Hq8EL6iLwgs2
 8+F3TKde2b7hfWZPKxZ5GCwSmvO6dMMW3l4TpssOH62dODMGzdBKerbnU
 lOY2g6Rd7upCqJPQluAOjHUrwjUqmK3uB0+Dostfs8hptqkFxcQsa6Iwu A==;
X-CSE-ConnectionGUID: 2T/07ERtS3+qHsaPMZKGwQ==
X-CSE-MsgGUID: NIX96WVQRhut/bstoi3Hnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63396296"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63396296"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:28:22 -0700
X-CSE-ConnectionGUID: VKehlrlJQQq8Vciz7oQkYw==
X-CSE-MsgGUID: +OCuDPB6SlWbO+mdhGcZXw==
X-ExtLoop1: 1
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 05:28:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 5/6] drm/i915/display: Use display parent interface
 for i915 runtime pm
In-Reply-To: <20251024093113.1119070-6-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251024093113.1119070-1-jouni.hogander@intel.com>
 <20251024093113.1119070-6-jouni.hogander@intel.com>
Date: Fri, 24 Oct 2025 15:28:17 +0300
Message-ID: <73d071ce0766a83fc168e480fd2157284b98314c@intel.com>
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
> Start using display parent interface for i915 runtime pm. Doing the same
> for xe is done in coming changes.
>
> v2:
>   - use <> when including drm/intel/display_parent_interface.h
>   - drop checks for validity of rpm function pointers
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_rpm.c  | 32 ++++++++-----------
>  1 file changed, 13 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.c b/drivers/g=
pu/drm/i915/display/intel_display_rpm.c
> index 56c4024201c16..3a6b86842b496 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_rpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_rpm.c
> @@ -1,69 +1,63 @@
>  // SPDX-License-Identifier: MIT
>  /* Copyright =C2=A9 2025 Intel Corporation */
>=20=20
> +#include <drm/intel/display_parent_interface.h>
> +
>  #include "i915_drv.h"

I'm guessing you could remove this too.

Anyway,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>  #include "intel_display_core.h"
>  #include "intel_display_rpm.h"
> -#include "intel_runtime_pm.h"
> -
> -static struct intel_runtime_pm *display_to_rpm(struct intel_display *dis=
play)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
> -	return &i915->runtime_pm;
> -}
>=20=20
>  struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *disp=
lay)
>  {
> -	return intel_runtime_pm_get_raw(display_to_rpm(display));
> +	return display->parent->rpm->get_raw(display->drm);
>  }
>=20=20
>  void intel_display_rpm_put_raw(struct intel_display *display, struct ref=
_tracker *wakeref)
>  {
> -	intel_runtime_pm_put_raw(display_to_rpm(display), wakeref);
> +	display->parent->rpm->put_raw(display->drm, wakeref);
>  }
>=20=20
>  struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
>  {
> -	return intel_runtime_pm_get(display_to_rpm(display));
> +	return display->parent->rpm->get(display->drm);
>  }
>=20=20
>  struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display=
 *display)
>  {
> -	return intel_runtime_pm_get_if_in_use(display_to_rpm(display));
> +	return display->parent->rpm->get_if_in_use(display->drm);
>  }
>=20=20
>  struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display =
*display)
>  {
> -	return intel_runtime_pm_get_noresume(display_to_rpm(display));
> +	return display->parent->rpm->get_noresume(display->drm);
>  }
>=20=20
>  void intel_display_rpm_put(struct intel_display *display, struct ref_tra=
cker *wakeref)
>  {
> -	intel_runtime_pm_put(display_to_rpm(display), wakeref);
> +	display->parent->rpm->put(display->drm, wakeref);
>  }
>=20=20
>  void intel_display_rpm_put_unchecked(struct intel_display *display)
>  {
> -	intel_runtime_pm_put_unchecked(display_to_rpm(display));
> +	display->parent->rpm->put_unchecked(display->drm);
>  }
>=20=20
>  bool intel_display_rpm_suspended(struct intel_display *display)
>  {
> -	return intel_runtime_pm_suspended(display_to_rpm(display));
> +	return display->parent->rpm->suspended(display->drm);
>  }
>=20=20
>  void assert_display_rpm_held(struct intel_display *display)
>  {
> -	assert_rpm_wakelock_held(display_to_rpm(display));
> +	display->parent->rpm->assert_held(display->drm);
>  }
>=20=20
>  void intel_display_rpm_assert_block(struct intel_display *display)
>  {
> -	disable_rpm_wakeref_asserts(display_to_rpm(display));
> +	display->parent->rpm->assert_block(display->drm);
>  }
>=20=20
>  void intel_display_rpm_assert_unblock(struct intel_display *display)
>  {
> -	enable_rpm_wakeref_asserts(display_to_rpm(display));
> +	display->parent->rpm->assert_unblock(display->drm);
>  }

--=20
Jani Nikula, Intel
