Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1522D4B9814
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 06:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE85410E7F9;
	Thu, 17 Feb 2022 05:18:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 032C410E857
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 05:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645075089; x=1676611089;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bE9RgdnGxMThfvaF+z1DAGwLFmo04px8CpDbrtlwMEs=;
 b=Vn+DjQkZzzcLsjRHD96PeKJ04M76YN1KzIBqug9LAIDRXiw6RrbeDgVk
 VLU5MA7LsjK6du9j/PZUTAweGbKJ5e2cb6ylFR1+zn1pM6+RBA1Rznjfl
 lxdYuQmv8I7Rt6OtjXdhTAVesbvk1CjbViKXJuQDXvtRSpoQ2vEUVZ35k
 bdSTnIMaRjs4fcQL0tDbNZzucMU27onnbQvlbzzl6PcGHSsb1x0yPYQv1
 0LnkbFyRAh6MLVejp0zqm6fRIstruhmJoYl5ahjftk6PbfTD49fLyAkfd
 JW7YRZV8wU7Bk8VLTTsdDlwV+95yTtEVlBzAWsXWu7CvRV/3naa5SGbJq g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="314066306"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="314066306"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 21:18:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="571629115"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 21:18:08 -0800
Date: Wed, 16 Feb 2022 21:18:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yg3ajiX52u5cqrSN@mdroper-desk1.amr.corp.intel.com>
References: <20220216154711.3329667-1-jani.nikula@intel.com>
 <20220216154711.3329667-4-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220216154711.3329667-4-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/reg: split out icl_dsi_regs.h
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

On Wed, Feb 16, 2022 at 05:47:11PM +0200, Jani Nikula wrote:
> The ICL DSI registers have fairly isolated usage. Split the register
> macros to a separate file.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c      |   1 +
>  drivers/gpu/drm/i915/display/icl_dsi_regs.h | 342 ++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_irq.c             |   1 +
>  drivers/gpu/drm/i915/i915_reg.h             | 333 -------------------
>  4 files changed, 344 insertions(+), 333 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/icl_dsi_regs.h
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 3c01565e62b2..13b07c6fd6be 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -29,6 +29,7 @@
>  #include <drm/drm_mipi_dsi.h>
>  
>  #include "icl_dsi.h"
> +#include "icl_dsi_regs.h"
>  #include "intel_atomic.h"
>  #include "intel_backlight.h"
>  #include "intel_combo_phy.h"
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> new file mode 100644
> index 000000000000..f78f28b8dd94
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> @@ -0,0 +1,342 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright � 2022 Intel Corporation
> + */
> +
> +#ifndef __ICL_DSI_REGS_H__
> +#define __ICL_DSI_REGS_H__
> +
> +#include "i915_reg_defs.h"
> +
> +/* Gen11 DSI */
> +#define _MMIO_DSI(tc, dsi0, dsi1)	_MMIO_TRANS((tc) - TRANSCODER_DSI_0, \
> +						    dsi0, dsi1)
> +#define _ICL_DSI_ESC_CLK_DIV0		0x6b090
> +#define _ICL_DSI_ESC_CLK_DIV1		0x6b890
> +#define ICL_DSI_ESC_CLK_DIV(port)	_MMIO_PORT((port),	\
> +							_ICL_DSI_ESC_CLK_DIV0, \
> +							_ICL_DSI_ESC_CLK_DIV1)
> +#define _ICL_DPHY_ESC_CLK_DIV0		0x162190
> +#define _ICL_DPHY_ESC_CLK_DIV1		0x6C190
> +#define ICL_DPHY_ESC_CLK_DIV(port)	_MMIO_PORT((port),	\
> +						_ICL_DPHY_ESC_CLK_DIV0, \
> +						_ICL_DPHY_ESC_CLK_DIV1)
> +#define  ICL_BYTE_CLK_PER_ESC_CLK_MASK		(0x1f << 16)
> +#define  ICL_BYTE_CLK_PER_ESC_CLK_SHIFT	16
> +#define  ICL_ESC_CLK_DIV_MASK			0x1ff
> +#define  ICL_ESC_CLK_DIV_SHIFT			0
> +#define DSI_MAX_ESC_CLK			20000		/* in KHz */
> +
> +#define _ADL_MIPIO_REG			0x180
> +#define ADL_MIPIO_DW(port, dw)		_MMIO(_ICL_COMBOPHY(port) + _ADL_MIPIO_REG + 4 * (dw))
> +#define   TX_ESC_CLK_DIV_PHY_SEL	REGBIT(16)
> +#define   TX_ESC_CLK_DIV_PHY_MASK	REG_GENMASK(23, 16)
> +#define   TX_ESC_CLK_DIV_PHY		REG_FIELD_PREP(TX_ESC_CLK_DIV_PHY_MASK, 0x7f)
> +
> +#define _DSI_CMD_FRMCTL_0		0x6b034
> +#define _DSI_CMD_FRMCTL_1		0x6b834
> +#define DSI_CMD_FRMCTL(port)		_MMIO_PORT(port,	\
> +						   _DSI_CMD_FRMCTL_0,\
> +						   _DSI_CMD_FRMCTL_1)
> +#define   DSI_FRAME_UPDATE_REQUEST		(1 << 31)
> +#define   DSI_PERIODIC_FRAME_UPDATE_ENABLE	(1 << 29)
> +#define   DSI_NULL_PACKET_ENABLE		(1 << 28)
> +#define   DSI_FRAME_IN_PROGRESS			(1 << 0)
> +
> +#define _DSI_INTR_MASK_REG_0		0x6b070
> +#define _DSI_INTR_MASK_REG_1		0x6b870
> +#define DSI_INTR_MASK_REG(port)		_MMIO_PORT(port,	\
> +						   _DSI_INTR_MASK_REG_0,\
> +						   _DSI_INTR_MASK_REG_1)
> +
> +#define _DSI_INTR_IDENT_REG_0		0x6b074
> +#define _DSI_INTR_IDENT_REG_1		0x6b874
> +#define DSI_INTR_IDENT_REG(port)	_MMIO_PORT(port,	\
> +						   _DSI_INTR_IDENT_REG_0,\
> +						   _DSI_INTR_IDENT_REG_1)
> +#define   DSI_TE_EVENT				(1 << 31)
> +#define   DSI_RX_DATA_OR_BTA_TERMINATED		(1 << 30)
> +#define   DSI_TX_DATA				(1 << 29)
> +#define   DSI_ULPS_ENTRY_DONE			(1 << 28)
> +#define   DSI_NON_TE_TRIGGER_RECEIVED		(1 << 27)
> +#define   DSI_HOST_CHKSUM_ERROR			(1 << 26)
> +#define   DSI_HOST_MULTI_ECC_ERROR		(1 << 25)
> +#define   DSI_HOST_SINGL_ECC_ERROR		(1 << 24)
> +#define   DSI_HOST_CONTENTION_DETECTED		(1 << 23)
> +#define   DSI_HOST_FALSE_CONTROL_ERROR		(1 << 22)
> +#define   DSI_HOST_TIMEOUT_ERROR		(1 << 21)
> +#define   DSI_HOST_LOW_POWER_TX_SYNC_ERROR	(1 << 20)
> +#define   DSI_HOST_ESCAPE_MODE_ENTRY_ERROR	(1 << 19)
> +#define   DSI_FRAME_UPDATE_DONE			(1 << 16)
> +#define   DSI_PROTOCOL_VIOLATION_REPORTED	(1 << 15)
> +#define   DSI_INVALID_TX_LENGTH			(1 << 13)
> +#define   DSI_INVALID_VC			(1 << 12)
> +#define   DSI_INVALID_DATA_TYPE			(1 << 11)
> +#define   DSI_PERIPHERAL_CHKSUM_ERROR		(1 << 10)
> +#define   DSI_PERIPHERAL_MULTI_ECC_ERROR	(1 << 9)
> +#define   DSI_PERIPHERAL_SINGLE_ECC_ERROR	(1 << 8)
> +#define   DSI_PERIPHERAL_CONTENTION_DETECTED	(1 << 7)
> +#define   DSI_PERIPHERAL_FALSE_CTRL_ERROR	(1 << 6)
> +#define   DSI_PERIPHERAL_TIMEOUT_ERROR		(1 << 5)
> +#define   DSI_PERIPHERAL_LP_TX_SYNC_ERROR	(1 << 4)
> +#define   DSI_PERIPHERAL_ESC_MODE_ENTRY_CMD_ERR	(1 << 3)
> +#define   DSI_EOT_SYNC_ERROR			(1 << 2)
> +#define   DSI_SOT_SYNC_ERROR			(1 << 1)
> +#define   DSI_SOT_ERROR				(1 << 0)
> +
> +/* ICL DSI MODE control */
> +#define _ICL_DSI_IO_MODECTL_0				0x6B094
> +#define _ICL_DSI_IO_MODECTL_1				0x6B894
> +#define ICL_DSI_IO_MODECTL(port)	_MMIO_PORT(port,	\
> +						    _ICL_DSI_IO_MODECTL_0, \
> +						    _ICL_DSI_IO_MODECTL_1)
> +#define  COMBO_PHY_MODE_DSI				(1 << 0)
> +
> +/* TGL DSI Chicken register */
> +#define _TGL_DSI_CHKN_REG_0			0x6B0C0
> +#define _TGL_DSI_CHKN_REG_1			0x6B8C0
> +#define TGL_DSI_CHKN_REG(port)		_MMIO_PORT(port,	\
> +						    _TGL_DSI_CHKN_REG_0, \
> +						    _TGL_DSI_CHKN_REG_1)
> +#define TGL_DSI_CHKN_LSHS_GB_MASK		REG_GENMASK(15, 12)
> +#define TGL_DSI_CHKN_LSHS_GB(byte_clocks)	REG_FIELD_PREP(TGL_DSI_CHKN_LSHS_GB_MASK, \
> +							       (byte_clocks))
> +#define _ICL_DSI_T_INIT_MASTER_0	0x6b088
> +#define _ICL_DSI_T_INIT_MASTER_1	0x6b888
> +#define ICL_DSI_T_INIT_MASTER(port)	_MMIO_PORT(port,	\
> +						   _ICL_DSI_T_INIT_MASTER_0,\
> +						   _ICL_DSI_T_INIT_MASTER_1)
> +#define   DSI_T_INIT_MASTER_MASK	REG_GENMASK(15, 0)
> +
> +#define _DPHY_CLK_TIMING_PARAM_0	0x162180
> +#define _DPHY_CLK_TIMING_PARAM_1	0x6c180
> +#define DPHY_CLK_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> +						   _DPHY_CLK_TIMING_PARAM_0,\
> +						   _DPHY_CLK_TIMING_PARAM_1)
> +#define _DSI_CLK_TIMING_PARAM_0		0x6b080
> +#define _DSI_CLK_TIMING_PARAM_1		0x6b880
> +#define DSI_CLK_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> +						   _DSI_CLK_TIMING_PARAM_0,\
> +						   _DSI_CLK_TIMING_PARAM_1)
> +#define  CLK_PREPARE_OVERRIDE		(1 << 31)
> +#define  CLK_PREPARE(x)		((x) << 28)
> +#define  CLK_PREPARE_MASK		(0x7 << 28)
> +#define  CLK_PREPARE_SHIFT		28
> +#define  CLK_ZERO_OVERRIDE		(1 << 27)
> +#define  CLK_ZERO(x)			((x) << 20)
> +#define  CLK_ZERO_MASK			(0xf << 20)
> +#define  CLK_ZERO_SHIFT		20
> +#define  CLK_PRE_OVERRIDE		(1 << 19)
> +#define  CLK_PRE(x)			((x) << 16)
> +#define  CLK_PRE_MASK			(0x3 << 16)
> +#define  CLK_PRE_SHIFT			16
> +#define  CLK_POST_OVERRIDE		(1 << 15)
> +#define  CLK_POST(x)			((x) << 8)
> +#define  CLK_POST_MASK			(0x7 << 8)
> +#define  CLK_POST_SHIFT		8
> +#define  CLK_TRAIL_OVERRIDE		(1 << 7)
> +#define  CLK_TRAIL(x)			((x) << 0)
> +#define  CLK_TRAIL_MASK		(0xf << 0)
> +#define  CLK_TRAIL_SHIFT		0
> +
> +#define _DPHY_DATA_TIMING_PARAM_0	0x162184
> +#define _DPHY_DATA_TIMING_PARAM_1	0x6c184
> +#define DPHY_DATA_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> +						   _DPHY_DATA_TIMING_PARAM_0,\
> +						   _DPHY_DATA_TIMING_PARAM_1)
> +#define _DSI_DATA_TIMING_PARAM_0	0x6B084
> +#define _DSI_DATA_TIMING_PARAM_1	0x6B884
> +#define DSI_DATA_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> +						   _DSI_DATA_TIMING_PARAM_0,\
> +						   _DSI_DATA_TIMING_PARAM_1)
> +#define  HS_PREPARE_OVERRIDE		(1 << 31)
> +#define  HS_PREPARE(x)			((x) << 24)
> +#define  HS_PREPARE_MASK		(0x7 << 24)
> +#define  HS_PREPARE_SHIFT		24
> +#define  HS_ZERO_OVERRIDE		(1 << 23)
> +#define  HS_ZERO(x)			((x) << 16)
> +#define  HS_ZERO_MASK			(0xf << 16)
> +#define  HS_ZERO_SHIFT			16
> +#define  HS_TRAIL_OVERRIDE		(1 << 15)
> +#define  HS_TRAIL(x)			((x) << 8)
> +#define  HS_TRAIL_MASK			(0x7 << 8)
> +#define  HS_TRAIL_SHIFT		8
> +#define  HS_EXIT_OVERRIDE		(1 << 7)
> +#define  HS_EXIT(x)			((x) << 0)
> +#define  HS_EXIT_MASK			(0x7 << 0)
> +#define  HS_EXIT_SHIFT			0
> +
> +#define _DPHY_TA_TIMING_PARAM_0		0x162188
> +#define _DPHY_TA_TIMING_PARAM_1		0x6c188
> +#define DPHY_TA_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> +						   _DPHY_TA_TIMING_PARAM_0,\
> +						   _DPHY_TA_TIMING_PARAM_1)
> +#define _DSI_TA_TIMING_PARAM_0		0x6b098
> +#define _DSI_TA_TIMING_PARAM_1		0x6b898
> +#define DSI_TA_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> +						   _DSI_TA_TIMING_PARAM_0,\
> +						   _DSI_TA_TIMING_PARAM_1)
> +#define  TA_SURE_OVERRIDE		(1 << 31)
> +#define  TA_SURE(x)			((x) << 16)
> +#define  TA_SURE_MASK			(0x1f << 16)
> +#define  TA_SURE_SHIFT			16
> +#define  TA_GO_OVERRIDE		(1 << 15)
> +#define  TA_GO(x)			((x) << 8)
> +#define  TA_GO_MASK			(0xf << 8)
> +#define  TA_GO_SHIFT			8
> +#define  TA_GET_OVERRIDE		(1 << 7)
> +#define  TA_GET(x)			((x) << 0)
> +#define  TA_GET_MASK			(0xf << 0)
> +#define  TA_GET_SHIFT			0
> +
> +/* DSI transcoder configuration */
> +#define _DSI_TRANS_FUNC_CONF_0		0x6b030
> +#define _DSI_TRANS_FUNC_CONF_1		0x6b830
> +#define DSI_TRANS_FUNC_CONF(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_TRANS_FUNC_CONF_0,\
> +						  _DSI_TRANS_FUNC_CONF_1)
> +#define  OP_MODE_MASK			(0x3 << 28)
> +#define  OP_MODE_SHIFT			28
> +#define  CMD_MODE_NO_GATE		(0x0 << 28)
> +#define  CMD_MODE_TE_GATE		(0x1 << 28)
> +#define  VIDEO_MODE_SYNC_EVENT		(0x2 << 28)
> +#define  VIDEO_MODE_SYNC_PULSE		(0x3 << 28)
> +#define  TE_SOURCE_GPIO			(1 << 27)
> +#define  LINK_READY			(1 << 20)
> +#define  PIX_FMT_MASK			(0x3 << 16)
> +#define  PIX_FMT_SHIFT			16
> +#define  PIX_FMT_RGB565			(0x0 << 16)
> +#define  PIX_FMT_RGB666_PACKED		(0x1 << 16)
> +#define  PIX_FMT_RGB666_LOOSE		(0x2 << 16)
> +#define  PIX_FMT_RGB888			(0x3 << 16)
> +#define  PIX_FMT_RGB101010		(0x4 << 16)
> +#define  PIX_FMT_RGB121212		(0x5 << 16)
> +#define  PIX_FMT_COMPRESSED		(0x6 << 16)
> +#define  BGR_TRANSMISSION		(1 << 15)
> +#define  PIX_VIRT_CHAN(x)		((x) << 12)
> +#define  PIX_VIRT_CHAN_MASK		(0x3 << 12)
> +#define  PIX_VIRT_CHAN_SHIFT		12
> +#define  PIX_BUF_THRESHOLD_MASK		(0x3 << 10)
> +#define  PIX_BUF_THRESHOLD_SHIFT	10
> +#define  PIX_BUF_THRESHOLD_1_4		(0x0 << 10)
> +#define  PIX_BUF_THRESHOLD_1_2		(0x1 << 10)
> +#define  PIX_BUF_THRESHOLD_3_4		(0x2 << 10)
> +#define  PIX_BUF_THRESHOLD_FULL		(0x3 << 10)
> +#define  CONTINUOUS_CLK_MASK		(0x3 << 8)
> +#define  CONTINUOUS_CLK_SHIFT		8
> +#define  CLK_ENTER_LP_AFTER_DATA	(0x0 << 8)
> +#define  CLK_HS_OR_LP			(0x2 << 8)
> +#define  CLK_HS_CONTINUOUS		(0x3 << 8)
> +#define  LINK_CALIBRATION_MASK		(0x3 << 4)
> +#define  LINK_CALIBRATION_SHIFT		4
> +#define  CALIBRATION_DISABLED		(0x0 << 4)
> +#define  CALIBRATION_ENABLED_INITIAL_ONLY	(0x2 << 4)
> +#define  CALIBRATION_ENABLED_INITIAL_PERIODIC	(0x3 << 4)
> +#define  BLANKING_PACKET_ENABLE		(1 << 2)
> +#define  S3D_ORIENTATION_LANDSCAPE	(1 << 1)
> +#define  EOTP_DISABLED			(1 << 0)
> +
> +#define _DSI_CMD_RXCTL_0		0x6b0d4
> +#define _DSI_CMD_RXCTL_1		0x6b8d4
> +#define DSI_CMD_RXCTL(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_CMD_RXCTL_0,\
> +						  _DSI_CMD_RXCTL_1)
> +#define  READ_UNLOADS_DW		(1 << 16)
> +#define  RECEIVED_UNASSIGNED_TRIGGER	(1 << 15)
> +#define  RECEIVED_ACKNOWLEDGE_TRIGGER	(1 << 14)
> +#define  RECEIVED_TEAR_EFFECT_TRIGGER	(1 << 13)
> +#define  RECEIVED_RESET_TRIGGER		(1 << 12)
> +#define  RECEIVED_PAYLOAD_WAS_LOST	(1 << 11)
> +#define  RECEIVED_CRC_WAS_LOST		(1 << 10)
> +#define  NUMBER_RX_PLOAD_DW_MASK	(0xff << 0)
> +#define  NUMBER_RX_PLOAD_DW_SHIFT	0
> +
> +#define _DSI_CMD_TXCTL_0		0x6b0d0
> +#define _DSI_CMD_TXCTL_1		0x6b8d0
> +#define DSI_CMD_TXCTL(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_CMD_TXCTL_0,\
> +						  _DSI_CMD_TXCTL_1)
> +#define  KEEP_LINK_IN_HS		(1 << 24)
> +#define  FREE_HEADER_CREDIT_MASK	(0x1f << 8)
> +#define  FREE_HEADER_CREDIT_SHIFT	0x8
> +#define  FREE_PLOAD_CREDIT_MASK		(0xff << 0)
> +#define  FREE_PLOAD_CREDIT_SHIFT	0
> +#define  MAX_HEADER_CREDIT		0x10
> +#define  MAX_PLOAD_CREDIT		0x40
> +
> +#define _DSI_CMD_TXHDR_0		0x6b100
> +#define _DSI_CMD_TXHDR_1		0x6b900
> +#define DSI_CMD_TXHDR(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_CMD_TXHDR_0,\
> +						  _DSI_CMD_TXHDR_1)
> +#define  PAYLOAD_PRESENT		(1 << 31)
> +#define  LP_DATA_TRANSFER		(1 << 30)
> +#define  VBLANK_FENCE			(1 << 29)
> +#define  PARAM_WC_MASK			(0xffff << 8)
> +#define  PARAM_WC_LOWER_SHIFT		8
> +#define  PARAM_WC_UPPER_SHIFT		16
> +#define  VC_MASK			(0x3 << 6)
> +#define  VC_SHIFT			6
> +#define  DT_MASK			(0x3f << 0)
> +#define  DT_SHIFT			0
> +
> +#define _DSI_CMD_TXPYLD_0		0x6b104
> +#define _DSI_CMD_TXPYLD_1		0x6b904
> +#define DSI_CMD_TXPYLD(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_CMD_TXPYLD_0,\
> +						  _DSI_CMD_TXPYLD_1)
> +
> +#define _DSI_LP_MSG_0			0x6b0d8
> +#define _DSI_LP_MSG_1			0x6b8d8
> +#define DSI_LP_MSG(tc)			_MMIO_DSI(tc,	\
> +						  _DSI_LP_MSG_0,\
> +						  _DSI_LP_MSG_1)
> +#define  LPTX_IN_PROGRESS		(1 << 17)
> +#define  LINK_IN_ULPS			(1 << 16)
> +#define  LINK_ULPS_TYPE_LP11		(1 << 8)
> +#define  LINK_ENTER_ULPS		(1 << 0)
> +
> +/* DSI timeout registers */
> +#define _DSI_HSTX_TO_0			0x6b044
> +#define _DSI_HSTX_TO_1			0x6b844
> +#define DSI_HSTX_TO(tc)			_MMIO_DSI(tc,	\
> +						  _DSI_HSTX_TO_0,\
> +						  _DSI_HSTX_TO_1)
> +#define  HSTX_TIMEOUT_VALUE_MASK	(0xffff << 16)
> +#define  HSTX_TIMEOUT_VALUE_SHIFT	16
> +#define  HSTX_TIMEOUT_VALUE(x)		((x) << 16)
> +#define  HSTX_TIMED_OUT			(1 << 0)
> +
> +#define _DSI_LPRX_HOST_TO_0		0x6b048
> +#define _DSI_LPRX_HOST_TO_1		0x6b848
> +#define DSI_LPRX_HOST_TO(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_LPRX_HOST_TO_0,\
> +						  _DSI_LPRX_HOST_TO_1)
> +#define  LPRX_TIMED_OUT			(1 << 16)
> +#define  LPRX_TIMEOUT_VALUE_MASK	(0xffff << 0)
> +#define  LPRX_TIMEOUT_VALUE_SHIFT	0
> +#define  LPRX_TIMEOUT_VALUE(x)		((x) << 0)
> +
> +#define _DSI_PWAIT_TO_0			0x6b040
> +#define _DSI_PWAIT_TO_1			0x6b840
> +#define DSI_PWAIT_TO(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_PWAIT_TO_0,\
> +						  _DSI_PWAIT_TO_1)
> +#define  PRESET_TIMEOUT_VALUE_MASK	(0xffff << 16)
> +#define  PRESET_TIMEOUT_VALUE_SHIFT	16
> +#define  PRESET_TIMEOUT_VALUE(x)	((x) << 16)
> +#define  PRESPONSE_TIMEOUT_VALUE_MASK	(0xffff << 0)
> +#define  PRESPONSE_TIMEOUT_VALUE_SHIFT	0
> +#define  PRESPONSE_TIMEOUT_VALUE(x)	((x) << 0)
> +
> +#define _DSI_TA_TO_0			0x6b04c
> +#define _DSI_TA_TO_1			0x6b84c
> +#define DSI_TA_TO(tc)			_MMIO_DSI(tc,	\
> +						  _DSI_TA_TO_0,\
> +						  _DSI_TA_TO_1)
> +#define  TA_TIMED_OUT			(1 << 16)
> +#define  TA_TIMEOUT_VALUE_MASK		(0xffff << 0)
> +#define  TA_TIMEOUT_VALUE_SHIFT		0
> +#define  TA_TIMEOUT_VALUE(x)		((x) << 0)
> +
> +#endif /* __ICL_DSI_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index fdd568ba4a16..8647554519a2 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -34,6 +34,7 @@
>  
>  #include <drm/drm_drv.h>
>  
> +#include "display/icl_dsi_regs.h"
>  #include "display/intel_de.h"
>  #include "display/intel_display_trace.h"
>  #include "display/intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 4bff6f5477a9..94299819b107 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8589,82 +8589,6 @@ enum skl_power_gate {
>  #define CGM_PIPE_GAMMA(pipe, i, w)	_MMIO(_PIPE(pipe, _CGM_PIPE_A_GAMMA, _CGM_PIPE_B_GAMMA) + (i) * 8 + (w) * 4)
>  #define CGM_PIPE_MODE(pipe)		_MMIO_PIPE(pipe, _CGM_PIPE_A_MODE, _CGM_PIPE_B_MODE)
>  
> -/* Gen11 DSI */
> -#define _MMIO_DSI(tc, dsi0, dsi1)	_MMIO_TRANS((tc) - TRANSCODER_DSI_0, \
> -						    dsi0, dsi1)
> -#define _ICL_DSI_ESC_CLK_DIV0		0x6b090
> -#define _ICL_DSI_ESC_CLK_DIV1		0x6b890
> -#define ICL_DSI_ESC_CLK_DIV(port)	_MMIO_PORT((port),	\
> -							_ICL_DSI_ESC_CLK_DIV0, \
> -							_ICL_DSI_ESC_CLK_DIV1)
> -#define _ICL_DPHY_ESC_CLK_DIV0		0x162190
> -#define _ICL_DPHY_ESC_CLK_DIV1		0x6C190
> -#define ICL_DPHY_ESC_CLK_DIV(port)	_MMIO_PORT((port),	\
> -						_ICL_DPHY_ESC_CLK_DIV0, \
> -						_ICL_DPHY_ESC_CLK_DIV1)
> -#define  ICL_BYTE_CLK_PER_ESC_CLK_MASK		(0x1f << 16)
> -#define  ICL_BYTE_CLK_PER_ESC_CLK_SHIFT	16
> -#define  ICL_ESC_CLK_DIV_MASK			0x1ff
> -#define  ICL_ESC_CLK_DIV_SHIFT			0
> -#define DSI_MAX_ESC_CLK			20000		/* in KHz */
> -
> -#define _ADL_MIPIO_REG			0x180
> -#define ADL_MIPIO_DW(port, dw)		_MMIO(_ICL_COMBOPHY(port) + _ADL_MIPIO_REG + 4 * (dw))
> -#define   TX_ESC_CLK_DIV_PHY_SEL	REGBIT(16)
> -#define   TX_ESC_CLK_DIV_PHY_MASK	REG_GENMASK(23, 16)
> -#define   TX_ESC_CLK_DIV_PHY		REG_FIELD_PREP(TX_ESC_CLK_DIV_PHY_MASK, 0x7f)
> -
> -#define _DSI_CMD_FRMCTL_0		0x6b034
> -#define _DSI_CMD_FRMCTL_1		0x6b834
> -#define DSI_CMD_FRMCTL(port)		_MMIO_PORT(port,	\
> -						   _DSI_CMD_FRMCTL_0,\
> -						   _DSI_CMD_FRMCTL_1)
> -#define   DSI_FRAME_UPDATE_REQUEST		(1 << 31)
> -#define   DSI_PERIODIC_FRAME_UPDATE_ENABLE	(1 << 29)
> -#define   DSI_NULL_PACKET_ENABLE		(1 << 28)
> -#define   DSI_FRAME_IN_PROGRESS			(1 << 0)
> -
> -#define _DSI_INTR_MASK_REG_0		0x6b070
> -#define _DSI_INTR_MASK_REG_1		0x6b870
> -#define DSI_INTR_MASK_REG(port)		_MMIO_PORT(port,	\
> -						   _DSI_INTR_MASK_REG_0,\
> -						   _DSI_INTR_MASK_REG_1)
> -
> -#define _DSI_INTR_IDENT_REG_0		0x6b074
> -#define _DSI_INTR_IDENT_REG_1		0x6b874
> -#define DSI_INTR_IDENT_REG(port)	_MMIO_PORT(port,	\
> -						   _DSI_INTR_IDENT_REG_0,\
> -						   _DSI_INTR_IDENT_REG_1)
> -#define   DSI_TE_EVENT				(1 << 31)
> -#define   DSI_RX_DATA_OR_BTA_TERMINATED		(1 << 30)
> -#define   DSI_TX_DATA				(1 << 29)
> -#define   DSI_ULPS_ENTRY_DONE			(1 << 28)
> -#define   DSI_NON_TE_TRIGGER_RECEIVED		(1 << 27)
> -#define   DSI_HOST_CHKSUM_ERROR			(1 << 26)
> -#define   DSI_HOST_MULTI_ECC_ERROR		(1 << 25)
> -#define   DSI_HOST_SINGL_ECC_ERROR		(1 << 24)
> -#define   DSI_HOST_CONTENTION_DETECTED		(1 << 23)
> -#define   DSI_HOST_FALSE_CONTROL_ERROR		(1 << 22)
> -#define   DSI_HOST_TIMEOUT_ERROR		(1 << 21)
> -#define   DSI_HOST_LOW_POWER_TX_SYNC_ERROR	(1 << 20)
> -#define   DSI_HOST_ESCAPE_MODE_ENTRY_ERROR	(1 << 19)
> -#define   DSI_FRAME_UPDATE_DONE			(1 << 16)
> -#define   DSI_PROTOCOL_VIOLATION_REPORTED	(1 << 15)
> -#define   DSI_INVALID_TX_LENGTH			(1 << 13)
> -#define   DSI_INVALID_VC			(1 << 12)
> -#define   DSI_INVALID_DATA_TYPE			(1 << 11)
> -#define   DSI_PERIPHERAL_CHKSUM_ERROR		(1 << 10)
> -#define   DSI_PERIPHERAL_MULTI_ECC_ERROR	(1 << 9)
> -#define   DSI_PERIPHERAL_SINGLE_ECC_ERROR	(1 << 8)
> -#define   DSI_PERIPHERAL_CONTENTION_DETECTED	(1 << 7)
> -#define   DSI_PERIPHERAL_FALSE_CTRL_ERROR	(1 << 6)
> -#define   DSI_PERIPHERAL_TIMEOUT_ERROR		(1 << 5)
> -#define   DSI_PERIPHERAL_LP_TX_SYNC_ERROR	(1 << 4)
> -#define   DSI_PERIPHERAL_ESC_MODE_ENTRY_CMD_ERR	(1 << 3)
> -#define   DSI_EOT_SYNC_ERROR			(1 << 2)
> -#define   DSI_SOT_SYNC_ERROR			(1 << 1)
> -#define   DSI_SOT_ERROR				(1 << 0)
> -
>  /* Gen4+ Timestamp and Pipe Frame time stamp registers */
>  #define GEN4_TIMESTAMP		_MMIO(0x2358)
>  #define ILK_TIMESTAMP_HI	_MMIO(0x70070)
> @@ -8680,24 +8604,6 @@ enum skl_power_gate {
>  #define PIPE_FRMTMSTMP(pipe)		\
>  			_MMIO_PIPE2(pipe, _PIPE_FRMTMSTMP_A)
>  
> -/* ICL DSI MODE control */
> -#define _ICL_DSI_IO_MODECTL_0				0x6B094
> -#define _ICL_DSI_IO_MODECTL_1				0x6B894
> -#define ICL_DSI_IO_MODECTL(port)	_MMIO_PORT(port,	\
> -						    _ICL_DSI_IO_MODECTL_0, \
> -						    _ICL_DSI_IO_MODECTL_1)
> -#define  COMBO_PHY_MODE_DSI				(1 << 0)
> -
> -/* TGL DSI Chicken register */
> -#define _TGL_DSI_CHKN_REG_0			0x6B0C0
> -#define _TGL_DSI_CHKN_REG_1			0x6B8C0
> -#define TGL_DSI_CHKN_REG(port)		_MMIO_PORT(port,	\
> -						    _TGL_DSI_CHKN_REG_0, \
> -						    _TGL_DSI_CHKN_REG_1)
> -#define TGL_DSI_CHKN_LSHS_GB_MASK		REG_GENMASK(15, 12)
> -#define TGL_DSI_CHKN_LSHS_GB(byte_clocks)	REG_FIELD_PREP(TGL_DSI_CHKN_LSHS_GB_MASK, \
> -							       (byte_clocks))
> -
>  /* Display Stream Splitter Control */
>  #define DSS_CTL1				_MMIO(0x67400)
>  #define  SPLITTER_ENABLE			(1 << 31)
> @@ -8736,245 +8642,6 @@ enum skl_power_gate {
>  							   _ICL_PIPE_DSS_CTL2_PB, \
>  							   _ICL_PIPE_DSS_CTL2_PC)
>  
> -
> -#define _ICL_DSI_T_INIT_MASTER_0	0x6b088
> -#define _ICL_DSI_T_INIT_MASTER_1	0x6b888
> -#define ICL_DSI_T_INIT_MASTER(port)	_MMIO_PORT(port,	\
> -						   _ICL_DSI_T_INIT_MASTER_0,\
> -						   _ICL_DSI_T_INIT_MASTER_1)
> -#define   DSI_T_INIT_MASTER_MASK	REG_GENMASK(15, 0)
> -
> -#define _DPHY_CLK_TIMING_PARAM_0	0x162180
> -#define _DPHY_CLK_TIMING_PARAM_1	0x6c180
> -#define DPHY_CLK_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> -						   _DPHY_CLK_TIMING_PARAM_0,\
> -						   _DPHY_CLK_TIMING_PARAM_1)
> -#define _DSI_CLK_TIMING_PARAM_0		0x6b080
> -#define _DSI_CLK_TIMING_PARAM_1		0x6b880
> -#define DSI_CLK_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> -						   _DSI_CLK_TIMING_PARAM_0,\
> -						   _DSI_CLK_TIMING_PARAM_1)
> -#define  CLK_PREPARE_OVERRIDE		(1 << 31)
> -#define  CLK_PREPARE(x)		((x) << 28)
> -#define  CLK_PREPARE_MASK		(0x7 << 28)
> -#define  CLK_PREPARE_SHIFT		28
> -#define  CLK_ZERO_OVERRIDE		(1 << 27)
> -#define  CLK_ZERO(x)			((x) << 20)
> -#define  CLK_ZERO_MASK			(0xf << 20)
> -#define  CLK_ZERO_SHIFT		20
> -#define  CLK_PRE_OVERRIDE		(1 << 19)
> -#define  CLK_PRE(x)			((x) << 16)
> -#define  CLK_PRE_MASK			(0x3 << 16)
> -#define  CLK_PRE_SHIFT			16
> -#define  CLK_POST_OVERRIDE		(1 << 15)
> -#define  CLK_POST(x)			((x) << 8)
> -#define  CLK_POST_MASK			(0x7 << 8)
> -#define  CLK_POST_SHIFT		8
> -#define  CLK_TRAIL_OVERRIDE		(1 << 7)
> -#define  CLK_TRAIL(x)			((x) << 0)
> -#define  CLK_TRAIL_MASK		(0xf << 0)
> -#define  CLK_TRAIL_SHIFT		0
> -
> -#define _DPHY_DATA_TIMING_PARAM_0	0x162184
> -#define _DPHY_DATA_TIMING_PARAM_1	0x6c184
> -#define DPHY_DATA_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> -						   _DPHY_DATA_TIMING_PARAM_0,\
> -						   _DPHY_DATA_TIMING_PARAM_1)
> -#define _DSI_DATA_TIMING_PARAM_0	0x6B084
> -#define _DSI_DATA_TIMING_PARAM_1	0x6B884
> -#define DSI_DATA_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> -						   _DSI_DATA_TIMING_PARAM_0,\
> -						   _DSI_DATA_TIMING_PARAM_1)
> -#define  HS_PREPARE_OVERRIDE		(1 << 31)
> -#define  HS_PREPARE(x)			((x) << 24)
> -#define  HS_PREPARE_MASK		(0x7 << 24)
> -#define  HS_PREPARE_SHIFT		24
> -#define  HS_ZERO_OVERRIDE		(1 << 23)
> -#define  HS_ZERO(x)			((x) << 16)
> -#define  HS_ZERO_MASK			(0xf << 16)
> -#define  HS_ZERO_SHIFT			16
> -#define  HS_TRAIL_OVERRIDE		(1 << 15)
> -#define  HS_TRAIL(x)			((x) << 8)
> -#define  HS_TRAIL_MASK			(0x7 << 8)
> -#define  HS_TRAIL_SHIFT		8
> -#define  HS_EXIT_OVERRIDE		(1 << 7)
> -#define  HS_EXIT(x)			((x) << 0)
> -#define  HS_EXIT_MASK			(0x7 << 0)
> -#define  HS_EXIT_SHIFT			0
> -
> -#define _DPHY_TA_TIMING_PARAM_0		0x162188
> -#define _DPHY_TA_TIMING_PARAM_1		0x6c188
> -#define DPHY_TA_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> -						   _DPHY_TA_TIMING_PARAM_0,\
> -						   _DPHY_TA_TIMING_PARAM_1)
> -#define _DSI_TA_TIMING_PARAM_0		0x6b098
> -#define _DSI_TA_TIMING_PARAM_1		0x6b898
> -#define DSI_TA_TIMING_PARAM(port)	_MMIO_PORT(port,	\
> -						   _DSI_TA_TIMING_PARAM_0,\
> -						   _DSI_TA_TIMING_PARAM_1)
> -#define  TA_SURE_OVERRIDE		(1 << 31)
> -#define  TA_SURE(x)			((x) << 16)
> -#define  TA_SURE_MASK			(0x1f << 16)
> -#define  TA_SURE_SHIFT			16
> -#define  TA_GO_OVERRIDE		(1 << 15)
> -#define  TA_GO(x)			((x) << 8)
> -#define  TA_GO_MASK			(0xf << 8)
> -#define  TA_GO_SHIFT			8
> -#define  TA_GET_OVERRIDE		(1 << 7)
> -#define  TA_GET(x)			((x) << 0)
> -#define  TA_GET_MASK			(0xf << 0)
> -#define  TA_GET_SHIFT			0
> -
> -/* DSI transcoder configuration */
> -#define _DSI_TRANS_FUNC_CONF_0		0x6b030
> -#define _DSI_TRANS_FUNC_CONF_1		0x6b830
> -#define DSI_TRANS_FUNC_CONF(tc)		_MMIO_DSI(tc,	\
> -						  _DSI_TRANS_FUNC_CONF_0,\
> -						  _DSI_TRANS_FUNC_CONF_1)
> -#define  OP_MODE_MASK			(0x3 << 28)
> -#define  OP_MODE_SHIFT			28
> -#define  CMD_MODE_NO_GATE		(0x0 << 28)
> -#define  CMD_MODE_TE_GATE		(0x1 << 28)
> -#define  VIDEO_MODE_SYNC_EVENT		(0x2 << 28)
> -#define  VIDEO_MODE_SYNC_PULSE		(0x3 << 28)
> -#define  TE_SOURCE_GPIO			(1 << 27)
> -#define  LINK_READY			(1 << 20)
> -#define  PIX_FMT_MASK			(0x3 << 16)
> -#define  PIX_FMT_SHIFT			16
> -#define  PIX_FMT_RGB565			(0x0 << 16)
> -#define  PIX_FMT_RGB666_PACKED		(0x1 << 16)
> -#define  PIX_FMT_RGB666_LOOSE		(0x2 << 16)
> -#define  PIX_FMT_RGB888			(0x3 << 16)
> -#define  PIX_FMT_RGB101010		(0x4 << 16)
> -#define  PIX_FMT_RGB121212		(0x5 << 16)
> -#define  PIX_FMT_COMPRESSED		(0x6 << 16)
> -#define  BGR_TRANSMISSION		(1 << 15)
> -#define  PIX_VIRT_CHAN(x)		((x) << 12)
> -#define  PIX_VIRT_CHAN_MASK		(0x3 << 12)
> -#define  PIX_VIRT_CHAN_SHIFT		12
> -#define  PIX_BUF_THRESHOLD_MASK		(0x3 << 10)
> -#define  PIX_BUF_THRESHOLD_SHIFT	10
> -#define  PIX_BUF_THRESHOLD_1_4		(0x0 << 10)
> -#define  PIX_BUF_THRESHOLD_1_2		(0x1 << 10)
> -#define  PIX_BUF_THRESHOLD_3_4		(0x2 << 10)
> -#define  PIX_BUF_THRESHOLD_FULL		(0x3 << 10)
> -#define  CONTINUOUS_CLK_MASK		(0x3 << 8)
> -#define  CONTINUOUS_CLK_SHIFT		8
> -#define  CLK_ENTER_LP_AFTER_DATA	(0x0 << 8)
> -#define  CLK_HS_OR_LP			(0x2 << 8)
> -#define  CLK_HS_CONTINUOUS		(0x3 << 8)
> -#define  LINK_CALIBRATION_MASK		(0x3 << 4)
> -#define  LINK_CALIBRATION_SHIFT		4
> -#define  CALIBRATION_DISABLED		(0x0 << 4)
> -#define  CALIBRATION_ENABLED_INITIAL_ONLY	(0x2 << 4)
> -#define  CALIBRATION_ENABLED_INITIAL_PERIODIC	(0x3 << 4)
> -#define  BLANKING_PACKET_ENABLE		(1 << 2)
> -#define  S3D_ORIENTATION_LANDSCAPE	(1 << 1)
> -#define  EOTP_DISABLED			(1 << 0)
> -
> -#define _DSI_CMD_RXCTL_0		0x6b0d4
> -#define _DSI_CMD_RXCTL_1		0x6b8d4
> -#define DSI_CMD_RXCTL(tc)		_MMIO_DSI(tc,	\
> -						  _DSI_CMD_RXCTL_0,\
> -						  _DSI_CMD_RXCTL_1)
> -#define  READ_UNLOADS_DW		(1 << 16)
> -#define  RECEIVED_UNASSIGNED_TRIGGER	(1 << 15)
> -#define  RECEIVED_ACKNOWLEDGE_TRIGGER	(1 << 14)
> -#define  RECEIVED_TEAR_EFFECT_TRIGGER	(1 << 13)
> -#define  RECEIVED_RESET_TRIGGER		(1 << 12)
> -#define  RECEIVED_PAYLOAD_WAS_LOST	(1 << 11)
> -#define  RECEIVED_CRC_WAS_LOST		(1 << 10)
> -#define  NUMBER_RX_PLOAD_DW_MASK	(0xff << 0)
> -#define  NUMBER_RX_PLOAD_DW_SHIFT	0
> -
> -#define _DSI_CMD_TXCTL_0		0x6b0d0
> -#define _DSI_CMD_TXCTL_1		0x6b8d0
> -#define DSI_CMD_TXCTL(tc)		_MMIO_DSI(tc,	\
> -						  _DSI_CMD_TXCTL_0,\
> -						  _DSI_CMD_TXCTL_1)
> -#define  KEEP_LINK_IN_HS		(1 << 24)
> -#define  FREE_HEADER_CREDIT_MASK	(0x1f << 8)
> -#define  FREE_HEADER_CREDIT_SHIFT	0x8
> -#define  FREE_PLOAD_CREDIT_MASK		(0xff << 0)
> -#define  FREE_PLOAD_CREDIT_SHIFT	0
> -#define  MAX_HEADER_CREDIT		0x10
> -#define  MAX_PLOAD_CREDIT		0x40
> -
> -#define _DSI_CMD_TXHDR_0		0x6b100
> -#define _DSI_CMD_TXHDR_1		0x6b900
> -#define DSI_CMD_TXHDR(tc)		_MMIO_DSI(tc,	\
> -						  _DSI_CMD_TXHDR_0,\
> -						  _DSI_CMD_TXHDR_1)
> -#define  PAYLOAD_PRESENT		(1 << 31)
> -#define  LP_DATA_TRANSFER		(1 << 30)
> -#define  VBLANK_FENCE			(1 << 29)
> -#define  PARAM_WC_MASK			(0xffff << 8)
> -#define  PARAM_WC_LOWER_SHIFT		8
> -#define  PARAM_WC_UPPER_SHIFT		16
> -#define  VC_MASK			(0x3 << 6)
> -#define  VC_SHIFT			6
> -#define  DT_MASK			(0x3f << 0)
> -#define  DT_SHIFT			0
> -
> -#define _DSI_CMD_TXPYLD_0		0x6b104
> -#define _DSI_CMD_TXPYLD_1		0x6b904
> -#define DSI_CMD_TXPYLD(tc)		_MMIO_DSI(tc,	\
> -						  _DSI_CMD_TXPYLD_0,\
> -						  _DSI_CMD_TXPYLD_1)
> -
> -#define _DSI_LP_MSG_0			0x6b0d8
> -#define _DSI_LP_MSG_1			0x6b8d8
> -#define DSI_LP_MSG(tc)			_MMIO_DSI(tc,	\
> -						  _DSI_LP_MSG_0,\
> -						  _DSI_LP_MSG_1)
> -#define  LPTX_IN_PROGRESS		(1 << 17)
> -#define  LINK_IN_ULPS			(1 << 16)
> -#define  LINK_ULPS_TYPE_LP11		(1 << 8)
> -#define  LINK_ENTER_ULPS		(1 << 0)
> -
> -/* DSI timeout registers */
> -#define _DSI_HSTX_TO_0			0x6b044
> -#define _DSI_HSTX_TO_1			0x6b844
> -#define DSI_HSTX_TO(tc)			_MMIO_DSI(tc,	\
> -						  _DSI_HSTX_TO_0,\
> -						  _DSI_HSTX_TO_1)
> -#define  HSTX_TIMEOUT_VALUE_MASK	(0xffff << 16)
> -#define  HSTX_TIMEOUT_VALUE_SHIFT	16
> -#define  HSTX_TIMEOUT_VALUE(x)		((x) << 16)
> -#define  HSTX_TIMED_OUT			(1 << 0)
> -
> -#define _DSI_LPRX_HOST_TO_0		0x6b048
> -#define _DSI_LPRX_HOST_TO_1		0x6b848
> -#define DSI_LPRX_HOST_TO(tc)		_MMIO_DSI(tc,	\
> -						  _DSI_LPRX_HOST_TO_0,\
> -						  _DSI_LPRX_HOST_TO_1)
> -#define  LPRX_TIMED_OUT			(1 << 16)
> -#define  LPRX_TIMEOUT_VALUE_MASK	(0xffff << 0)
> -#define  LPRX_TIMEOUT_VALUE_SHIFT	0
> -#define  LPRX_TIMEOUT_VALUE(x)		((x) << 0)
> -
> -#define _DSI_PWAIT_TO_0			0x6b040
> -#define _DSI_PWAIT_TO_1			0x6b840
> -#define DSI_PWAIT_TO(tc)		_MMIO_DSI(tc,	\
> -						  _DSI_PWAIT_TO_0,\
> -						  _DSI_PWAIT_TO_1)
> -#define  PRESET_TIMEOUT_VALUE_MASK	(0xffff << 16)
> -#define  PRESET_TIMEOUT_VALUE_SHIFT	16
> -#define  PRESET_TIMEOUT_VALUE(x)	((x) << 16)
> -#define  PRESPONSE_TIMEOUT_VALUE_MASK	(0xffff << 0)
> -#define  PRESPONSE_TIMEOUT_VALUE_SHIFT	0
> -#define  PRESPONSE_TIMEOUT_VALUE(x)	((x) << 0)
> -
> -#define _DSI_TA_TO_0			0x6b04c
> -#define _DSI_TA_TO_1			0x6b84c
> -#define DSI_TA_TO(tc)			_MMIO_DSI(tc,	\
> -						  _DSI_TA_TO_0,\
> -						  _DSI_TA_TO_1)
> -#define  TA_TIMED_OUT			(1 << 16)
> -#define  TA_TIMEOUT_VALUE_MASK		(0xffff << 0)
> -#define  TA_TIMEOUT_VALUE_SHIFT		0
> -#define  TA_TIMEOUT_VALUE(x)		((x) << 0)
> -
>  #define GEN12_GSMBASE			_MMIO(0x108100)
>  #define GEN12_DSMBASE			_MMIO(0x1080C0)
>  
> -- 
> 2.30.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
