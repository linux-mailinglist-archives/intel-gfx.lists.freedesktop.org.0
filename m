Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F4CB19B15
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 07:30:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C593210E127;
	Mon,  4 Aug 2025 05:30:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h61/m3mA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAD1010E127;
 Mon,  4 Aug 2025 05:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754285402; x=1785821402;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f2WtiZlYwRC/pNNuoKjIbdHZmYIpS5xb78zkXiYSmTE=;
 b=h61/m3mA8XWvPeSwy1mB1ELjR8F+mEvJMW0f/Th8qXYPqRy0/QdTTsyx
 IAr4ZGmoJWSk1G5xh59E0G4oj64jkxxOl4pkxrJaaciZax42zK8Xvyw3E
 0Zw2oM3EaxwZ91/16JXbxJDEn2JL/t+mZvUvhTiXd7iXQcHViKRbYhDPi
 QjbGBTVZW3nIfkp6kACO8Ocaqfc/fC8hCqznKlMdaCjY82/eJq40k2Pcg
 hD2GlOlhtSS2dVPaIDfaZa4qykNuLRgiLXUu3cc0wAC04NMs2yJ0X0lZf
 8YcLY/5TrCZsTZw5wcxmKoyUAljAmxm2WbmC16ddXy5+ZGJWkUOkeK87C Q==;
X-CSE-ConnectionGUID: ro7rj7lRQcahItdltFNh1A==
X-CSE-MsgGUID: h4I5dKDbQveonmoZH3YIiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="55733102"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="55733102"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2025 22:30:01 -0700
X-CSE-ConnectionGUID: 6TqNOg6/QNqNncnzXCp0uA==
X-CSE-MsgGUID: IfEx8//VTrWx8Fch+iWOOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="164060231"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2025 22:29:59 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, arun.r.murthy@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v5] drm/i915/display: Optimize panel power-on wait time
Date: Mon,  4 Aug 2025 11:01:20 +0530
Message-ID: <20250804053120.3794531-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
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

The current wait_panel_status() uses intel_de_wait(),
which internally on Xe platforms calls  xe_mmio_wait32().
xe_mmio_wait32() increases poll interval exponentially.

This exponential poll interval increase causes unnessory delays
during resume or power-on when the panel becomes ready earlier,
but polling is delayed due to backoff.

Replace intel_de_wait() with read_poll_timeout() +
intel_de_read() to actively poll the register at a fixed 10ms interval
up to a 5 second timeout. This allows poll to exit
early  when panel is ready.

Changes in v2:
Replaced  two-phase intel_de_wait() with  read_poll_timeout()
 + intel_de_read()
Changes in v3:
 - Add poll_interval_ms argument  'wait_panel_status' function.
 - Modify 'wait_panel_status' callers with proper poll interval
Changes in v4:
 - Change 'wait_panel_off' poll interval to 10ms
Changes in v5:
 - Dropped  poll_interval_ms parameter,use fixed polling
   interval of 10ms (Jani Nikula)

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b64d0b30f5b1..47e274a6fd72 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/iopoll.h>
 
 #include <drm/drm_print.h>
 
@@ -608,6 +609,8 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
+	int ret;
+	u32 val;
 
 	lockdep_assert_held(&display->pps.mutex);
 
@@ -624,7 +627,18 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 		    intel_de_read(display, pp_stat_reg),
 		    intel_de_read(display, pp_ctrl_reg));
 
-	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
+	ret = read_poll_timeout(intel_de_read, val,
+				(val & mask) == value,
+				10 * 1000, 5000 * 1000, true,
+				display, pp_stat_reg);
+
+	if (ret)
+		goto panel_wait_err;
+
+	drm_dbg_kms(display->drm, "Wait complete\n");
+	return;
+
+panel_wait_err:
 		drm_err(display->drm,
 			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 			dig_port->base.base.base.id, dig_port->base.base.name,
@@ -632,7 +646,6 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 			intel_de_read(display, pp_stat_reg),
 			intel_de_read(display, pp_ctrl_reg));
 
-	drm_dbg_kms(display->drm, "Wait complete\n");
 }
 
 static void wait_panel_on(struct intel_dp *intel_dp)
-- 
2.43.0

