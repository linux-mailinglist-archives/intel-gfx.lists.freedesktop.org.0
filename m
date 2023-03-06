Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E90BE6AC3DF
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 15:50:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AEDD10E245;
	Mon,  6 Mar 2023 14:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87D8F10E245
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 14:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678114241; x=1709650241;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=v/H2eXvoNJ6/kJH0F+oNzuXlEbVCv/fVPDYp7Rg9SZQ=;
 b=HLaZR92ZNkpbL1R7tdxrm7YHrcurccyWiPsXPSlgPEUmzn40AZ57Enno
 N260iDUDgA9WLkqZM6byGjUw3gfcvbisd4TOOvrid+KwBn72u08AaUc0T
 TV+0+Ew+3kwmZdxK2XL7Au5kIEbALuwPTENPDSBSv/62Kg8pd3CQXNkY9
 X/Y+Sr8nL355MwTbx4J88aU1j/gFKUY4YgKp88OF1VDaDEyx9SneXh3FA
 ciUVxnGH295jQMgXQOftRKbeFLKj0ioqZe66UZItumyycC5/jczeWXg72
 OPQrWV7eQHly7W5KAKM/v1qQhy0tAR/0fwjTI2XLchGnQyqgrAqqtuH+c Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="335591335"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="335591335"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 06:50:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="1005422506"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="1005422506"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 06 Mar 2023 06:50:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Mar 2023 16:50:37 +0200
Date: Mon, 6 Mar 2023 16:50:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZAX9vTpl1aul4frp@intel.com>
References: <20230301151949.1591501-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230301151949.1591501-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: split out DSC and DSS
 registers
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 01, 2023 at 05:19:49PM +0200, Jani Nikula wrote:
> Relatively few places need the DSC and DSS register definitions. Move
> them to intel_vdsc_regs.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |   1 +
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |   1 +
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    | 462 ++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               | 450 -----------------
>  6 files changed, 466 insertions(+), 450 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index b5316715bb3b..9b83fdc89fa2 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -45,6 +45,7 @@
>  #include "intel_dsi_vbt.h"
>  #include "intel_panel.h"
>  #include "intel_vdsc.h"
> +#include "intel_vdsc_regs.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index e5979427b38b..0c58f042cc7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -68,6 +68,7 @@
>  #include "intel_sprite.h"
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
> +#include "intel_vdsc_regs.h"
>  #include "intel_vrr.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a1fbdf32bd21..edbcb1273ca2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -116,6 +116,7 @@
>  #include "intel_tv.h"
>  #include "intel_vblank.h"
>  #include "intel_vdsc.h"
> +#include "intel_vdsc_regs.h"
>  #include "intel_vga.h"
>  #include "intel_vrr.h"
>  #include "intel_wm.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 207b2a648d32..09b32ffdc552 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -17,6 +17,7 @@
>  #include "intel_dsi.h"
>  #include "intel_qp_tables.h"
>  #include "intel_vdsc.h"
> +#include "intel_vdsc_regs.h"
>  
>  enum ROW_INDEX_BPP {
>  	ROW_INDEX_6BPP = 0,
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> new file mode 100644
> index 000000000000..02cd89077eb6
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -0,0 +1,462 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_VDSC_REGS_H__
> +#define __INTEL_VDSC_REGS_H__
> +
> +#include "intel_display_reg_defs.h"
> +
> +/* Display Stream Splitter Control */
> +#define DSS_CTL1				_MMIO(0x67400)
> +#define  SPLITTER_ENABLE			(1 << 31)
> +#define  JOINER_ENABLE				(1 << 30)
> +#define  DUAL_LINK_MODE_INTERLEAVE		(1 << 24)
> +#define  DUAL_LINK_MODE_FRONTBACK		(0 << 24)
> +#define  OVERLAP_PIXELS_MASK			(0xf << 16)
> +#define  OVERLAP_PIXELS(pixels)			((pixels) << 16)
> +#define  LEFT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
> +#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
> +#define  MAX_DL_BUFFER_TARGET_DEPTH		0x5a0
> +
> +#define DSS_CTL2				_MMIO(0x67404)
> +#define  LEFT_BRANCH_VDSC_ENABLE		(1 << 31)
> +#define  RIGHT_BRANCH_VDSC_ENABLE		(1 << 15)
> +#define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
> +#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
> +
> +#define _ICL_PIPE_DSS_CTL1_PB			0x78200
> +#define _ICL_PIPE_DSS_CTL1_PC			0x78400
> +#define ICL_PIPE_DSS_CTL1(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_PIPE_DSS_CTL1_PB, \
> +							   _ICL_PIPE_DSS_CTL1_PC)
> +#define  BIG_JOINER_ENABLE			(1 << 29)
> +#define  MASTER_BIG_JOINER_ENABLE		(1 << 28)
> +#define  VGA_CENTERING_ENABLE			(1 << 27)
> +#define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
> +#define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
> +#define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
> +#define  UNCOMPRESSED_JOINER_MASTER		(1 << 21)
> +#define  UNCOMPRESSED_JOINER_SLAVE		(1 << 20)
> +
> +#define _ICL_PIPE_DSS_CTL2_PB			0x78204
> +#define _ICL_PIPE_DSS_CTL2_PC			0x78404
> +#define ICL_PIPE_DSS_CTL2(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_PIPE_DSS_CTL2_PB, \
> +							   _ICL_PIPE_DSS_CTL2_PC)
> +
> +/* Icelake Display Stream Compression Registers */
> +#define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
> +#define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC	0x78570
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define  DSC_ALT_ICH_SEL		(1 << 20)
> +#define  DSC_VBR_ENABLE			(1 << 19)
> +#define  DSC_422_ENABLE			(1 << 18)
> +#define  DSC_COLOR_SPACE_CONVERSION	(1 << 17)
> +#define  DSC_BLOCK_PREDICTION		(1 << 16)
> +#define  DSC_LINE_BUF_DEPTH_SHIFT	12
> +#define  DSC_BPC_SHIFT			8
> +#define  DSC_VER_MIN_SHIFT		4
> +#define  DSC_VER_MAJ			(0x1 << 0)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_1		_MMIO(0x6B204)
> +#define DSCC_PICTURE_PARAMETER_SET_1		_MMIO(0x6BA04)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_1_PB	0x78274
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_1_PB	0x78374
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_1_PC	0x78474
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_1_PC	0x78574
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_1_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_1_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_1_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_1_PC)
> +#define  DSC_BPP(bpp)				((bpp) << 0)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_2		_MMIO(0x6B208)
> +#define DSCC_PICTURE_PARAMETER_SET_2		_MMIO(0x6BA08)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_2_PB	0x78278
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB	0x78378
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_2_PC	0x78478
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC	0x78578
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_2_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_2_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB, \
> +					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC)
> +#define  DSC_PIC_WIDTH(pic_width)	((pic_width) << 16)
> +#define  DSC_PIC_HEIGHT(pic_height)	((pic_height) << 0)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_3		_MMIO(0x6B20C)
> +#define DSCC_PICTURE_PARAMETER_SET_3		_MMIO(0x6BA0C)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_3_PB	0x7827C
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB	0x7837C
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_3_PC	0x7847C
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC	0x7857C
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_3_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_3_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC)
> +#define  DSC_SLICE_WIDTH(slice_width)   ((slice_width) << 16)
> +#define  DSC_SLICE_HEIGHT(slice_height) ((slice_height) << 0)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_4		_MMIO(0x6B210)
> +#define DSCC_PICTURE_PARAMETER_SET_4		_MMIO(0x6BA10)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_4_PB	0x78280
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB	0x78380
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_4_PC	0x78480
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC	0x78580
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_4_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_4_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC)
> +#define  DSC_INITIAL_DEC_DELAY(dec_delay)       ((dec_delay) << 16)
> +#define  DSC_INITIAL_XMIT_DELAY(xmit_delay)     ((xmit_delay) << 0)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_5		_MMIO(0x6B214)
> +#define DSCC_PICTURE_PARAMETER_SET_5		_MMIO(0x6BA14)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_5_PB	0x78284
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB	0x78384
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_5_PC	0x78484
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC	0x78584
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_5_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_5_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC)
> +#define  DSC_SCALE_DEC_INT(scale_dec)	((scale_dec) << 16)
> +#define  DSC_SCALE_INC_INT(scale_inc)		((scale_inc) << 0)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_6		_MMIO(0x6B218)
> +#define DSCC_PICTURE_PARAMETER_SET_6		_MMIO(0x6BA18)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_6_PB	0x78288
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB	0x78388
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_6_PC	0x78488
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC	0x78588
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_6_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_6_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC)
> +#define  DSC_FLATNESS_MAX_QP(max_qp)		((max_qp) << 24)
> +#define  DSC_FLATNESS_MIN_QP(min_qp)		((min_qp) << 16)
> +#define  DSC_FIRST_LINE_BPG_OFFSET(offset)	((offset) << 8)
> +#define  DSC_INITIAL_SCALE_VALUE(value)		((value) << 0)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_7		_MMIO(0x6B21C)
> +#define DSCC_PICTURE_PARAMETER_SET_7		_MMIO(0x6BA1C)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_7_PB	0x7828C
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB	0x7838C
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_7_PC	0x7848C
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC	0x7858C
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							    _ICL_DSC0_PICTURE_PARAMETER_SET_7_PB, \
> +							    _ICL_DSC0_PICTURE_PARAMETER_SET_7_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB, \
> +							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC)
> +#define  DSC_NFL_BPG_OFFSET(bpg_offset)		((bpg_offset) << 16)
> +#define  DSC_SLICE_BPG_OFFSET(bpg_offset)	((bpg_offset) << 0)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_8		_MMIO(0x6B220)
> +#define DSCC_PICTURE_PARAMETER_SET_8		_MMIO(0x6BA20)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_8_PB	0x78290
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB	0x78390
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_8_PC	0x78490
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC	0x78590
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_8_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_8_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC)
> +#define  DSC_INITIAL_OFFSET(initial_offset)		((initial_offset) << 16)
> +#define  DSC_FINAL_OFFSET(final_offset)			((final_offset) << 0)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_9		_MMIO(0x6B224)
> +#define DSCC_PICTURE_PARAMETER_SET_9		_MMIO(0x6BA24)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_9_PB	0x78294
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_9_PB	0x78394
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_9_PC	0x78494
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC	0x78594
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_9_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_9_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC)
> +#define  DSC_RC_EDGE_FACTOR(rc_edge_fact)	((rc_edge_fact) << 16)
> +#define  DSC_RC_MODEL_SIZE(rc_model_size)	((rc_model_size) << 0)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_10		_MMIO(0x6B228)
> +#define DSCC_PICTURE_PARAMETER_SET_10		_MMIO(0x6BA28)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_10_PB	0x78298
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_10_PB	0x78398
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_10_PC	0x78498
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC	0x78598
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_10_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_10_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC)
> +#define  DSC_RC_TARGET_OFF_LOW(rc_tgt_off_low)		((rc_tgt_off_low) << 20)
> +#define  DSC_RC_TARGET_OFF_HIGH(rc_tgt_off_high)	((rc_tgt_off_high) << 16)
> +#define  DSC_RC_QUANT_INC_LIMIT1(lim)			((lim) << 8)
> +#define  DSC_RC_QUANT_INC_LIMIT0(lim)			((lim) << 0)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_11		_MMIO(0x6B22C)
> +#define DSCC_PICTURE_PARAMETER_SET_11		_MMIO(0x6BA2C)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_11_PB	0x7829C
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_11_PB	0x7839C
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_11_PC	0x7849C
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_11_PC	0x7859C
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_11(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_11_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_11_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_11(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_11_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_11_PC)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_12		_MMIO(0x6B260)
> +#define DSCC_PICTURE_PARAMETER_SET_12		_MMIO(0x6BA60)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_12_PB	0x782A0
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_12_PB	0x783A0
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_12_PC	0x784A0
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_12_PC	0x785A0
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_12(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_12_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_12_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_12(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_12_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_12_PC)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_13		_MMIO(0x6B264)
> +#define DSCC_PICTURE_PARAMETER_SET_13		_MMIO(0x6BA64)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_13_PB	0x782A4
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_13_PB	0x783A4
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_13_PC	0x784A4
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_13_PC	0x785A4
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_13(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_13_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_13_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_13(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_13_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_13_PC)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_14		_MMIO(0x6B268)
> +#define DSCC_PICTURE_PARAMETER_SET_14		_MMIO(0x6BA68)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_14_PB	0x782A8
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_14_PB	0x783A8
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_14_PC	0x784A8
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_14_PC	0x785A8
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_14(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_14_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_14_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_14(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_14_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_14_PC)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_15		_MMIO(0x6B26C)
> +#define DSCC_PICTURE_PARAMETER_SET_15		_MMIO(0x6BA6C)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_15_PB	0x782AC
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_15_PB	0x783AC
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_15_PC	0x784AC
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_15_PC	0x785AC
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_15(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_15_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_15_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_15(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_15_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_15_PC)
> +
> +#define DSCA_PICTURE_PARAMETER_SET_16		_MMIO(0x6B270)
> +#define DSCC_PICTURE_PARAMETER_SET_16		_MMIO(0x6BA70)
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_16_PB	0x782B0
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_16_PB	0x783B0
> +#define _ICL_DSC0_PICTURE_PARAMETER_SET_16_PC	0x784B0
> +#define _ICL_DSC1_PICTURE_PARAMETER_SET_16_PC	0x785B0
> +#define ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_16_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_16_PC)
> +#define ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PC)
> +#define  DSC_SLICE_ROW_PER_FRAME(slice_row_per_frame)	((slice_row_per_frame) << 20)
> +#define  DSC_SLICE_PER_LINE(slice_per_line)		((slice_per_line) << 16)
> +#define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)		((slice_chunk_size) << 0)
> +
> +/* Icelake Rate Control Buffer Threshold Registers */
> +#define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)
> +#define DSCA_RC_BUF_THRESH_0_UDW		_MMIO(0x6B230 + 4)
> +#define DSCC_RC_BUF_THRESH_0			_MMIO(0x6BA30)
> +#define DSCC_RC_BUF_THRESH_0_UDW		_MMIO(0x6BA30 + 4)
> +#define _ICL_DSC0_RC_BUF_THRESH_0_PB		(0x78254)
> +#define _ICL_DSC0_RC_BUF_THRESH_0_UDW_PB	(0x78254 + 4)
> +#define _ICL_DSC1_RC_BUF_THRESH_0_PB		(0x78354)
> +#define _ICL_DSC1_RC_BUF_THRESH_0_UDW_PB	(0x78354 + 4)
> +#define _ICL_DSC0_RC_BUF_THRESH_0_PC		(0x78454)
> +#define _ICL_DSC0_RC_BUF_THRESH_0_UDW_PC	(0x78454 + 4)
> +#define _ICL_DSC1_RC_BUF_THRESH_0_PC		(0x78554)
> +#define _ICL_DSC1_RC_BUF_THRESH_0_UDW_PC	(0x78554 + 4)
> +#define ICL_DSC0_RC_BUF_THRESH_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +						_ICL_DSC0_RC_BUF_THRESH_0_PB, \
> +						_ICL_DSC0_RC_BUF_THRESH_0_PC)
> +#define ICL_DSC0_RC_BUF_THRESH_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +						_ICL_DSC0_RC_BUF_THRESH_0_UDW_PB, \
> +						_ICL_DSC0_RC_BUF_THRESH_0_UDW_PC)
> +#define ICL_DSC1_RC_BUF_THRESH_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +						_ICL_DSC1_RC_BUF_THRESH_0_PB, \
> +						_ICL_DSC1_RC_BUF_THRESH_0_PC)
> +#define ICL_DSC1_RC_BUF_THRESH_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +						_ICL_DSC1_RC_BUF_THRESH_0_UDW_PB, \
> +						_ICL_DSC1_RC_BUF_THRESH_0_UDW_PC)
> +
> +#define DSCA_RC_BUF_THRESH_1			_MMIO(0x6B238)
> +#define DSCA_RC_BUF_THRESH_1_UDW		_MMIO(0x6B238 + 4)
> +#define DSCC_RC_BUF_THRESH_1			_MMIO(0x6BA38)
> +#define DSCC_RC_BUF_THRESH_1_UDW		_MMIO(0x6BA38 + 4)
> +#define _ICL_DSC0_RC_BUF_THRESH_1_PB		(0x7825C)
> +#define _ICL_DSC0_RC_BUF_THRESH_1_UDW_PB	(0x7825C + 4)
> +#define _ICL_DSC1_RC_BUF_THRESH_1_PB		(0x7835C)
> +#define _ICL_DSC1_RC_BUF_THRESH_1_UDW_PB	(0x7835C + 4)
> +#define _ICL_DSC0_RC_BUF_THRESH_1_PC		(0x7845C)
> +#define _ICL_DSC0_RC_BUF_THRESH_1_UDW_PC	(0x7845C + 4)
> +#define _ICL_DSC1_RC_BUF_THRESH_1_PC		(0x7855C)
> +#define _ICL_DSC1_RC_BUF_THRESH_1_UDW_PC	(0x7855C + 4)
> +#define ICL_DSC0_RC_BUF_THRESH_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +						_ICL_DSC0_RC_BUF_THRESH_1_PB, \
> +						_ICL_DSC0_RC_BUF_THRESH_1_PC)
> +#define ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +						_ICL_DSC0_RC_BUF_THRESH_1_UDW_PB, \
> +						_ICL_DSC0_RC_BUF_THRESH_1_UDW_PC)
> +#define ICL_DSC1_RC_BUF_THRESH_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +						_ICL_DSC1_RC_BUF_THRESH_1_PB, \
> +						_ICL_DSC1_RC_BUF_THRESH_1_PC)
> +#define ICL_DSC1_RC_BUF_THRESH_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +						_ICL_DSC1_RC_BUF_THRESH_1_UDW_PB, \
> +						_ICL_DSC1_RC_BUF_THRESH_1_UDW_PC)
> +
> +/* Icelake DSC Rate Control Range Parameter Registers */
> +#define DSCA_RC_RANGE_PARAMETERS_0		_MMIO(0x6B240)
> +#define DSCA_RC_RANGE_PARAMETERS_0_UDW		_MMIO(0x6B240 + 4)
> +#define DSCC_RC_RANGE_PARAMETERS_0		_MMIO(0x6BA40)
> +#define DSCC_RC_RANGE_PARAMETERS_0_UDW		_MMIO(0x6BA40 + 4)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_PB	(0x78208)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PB	(0x78208 + 4)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_PB	(0x78308)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PB	(0x78308 + 4)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_PC	(0x78408)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PC	(0x78408 + 4)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_PC	(0x78508)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PC	(0x78508 + 4)
> +#define ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_0_PB, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_0_PC)
> +#define ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PB, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PC)
> +#define ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_0_PB, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_0_PC)
> +#define ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PB, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PC)
> +#define RC_BPG_OFFSET_SHIFT			10
> +#define RC_MAX_QP_SHIFT				5
> +#define RC_MIN_QP_SHIFT				0
> +
> +#define DSCA_RC_RANGE_PARAMETERS_1		_MMIO(0x6B248)
> +#define DSCA_RC_RANGE_PARAMETERS_1_UDW		_MMIO(0x6B248 + 4)
> +#define DSCC_RC_RANGE_PARAMETERS_1		_MMIO(0x6BA48)
> +#define DSCC_RC_RANGE_PARAMETERS_1_UDW		_MMIO(0x6BA48 + 4)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_PB	(0x78210)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PB	(0x78210 + 4)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_PB	(0x78310)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PB	(0x78310 + 4)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_PC	(0x78410)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PC	(0x78410 + 4)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_PC	(0x78510)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PC	(0x78510 + 4)
> +#define ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_1_PB, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_1_PC)
> +#define ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PB, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PC)
> +#define ICL_DSC1_RC_RANGE_PARAMETERS_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_1_PB, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_1_PC)
> +#define ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PB, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PC)
> +
> +#define DSCA_RC_RANGE_PARAMETERS_2		_MMIO(0x6B250)
> +#define DSCA_RC_RANGE_PARAMETERS_2_UDW		_MMIO(0x6B250 + 4)
> +#define DSCC_RC_RANGE_PARAMETERS_2		_MMIO(0x6BA50)
> +#define DSCC_RC_RANGE_PARAMETERS_2_UDW		_MMIO(0x6BA50 + 4)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_PB	(0x78218)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PB	(0x78218 + 4)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_PB	(0x78318)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PB	(0x78318 + 4)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_PC	(0x78418)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PC	(0x78418 + 4)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_PC	(0x78518)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PC	(0x78518 + 4)
> +#define ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_2_PB, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_2_PC)
> +#define ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PB, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PC)
> +#define ICL_DSC1_RC_RANGE_PARAMETERS_2(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_2_PB, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_2_PC)
> +#define ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PB, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PC)
> +
> +#define DSCA_RC_RANGE_PARAMETERS_3		_MMIO(0x6B258)
> +#define DSCA_RC_RANGE_PARAMETERS_3_UDW		_MMIO(0x6B258 + 4)
> +#define DSCC_RC_RANGE_PARAMETERS_3		_MMIO(0x6BA58)
> +#define DSCC_RC_RANGE_PARAMETERS_3_UDW		_MMIO(0x6BA58 + 4)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_PB	(0x78220)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PB	(0x78220 + 4)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_PB	(0x78320)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PB	(0x78320 + 4)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_PC	(0x78420)
> +#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PC	(0x78420 + 4)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_PC	(0x78520)
> +#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PC	(0x78520 + 4)
> +#define ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_3_PB, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_3_PC)
> +#define ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PB, \
> +							_ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PC)
> +#define ICL_DSC1_RC_RANGE_PARAMETERS_3(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_3_PB, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_3_PC)
> +#define ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PB, \
> +							_ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PC)
> +
> +
> +#endif /* __INTEL_VDSC_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c1efa655fb68..f2ce4bde6a68 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2298,110 +2298,6 @@
>  #define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(14)
>  #define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(13)
>  
> -/* Icelake DSC Rate Control Range Parameter Registers */
> -#define DSCA_RC_RANGE_PARAMETERS_0		_MMIO(0x6B240)
> -#define DSCA_RC_RANGE_PARAMETERS_0_UDW		_MMIO(0x6B240 + 4)
> -#define DSCC_RC_RANGE_PARAMETERS_0		_MMIO(0x6BA40)
> -#define DSCC_RC_RANGE_PARAMETERS_0_UDW		_MMIO(0x6BA40 + 4)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_PB	(0x78208)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PB	(0x78208 + 4)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_PB	(0x78308)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PB	(0x78308 + 4)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_PC	(0x78408)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PC	(0x78408 + 4)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_PC	(0x78508)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PC	(0x78508 + 4)
> -#define ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_0_PB, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_0_PC)
> -#define ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PB, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW_PC)
> -#define ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_0_PB, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_0_PC)
> -#define ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PB, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW_PC)
> -#define RC_BPG_OFFSET_SHIFT			10
> -#define RC_MAX_QP_SHIFT				5
> -#define RC_MIN_QP_SHIFT				0
> -
> -#define DSCA_RC_RANGE_PARAMETERS_1		_MMIO(0x6B248)
> -#define DSCA_RC_RANGE_PARAMETERS_1_UDW		_MMIO(0x6B248 + 4)
> -#define DSCC_RC_RANGE_PARAMETERS_1		_MMIO(0x6BA48)
> -#define DSCC_RC_RANGE_PARAMETERS_1_UDW		_MMIO(0x6BA48 + 4)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_PB	(0x78210)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PB	(0x78210 + 4)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_PB	(0x78310)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PB	(0x78310 + 4)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_PC	(0x78410)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PC	(0x78410 + 4)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_PC	(0x78510)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PC	(0x78510 + 4)
> -#define ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_1_PB, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_1_PC)
> -#define ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PB, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW_PC)
> -#define ICL_DSC1_RC_RANGE_PARAMETERS_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_1_PB, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_1_PC)
> -#define ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PB, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW_PC)
> -
> -#define DSCA_RC_RANGE_PARAMETERS_2		_MMIO(0x6B250)
> -#define DSCA_RC_RANGE_PARAMETERS_2_UDW		_MMIO(0x6B250 + 4)
> -#define DSCC_RC_RANGE_PARAMETERS_2		_MMIO(0x6BA50)
> -#define DSCC_RC_RANGE_PARAMETERS_2_UDW		_MMIO(0x6BA50 + 4)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_PB	(0x78218)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PB	(0x78218 + 4)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_PB	(0x78318)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PB	(0x78318 + 4)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_PC	(0x78418)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PC	(0x78418 + 4)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_PC	(0x78518)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PC	(0x78518 + 4)
> -#define ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_2_PB, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_2_PC)
> -#define ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PB, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW_PC)
> -#define ICL_DSC1_RC_RANGE_PARAMETERS_2(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_2_PB, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_2_PC)
> -#define ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PB, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW_PC)
> -
> -#define DSCA_RC_RANGE_PARAMETERS_3		_MMIO(0x6B258)
> -#define DSCA_RC_RANGE_PARAMETERS_3_UDW		_MMIO(0x6B258 + 4)
> -#define DSCC_RC_RANGE_PARAMETERS_3		_MMIO(0x6BA58)
> -#define DSCC_RC_RANGE_PARAMETERS_3_UDW		_MMIO(0x6BA58 + 4)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_PB	(0x78220)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PB	(0x78220 + 4)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_PB	(0x78320)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PB	(0x78320 + 4)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_PC	(0x78420)
> -#define _ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PC	(0x78420 + 4)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_PC	(0x78520)
> -#define _ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PC	(0x78520 + 4)
> -#define ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_3_PB, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_3_PC)
> -#define ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PB, \
> -							_ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW_PC)
> -#define ICL_DSC1_RC_RANGE_PARAMETERS_3(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_3_PB, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_3_PC)
> -#define ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PB, \
> -							_ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW_PC)
> -
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)
> @@ -7669,44 +7565,6 @@ enum skl_power_gate {
>  #define PIPE_FRMTMSTMP(pipe)		\
>  			_MMIO_PIPE2(pipe, _PIPE_FRMTMSTMP_A)
>  
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
> -#define  MASTER_BIG_JOINER_ENABLE		(1 << 28)
> -#define  VGA_CENTERING_ENABLE			(1 << 27)
> -#define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
> -#define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
> -#define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
> -#define  UNCOMPRESSED_JOINER_MASTER		(1 << 21)
> -#define  UNCOMPRESSED_JOINER_SLAVE		(1 << 20)
> -
> -#define _ICL_PIPE_DSS_CTL2_PB			0x78204
> -#define _ICL_PIPE_DSS_CTL2_PC			0x78404
> -#define ICL_PIPE_DSS_CTL2(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_PIPE_DSS_CTL2_PB, \
> -							   _ICL_PIPE_DSS_CTL2_PC)
> -
>  #define GGC				_MMIO(0x108040)
>  #define   GMS_MASK			REG_GENMASK(15, 8)
>  #define   GGMS_MASK			REG_GENMASK(7, 6)
> @@ -7730,314 +7588,6 @@ enum skl_power_gate {
>  #define  ICL_PHY_MISC_DE_IO_COMP_PWR_DOWN	(1 << 23)
>  #define  DG2_PHY_DP_TX_ACK_MASK			REG_GENMASK(23, 20)
>  
> -/* Icelake Display Stream Compression Registers */
> -#define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
> -#define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC	0x78570
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> -#define  DSC_ALT_ICH_SEL		(1 << 20)
> -#define  DSC_VBR_ENABLE			(1 << 19)
> -#define  DSC_422_ENABLE			(1 << 18)
> -#define  DSC_COLOR_SPACE_CONVERSION	(1 << 17)
> -#define  DSC_BLOCK_PREDICTION		(1 << 16)
> -#define  DSC_LINE_BUF_DEPTH_SHIFT	12
> -#define  DSC_BPC_SHIFT			8
> -#define  DSC_VER_MIN_SHIFT		4
> -#define  DSC_VER_MAJ			(0x1 << 0)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_1		_MMIO(0x6B204)
> -#define DSCC_PICTURE_PARAMETER_SET_1		_MMIO(0x6BA04)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_1_PB	0x78274
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_1_PB	0x78374
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_1_PC	0x78474
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_1_PC	0x78574
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_1_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_1_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_1_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_1_PC)
> -#define  DSC_BPP(bpp)				((bpp) << 0)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_2		_MMIO(0x6B208)
> -#define DSCC_PICTURE_PARAMETER_SET_2		_MMIO(0x6BA08)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_2_PB	0x78278
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB	0x78378
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_2_PC	0x78478
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC	0x78578
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_2_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_2_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB, \
> -					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC)
> -#define  DSC_PIC_WIDTH(pic_width)	((pic_width) << 16)
> -#define  DSC_PIC_HEIGHT(pic_height)	((pic_height) << 0)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_3		_MMIO(0x6B20C)
> -#define DSCC_PICTURE_PARAMETER_SET_3		_MMIO(0x6BA0C)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_3_PB	0x7827C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB	0x7837C
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_3_PC	0x7847C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC	0x7857C
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_3_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_3_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC)
> -#define  DSC_SLICE_WIDTH(slice_width)   ((slice_width) << 16)
> -#define  DSC_SLICE_HEIGHT(slice_height) ((slice_height) << 0)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_4		_MMIO(0x6B210)
> -#define DSCC_PICTURE_PARAMETER_SET_4		_MMIO(0x6BA10)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_4_PB	0x78280
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB	0x78380
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_4_PC	0x78480
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC	0x78580
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_4_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_4_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC)
> -#define  DSC_INITIAL_DEC_DELAY(dec_delay)       ((dec_delay) << 16)
> -#define  DSC_INITIAL_XMIT_DELAY(xmit_delay)     ((xmit_delay) << 0)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_5		_MMIO(0x6B214)
> -#define DSCC_PICTURE_PARAMETER_SET_5		_MMIO(0x6BA14)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_5_PB	0x78284
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB	0x78384
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_5_PC	0x78484
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC	0x78584
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_5_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_5_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC)
> -#define  DSC_SCALE_DEC_INT(scale_dec)	((scale_dec) << 16)
> -#define  DSC_SCALE_INC_INT(scale_inc)		((scale_inc) << 0)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_6		_MMIO(0x6B218)
> -#define DSCC_PICTURE_PARAMETER_SET_6		_MMIO(0x6BA18)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_6_PB	0x78288
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB	0x78388
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_6_PC	0x78488
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC	0x78588
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_6_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_6_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC)
> -#define  DSC_FLATNESS_MAX_QP(max_qp)		((max_qp) << 24)
> -#define  DSC_FLATNESS_MIN_QP(min_qp)		((min_qp) << 16)
> -#define  DSC_FIRST_LINE_BPG_OFFSET(offset)	((offset) << 8)
> -#define  DSC_INITIAL_SCALE_VALUE(value)		((value) << 0)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_7		_MMIO(0x6B21C)
> -#define DSCC_PICTURE_PARAMETER_SET_7		_MMIO(0x6BA1C)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_7_PB	0x7828C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB	0x7838C
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_7_PC	0x7848C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC	0x7858C
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							    _ICL_DSC0_PICTURE_PARAMETER_SET_7_PB, \
> -							    _ICL_DSC0_PICTURE_PARAMETER_SET_7_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB, \
> -							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC)
> -#define  DSC_NFL_BPG_OFFSET(bpg_offset)		((bpg_offset) << 16)
> -#define  DSC_SLICE_BPG_OFFSET(bpg_offset)	((bpg_offset) << 0)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_8		_MMIO(0x6B220)
> -#define DSCC_PICTURE_PARAMETER_SET_8		_MMIO(0x6BA20)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_8_PB	0x78290
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB	0x78390
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_8_PC	0x78490
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC	0x78590
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_8_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_8_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC)
> -#define  DSC_INITIAL_OFFSET(initial_offset)		((initial_offset) << 16)
> -#define  DSC_FINAL_OFFSET(final_offset)			((final_offset) << 0)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_9		_MMIO(0x6B224)
> -#define DSCC_PICTURE_PARAMETER_SET_9		_MMIO(0x6BA24)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_9_PB	0x78294
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_9_PB	0x78394
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_9_PC	0x78494
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC	0x78594
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_9_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_9_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC)
> -#define  DSC_RC_EDGE_FACTOR(rc_edge_fact)	((rc_edge_fact) << 16)
> -#define  DSC_RC_MODEL_SIZE(rc_model_size)	((rc_model_size) << 0)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_10		_MMIO(0x6B228)
> -#define DSCC_PICTURE_PARAMETER_SET_10		_MMIO(0x6BA28)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_10_PB	0x78298
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_10_PB	0x78398
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_10_PC	0x78498
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC	0x78598
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_10_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_10_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC)
> -#define  DSC_RC_TARGET_OFF_LOW(rc_tgt_off_low)		((rc_tgt_off_low) << 20)
> -#define  DSC_RC_TARGET_OFF_HIGH(rc_tgt_off_high)	((rc_tgt_off_high) << 16)
> -#define  DSC_RC_QUANT_INC_LIMIT1(lim)			((lim) << 8)
> -#define  DSC_RC_QUANT_INC_LIMIT0(lim)			((lim) << 0)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_11		_MMIO(0x6B22C)
> -#define DSCC_PICTURE_PARAMETER_SET_11		_MMIO(0x6BA2C)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_11_PB	0x7829C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_11_PB	0x7839C
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_11_PC	0x7849C
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_11_PC	0x7859C
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_11(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_11_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_11_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_11(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_11_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_11_PC)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_12		_MMIO(0x6B260)
> -#define DSCC_PICTURE_PARAMETER_SET_12		_MMIO(0x6BA60)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_12_PB	0x782A0
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_12_PB	0x783A0
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_12_PC	0x784A0
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_12_PC	0x785A0
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_12(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_12_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_12_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_12(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_12_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_12_PC)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_13		_MMIO(0x6B264)
> -#define DSCC_PICTURE_PARAMETER_SET_13		_MMIO(0x6BA64)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_13_PB	0x782A4
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_13_PB	0x783A4
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_13_PC	0x784A4
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_13_PC	0x785A4
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_13(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_13_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_13_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_13(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_13_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_13_PC)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_14		_MMIO(0x6B268)
> -#define DSCC_PICTURE_PARAMETER_SET_14		_MMIO(0x6BA68)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_14_PB	0x782A8
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_14_PB	0x783A8
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_14_PC	0x784A8
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_14_PC	0x785A8
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_14(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_14_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_14_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_14(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_14_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_14_PC)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_15		_MMIO(0x6B26C)
> -#define DSCC_PICTURE_PARAMETER_SET_15		_MMIO(0x6BA6C)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_15_PB	0x782AC
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_15_PB	0x783AC
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_15_PC	0x784AC
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_15_PC	0x785AC
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_15(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_15_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_15_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_15(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_15_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_15_PC)
> -
> -#define DSCA_PICTURE_PARAMETER_SET_16		_MMIO(0x6B270)
> -#define DSCC_PICTURE_PARAMETER_SET_16		_MMIO(0x6BA70)
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_16_PB	0x782B0
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_16_PB	0x783B0
> -#define _ICL_DSC0_PICTURE_PARAMETER_SET_16_PC	0x784B0
> -#define _ICL_DSC1_PICTURE_PARAMETER_SET_16_PC	0x785B0
> -#define ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_16_PB, \
> -							   _ICL_DSC0_PICTURE_PARAMETER_SET_16_PC)
> -#define ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PB, \
> -							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PC)
> -#define  DSC_SLICE_ROW_PER_FRAME(slice_row_per_frame)	((slice_row_per_frame) << 20)
> -#define  DSC_SLICE_PER_LINE(slice_per_line)		((slice_per_line) << 16)
> -#define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)		((slice_chunk_size) << 0)
> -
> -/* Icelake Rate Control Buffer Threshold Registers */
> -#define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)
> -#define DSCA_RC_BUF_THRESH_0_UDW		_MMIO(0x6B230 + 4)
> -#define DSCC_RC_BUF_THRESH_0			_MMIO(0x6BA30)
> -#define DSCC_RC_BUF_THRESH_0_UDW		_MMIO(0x6BA30 + 4)
> -#define _ICL_DSC0_RC_BUF_THRESH_0_PB		(0x78254)
> -#define _ICL_DSC0_RC_BUF_THRESH_0_UDW_PB	(0x78254 + 4)
> -#define _ICL_DSC1_RC_BUF_THRESH_0_PB		(0x78354)
> -#define _ICL_DSC1_RC_BUF_THRESH_0_UDW_PB	(0x78354 + 4)
> -#define _ICL_DSC0_RC_BUF_THRESH_0_PC		(0x78454)
> -#define _ICL_DSC0_RC_BUF_THRESH_0_UDW_PC	(0x78454 + 4)
> -#define _ICL_DSC1_RC_BUF_THRESH_0_PC		(0x78554)
> -#define _ICL_DSC1_RC_BUF_THRESH_0_UDW_PC	(0x78554 + 4)
> -#define ICL_DSC0_RC_BUF_THRESH_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -						_ICL_DSC0_RC_BUF_THRESH_0_PB, \
> -						_ICL_DSC0_RC_BUF_THRESH_0_PC)
> -#define ICL_DSC0_RC_BUF_THRESH_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -						_ICL_DSC0_RC_BUF_THRESH_0_UDW_PB, \
> -						_ICL_DSC0_RC_BUF_THRESH_0_UDW_PC)
> -#define ICL_DSC1_RC_BUF_THRESH_0(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -						_ICL_DSC1_RC_BUF_THRESH_0_PB, \
> -						_ICL_DSC1_RC_BUF_THRESH_0_PC)
> -#define ICL_DSC1_RC_BUF_THRESH_0_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -						_ICL_DSC1_RC_BUF_THRESH_0_UDW_PB, \
> -						_ICL_DSC1_RC_BUF_THRESH_0_UDW_PC)
> -
> -#define DSCA_RC_BUF_THRESH_1			_MMIO(0x6B238)
> -#define DSCA_RC_BUF_THRESH_1_UDW		_MMIO(0x6B238 + 4)
> -#define DSCC_RC_BUF_THRESH_1			_MMIO(0x6BA38)
> -#define DSCC_RC_BUF_THRESH_1_UDW		_MMIO(0x6BA38 + 4)
> -#define _ICL_DSC0_RC_BUF_THRESH_1_PB		(0x7825C)
> -#define _ICL_DSC0_RC_BUF_THRESH_1_UDW_PB	(0x7825C + 4)
> -#define _ICL_DSC1_RC_BUF_THRESH_1_PB		(0x7835C)
> -#define _ICL_DSC1_RC_BUF_THRESH_1_UDW_PB	(0x7835C + 4)
> -#define _ICL_DSC0_RC_BUF_THRESH_1_PC		(0x7845C)
> -#define _ICL_DSC0_RC_BUF_THRESH_1_UDW_PC	(0x7845C + 4)
> -#define _ICL_DSC1_RC_BUF_THRESH_1_PC		(0x7855C)
> -#define _ICL_DSC1_RC_BUF_THRESH_1_UDW_PC	(0x7855C + 4)
> -#define ICL_DSC0_RC_BUF_THRESH_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -						_ICL_DSC0_RC_BUF_THRESH_1_PB, \
> -						_ICL_DSC0_RC_BUF_THRESH_1_PC)
> -#define ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -						_ICL_DSC0_RC_BUF_THRESH_1_UDW_PB, \
> -						_ICL_DSC0_RC_BUF_THRESH_1_UDW_PC)
> -#define ICL_DSC1_RC_BUF_THRESH_1(pipe)		_MMIO_PIPE((pipe) - PIPE_B, \
> -						_ICL_DSC1_RC_BUF_THRESH_1_PB, \
> -						_ICL_DSC1_RC_BUF_THRESH_1_PC)
> -#define ICL_DSC1_RC_BUF_THRESH_1_UDW(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
> -						_ICL_DSC1_RC_BUF_THRESH_1_UDW_PB, \
> -						_ICL_DSC1_RC_BUF_THRESH_1_UDW_PC)
> -
>  #define PORT_TX_DFLEXDPSP(fia)			_MMIO_FIA((fia), 0x008A0)
>  #define   MODULAR_FIA_MASK			(1 << 4)
>  #define   TC_LIVE_STATE_TBT(idx)		(1 << ((idx) * 8 + 6))
> -- 
> 2.39.1

-- 
Ville Syrjälä
Intel
