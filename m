Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF4EBFB289
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 11:27:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4D1A10E729;
	Wed, 22 Oct 2025 09:27:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NPrPj+Nc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C9A10E727;
 Wed, 22 Oct 2025 09:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761125261; x=1792661261;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=r8G8MdyCGlDSidfrK9G0q8hHw+gGWSPcNKc2D524Vrs=;
 b=NPrPj+NcsA6FUkVH77y3mf7GkxNajwP8nFWfVs4t1UnsgjNu6u1qvM4W
 QuoVojZGRjIlOTCNctCraSZFwryZ1V/qpAwk6sZkvcPAf8gaStQoez/Xu
 yDLjaiW3u7hZatWaDZAO2Lc6V3HJVXxVVEvA5zN663S1+iari4wJIEsOo
 gvrBbU3QETid8soYj2oS9825y+ZlmgODSYmuG/mcdFaPnn03MceovE2xf
 jtgIfhg3FfaJ+OMLH9KCkWh4ZrjNImRN7D5mJO6YNDYrB0piAR3SeuFLC
 a0dG0KoVQAwpQWVrAuFJR5Uemy56mTJW3o/0kHF9iG4EJtiVE+AHUeaHH Q==;
X-CSE-ConnectionGUID: IrPTcnnBRq6ICbtw6dwUwg==
X-CSE-MsgGUID: Cg+XpUi6SAmKI2QQygqWFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62296963"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62296963"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:27:40 -0700
X-CSE-ConnectionGUID: 2tBigXX1TqWEkF3Ng0p8nA==
X-CSE-MsgGUID: lmNhsHaYS72LDjd5M17eMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188102679"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:27:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 3/6] drm/i915/display: Runtime pm wrappers for display
 parent interface
In-Reply-To: <20251022085548.876150-4-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251022085548.876150-1-jouni.hogander@intel.com>
 <20251022085548.876150-4-jouni.hogander@intel.com>
Date: Wed, 22 Oct 2025 12:27:35 +0300
Message-ID: <6902d020853a877a34d92a0a934ed3f32bba3c41@intel.com>
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
> Implement runtime pm wrappers for i915 driver and add them into display
> parent interface.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 77 ++++++++++++++++++++++++++++++
>  1 file changed, 77 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index b295326eb4331..f0f5feaf3ff2c 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -739,7 +739,84 @@ static void i915_welcome_messages(struct drm_i915_pr=
ivate *dev_priv)
>  			 "DRM_I915_DEBUG_RUNTIME_PM enabled\n");
>  }
>=20=20
> +static struct intel_runtime_pm *drm_to_rpm(const struct drm_device *drm)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(drm);
> +
> +	return &i915->runtime_pm;
> +}
> +
> +static struct ref_tracker *intel_rpm_get(const struct drm_device *drm)
> +{
> +	return intel_runtime_pm_get(drm_to_rpm(drm));
> +}
> +
> +static struct ref_tracker *intel_rpm_get_raw(const struct drm_device *dr=
m)
> +{
> +	return intel_runtime_pm_get_raw(drm_to_rpm(drm));
> +}
> +
> +static struct ref_tracker *intel_rpm_get_if_in_use(const struct drm_devi=
ce *drm)
> +{
> +	return intel_runtime_pm_get_if_in_use(drm_to_rpm(drm));
> +}
> +
> +static struct ref_tracker *intel_rpm_get_noresume(const struct drm_devic=
e *drm)
> +{
> +	return intel_runtime_pm_get_noresume(drm_to_rpm(drm));
> +}
> +
> +static void intel_rpm_put(const struct drm_device *drm, struct ref_track=
er *wakeref)
> +{
> +	intel_runtime_pm_put(drm_to_rpm(drm), wakeref);
> +}
> +
> +static void intel_rpm_put_raw(const struct drm_device *drm, struct ref_t=
racker *wakeref)
> +{
> +	intel_runtime_pm_put_raw(drm_to_rpm(drm), wakeref);
> +}
> +
> +static void intel_rpm_put_unchecked(const struct drm_device *drm)
> +{
> +	intel_runtime_pm_put_unchecked(drm_to_rpm(drm));
> +}
> +
> +static bool intel_rpm_suspended(const struct drm_device *drm)
> +{
> +	return intel_runtime_pm_suspended(drm_to_rpm(drm));
> +}
> +
> +static void intel_rpm_assert_held(const struct drm_device *drm)
> +{
> +	assert_rpm_wakelock_held(drm_to_rpm(drm));
> +}
> +
> +static void intel_rpm_assert_block(const struct drm_device *drm)
> +{
> +	disable_rpm_wakeref_asserts(drm_to_rpm(drm));
> +}
> +
> +static void intel_rpm_assert_unblock(const struct drm_device *drm)
> +{
> +	enable_rpm_wakeref_asserts(drm_to_rpm(drm));
> +}
> +
> +static struct intel_display_rpm rpm =3D {

const

> +	.get =3D intel_rpm_get,
> +	.get_raw =3D intel_rpm_get_raw,
> +	.get_if_in_use =3D intel_rpm_get_if_in_use,
> +	.get_noresume =3D intel_rpm_get_noresume,
> +	.put =3D intel_rpm_put,
> +	.put_raw =3D intel_rpm_put_raw,
> +	.put_unchecked =3D intel_rpm_put_unchecked,
> +	.suspended =3D intel_rpm_suspended,
> +	.assert_held =3D intel_rpm_assert_held,
> +	.assert_block =3D intel_rpm_assert_block,
> +	.assert_unblock =3D intel_rpm_assert_unblock
> +};

I think all of the above belong in intel_runtime_pm.c.

I do dislike having to declare the rpm variable and make it non-static,
but I think the isolation is still better that way. The name also needs
to be longer because of this.

If we keep them here, this file will grow to a ton of small snippets
like above as we add more interfaces. I think the compiler might be able
to be more clever if the above wrapper functions are in the same file as
the functions being wrapped.

BR,
Jani.

> +
>  static const struct intel_display_parent_interface parent =3D {
> +	.rpm =3D &rpm,
>  };
>=20=20
>  const struct intel_display_parent_interface *i915_driver_parent_interfac=
e(void)

--=20
Jani Nikula, Intel
