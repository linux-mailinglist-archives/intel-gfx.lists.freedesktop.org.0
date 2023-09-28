Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 543F37B16B0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 10:57:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC6410E5F2;
	Thu, 28 Sep 2023 08:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D1610E5F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 08:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695891422; x=1727427422;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=CxI5Gyj3rW2S8TbZ9yyw27/BjGlBw7EMsdNlYeYOZo8=;
 b=jkqCYoxnHvIWREGzYp2mArNbhl3Wt3chM1fQ3gk2ulFMsiAMlWBOwNq8
 yba24rwTKfqdlYxIlZ/bEfmMze9iPpDk7B9hExJdWVZSJENoocgtTxGW7
 kRhVeobCwnTxOZpVmsMQhCWzX5Gug5v+1qMvYv3jTb0oIxsSj6xI9p0Qk
 cKGK2YvChmPWa9zG2dT5QfecNDGjS11/JpO6eutnBb6RWoo70eClcKlqS
 boGdy2GbilZaT0YiB9UWn0YGLo60Zp/bo7w8nX4MaQMCpU6hWqjVQXzxO
 JnFrm91OOpRhFzlSZgLZ5eRTIrhNMeRhPb2NaiCo8wI079fXeMp91R0U3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="412928105"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="412928105"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 01:57:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="996477090"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="996477090"
Received: from vrohpcvpnmu01.ger.corp.intel.com (HELO localhost)
 ([10.252.54.82])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 01:56:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230928082924.164720-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230928082924.164720-1-jouni.hogander@intel.com>
Date: Thu, 28 Sep 2023 11:56:56 +0300
Message-ID: <871qeik753.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Warn on if set frontbuffer
 return value is not NULL on release
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

On Thu, 28 Sep 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> i915_gem_object_set_frontbuffer returns set frontbuffer pointer.  When we
> are releasing frontbuffer we are clearing the pointer from the object. Wa=
rn
> on if return value is not null.
>
> v3: Check i915_gem_object_set_frontbuffer return value separately
> v2: Instead of ignoring do drm_WARN_ON
>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
> index d5540c739404..412a19a888a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -251,7 +251,7 @@ static void frontbuffer_retire(struct i915_active *re=
f)
>  static void frontbuffer_release(struct kref *ref)
>  	__releases(&intel_bo_to_i915(front->obj)->display.fb_tracking.lock)
>  {
> -	struct intel_frontbuffer *front =3D
> +	struct intel_frontbuffer *ret, *front =3D
>  		container_of(ref, typeof(*front), ref);
>  	struct drm_i915_gem_object *obj =3D front->obj;
>=20=20
> @@ -259,7 +259,8 @@ static void frontbuffer_release(struct kref *ref)
>=20=20
>  	i915_ggtt_clear_scanout(obj);
>=20=20
> -	i915_gem_object_set_frontbuffer(obj, NULL);
> +	ret =3D i915_gem_object_set_frontbuffer(obj, NULL);
> +	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, ret);
>  	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
>=20=20
>  	i915_active_fini(&front->write);

--=20
Jani Nikula, Intel
