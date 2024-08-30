Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E3C9656AD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE06E10E7D7;
	Fri, 30 Aug 2024 05:08:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m+ixio8Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B0D010E7D0;
 Fri, 30 Aug 2024 05:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994501; x=1756530501;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bLgsHe1cR/czH5W9dItRaNRIamDW7jPpteiLzIgebZ4=;
 b=m+ixio8Y1J3MBgjZB44T4VZUtlnuhhMR0WlnimkuS4JYJLE8LjX+Kevt
 3ljWX9H53YqOm0FB1diYj7tGFy1P70yPR0OXTXmhcebYlO4GFIxN+PT8f
 aSM+aMG3CBPNL0rGKnZFTqblwzic/L7wBFsjQJejX7NU9lWkP36aquuFk
 AqGI6LtmEOHm9B56hqkR74tgkJKqwbZFdgonn/Nv7rJGxVnoSIXnDb+R3
 OX6vOlVHgoAa5MS7UMVX12y0gHBp6dJj/MU548O7LZoTweLwZSQQC8I4B
 ZYuPX7ACPUmFAm2pV6kZ+avZ8hfPUp0x4NfPEtfEzcvSNZCsoJQOrmmNV g==;
X-CSE-ConnectionGUID: KPJ35PIiSn6G9LxzyC43ZA==
X-CSE-MsgGUID: yHgvu3e0QqyCuRK67PAr3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421662"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421662"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:21 -0700
X-CSE-ConnectionGUID: /5WtrBXmTrqNkRqu50z5Pw==
X-CSE-MsgGUID: l9rGRVngQLCj7VpbSNCRBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610167"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 02/19] drm/i915/dss_regs: Use REG_* macros for the DSS ctl bits
Date: Fri, 30 Aug 2024 10:39:32 +0530
Message-ID: <20240830050950.2528450-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Cleanup register definitions for DSS CLT reg bits.
Replace the hand rolled (1<<n) with the modern REG_BIT().
Use REG_GENMASK and REG_FIELD_PREP for the bit fields.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dss_regs.h | 34 ++++++++++---------
 1 file changed, 18 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dss_regs.h b/drivers/gpu/drm/i915/display/intel_dss_regs.h
index b1e24ea027c3..cfc8ef451917 100644
--- a/drivers/gpu/drm/i915/display/intel_dss_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dss_regs.h
@@ -10,35 +10,37 @@
 
 /* Display Stream Splitter Control */
 #define DSS_CTL1				_MMIO(0x67400)
-#define  SPLITTER_ENABLE			(1 << 31)
-#define  JOINER_ENABLE				(1 << 30)
-#define  DUAL_LINK_MODE_INTERLEAVE		(1 << 24)
+#define  SPLITTER_ENABLE			REG_BIT(31)
+#define  JOINER_ENABLE				REG_BIT(30)
+#define  DUAL_LINK_MODE_INTERLEAVE		REG_BIT(24)
 #define  DUAL_LINK_MODE_FRONTBACK		(0 << 24)
-#define  OVERLAP_PIXELS_MASK			(0xf << 16)
-#define  OVERLAP_PIXELS(pixels)			((pixels) << 16)
-#define  LEFT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
-#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
+#define  OVERLAP_PIXELS_MASK			REG_GENMASK(19, 16)
+#define  OVERLAP_PIXELS(pixels)			REG_FIELD_PREP(OVERLAP_PIXELS_MASK, pixels)
+#define  LEFT_DL_BUF_TARGET_DEPTH_MASK		REG_GENMASK(11, 0)
+#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	REG_FIELD_PREP(LEFT_DL_BUF_TARGET_DEPTH_MASK, \
+							       pixels)
 #define  MAX_DL_BUFFER_TARGET_DEPTH		0x5a0
 
 #define DSS_CTL2				_MMIO(0x67404)
-#define  LEFT_BRANCH_VDSC_ENABLE		(1 << 31)
-#define  RIGHT_BRANCH_VDSC_ENABLE		(1 << 15)
-#define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
-#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
+#define  LEFT_BRANCH_VDSC_ENABLE		REG_BIT(31)
+#define  RIGHT_BRANCH_VDSC_ENABLE		REG_BIT(15)
+#define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		REG_GENMASK(11, 0)
+#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	REG_FIELD_PREP(RIGHT_DL_BUF_TARGET_DEPTH_MASK,\
+							       pixels)
 
 #define _ICL_PIPE_DSS_CTL1_PB			0x78200
 #define _ICL_PIPE_DSS_CTL1_PC			0x78400
 #define ICL_PIPE_DSS_CTL1(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
 							   _ICL_PIPE_DSS_CTL1_PB, \
 							   _ICL_PIPE_DSS_CTL1_PC)
-#define  BIG_JOINER_ENABLE			(1 << 29)
-#define  PRIMARY_BIG_JOINER_ENABLE		(1 << 28)
-#define  VGA_CENTERING_ENABLE			(1 << 27)
+#define  BIG_JOINER_ENABLE			REG_BIT(29)
+#define  PRIMARY_BIG_JOINER_ENABLE		REG_BIT(28)
+#define  VGA_CENTERING_ENABLE			REG_BIT(27)
 #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
 #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
 #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
-#define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
-#define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
+#define  UNCOMPRESSED_JOINER_PRIMARY		REG_BIT(21)
+#define  UNCOMPRESSED_JOINER_SECONDARY		REG_BIT(20)
 
 #define _ICL_PIPE_DSS_CTL2_PB			0x78204
 #define _ICL_PIPE_DSS_CTL2_PC			0x78404
-- 
2.45.2

