Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42090B8813F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 09:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E233410E28F;
	Fri, 19 Sep 2025 07:00:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lXd19xot";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F354D10E28F;
 Fri, 19 Sep 2025 07:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758265256; x=1789801256;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=UUM8pcQwMcHwjs4Bt6+k3qVaiyPMOkBY033WyutB/ww=;
 b=lXd19xotc91/3q7xp5Jc1TafnBz0xlnchTlxCTldvBM9g50O7aY/+SWM
 FifD/2GQf6OYMwHVKJ1vVLr5MyGZvyvoyzirqKTGe979RQ4PZsmZfRJXZ
 GTEeMcuP/bdMhRXqAgEq5pY3pz0w+pBDQMpRp+s6bH+Q7RJWeY9LUw4dw
 2pPrV+kKDA35OwJUG5CN2fqZmU/k9feq+mxQ0J4iuATVTvTkue3tuzWCD
 fSzBIrwgjFsfmu0JgNxoavqNytnCPLYA5eoKxhtAUnDF4Kvr/JMq8ofB1
 wGT7lC5Guwy6eZDI1Y2byQxvVC7XMap/3puuEvs/zejKFp+QvlQIS8P2o A==;
X-CSE-ConnectionGUID: 77QLr747TMSg37tjH0+p4g==
X-CSE-MsgGUID: O9rdAO3BR02lDKjNpIcOtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="72036767"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="72036767"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 00:00:55 -0700
X-CSE-ConnectionGUID: JYuGacD3QOeSP2yj6TY8VQ==
X-CSE-MsgGUID: ra36HtLFS5mz9h2JEUjKag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="179769002"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 00:00:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 10/10] drm/i915/fbdev: drop dependency on display in
 i915 specific code
In-Reply-To: <aMxGbS1ippNd9C7q@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1758184771.git.jani.nikula@intel.com>
 <a2faad2b47c63ea773a96b2885fb759602374264.1758184771.git.jani.nikula@intel.com>
 <aMxGbS1ippNd9C7q@intel.com>
Date: Fri, 19 Sep 2025 10:00:50 +0300
Message-ID: <7974c0ae14b22006d96f58c4df186ed19c85d377@intel.com>
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

On Thu, 18 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 18, 2025 at 11:41:00AM +0300, Jani Nikula wrote:
>> This code is in fact i915 driver core rather than display specific. Stop
>> using struct intel_display, and drop the dependency on display headers.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 5 +----
>>  1 file changed, 1 insertion(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu=
/drm/i915/display/intel_fbdev_fb.c
>> index 8af409bff0f0..56b145841473 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
>> @@ -8,13 +8,10 @@
>>  #include "gem/i915_gem_lmem.h"
>>=20=20
>>  #include "i915_drv.h"
>> -#include "intel_display_core.h"
>> -#include "intel_display_types.h"
>>  #include "intel_fbdev_fb.h"
>>=20=20
>>  struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm,=
 int size)
>>  {
>> -	struct intel_display *display =3D to_intel_display(drm);
>>  	struct drm_i915_private *dev_priv =3D to_i915(drm);
>>  	struct drm_i915_gem_object *obj;
>>=20=20
>> @@ -31,7 +28,7 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct=
 drm_device *drm, int size
>>  		 *
>>  		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
>>  		 */
>> -		if (!display->platform.meteorlake && size * 2 < dev_priv->dsm.usable_=
size)
>> +		if (!IS_METEORLAKE(dev_priv) && size * 2 < dev_priv->dsm.usable_size)
>
> I have some old stuff [1] to rework the logic around stolen vs. not
> usage here. But I suppose I'll need to rethink some of it if/when I
> find the time to revisit that stuff...
>
> In the meantine
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks a bunch for the reviews, pushed the lot to din.

BR,
Jani.

>
> [1] https://patchwork.freedesktop.org/series/135800/
>
>>  			obj =3D i915_gem_object_create_stolen(dev_priv, size);
>>  		if (IS_ERR(obj))
>>  			obj =3D i915_gem_object_create_shmem(dev_priv, size);
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
