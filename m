Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AF0BFB2EC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 11:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82F2310E720;
	Wed, 22 Oct 2025 09:36:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DY2VoN8D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3748710E720;
 Wed, 22 Oct 2025 09:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761125800; x=1792661800;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=KDVjSeb5PtTm9T2CfUhPoorRK6bHTrrhTSCkFC9JXvI=;
 b=DY2VoN8DyQh1Zj7J4lm+dDuAUmWQgnmUfgKxVeRdh5RnsdTFZB7LOSB8
 6cKM1/TzGE2noLmtxGww1oqODEgljEmsR/987nKjGta7zgsXlFPfLSGp7
 SgC6rgmW3z8awAFOezwQHynm8fnLDa/CP8rITWDVw3+I5hWpw8nIXWn5k
 PX3Z57BG7xMXuHGYZ6QTtr+EtTQfvY6xljmoCnVokbaHpUUSc0wfQmMKZ
 MSKU3V97znNBDjrw2HGVC2zwqKgqistjkmhNbqzUPNJ61smRjFYwt4gfT
 K4ddHf7NrTgj6sal+EmrIAzy3SZLEYIVVF1uiP9LzM57z7x3Ulpng43eT g==;
X-CSE-ConnectionGUID: RoQxbseFSQelDd/tUaaHPQ==
X-CSE-MsgGUID: Ynp9gBN/TcuWAb3AuQSvLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62297558"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62297558"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:36:40 -0700
X-CSE-ConnectionGUID: RbBvdUT0R8W6NKpXcDzeNQ==
X-CSE-MsgGUID: qm6vf3ZdTiCy8tB9Y90v+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="183413915"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 02:36:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 6/6] drm/xe/display: Use display parent interface for xe
 runtime pm
In-Reply-To: <20251022085548.876150-7-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251022085548.876150-1-jouni.hogander@intel.com>
 <20251022085548.876150-7-jouni.hogander@intel.com>
Date: Wed, 22 Oct 2025 12:36:35 +0300
Message-ID: <d3b1311c9b67f55854f9934ab921f318571ed119@intel.com>
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
> Start using display parent interface for xe runtime pm.

Nice, this is a good reason to keep the wrappers in the previous patch.

>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/xe/Makefile                 |  2 +-
>  drivers/gpu/drm/xe/display/xe_display_rpm.c | 73 ---------------------
>  2 files changed, 1 insertion(+), 74 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.c
>
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 82c6b3d296769..4559fb770bf75 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -211,7 +211,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	display/intel_fbdev_fb.o \
>  	display/xe_display.o \
>  	display/xe_display_misc.o \
> -	display/xe_display_rpm.o \
>  	display/xe_display_wa.o \
>  	display/xe_dsb_buffer.o \
>  	display/xe_fb_pin.o \
> @@ -256,6 +255,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_display_power.o \
>  	i915-display/intel_display_power_map.o \
>  	i915-display/intel_display_power_well.o \
> +	i915-display/intel_display_rpm.o \
>  	i915-display/intel_display_trace.o \
>  	i915-display/intel_display_wa.o \
>  	i915-display/intel_dkl_phy.o \
> diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/dr=
m/xe/display/xe_display_rpm.c
> deleted file mode 100644
> index 3825376e98ccd..0000000000000
> --- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
> +++ /dev/null
> @@ -1,73 +0,0 @@
> -// SPDX-License-Identifier: MIT
> -/* Copyright =C2=A9 2025 Intel Corporation */
> -
> -#include "intel_display_core.h"
> -#include "intel_display_rpm.h"
> -#include "xe_device.h"
> -#include "xe_device_types.h"
> -#include "xe_pm.h"
> -
> -static struct xe_device *display_to_xe(struct intel_display *display)
> -{
> -	return to_xe_device(display->drm);
> -}
> -
> -struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *disp=
lay)
> -{
> -	return intel_display_rpm_get(display);
> -}
> -
> -void intel_display_rpm_put_raw(struct intel_display *display, struct ref=
_tracker *wakeref)
> -{
> -	intel_display_rpm_put(display, wakeref);
> -}
> -
> -struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
> -{
> -	return xe_pm_runtime_resume_and_get(display_to_xe(display)) ? INTEL_WAK=
EREF_DEF : NULL;
> -}
> -
> -struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display=
 *display)
> -{
> -	return xe_pm_runtime_get_if_in_use(display_to_xe(display)) ? INTEL_WAKE=
REF_DEF : NULL;
> -}
> -
> -struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display =
*display)
> -{
> -	xe_pm_runtime_get_noresume(display_to_xe(display));
> -
> -	return INTEL_WAKEREF_DEF;
> -}
> -
> -void intel_display_rpm_put(struct intel_display *display, struct ref_tra=
cker *wakeref)
> -{
> -	if (wakeref)
> -		xe_pm_runtime_put(display_to_xe(display));
> -}
> -
> -void intel_display_rpm_put_unchecked(struct intel_display *display)
> -{
> -	xe_pm_runtime_put(display_to_xe(display));
> -}
> -
> -bool intel_display_rpm_suspended(struct intel_display *display)
> -{
> -	struct xe_device *xe =3D display_to_xe(display);
> -
> -	return pm_runtime_suspended(xe->drm.dev);
> -}
> -
> -void assert_display_rpm_held(struct intel_display *display)
> -{
> -	/* FIXME */
> -}
> -
> -void intel_display_rpm_assert_block(struct intel_display *display)
> -{
> -	/* FIXME */
> -}
> -
> -void intel_display_rpm_assert_unblock(struct intel_display *display)
> -{
> -	/* FIXME */
> -}

--=20
Jani Nikula, Intel
