Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7735CBFB2DD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 11:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0835410E72E;
	Wed, 22 Oct 2025 09:35:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yz685WRB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08C310E723;
 Wed, 22 Oct 2025 09:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761125737; x=1792661737;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nVB/egPlMRP9dq7pu1+2g6EgG5CpJ/DMQeCO/3W5Gh0=;
 b=Yz685WRB/zirnvhe5VtH5hI3mSsxvh91yslSZnLmlq6KyzeWUQtdapA7
 /9J+v3ymN9nHsYqunKXSx+vFlbZokj4xvm6H3VRj+CFLgA/M+/K78FvDt
 En0LkAo+/SU088mtbRJtwcCVZlOlVYnpEAto8Nx/4qhL8KOM+vueWiap0
 ZoNKFFs7qC+3D61fCAqQyDLM9a0fSqvZdu2BS4xjbR7hM9V3rmeuVqvgO
 yeyZVipj/XAUisFnSoWvfoXDEK81c5hs9TtwxFuKdtxw97NyZPo3tcwrY
 vfdDKA9/omfbhrgjKQ5YVd0DFbO02NTlgN9yNIBlmaLnvoHZN1gG0ciUO Q==;
X-CSE-ConnectionGUID: GAPuFtbOQaiRhSfhyRtauw==
X-CSE-MsgGUID: 3xD8LxCQTPON0rpRdEkggw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80890635"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="80890635"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:35:36 -0700
X-CSE-ConnectionGUID: Uxp4X80eQ4SXLfxzK/18iQ==
X-CSE-MsgGUID: nQg0RbalSOGqiEAJZZHYhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="207500394"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:35:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 5/6] drm/i915/display: Use display parent interface for
 i915 runtime pm
In-Reply-To: <20251022085548.876150-6-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251022085548.876150-1-jouni.hogander@intel.com>
 <20251022085548.876150-6-jouni.hogander@intel.com>
Date: Wed, 22 Oct 2025 12:35:31 +0300
Message-ID: <1a12b894e6e003710bac9a69b4a3f8c3c25c9540@intel.com>
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

On Wed, 22 Oct 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Start using  display parent interface for i915 runtime pm. Doing the same
> for xe is done in coming changes.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_rpm.c  | 43 +++++++++++--------
>  1 file changed, 24 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.c b/drivers/g=
pu/drm/i915/display/intel_display_rpm.c
> index 56c4024201c16..622646814e0bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_rpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_rpm.c
> @@ -4,66 +4,71 @@
>  #include "i915_drv.h"
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
> +#include "drm/intel/display_parent_interface.h"

This should use <> for include, as it's in include/drm, and placed
appropriately in the include list.

>=20=20
>  struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *disp=
lay)
>  {
> -	return intel_runtime_pm_get_raw(display_to_rpm(display));
> +	return display->parent->rpm && display->parent->rpm->get_raw ?
> +		display->parent->rpm->get_raw(display->drm) : NULL;

I think we should require and assume ->rpm is set, and also all the
function pointers are set. It should be a rare documented exception if
something can be NULL.

I'm a bit divided about keeping the wrappers for calling the
interface. If we assume the pointers are valid, we could switch to
calling e.g.

        - wakeref =3D intel_display_rpm_get_raw();
	+ wakeref =3D display->parent->rpm->get_raw(display->drm);

but since that's a bunch of churn, it's okay to leave that be for
now. We can decide on it later. But let's not have all those NULL
checks.

BR,
Jani.

>  }
>=20=20
>  void intel_display_rpm_put_raw(struct intel_display *display, struct ref=
_tracker *wakeref)
>  {
> -	intel_runtime_pm_put_raw(display_to_rpm(display), wakeref);
> +	if (display->parent->rpm && display->parent->rpm->put_raw)
> +		display->parent->rpm->put_raw(display->drm, wakeref);
>  }
>=20=20
>  struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
>  {
> -	return intel_runtime_pm_get(display_to_rpm(display));
> +	return display->parent->rpm && display->parent->rpm->get ?
> +		display->parent->rpm->get(display->drm) : NULL;
> +
>  }
>=20=20
>  struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display=
 *display)
>  {
> -	return intel_runtime_pm_get_if_in_use(display_to_rpm(display));
> +	return display->parent->rpm && display->parent->rpm->get_if_in_use ?
> +		display->parent->rpm->get_if_in_use(display->drm) : NULL;
>  }
>=20=20
>  struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display =
*display)
>  {
> -	return intel_runtime_pm_get_noresume(display_to_rpm(display));
> +	return display->parent->rpm && display->parent->rpm->get_noresume ?
> +		display->parent->rpm->get_noresume(display->drm) : NULL;
>  }
>=20=20
>  void intel_display_rpm_put(struct intel_display *display, struct ref_tra=
cker *wakeref)
>  {
> -	intel_runtime_pm_put(display_to_rpm(display), wakeref);
> +	if (display->parent->rpm && display->parent->rpm->put)
> +		display->parent->rpm->put(display->drm, wakeref);
>  }
>=20=20
>  void intel_display_rpm_put_unchecked(struct intel_display *display)
>  {
> -	intel_runtime_pm_put_unchecked(display_to_rpm(display));
> +	if (display->parent->rpm && display->parent->rpm->put_unchecked)
> +		display->parent->rpm->put_unchecked(display->drm);
>  }
>=20=20
>  bool intel_display_rpm_suspended(struct intel_display *display)
>  {
> -	return intel_runtime_pm_suspended(display_to_rpm(display));
> +	return display->parent->rpm && display->parent->rpm->suspended ?
> +		display->parent->rpm->suspended(display->drm) : false;
>  }
>=20=20
>  void assert_display_rpm_held(struct intel_display *display)
>  {
> -	assert_rpm_wakelock_held(display_to_rpm(display));
> +	if (display->parent->rpm && display->parent->rpm->assert_held)
> +		display->parent->rpm->assert_held(display->drm);
>  }
>=20=20
>  void intel_display_rpm_assert_block(struct intel_display *display)
>  {
> -	disable_rpm_wakeref_asserts(display_to_rpm(display));
> +	if (display->parent->rpm && display->parent->rpm->assert_block)
> +		display->parent->rpm->assert_block(display->drm);
>  }
>=20=20
>  void intel_display_rpm_assert_unblock(struct intel_display *display)
>  {
> -	enable_rpm_wakeref_asserts(display_to_rpm(display));
> +	if (display->parent->rpm && display->parent->rpm->assert_block)
> +		display->parent->rpm->assert_unblock(display->drm);
>  }

--=20
Jani Nikula, Intel
