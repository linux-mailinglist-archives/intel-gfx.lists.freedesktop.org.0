Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAEB9BBBA0
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 18:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A3F10E492;
	Mon,  4 Nov 2024 17:20:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YunxC32I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF1C10E48E;
 Mon,  4 Nov 2024 17:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730740803; x=1762276803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+mEfCrJkQjGf9SWDThRDrxV/1o137tsI5pxz1e76WKw=;
 b=YunxC32IE1ttDgO/3lvw0G9dP2gaCkrkehy4KciQB/XWBzx4aqkuIovm
 t7yOt+d6EBmyHQRtj1uj4H2J3ZGhp70K4ZtF+Ji8GV4datIgRH2OvRWjJ
 u5tkLT/uSTQDS9qfHldzPeo38NKcxhioGx3SmUke0YAhqMSdYST1xJSMf
 bD3dPrgFXZqcatfMMEZr1ZaPhaMtiHCqbAcd+fLvmXknSjYad7veOZZTz
 wOqRDUC70yPHnwuO95vI2lsJmkFk1CNorkji8bmxMgJCtiottVv0cN07H
 bm6Ge5XQ0k22UTcm+3aIG4eUlZq9W7ak+7K8SRLBmlBSL/Eza4niXmtMV Q==;
X-CSE-ConnectionGUID: 3WqVgdg1RAqnUaGSURVeqQ==
X-CSE-MsgGUID: nLVk1lz9TSiRLnOZt8hegQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30563837"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="30563837"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:03 -0800
X-CSE-ConnectionGUID: LivjXRFqSuSVPuqkVYyDPA==
X-CSE-MsgGUID: Z+PH7T5OTOSWPo3D9OFxnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="88290076"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/15] drm/i915/display: convert HAS_GMBUS_BURST_READ() to
 struct intel_display
Date: Mon,  4 Nov 2024 19:19:20 +0200
Message-Id: <556f3636528357cc9149f31b348dea80c4e0bda8.1730740629.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730740629.git.jani.nikula@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
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

Convert HAS_GMBUS_BURST_READ() to struct intel_display. Do minimal
drive-by conversions to struct intel_display in the callers while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c          | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index c861a61839b8..6279c6c6e831 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -160,7 +160,7 @@ struct intel_display_platforms {
 #define HAS_FPGA_DBG_UNCLAIMED(i915)	(DISPLAY_INFO(i915)->has_fpga_dbg)
 #define HAS_FW_BLC(i915)		(DISPLAY_VER(i915) >= 3)
 #define HAS_GMBUS_IRQ(i915)		(DISPLAY_VER(i915) >= 4)
-#define HAS_GMBUS_BURST_READ(i915)	(DISPLAY_VER(i915) >= 10 || IS_KABYLAKE(i915))
+#define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
 #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
 #define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index e3d938c7f83e..807cf606e7a8 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -496,14 +496,13 @@ static int
 gmbus_xfer_read(struct intel_display *display, struct i2c_msg *msg,
 		u32 gmbus0_reg, u32 gmbus1_index)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u8 *buf = msg->buf;
 	unsigned int rx_size = msg->len;
 	unsigned int len;
 	int ret;
 
 	do {
-		if (HAS_GMBUS_BURST_READ(i915))
+		if (HAS_GMBUS_BURST_READ(display))
 			len = min(rx_size, INTEL_GMBUS_BURST_READ_MAX_LEN);
 		else
 			len = min(rx_size, gmbus_max_xfer_size(display));
-- 
2.39.5

