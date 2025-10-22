Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41224BFB2A7
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 11:29:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E3510E71A;
	Wed, 22 Oct 2025 09:29:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ngOf3W/h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7409610E720;
 Wed, 22 Oct 2025 09:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761125380; x=1792661380;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=SKBth/tqHoLnQ/jbIhgmMdqc6Xwa+zNfKA8faQRk7kc=;
 b=ngOf3W/hhEEu6OXZa6oYzqlnNbc9rf/OwNMZQg6HBQNIeGbq3sDWpog/
 bGzW1khmDO4HxTSg+iJGbUTDzRJpOuJJxqxPlJmpQUIrQBrG4NqFW9aRA
 rkJGgUfo3s1sQJ37/LxUV5BEW6YMsrNRwQ1TadxdwrTH3SzxikVIjp5VX
 A5OiTxF46QVcG8VzGwHPHyIaHaAJ0hGRLGj8wGBswOn56pJBbvyXNK48W
 nNu8odYTOffji19y/FL2yHqFw84vZjnquiAJCam63zcmcQs2Eor6UMYJ6
 Q2ysInPdWXFwXCDaDtbL4UKwIJ1ilUqHoc8kUpEPH0Vu2/Bbiou5yygSu w==;
X-CSE-ConnectionGUID: Gfog5MmcS9OW04DOejTyZA==
X-CSE-MsgGUID: QtIcogdzT1KVY6VvYpzjYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62297105"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62297105"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:29:40 -0700
X-CSE-ConnectionGUID: iW5VZ2QZSD2YI/cG4L8ErA==
X-CSE-MsgGUID: ON7juTiySACXta4OWZfH4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214468014"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:29:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 4/6] drm/xe/display: Runtime pm wrappers for display
 parent interface
In-Reply-To: <20251022085548.876150-5-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251022085548.876150-1-jouni.hogander@intel.com>
 <20251022085548.876150-5-jouni.hogander@intel.com>
Date: Wed, 22 Oct 2025 12:29:35 +0300
Message-ID: <05cda4146015ff0d939f4e2656cde4f30087d71c@intel.com>
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
> Implement runtime pm wrappers for xe driver and add them into display
> parent interface.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 76 +++++++++++++++++++++++++
>  1 file changed, 76 insertions(+)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 0e38c96eb6def..8b2b0c5b398db 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -36,6 +36,7 @@
>  #include "intel_opregion.h"
>  #include "skl_watermark.h"
>  #include "xe_module.h"
> +#include "xe_pm.h"
>=20=20
>  /* Ensure drm and display members are placed properly. */
>  INTEL_DISPLAY_MEMBER_STATIC_ASSERT(struct xe_device, drm, display);
> @@ -515,7 +516,82 @@ static void display_device_remove(struct drm_device =
*dev, void *arg)
>  	intel_display_device_remove(display);
>  }
>=20=20
> +static struct ref_tracker *xe_rpm_get(const struct drm_device *drm)
> +{
> +	return xe_pm_runtime_resume_and_get(to_xe_device(drm)) ? INTEL_WAKEREF_=
DEF : NULL;
> +}
> +
> +static struct ref_tracker *xe_rpm_get_raw(const struct drm_device *drm)
> +{
> +	return xe_rpm_get(drm);
> +}
> +
> +static struct ref_tracker *xe_rpm_get_if_in_use(const struct drm_device =
*drm)
> +{
> +	return xe_pm_runtime_get_if_in_use(to_xe_device(drm)) ? INTEL_WAKEREF_D=
EF : NULL;
> +}
> +
> +static struct ref_tracker *xe_rpm_get_noresume(const struct drm_device *=
drm)
> +{
> +	xe_pm_runtime_get_noresume(to_xe_device(drm));
> +
> +	return INTEL_WAKEREF_DEF;
> +}
> +
> +static void xe_rpm_put(const struct drm_device *drm, struct ref_tracker =
*wakeref)
> +{
> +	if (wakeref)
> +		xe_pm_runtime_put(to_xe_device(drm));
> +}
> +
> +static void xe_rpm_put_raw(const struct drm_device *drm, struct ref_trac=
ker *wakeref)
> +{
> +	xe_rpm_put(drm, wakeref);
> +}
> +
> +static void xe_rpm_put_unchecked(const struct drm_device *drm)
> +{
> +	xe_pm_runtime_put(to_xe_device(drm));
> +}
> +
> +static bool xe_rpm_suspended(const struct drm_device *drm)
> +{
> +	struct xe_device *xe =3D to_xe_device(drm);
> +
> +	return pm_runtime_suspended(xe->drm.dev);
> +}
> +
> +static void xe_rpm_assert_held(const struct drm_device *drm)
> +{
> +	/* FIXME */
> +}
> +
> +static void xe_rpm_assert_block(const struct drm_device *drm)
> +{
> +	/* FIXME */
> +}
> +
> +static void xe_rpm_assert_unblock(const struct drm_device *drm)
> +{
> +	/* FIXME */
> +}
> +
> +static struct intel_display_rpm rpm =3D {

const

> +	.get =3D xe_rpm_get,
> +	.get_raw =3D xe_rpm_get_raw,
> +	.get_if_in_use =3D xe_rpm_get_if_in_use,
> +	.get_noresume =3D xe_rpm_get_noresume,
> +	.put =3D xe_rpm_put,
> +	.put_raw =3D xe_rpm_put_raw,
> +	.put_unchecked =3D xe_rpm_put_unchecked,
> +	.suspended =3D xe_rpm_suspended,
> +	.assert_held =3D xe_rpm_assert_held,
> +	.assert_block =3D xe_rpm_assert_block,
> +	.assert_unblock =3D xe_rpm_assert_unblock
> +};


Same here about placement. Maybe we reuse xe_display_rpm.c for this,
since in xe unlike in i915 display can be compiled out.

BR,
Jani.


> +
>  static const struct intel_display_parent_interface parent =3D {
> +	.rpm =3D &rpm,
>  };
>=20=20
>  /**

--=20
Jani Nikula, Intel
