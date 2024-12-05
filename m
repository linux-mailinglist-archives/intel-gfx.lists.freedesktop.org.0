Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEC39E58C6
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 15:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0DAA10EEA2;
	Thu,  5 Dec 2024 14:45:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V4U7kX1h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CDB010EEA2
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 14:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733409951; x=1764945951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1F7O8STaIOcKK2tVjUXgla8VLecXRq7G+LmEQD+Rz08=;
 b=V4U7kX1huGnG2tpzi9MkpOmzXMgxAtuMGCJ7tBmlwxFgu3irsmweU3OM
 2oFWI5ZQy9slpUFPGopOTcGPTSBwXQzDtiQyjPycnZeD0J3GvJjl8tCSw
 4d+HfdBCpH2t9kvLQLAN967NExJmKRE9hQVHaVfoZH9ZySfUm+vC8E+YR
 8l7Bj3LnFojIJd2DBnxzApU98Rriwu2MdpCEuNqiQoo9nz0AFnPMrYqoD
 QJxlBFPEz/KPj+B2vCwWJgGUl3LoKLy4guQx3MKwqgrh2v20GV39PfcnI
 vExiYwJSbfauEWq4PA7l12zRXRmNCeSUS9YJ6VD9+OMkXwRJpe9ZC5OmZ w==;
X-CSE-ConnectionGUID: Q757K7uITs6I6HGuMxslkg==
X-CSE-MsgGUID: L1QPjdRRT3eVK/YkAMkOMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="51139176"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="51139176"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:45:51 -0800
X-CSE-ConnectionGUID: x390VukTSAKUt1a+rsx0pA==
X-CSE-MsgGUID: jvQLKxoORRaF5oMLHRPYwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="117357066"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:45:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/i915/dsi: convert DSI_TRANS_FUNC_CONF to REG_BIT()
 and friends
Date: Thu,  5 Dec 2024 16:45:36 +0200
Message-Id: <7893f23b3e664065262e84565b939fee7d795ac2.1733409899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733409899.git.jani.nikula@intel.com>
References: <cover.1733409899.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

The register definition is a nightmare to update. Convert to the modern
style.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi_regs.h | 74 ++++++++++-----------
 1 file changed, 34 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
index 0cb9a5f714d2..88df1da8ccfd 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
@@ -195,46 +195,40 @@
 #define DSI_TRANS_FUNC_CONF(tc)		_MMIO_DSI(tc,	\
 						  _DSI_TRANS_FUNC_CONF_0,\
 						  _DSI_TRANS_FUNC_CONF_1)
-#define  OP_MODE_MASK			(0x3 << 28)
-#define  OP_MODE_SHIFT			28
-#define  CMD_MODE_NO_GATE		(0x0 << 28)
-#define  CMD_MODE_TE_GATE		(0x1 << 28)
-#define  VIDEO_MODE_SYNC_EVENT		(0x2 << 28)
-#define  VIDEO_MODE_SYNC_PULSE		(0x3 << 28)
-#define  TE_SOURCE_GPIO			(1 << 27)
-#define  LINK_READY			(1 << 20)
-#define  PIX_FMT_MASK			(0x7 << 16)
-#define  PIX_FMT_SHIFT			16
-#define  PIX_FMT_RGB565			(0x0 << 16)
-#define  PIX_FMT_RGB666_PACKED		(0x1 << 16)
-#define  PIX_FMT_RGB666_LOOSE		(0x2 << 16)
-#define  PIX_FMT_RGB888			(0x3 << 16)
-#define  PIX_FMT_RGB101010		(0x4 << 16)
-#define  PIX_FMT_RGB121212		(0x5 << 16)
-#define  PIX_FMT_COMPRESSED		(0x6 << 16)
-#define  BGR_TRANSMISSION		(1 << 15)
-#define  PIX_VIRT_CHAN(x)		((x) << 12)
-#define  PIX_VIRT_CHAN_MASK		(0x3 << 12)
-#define  PIX_VIRT_CHAN_SHIFT		12
-#define  PIX_BUF_THRESHOLD_MASK		(0x3 << 10)
-#define  PIX_BUF_THRESHOLD_SHIFT	10
-#define  PIX_BUF_THRESHOLD_1_4		(0x0 << 10)
-#define  PIX_BUF_THRESHOLD_1_2		(0x1 << 10)
-#define  PIX_BUF_THRESHOLD_3_4		(0x2 << 10)
-#define  PIX_BUF_THRESHOLD_FULL		(0x3 << 10)
-#define  CONTINUOUS_CLK_MASK		(0x3 << 8)
-#define  CONTINUOUS_CLK_SHIFT		8
-#define  CLK_ENTER_LP_AFTER_DATA	(0x0 << 8)
-#define  CLK_HS_OR_LP			(0x2 << 8)
-#define  CLK_HS_CONTINUOUS		(0x3 << 8)
-#define  LINK_CALIBRATION_MASK		(0x3 << 4)
-#define  LINK_CALIBRATION_SHIFT		4
-#define  CALIBRATION_DISABLED		(0x0 << 4)
-#define  CALIBRATION_ENABLED_INITIAL_ONLY	(0x2 << 4)
-#define  CALIBRATION_ENABLED_INITIAL_PERIODIC	(0x3 << 4)
-#define  BLANKING_PACKET_ENABLE		(1 << 2)
-#define  S3D_ORIENTATION_LANDSCAPE	(1 << 1)
-#define  EOTP_DISABLED			(1 << 0)
+#define   OP_MODE_MASK			REG_GENMASK(29, 28)
+#define   CMD_MODE_NO_GATE		REG_FIELD_PREP(OP_MODE_MASK, 0)
+#define   CMD_MODE_TE_GATE		REG_FIELD_PREP(OP_MODE_MASK, 1)
+#define   VIDEO_MODE_SYNC_EVENT		REG_FIELD_PREP(OP_MODE_MASK, 2)
+#define   VIDEO_MODE_SYNC_PULSE		REG_FIELD_PREP(OP_MODE_MASK, 3)
+#define   TE_SOURCE_GPIO		REG_BIT(27)
+#define   LINK_READY			REG_BIT(20)
+#define   PIX_FMT_MASK			REG_GENMASK(18, 16)
+#define   PIX_FMT_RGB565		REG_FIELD_PREP(PIX_FMT_MASK, 0)
+#define   PIX_FMT_RGB666_PACKED		REG_FIELD_PREP(PIX_FMT_MASK, 1)
+#define   PIX_FMT_RGB666_LOOSE		REG_FIELD_PREP(PIX_FMT_MASK, 2)
+#define   PIX_FMT_RGB888		REG_FIELD_PREP(PIX_FMT_MASK, 3)
+#define   PIX_FMT_RGB101010		REG_FIELD_PREP(PIX_FMT_MASK, 4)
+#define   PIX_FMT_RGB121212		REG_FIELD_PREP(PIX_FMT_MASK, 5)
+#define   PIX_FMT_COMPRESSED		REG_FIELD_PREP(PIX_FMT_MASK, 6)
+#define   BGR_TRANSMISSION		REG_BIT(15)
+#define   PIX_VIRT_CHAN_MASK		REG_GENMASK(13, 12)
+#define   PIX_VIRT_CHAN(x)		REG_FIELD_PREP(PIX_VIRT_CHAN_MASK, (x))
+#define   PIX_BUF_THRESHOLD_MASK	REG_GENMASK(11, 10)
+#define   PIX_BUF_THRESHOLD_1_4		REG_FIELD_PREP(PIX_BUF_THRESHOLD_MASK, 0)
+#define   PIX_BUF_THRESHOLD_1_2		REG_FIELD_PREP(PIX_BUF_THRESHOLD_MASK, 1)
+#define   PIX_BUF_THRESHOLD_3_4		REG_FIELD_PREP(PIX_BUF_THRESHOLD_MASK, 2)
+#define   PIX_BUF_THRESHOLD_FULL	REG_FIELD_PREP(PIX_BUF_THRESHOLD_MASK, 3)
+#define   CONTINUOUS_CLK_MASK		REG_GENMASK(9, 8)
+#define   CLK_ENTER_LP_AFTER_DATA	REG_FIELD_PREP(CONTINUOUS_CLK_MASK, 0)
+#define   CLK_HS_OR_LP			REG_FIELD_PREP(CONTINUOUS_CLK_MASK, 2)
+#define   CLK_HS_CONTINUOUS		REG_FIELD_PREP(CONTINUOUS_CLK_MASK, 3)
+#define   LINK_CALIBRATION_MASK		REG_GENMASK(5, 4)
+#define   CALIBRATION_DISABLED			REG_FIELD_PREP(LINK_CALIBRATION_MASK, 0)
+#define   CALIBRATION_ENABLED_INITIAL_ONLY	REG_FIELD_PREP(LINK_CALIBRATION_MASK, 2)
+#define   CALIBRATION_ENABLED_INITIAL_PERIODIC	REG_FIELD_PREP(LINK_CALIBRATION_MASK, 3)
+#define   BLANKING_PACKET_ENABLE	REG_BIT(2)
+#define   S3D_ORIENTATION_LANDSCAPE	REG_BIT(1)
+#define   EOTP_DISABLED			REG_BIT(0)
 
 #define _DSI_CMD_RXCTL_0		0x6b0d4
 #define _DSI_CMD_RXCTL_1		0x6b8d4
-- 
2.39.5

