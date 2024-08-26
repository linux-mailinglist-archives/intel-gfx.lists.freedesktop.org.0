Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C104095F018
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA1BA10E16F;
	Mon, 26 Aug 2024 11:46:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ed39NIk+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1C2010E103;
 Mon, 26 Aug 2024 11:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724672777; x=1756208777;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=sdYJE5r5ShnlgJW1nbKJUYgfWQ//2ELBGS1K9SZSXnc=;
 b=ed39NIk+CpAt54HglJVK3saGnFozKU9Trtg/md4Eqp7Bq+cixhqOOWfC
 A7wzZzPpthPpCnwz+cVMR/EyeeBcJP+VAKO1P7xlQakZ8mzEF8HEt3k15
 B5RFty43dnioKqWdV97XHcEyOLtGCqJI51lXWw+YChF596fcMMT8z0ymT
 RCAFtDT0Z5shpsmh2rMsbA+OxLNCshQgZt4iUhDxw7ABvMLw0ovDKdfSZ
 SK2SYjz7GpM7OuijX8A2TO7tKSOt3yYABBe45z4wMOyPNUE2xqs8hdJPV
 +olEHA+F1UeVbdbDDrvbm8ystSn82E8cpepOjrgeQ+7svmEslpKRJQKKr w==;
X-CSE-ConnectionGUID: c/hJ6d5GSpC0H1KnjRiYkw==
X-CSE-MsgGUID: g7A9MlX7Tbq6hndsPJYanw==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="40594743"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="40594743"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:46:16 -0700
X-CSE-ConnectionGUID: I7DxfV9oTSybnMqn37vwuA==
X-CSE-MsgGUID: udG1QWuIRWiNSzrv4f1mRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67411583"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.113])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:46:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 01/12] drm/i915/display: Move all DSS control registers
 to a new file
In-Reply-To: <20240826111527.1113622-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
 <20240826111527.1113622-2-ankit.k.nautiyal@intel.com>
Date: Mon, 26 Aug 2024 14:46:01 +0300
Message-ID: <875xrn33t2.fsf@intel.com>
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

On Mon, 26 Aug 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Move all registers and bits related to dss ctl to a new file. While at it,
> use REG_* macros for the fields.

This actually makes review harder. Having separate commits for moving
stuff around and modification is *much* easier.

As a reviewer, if you apply the patches, it's really powerful to be able
to just look at 'git show --color-moved' on the movement patch, and 'git
show --color-words' on the modifications.

See for example:

git show 8c8667682e8414fd766c376219487a085f03e823 --color-moved
git show a9d32a4613082db444de623a513cb04809160e30 --color-words

BR,
Jani.

>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_dss_regs.h | 49 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  1 +
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    | 38 --------------
>  6 files changed, 53 insertions(+), 41 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dss_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 293efc1f841d..5ad5011e1fee 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -44,9 +44,9 @@
>  #include "intel_de.h"
>  #include "intel_dsi.h"
>  #include "intel_dsi_vbt.h"
> +#include "intel_dss_regs.h"
>  #include "intel_panel.h"
>  #include "intel_vdsc.h"
> -#include "intel_vdsc_regs.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 25ff3ff0ab95..4566a60c981c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -57,6 +57,7 @@
>  #include "intel_dp_tunnel.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_dsi.h"
> +#include "intel_dss_regs.h"
>  #include "intel_encoder.h"
>  #include "intel_fdi.h"
>  #include "intel_fifo_underrun.h"
> @@ -74,7 +75,6 @@
>  #include "intel_snps_phy.h"
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
> -#include "intel_vdsc_regs.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1042f65967ba..8bce46bb7f3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -87,6 +87,7 @@
>  #include "intel_drrs.h"
>  #include "intel_dsb.h"
>  #include "intel_dsi.h"
> +#include "intel_dss_regs.h"
>  #include "intel_dvo.h"
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
> @@ -118,7 +119,6 @@
>  #include "intel_tv.h"
>  #include "intel_vblank.h"
>  #include "intel_vdsc.h"
> -#include "intel_vdsc_regs.h"
>  #include "intel_vga.h"
>  #include "intel_vrr.h"
>  #include "intel_wm.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dss_regs.h b/drivers/gpu/=
drm/i915/display/intel_dss_regs.h
> new file mode 100644
> index 000000000000..462cc9aff4d7
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dss_regs.h
> @@ -0,0 +1,49 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DSS_REGS_H__
> +#define __INTEL_DSS_REGS_H__
> +
> +#include "intel_display_reg_defs.h"
> +
> +/* Display Stream Splitter Control */
> +#define DSS_CTL1				_MMIO(0x67400)
> +#define  SPLITTER_ENABLE			REG_BIT(31)
> +#define  JOINER_ENABLE				REG_BIT(30)
> +#define  DUAL_LINK_MODE_INTERLEAVE		REG_BIT(24)
> +#define  DUAL_LINK_MODE_FRONTBACK		(0 << 24)
> +#define  OVERLAP_PIXELS_MASK			REG_GENMASK(19, 16)
> +#define  OVERLAP_PIXELS(pixels)			REG_FIELD_PREP(OVERLAP_PIXELS_MASK, pi=
xels)
> +#define  LEFT_DL_BUF_TARGET_DEPTH_MASK		REG_GENMASK(12, 0)
> +#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	REG_FIELD_PREP(LEFT_DL_BUF_TAR=
GET_DEPTH_MASK, pixels)
> +#define  MAX_DL_BUFFER_TARGET_DEPTH		0x5a0
> +
> +#define DSS_CTL2				_MMIO(0x67404)
> +#define  LEFT_BRANCH_VDSC_ENABLE		REG_BIT(31)
> +#define  RIGHT_BRANCH_VDSC_ENABLE		REG_BIT(15)
> +#define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		REG_GENMASK(12, 0)
> +#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	REG_FIELD_PREP(RIGHT_DL_BUF_T=
ARGET_DEPTH_MASK, pixels)
> +
> +#define _ICL_PIPE_DSS_CTL1_PB			0x78200
> +#define _ICL_PIPE_DSS_CTL1_PC			0x78400
> +#define ICL_PIPE_DSS_CTL1(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_PIPE_DSS_CTL1_PB, \
> +							   _ICL_PIPE_DSS_CTL1_PC)
> +#define  BIG_JOINER_ENABLE			REG_BIT(29)
> +#define  PRIMARY_BIG_JOINER_ENABLE		REG_BIT(28)
> +#define  VGA_CENTERING_ENABLE			REG_BIT(27)
> +#define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
> +#define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIG=
URATION_MASK, 0)
> +#define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIG=
URATION_MASK, 1)
> +#define  UNCOMPRESSED_JOINER_PRIMARY		REG_BIT(21)
> +#define  UNCOMPRESSED_JOINER_SECONDARY		REG_BIT(20)
> +
> +#define _ICL_PIPE_DSS_CTL2_PB			0x78204
> +#define _ICL_PIPE_DSS_CTL2_PC			0x78404
> +#define ICL_PIPE_DSS_CTL2(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_PIPE_DSS_CTL2_PB, \
> +							   _ICL_PIPE_DSS_CTL2_PC)
> +
> +#endif /* __INTEL_DSS_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/=
i915/display/intel_vdsc.c
> index 2e849b015e74..891346f1f09a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -15,6 +15,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dsi.h"
> +#include "intel_dss_regs.h"
>  #include "intel_qp_tables.h"
>  #include "intel_vdsc.h"
>  #include "intel_vdsc_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu=
/drm/i915/display/intel_vdsc_regs.h
> index f921ad67b587..27c696e266af 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -8,44 +8,6 @@
>=20=20
>  #include "intel_display_reg_defs.h"
>=20=20
> -/* Display Stream Splitter Control */
> -#define DSS_CTL1				_MMIO(0x67400)
> -#define  SPLITTER_ENABLE			(1 << 31)
> -#define  JOINER_ENABLE				(1 << 30)
> -#define  DUAL_LINK_MODE_INTERLEAVE		(1 << 24)
> -#define  DUAL_LINK_MODE_FRONTBACK		(0 << 24)
> -#define  OVERLAP_PIXELS_MASK			(0xf << 16)
> -#define  OVERLAP_PIXELS(pixels)			((pixels) << 16)
> -#define  LEFT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
> -#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
> -#define  MAX_DL_BUFFER_TARGET_DEPTH		0x5a0
> -
> -#define DSS_CTL2				_MMIO(0x67404)
> -#define  LEFT_BRANCH_VDSC_ENABLE		(1 << 31)
> -#define  RIGHT_BRANCH_VDSC_ENABLE		(1 << 15)
> -#define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
> -#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
> -
> -#define _ICL_PIPE_DSS_CTL1_PB			0x78200
> -#define _ICL_PIPE_DSS_CTL1_PC			0x78400
> -#define ICL_PIPE_DSS_CTL1(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_PIPE_DSS_CTL1_PB, \
> -							   _ICL_PIPE_DSS_CTL1_PC)
> -#define  BIG_JOINER_ENABLE			(1 << 29)
> -#define  PRIMARY_BIG_JOINER_ENABLE		(1 << 28)
> -#define  VGA_CENTERING_ENABLE			(1 << 27)
> -#define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
> -#define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIG=
URATION_MASK, 0)
> -#define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIG=
URATION_MASK, 1)
> -#define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
> -#define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
> -
> -#define _ICL_PIPE_DSS_CTL2_PB			0x78204
> -#define _ICL_PIPE_DSS_CTL2_PC			0x78404
> -#define ICL_PIPE_DSS_CTL2(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_PIPE_DSS_CTL2_PB, \
> -							   _ICL_PIPE_DSS_CTL2_PC)
> -
>  /* Icelake Display Stream Compression Registers */
>  #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
>  #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)

--=20
Jani Nikula, Intel
