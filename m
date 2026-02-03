Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGqsNpHsgWkFMAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:39:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D26D91CB
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:39:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91DB610E622;
	Tue,  3 Feb 2026 12:39:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O7DmyqyJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D1AA10E622;
 Tue,  3 Feb 2026 12:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770122380; x=1801658380;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TY0x+K/QoOeydHexEtfsnAykUNmspVjWJ4IzkJt4tW0=;
 b=O7DmyqyJVFmgNnfGE9OEFTpzlBea4//XYAsLeS1cPziL55pzu2z/HIbk
 SEIuE+cxm5I3KA+BE9AcxYYFmSKydsLvqhsk8+aKi+1vPXF+IIa06Q+FX
 03fuIg9SBj9KsBAT4pmWVHZtnlRZV8WsV8ssRfxfaIBZiSAbJQ/dBrzuH
 0Pw7Vvj4Cp71xVHKsUhS5GSuQbn+E046eGoW9P+wXaKjRU9Zn449kvc76
 H+ayaKPTiTymq8nQZm1FAaiOPrN9lSGanMA5rIlUFqYgpFG2bgbauscFs
 ecyVI0AZtSs03770DHXy+hm+gbnaOpf4MU66LieQ308PGO3LLv9laO63S g==;
X-CSE-ConnectionGUID: NjBRDmpZQ+aemwgyFw403A==
X-CSE-MsgGUID: VgHr60qrQCeeC2kCiBV4jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="81920875"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="81920875"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:39:39 -0800
X-CSE-ConnectionGUID: m1/FAqoxQO6mNe1h5nT17g==
X-CSE-MsgGUID: 6qzZ0/p1T9OBIWHfJ1wOiQ==
X-ExtLoop1: 1
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:39:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v3 09/19] drm/i915: Remove i915_reg.h from intel_overlay.c
In-Reply-To: <20260129211358.1240283-10-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-10-uma.shankar@intel.com>
Date: Tue, 03 Feb 2026 14:39:34 +0200
Message-ID: <6369db33e0f8ec7e39dd5c531e19beb368cdac48@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 38D26D91CB
X-Rspamd-Action: no action

On Fri, 30 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move GEN2_ISR and some interrupt definitions to common header.
> This removes dependency of i915_reg.h from intel_overlay.c.
>
> v2: Create a separate file for common interrupts (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  |  1 +
>  .../gpu/drm/i915/display/intel_display_regs.h |  2 +
>  drivers/gpu/drm/i915/display/intel_overlay.c  |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c            |  1 +
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |  1 +
>  drivers/gpu/drm/i915/i915_irq.c               |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 37 ----------------
>  include/drm/intel/intel_gmd_interrupt.h       | 43 +++++++++++++++++++
>  8 files changed, 50 insertions(+), 38 deletions(-)
>  create mode 100644 include/drm/intel/intel_gmd_interrupt.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index 0a71840041de..31c78dc3d63b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -5,6 +5,7 @@
>=20=20
>  #include <drm/drm_print.h>
>  #include <drm/drm_vblank.h>
> +#include <drm/intel/intel_gmd_interrupt.h>
>=20=20
>  #include "i915_reg.h"
>  #include "icl_dsi_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/=
gpu/drm/i915/display/intel_display_regs.h
> index 706024c2a463..40538910cb09 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -94,6 +94,8 @@
>  #define   VLV_ERROR_PAGE_TABLE				(1 << 4)
>  #define   VLV_ERROR_CLAIM				(1 << 0)
>=20=20
> +#define GEN2_ISR	_MMIO(0x20ac)
> +
>  #define VLV_ERROR_REGS		I915_ERROR_REGS(VLV_EMR, VLV_EIR)
>=20=20
>  #define _MBUS_ABOX0_CTL			0x45038
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/d=
rm/i915/display/intel_overlay.c
> index 88eb7ae5765c..3a45836b8373 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -28,6 +28,7 @@
>=20=20
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_interrupt.h>
>=20=20
>  #include "gem/i915_gem_internal.h"
>  #include "gem/i915_gem_object_frontbuffer.h"
> @@ -37,7 +38,6 @@
>  #include "gt/intel_ring.h"
>=20=20
>  #include "i915_drv.h"
> -#include "i915_reg.h"
>  #include "intel_color_regs.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt=
/intel_gt.c
> index ac527d878820..998dea65fcff 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -5,6 +5,7 @@
>=20=20
>  #include <drm/drm_managed.h>
>  #include <drm/intel/intel-gtt.h>
> +#include <drm/intel/intel_gmd_interrupt.h>
>=20=20
>  #include "gem/i915_gem_internal.h"
>  #include "gem/i915_gem_lmem.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gp=
u/drm/i915/gt/intel_ring_submission.c
> index 8314a4b0505e..7391c9b2ceb5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -4,6 +4,7 @@
>   */
>=20=20
>  #include <drm/drm_cache.h>
> +#include <drm/intel/intel_gmd_interrupt.h>
>=20=20
>  #include "gem/i915_gem_internal.h"
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 3fe978d4ea53..2acdd739335f 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -34,6 +34,7 @@
>  #include <drm/drm_drv.h>
>  #include <drm/drm_print.h>
>  #include <drm/intel/display_parent_interface.h>
> +#include <drm/intel/intel_gmd_interrupt.h>
>=20=20
>  #include "display/intel_display_irq.h"
>  #include "display/intel_hotplug.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 10928e8406dc..22b68ddfa7b4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -365,7 +365,6 @@
>  #define GEN2_IER	_MMIO(0x20a0)
>  #define GEN2_IIR	_MMIO(0x20a4)
>  #define GEN2_IMR	_MMIO(0x20a8)
> -#define GEN2_ISR	_MMIO(0x20ac)
>=20=20
>  #define GEN2_IRQ_REGS		I915_IRQ_REGS(GEN2_IMR, \
>  					      GEN2_IER, \
> @@ -522,42 +521,6 @@
>  /* These are all the "old" interrupts */
>  #define ILK_BSD_USER_INTERRUPT				(1 << 5)
>=20=20
> -#define I915_PM_INTERRUPT				(1 << 31)
> -#define I915_ISP_INTERRUPT				(1 << 22)
> -#define I915_LPE_PIPE_B_INTERRUPT			(1 << 21)
> -#define I915_LPE_PIPE_A_INTERRUPT			(1 << 20)
> -#define I915_MIPIC_INTERRUPT				(1 << 19)
> -#define I915_MIPIA_INTERRUPT				(1 << 18)
> -#define I915_PIPE_CONTROL_NOTIFY_INTERRUPT		(1 << 18)
> -#define I915_DISPLAY_PORT_INTERRUPT			(1 << 17)
> -#define I915_DISPLAY_PIPE_C_HBLANK_INTERRUPT		(1 << 16)
> -#define I915_MASTER_ERROR_INTERRUPT			(1 << 15)
> -#define I915_DISPLAY_PIPE_B_HBLANK_INTERRUPT		(1 << 14)
> -#define I915_GMCH_THERMAL_SENSOR_EVENT_INTERRUPT	(1 << 14) /* p-state */
> -#define I915_DISPLAY_PIPE_A_HBLANK_INTERRUPT		(1 << 13)
> -#define I915_HWB_OOM_INTERRUPT				(1 << 13)
> -#define I915_LPE_PIPE_C_INTERRUPT			(1 << 12)
> -#define I915_SYNC_STATUS_INTERRUPT			(1 << 12)
> -#define I915_MISC_INTERRUPT				(1 << 11)
> -#define I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT	(1 << 11)
> -#define I915_DISPLAY_PIPE_C_VBLANK_INTERRUPT		(1 << 10)
> -#define I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT	(1 << 10)
> -#define I915_DISPLAY_PIPE_C_EVENT_INTERRUPT		(1 << 9)
> -#define I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT	(1 << 9)
> -#define I915_DISPLAY_PIPE_C_DPBM_INTERRUPT		(1 << 8)
> -#define I915_DISPLAY_PLANE_C_FLIP_PENDING_INTERRUPT	(1 << 8)
> -#define I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT		(1 << 7)
> -#define I915_DISPLAY_PIPE_A_EVENT_INTERRUPT		(1 << 6)
> -#define I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT		(1 << 5)
> -#define I915_DISPLAY_PIPE_B_EVENT_INTERRUPT		(1 << 4)
> -#define I915_DISPLAY_PIPE_A_DPBM_INTERRUPT		(1 << 3)
> -#define I915_DISPLAY_PIPE_B_DPBM_INTERRUPT		(1 << 2)
> -#define I915_DEBUG_INTERRUPT				(1 << 2)
> -#define I915_WINVALID_INTERRUPT				(1 << 1)
> -#define I915_USER_INTERRUPT				(1 << 1)
> -#define I915_ASLE_INTERRUPT				(1 << 0)
> -#define I915_BSD_USER_INTERRUPT				(1 << 25)
> -
>  #define GEN6_BSD_RNCID			_MMIO(0x12198)
>=20=20
>  #define GEN7_FF_THREAD_MODE		_MMIO(0x20a0)
> diff --git a/include/drm/intel/intel_gmd_interrupt.h b/include/drm/intel/=
intel_gmd_interrupt.h
> new file mode 100644
> index 000000000000..eae0acade16a
> --- /dev/null
> +++ b/include/drm/intel/intel_gmd_interrupt.h

Here too I think I'd name this *_regs.h.

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> @@ -0,0 +1,43 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2026 Intel Corporation */
> +
> +#ifndef _INTEL_GMD_INTERRUPT_H_
> +#define _INTEL_GMD_INTERRUPT_H_
> +
> +#define I915_PM_INTERRUPT				(1 << 31)
> +#define I915_ISP_INTERRUPT				(1 << 22)
> +#define I915_LPE_PIPE_B_INTERRUPT			(1 << 21)
> +#define I915_LPE_PIPE_A_INTERRUPT			(1 << 20)
> +#define I915_MIPIC_INTERRUPT				(1 << 19)
> +#define I915_MIPIA_INTERRUPT				(1 << 18)
> +#define I915_PIPE_CONTROL_NOTIFY_INTERRUPT		(1 << 18)
> +#define I915_DISPLAY_PORT_INTERRUPT			(1 << 17)
> +#define I915_DISPLAY_PIPE_C_HBLANK_INTERRUPT		(1 << 16)
> +#define I915_MASTER_ERROR_INTERRUPT			(1 << 15)
> +#define I915_DISPLAY_PIPE_B_HBLANK_INTERRUPT		(1 << 14)
> +#define I915_GMCH_THERMAL_SENSOR_EVENT_INTERRUPT	(1 << 14) /* p-state */
> +#define I915_DISPLAY_PIPE_A_HBLANK_INTERRUPT		(1 << 13)
> +#define I915_HWB_OOM_INTERRUPT				(1 << 13)
> +#define I915_LPE_PIPE_C_INTERRUPT			(1 << 12)
> +#define I915_SYNC_STATUS_INTERRUPT			(1 << 12)
> +#define I915_MISC_INTERRUPT				(1 << 11)
> +#define I915_DISPLAY_PLANE_A_FLIP_PENDING_INTERRUPT	(1 << 11)
> +#define I915_DISPLAY_PIPE_C_VBLANK_INTERRUPT		(1 << 10)
> +#define I915_DISPLAY_PLANE_B_FLIP_PENDING_INTERRUPT	(1 << 10)
> +#define I915_DISPLAY_PIPE_C_EVENT_INTERRUPT		(1 << 9)
> +#define I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT	(1 << 9)
> +#define I915_DISPLAY_PIPE_C_DPBM_INTERRUPT		(1 << 8)
> +#define I915_DISPLAY_PLANE_C_FLIP_PENDING_INTERRUPT	(1 << 8)
> +#define I915_DISPLAY_PIPE_A_VBLANK_INTERRUPT		(1 << 7)
> +#define I915_DISPLAY_PIPE_A_EVENT_INTERRUPT		(1 << 6)
> +#define I915_DISPLAY_PIPE_B_VBLANK_INTERRUPT		(1 << 5)
> +#define I915_DISPLAY_PIPE_B_EVENT_INTERRUPT		(1 << 4)
> +#define I915_DISPLAY_PIPE_A_DPBM_INTERRUPT		(1 << 3)
> +#define I915_DISPLAY_PIPE_B_DPBM_INTERRUPT		(1 << 2)
> +#define I915_DEBUG_INTERRUPT				(1 << 2)
> +#define I915_WINVALID_INTERRUPT				(1 << 1)
> +#define I915_USER_INTERRUPT				(1 << 1)
> +#define I915_ASLE_INTERRUPT				(1 << 0)
> +#define I915_BSD_USER_INTERRUPT				(1 << 25)
> +
> +#endif

--=20
Jani Nikula, Intel
