Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F739C110C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:37:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F8A910E8EC;
	Thu,  7 Nov 2024 21:37:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jfEPqBs9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A9010E8F0;
 Thu,  7 Nov 2024 21:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015447; x=1762551447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K+4YZtOyrYBFmkfAdjZ2FQn9gn8ANXOsnRBSh6MYhyk=;
 b=jfEPqBs9VNnBsRfuorcYS0oT10I5HwTd0Mw+IObLSnDLpMt0S4KmHg0C
 9LcDaTx9JF0QP5zimyTpyBC4FAcBIgCHDptcyAvfk3TsDgGLDWzpZ7hI8
 7i8KX2+tCjflgZG3zj72XV2OWB9JrRwydtNSYng0o2xTdEMAxSLeZ9wkd
 p97eXpUq4ZQd5XuINlnhT5ZUjDgit4KwddfqkP91ntbr/sVKFck6thkIG
 jG82nCdH1ai17tcaMCKMknN5aliKo3BLPvEbj6j6w8qMcYzR1nBBIWDxw
 W1WBndbnBoGsdafd5d9yB1SPnP93dHx64ispQPxs+1aihWn6UFGNittgi A==;
X-CSE-ConnectionGUID: zeSfY9psTV2Ig6eWDG2XeA==
X-CSE-MsgGUID: DsIWe7yYSXOoHfJ6seG97Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="56282969"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="56282969"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:27 -0800
X-CSE-ConnectionGUID: ILSdaBsSSrC/eElb0JslLg==
X-CSE-MsgGUID: 3wUJPP6pRxuojg5YQ8mwBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85574788"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 06/15] drm/i915/display: convert HAS_GMBUS_BURST_READ() to
 struct intel_display
Date: Thu,  7 Nov 2024 23:36:40 +0200
Message-Id: <c2c5b15af6bdb152d850b778d1a4850c83cea518.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
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

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c          | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index e9c27ba709c5..f51c1daf0596 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -161,7 +161,7 @@ struct intel_display_platforms {
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

