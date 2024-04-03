Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24060896D3F
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F721129DE;
	Wed,  3 Apr 2024 10:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z6a/IIfu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFD241129DD;
 Wed,  3 Apr 2024 10:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141532; x=1743677532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vDE2IhnL2kbkuWmMYO5AzV5fdSoom0Z7J2lGNmY/zmI=;
 b=Z6a/IIfuNofCMzidwdqyp3qQgtB2FYH0c8goJw5UOqcLydujoZpTK8hm
 tcibTw+AI2pW2E/9JcpOt6IZ/19xPVo+R3xdpQNxp4jvsYBAiLATkImKR
 QJ/BmyNjxiKASNeKzGekJskGSGiNk7OfZydxbFAuAP+YUhFbYloFwho4Z
 wsLvgy3Cq3Z87nlPF8UAhvFPa8LvbQN4s6QgB0VwCk4WAQwpYR/eWzp5p
 7DMhQyWbUg7K7zmA/K7a3QF+lAynb1KoS7Fz7YExAgwrhBefhJGIUbOSX
 sWu/b87Od/9R+o/kUN4I/f56xeBWKJy0XecNPAB23m/zFZ0JBAdaJ80Qm Q==;
X-CSE-ConnectionGUID: t43VQwBtQFq8N6VlqmQ4zw==
X-CSE-MsgGUID: GYN2vogmQoqqMsYpMVH9Rg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212217"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212217"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:51 -0700
X-CSE-ConnectionGUID: La1/fp/VT1WeeCi/gjNcTQ==
X-CSE-MsgGUID: bdplurPKQlqlS7ufJTOfPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493410"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:48 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 18/25] drm/i915/display: Enable RM timeout detection
Date: Wed,  3 Apr 2024 16:21:16 +0530
Message-Id: <20240403105123.1327669-19-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Enable RM timeout interrupt to detect any hang during display engine
register access. This interrupt is supported only on Display version 14.
Current default timeout is 2ms.

WA: 14012195489
Bspec: 50110

CC: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 10 ++++++++++
 drivers/gpu/drm/i915/i915_reg.h                  |  3 +++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index f846c5b108b5..3035b50fcad9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -851,6 +851,13 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 {
 	bool found = false;
 
+	if (iir & GEN8_DE_RM_TIMEOUT) {
+		u32 val = intel_uncore_read(&dev_priv->uncore,
+				RMTIMEOUTREG_CAPTURE);
+		drm_warn(&dev_priv->drm, "Register Access Timeout = 0x%x\n", val);
+		found = true;
+	}
+
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		if (iir & (XELPDP_PMDEMAND_RSP |
 			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
@@ -1666,6 +1673,9 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 			de_port_masked |= DSI0_TE | DSI1_TE;
 	}
 
+	if (DISPLAY_VER(dev_priv) == 14)
+		de_misc_masked |= GEN8_DE_RM_TIMEOUT;
+
 	de_pipe_enables = de_pipe_masked |
 		GEN8_PIPE_VBLANK |
 		gen8_de_pipe_underrun_mask(dev_priv) |
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 875d76fb8cd0..d1692b32bb8a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4212,6 +4212,8 @@
 #define RM_TIMEOUT		_MMIO(0x42060)
 #define  MMIO_TIMEOUT_US(us)	((us) << 0)
 
+#define RMTIMEOUTREG_CAPTURE	_MMIO(0x420e0)
+
 /* interrupts */
 #define DE_MASTER_IRQ_CONTROL   (1 << 31)
 #define DE_SPRITEB_FLIP_DONE    (1 << 29)
@@ -4398,6 +4400,7 @@
 #define GEN8_DE_MISC_IMR _MMIO(0x44464)
 #define GEN8_DE_MISC_IIR _MMIO(0x44468)
 #define GEN8_DE_MISC_IER _MMIO(0x4446c)
+#define  GEN8_DE_RM_TIMEOUT		REG_BIT(29)
 #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
 #define  GEN8_DE_MISC_GSE		REG_BIT(27)
 #define  GEN8_DE_EDP_PSR		REG_BIT(19)
-- 
2.25.1

