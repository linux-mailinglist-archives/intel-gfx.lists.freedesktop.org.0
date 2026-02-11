Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0C1AF6N8jGkcpgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:57:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A65E124967
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:57:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E46610E5AC;
	Wed, 11 Feb 2026 12:57:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KfSK4AYJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D76B910E0C5;
 Wed, 11 Feb 2026 12:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770814624; x=1802350624;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Ijdi7f0lqPCJ/K1VJvG/qiF+/roFUojADyyV86lx08Q=;
 b=KfSK4AYJtV4Tl572EQJBEcxFC9WWyYg81QUUgKTzQUyAYJSyoUcuhzdp
 MuUwWKlcylOb5x1wMSepp9qSjqnCNvSHBIRdOYPba1oqorVT8Qj6qtbW0
 bR9ZMvSx7jS/1kA9QDF4OWZ2W2gJIImdd2KdcSzpAwQspVTYkrLscFMlz
 uQjnRU5JnNJCIRKxWuKyI3a09VIvGGK6Sg3KeUgUYB/stlUskL5F6wI8z
 0B4OvVUylQV/P231GhF0bIM6N9pnaX4Aw3xfzb8FBylwHQjgHVbi3fOVh
 646unHp4ziQfiAtbKPazaspYiU5V8jByhb0ejKpB1NpW3zyKu/fKzz0kC g==;
X-CSE-ConnectionGUID: THneb8izQdynVjzpiYBLyQ==
X-CSE-MsgGUID: YyE3ErnJQMeRXqa/AOn4Hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="83329022"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="83329022"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:57:03 -0800
X-CSE-ConnectionGUID: 0yQPw9J8REetMhbikrAN8A==
X-CSE-MsgGUID: q4L870EqT92dzw57X1n5Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="235225667"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.57])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:57:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v4 12/20] drm/i915: Remove i915_reg.h from i9xx_wm.c
In-Reply-To: <20260205094341.1882816-13-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260205094341.1882816-1-uma.shankar@intel.com>
 <20260205094341.1882816-13-uma.shankar@intel.com>
Date: Wed, 11 Feb 2026 14:56:58 +0200
Message-ID: <8e8467ab1c196c65fcf8ec4508d13579701aaf11@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 7A65E124967
X-Rspamd-Action: no action

On Thu, 05 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move FW_BLC_SELF to common header to make i9xx_wm.c
> free from i915_reg.h include. Introduce a common
> intel_gmd_misc_regs.h to define common miscellaneous
> register definitions across graphics and display.
>
> v3: MISC header included as needed, drop from i915_reg (Jani)
>
> v2: Introdue a common misc header for GMD
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Having something "misc" is always a bit suspect, because it has the risk
of becoming a dumping ground, just because of the name. But let's go
with this anyway for now.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |  2 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  1 +
>  .../gpu/drm/i915/display/intel_display_regs.h |  7 ++++++-
>  drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  1 +
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |  1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  2 ++
>  drivers/gpu/drm/i915/gvt/cmd_parser.c         |  1 +
>  drivers/gpu/drm/i915/gvt/mmio_context.c       |  1 +
>  drivers/gpu/drm/i915/i915_debugfs.c           |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 19 -----------------
>  drivers/gpu/drm/i915/intel_clock_gating.c     |  1 +
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
>  include/drm/intel/intel_gmd_misc_regs.h       | 21 +++++++++++++++++++
>  13 files changed, 38 insertions(+), 21 deletions(-)
>  create mode 100644 include/drm/intel/intel_gmd_misc_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i91=
5/display/i9xx_wm.c
> index 39dfceb438ae..24f898efa9dd 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -6,8 +6,8 @@
>  #include <linux/iopoll.h>
>=20=20
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_misc_regs.h>
>=20=20
> -#include "i915_reg.h"
>  #include "i9xx_wm.h"
>  #include "i9xx_wm_regs.h"
>  #include "intel_atomic.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index aba13e8a9051..f041a7102317 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -13,6 +13,7 @@
>  #include <drm/drm_file.h>
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_misc_regs.h>
>=20=20
>  #include "hsw_ips.h"
>  #include "i915_reg.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/=
gpu/drm/i915/display/intel_display_regs.h
> index 5bc891f6de57..9f241655aa99 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3132,6 +3132,11 @@ enum skl_power_gate {
>  #define   MTL_TRAS_MASK			REG_GENMASK(16, 8)
>  #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
>=20=20
> -
> +#define FW_BLC		_MMIO(0x20d8)
> +#define FW_BLC2		_MMIO(0x20dc)
> +#define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
> +#define   FW_BLC_SELF_EN_MASK      REG_BIT(31)
> +#define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
> +#define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
>=20=20
>  #endif /* __INTEL_DISPLAY_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/d=
rm/i915/gt/intel_ggtt_fencing.c
> index 5eda98ebc1ae..ee90f5323da7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -6,6 +6,7 @@
>  #include <linux/highmem.h>
>=20=20
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_misc_regs.h>
>=20=20
>  #include "display/intel_display.h"
>  #include "i915_drv.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gp=
u/drm/i915/gt/intel_ring_submission.c
> index c1797e49811d..099453dd9cd5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -5,6 +5,7 @@
>=20=20
>  #include <drm/drm_cache.h>
>  #include <drm/intel/intel_gmd_interrupt_regs.h>
> +#include <drm/intel/intel_gmd_misc_regs.h>
>=20=20
>  #include "gem/i915_gem_internal.h"
>=20=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index ece88c612e27..4427812b2438 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -3,6 +3,8 @@
>   * Copyright =C2=A9 2014-2018 Intel Corporation
>   */
>=20=20
> +#include <drm/intel/intel_gmd_misc_regs.h>
> +
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i915_mmio_range.h"
> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915=
/gvt/cmd_parser.c
> index bf7c3d3f5f8a..98c35c78a4ed 100644
> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> @@ -37,6 +37,7 @@
>  #include <linux/slab.h>
>=20=20
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_misc_regs.h>
>=20=20
>  #include "display/i9xx_plane_regs.h"
>  #include "display/intel_display_regs.h"
> diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i9=
15/gvt/mmio_context.c
> index d4e9d485d382..3eb442acdf8d 100644
> --- a/drivers/gpu/drm/i915/gvt/mmio_context.c
> +++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
> @@ -34,6 +34,7 @@
>   */
>=20=20
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_misc_regs.h>
>=20=20
>  #include "gt/intel_context.h"
>  #include "gt/intel_engine_regs.h"
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index 42f6b44f0027..4778ba664ec7 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -33,6 +33,7 @@
>=20=20
>  #include <drm/drm_debugfs.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_misc_regs.h>
>=20=20
>  #include "gem/i915_gem_context.h"
>  #include "gt/intel_gt.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index b808d1ec5387..2bac216bd2b9 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -393,24 +393,10 @@
>=20=20
>  #define GEN2_ERROR_REGS		I915_ERROR_REGS(EMR, EIR)
>=20=20
> -#define INSTPM	        _MMIO(0x20c0)
> -#define   INSTPM_SELF_EN (1 << 12) /* 915GM only */
> -#define   INSTPM_AGPBUSY_INT_EN (1 << 11) /* gen3: when disabled, pendin=
g interrupts
> -					will not assert AGPBUSY# and will only
> -					be delivered when out of C3. */
> -#define   INSTPM_FORCE_ORDERING				(1 << 7) /* GEN6+ */
> -#define   INSTPM_TLB_INVALIDATE	(1 << 9)
> -#define   INSTPM_SYNC_FLUSH	(1 << 5)
>  #define MEM_MODE	_MMIO(0x20cc)
>  #define   MEM_DISPLAY_B_TRICKLE_FEED_DISABLE (1 << 3) /* 830 only */
>  #define   MEM_DISPLAY_A_TRICKLE_FEED_DISABLE (1 << 2) /* 830/845 only */
>  #define   MEM_DISPLAY_TRICKLE_FEED_DISABLE (1 << 2) /* 85x only */
> -#define FW_BLC		_MMIO(0x20d8)
> -#define FW_BLC2		_MMIO(0x20dc)
> -#define FW_BLC_SELF	_MMIO(0x20e0) /* 915+ only */
> -#define   FW_BLC_SELF_EN_MASK      REG_BIT(31)
> -#define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
> -#define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
>  #define MM_BURST_LENGTH     0x00700000
>  #define MM_FIFO_WATERMARK   0x0001F000
>  #define LM_BURST_LENGTH     0x00000700
> @@ -833,11 +819,6 @@
>  #define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
>=20=20
>=20=20
> -#define DISP_ARB_CTL	_MMIO(0x45000)
> -#define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
> -#define   DISP_TILE_SURFACE_SWIZZLING	REG_BIT(13)
> -#define   DISP_FBC_WM_DIS		REG_BIT(15)
> -
>  #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
>  #define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
>  #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
> diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/=
i915/intel_clock_gating.c
> index 4e18d5a22112..1ad31435bd3f 100644
> --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> @@ -26,6 +26,7 @@
>   */
>=20=20
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_misc_regs.h>
>=20=20
>  #include "display/i9xx_plane_regs.h"
>  #include "display/intel_display.h"
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/dr=
m/i915/intel_gvt_mmio_table.c
> index 8cfe9b56f1d0..c8a51e773086 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -4,6 +4,7 @@
>   */
>=20=20
>  #include <drm/intel/intel_pcode_regs.h>
> +#include <drm/intel/intel_gmd_misc_regs.h>
>=20=20
>  #include "display/bxt_dpio_phy_regs.h"
>  #include "display/i9xx_plane_regs.h"
> diff --git a/include/drm/intel/intel_gmd_misc_regs.h b/include/drm/intel/=
intel_gmd_misc_regs.h
> new file mode 100644
> index 000000000000..763d7711f21c
> --- /dev/null
> +++ b/include/drm/intel/intel_gmd_misc_regs.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2026 Intel Corporation */
> +
> +#ifndef _INTEL_GMD_MISC_REGS_H_
> +#define _INTEL_GMD_MISC_REGS_H_
> +
> +#define DISP_ARB_CTL	_MMIO(0x45000)
> +#define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
> +#define   DISP_TILE_SURFACE_SWIZZLING	REG_BIT(13)
> +#define   DISP_FBC_WM_DIS		REG_BIT(15)
> +
> +#define INSTPM	        _MMIO(0x20c0)
> +#define   INSTPM_SELF_EN (1 << 12) /* 915GM only */
> +#define   INSTPM_AGPBUSY_INT_EN (1 << 11) /* gen3: when disabled, pendin=
g interrupts
> +					will not assert AGPBUSY# and will only
> +					be delivered when out of C3. */
> +#define   INSTPM_FORCE_ORDERING				(1 << 7) /* GEN6+ */
> +#define   INSTPM_TLB_INVALIDATE	(1 << 9)
> +#define   INSTPM_SYNC_FLUSH	(1 << 5)
> +
> +#endif

--=20
Jani Nikula, Intel
