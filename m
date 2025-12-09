Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3278CAFE89
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 13:23:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63AC910E527;
	Tue,  9 Dec 2025 12:23:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="leqeUdhY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3502410E1D4;
 Tue,  9 Dec 2025 12:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765283001; x=1796819001;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=d8g17ZYzvzf1n8aZ9+joBLZXwI+hnPAIEpuRgYc3+R4=;
 b=leqeUdhYHj2JGfZm2ralt0naYaADPb4a8vNTIcYGXYMMpV/KTbgLYow1
 YSnzNsOIn4ZdFKU/HOo6fDMGUm+FyUyUQ71pxObjuLDVIH6Sg+TEiZSly
 qZ/+eh1T/PIOJW/VVQSs9nNoaMXRyuOVxkczd3+7OKb3zfiKqxVdDxa9K
 PUhQmcD3TtQWFBiT4gap+V6V3WtREeczYf3uJH3kcsw0h8NgXSv81o2F/
 Oll8xXhj9jbuT3eHLSCC/VzmU93Dp6gZytVuEHe+6G6YvF7xsRP/zUD8a
 MBixmvxAxBTRMgwB+/ok96ishg/WNJJDOe+oMgRMaadF1eLd13l2xiTZC g==;
X-CSE-ConnectionGUID: TAdIv8RWTg+79vmU+jY+ZQ==
X-CSE-MsgGUID: 0J+geZDVTWKc3uqOuviPag==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="71083538"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="71083538"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:23:20 -0800
X-CSE-ConnectionGUID: 1OjCR6IgSrWZku8fTZfz5w==
X-CSE-MsgGUID: AStveApoTg639QtEqMrx6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="226881518"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:23:19 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/pc8: Add parent interface for PC8 forcewake
 tricks
In-Reply-To: <1d8e29c0684013d60529c28247ee6b4ce4510901@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251209111150.16853-1-ville.syrjala@linux.intel.com>
 <1d8e29c0684013d60529c28247ee6b4ce4510901@intel.com>
Date: Tue, 09 Dec 2025 14:23:16 +0200
Message-ID: <ef28f6205ab5973ec7fe5c771b4037fbebdc9ec8@intel.com>
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

On Tue, 09 Dec 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 09 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> We use forcewake to prevent the SoC from actually entering
>> PC8 while performing the PC8 disable sequence. Hide that
>> behind a new parent interface to eliminate the naked
>> forcewake/uncore usage from the display power code.
>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/Makefile                 |  1 +
>>  .../drm/i915/display/intel_display_power.c    |  8 ++---
>>  drivers/gpu/drm/i915/display/intel_parent.c   | 10 +++++++
>>  drivers/gpu/drm/i915/display/intel_parent.h   |  3 ++
>>  drivers/gpu/drm/i915/i915_display_pc8.c       | 30 +++++++++++++++++++
>>  drivers/gpu/drm/i915/i915_display_pc8.h       |  9 ++++++
>>  drivers/gpu/drm/i915/i915_driver.c            |  2 ++
>>  include/drm/intel/display_parent_interface.h  |  8 +++++
>>  8 files changed, 67 insertions(+), 4 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/i915_display_pc8.c
>>  create mode 100644 drivers/gpu/drm/i915/i915_display_pc8.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 175bd99e1d0d..b57e51d626b1 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -76,6 +76,7 @@ i915-$(CONFIG_PERF_EVENTS) +=3D \
>>=20=20
>>  # core display adaptation
>>  i915-y +=3D \
>> +	i915_display_pc8.o \
>>  	i915_hdcp_gsc.o
>>=20=20
>>  # "Graphics Technology" (aka we talk to the gpu)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/driver=
s/gpu/drm/i915/display/intel_display_power.c
>> index 9f323c39d798..47042a4c3a30 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -1339,10 +1339,10 @@ static void hsw_restore_lcpll(struct intel_displ=
ay *display)
>>  		return;
>>=20=20
>>  	/*
>> -	 * Make sure we're not on PC8 state before disabling PC8, otherwise
>> -	 * we'll hang the machine. To prevent PC8 state, just enable force_wak=
e.
>> +	 * Make sure we're not on PC8 state before disabling
>> +	 * PC8, otherwise we'll hang the machine.
>>  	 */
>> -	intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
>> +	intel_parent_pc8_block(display);
>>=20=20
>>  	if (val & LCPLL_POWER_DOWN_ALLOW) {
>>  		val &=3D ~LCPLL_POWER_DOWN_ALLOW;
>> @@ -1372,7 +1372,7 @@ static void hsw_restore_lcpll(struct intel_display=
 *display)
>>  				"Switching back to LCPLL failed\n");
>>  	}
>>=20=20
>> -	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
>> +	intel_parent_pc8_unblock(display);
>>=20=20
>>  	intel_update_cdclk(display);
>>  	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
>> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/d=
rm/i915/display/intel_parent.c
>> index 2ea310cc3509..9201d506c851 100644
>> --- a/drivers/gpu/drm/i915/display/intel_parent.c
>> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
>> @@ -56,6 +56,16 @@ void intel_parent_irq_synchronize(struct intel_displa=
y *display)
>>  	display->parent->irq->synchronize(display->drm);
>>  }
>>=20=20
>> +void intel_parent_pc8_block(struct intel_display *display)
>> +{
>> +	display->parent->pc8->block(display->drm);
>> +}
>> +
>> +void intel_parent_pc8_unblock(struct intel_display *display)
>> +{
>> +	display->parent->pc8->unblock(display->drm);
>> +}
>
> I think I'd like either:
>
> - A substruct is mandatory, always initialized by parent, will never be
>   NULL, and there are no checks here.
>
> - A substruct is optional, may be initialized by parent, may be NULL,
>   and there's a NULL check here.
>
> I think it makes the interface easier to reason about. Even if I
> understand that this particular interface will only be called for
> platforms supported by i915.
>
> So this should have the display->parent->pc8 !=3D NULL check, and
> "optional" mentioned in display_parent_interface.h.

Oh, I also used this in [1]:

  int intel_parent_stolen_insert_node(struct intel_display *display, struct=
 intel_stolen_node *node, u64 size,
				     unsigned int align)
  {
 +	if (drm_WARN_ON_ONCE(display->drm, !display->parent->stolen->insert_node=
))
 +		return -ENODEV;
 +
	 return display->parent->stolen->insert_node(node, size, align);
  }

It's optional, but using it when it's not there gives a warning splat.


BR,
Jani.


[1] https://lore.kernel.org/r/0dbb460e8bd1df29df98862d08fcdfda03912673.1764=
930576.git.jani.nikula@intel.com


>
>> +
>>  bool intel_parent_rps_available(struct intel_display *display)
>>  {
>>  	return display->parent->rps;
>> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/d=
rm/i915/display/intel_parent.h
>> index 8f91a6f75c53..974a016ab3be 100644
>> --- a/drivers/gpu/drm/i915/display/intel_parent.h
>> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
>> @@ -22,6 +22,9 @@ void intel_parent_hdcp_gsc_context_free(struct intel_d=
isplay *display,
>>  bool intel_parent_irq_enabled(struct intel_display *display);
>>  void intel_parent_irq_synchronize(struct intel_display *display);
>>=20=20
>> +void intel_parent_pc8_block(struct intel_display *display);
>> +void intel_parent_pc8_unblock(struct intel_display *display);
>> +
>>  bool intel_parent_rps_available(struct intel_display *display);
>>  void intel_parent_rps_boost_if_not_started(struct intel_display *displa=
y, struct dma_fence *fence);
>>  void intel_parent_rps_mark_interactive(struct intel_display *display, b=
ool interactive);
>> diff --git a/drivers/gpu/drm/i915/i915_display_pc8.c b/drivers/gpu/drm/i=
915/i915_display_pc8.c
>> new file mode 100644
>> index 000000000000..443935d282e3
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/i915_display_pc8.c
>> @@ -0,0 +1,30 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright 2025, Intel Corporation.
>> + */
>> +
>> +#include <drm/drm_print.h>
>> +#include <drm/intel/display_parent_interface.h>
>> +
>> +#include "i915_drv.h"
>> +#include "intel_uncore.h"
>
> For completeness, I think this should include i915_display_pc8.h. I'm a
> bit surprised the compilers only warn about non-static functions without
> declarations, not about non-static variables.
>
>> +
>> +static void i915_display_pc8_block(struct drm_device *drm)
>> +{
>> +	struct intel_uncore *uncore =3D &to_i915(drm)->uncore;
>> +
>> +	/* to prevent PC8 state, just enable force_wake */
>> +	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>> +}
>> +
>> +static void i915_display_pc8_unblock(struct drm_device *drm)
>> +{
>> +	struct intel_uncore *uncore =3D &to_i915(drm)->uncore;
>> +
>> +	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
>> +}
>> +
>> +const struct intel_display_pc8_interface i915_display_pc8_interface =3D=
 {
>> +	.block =3D i915_display_pc8_block,
>> +	.unblock =3D i915_display_pc8_unblock,
>> +};
>> diff --git a/drivers/gpu/drm/i915/i915_display_pc8.h b/drivers/gpu/drm/i=
915/i915_display_pc8.h
>> new file mode 100644
>> index 000000000000..717f313d2a21
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/i915_display_pc8.h
>> @@ -0,0 +1,9 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/* Copyright =C2=A9 2025 Intel Corporation */
>> +
>> +#ifndef __I915_DISPLAY_PC8_H__
>> +#define __I915_DISPLAY_PC8_H__
>> +
>> +extern const struct intel_display_pc8_interface i915_display_pc8_interf=
ace;
>> +
>> +#endif /* __I915_DISPLAY_PC8_H__ */
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i=
915_driver.c
>> index d98839427ef9..723cb424b2ba 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -89,6 +89,7 @@
>>  #include "pxp/intel_pxp_pm.h"
>>=20=20
>>  #include "i915_debugfs.h"
>> +#include "i915_display_pc8.h"
>>  #include "i915_driver.h"
>>  #include "i915_drm_client.h"
>>  #include "i915_drv.h"
>> @@ -761,6 +762,7 @@ static const struct intel_display_parent_interface p=
arent =3D {
>>  	.hdcp =3D &i915_display_hdcp_interface,
>>  	.rpm =3D &i915_display_rpm_interface,
>>  	.irq =3D &i915_display_irq_interface,
>> +	.pc8 =3D &i915_display_pc8_interface,
>>  	.rps =3D &i915_display_rps_interface,
>>  	.vgpu_active =3D vgpu_active,
>>  	.has_fenced_regions =3D has_fenced_regions,
>> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/=
intel/display_parent_interface.h
>> index 61d1b22adc83..af43b213eafa 100644
>> --- a/include/drm/intel/display_parent_interface.h
>> +++ b/include/drm/intel/display_parent_interface.h
>> @@ -41,6 +41,11 @@ struct intel_display_irq_interface {
>>  	void (*synchronize)(struct drm_device *drm);
>>  };
>>=20=20
>> +struct intel_display_pc8_interface {
>> +	void (*block)(struct drm_device *drm);
>> +	void (*unblock)(struct drm_device *drm);
>> +};
>> +
>>  struct intel_display_rps_interface {
>>  	void (*boost_if_not_started)(struct dma_fence *fence);
>>  	void (*mark_interactive)(struct drm_device *drm, bool interactive);
>> @@ -69,6 +74,9 @@ struct intel_display_parent_interface {
>>  	/** @irq: IRQ interface */
>>  	const struct intel_display_irq_interface *irq;
>>=20=20
>> +	/** @pc8: PC8 interface */
>
> I think this should have "Optional" in there.
>
>> +	const struct intel_display_pc8_interface *pc8;
>> +
>>  	/** @rpm: RPS interface. Optional. */
>>  	const struct intel_display_rps_interface *rps;

--=20
Jani Nikula, Intel
