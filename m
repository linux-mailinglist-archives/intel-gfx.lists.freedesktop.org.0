Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B715BB1D437
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 10:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5FDF10E0FF;
	Thu,  7 Aug 2025 08:22:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mURii/eN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E1C010E0FF;
 Thu,  7 Aug 2025 08:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754554973; x=1786090973;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/VHnY+zvohJunzqNGyDpJ5v0EMRLr9R9bd9BEN87fBI=;
 b=mURii/eNGI4BF4gtX91iKgk1mFp0/yvJ2FuyukhchRZtQhILHgb3l+3p
 V5PzNjGTmjDkLStGhiK5blMYhEB7uh4yNm6VTrf7SL/9XxoWIudrYNmhZ
 gNe3ljACuE57QofzxqfOTky6Y+o2c8w4huariy5T8PPBGxBgWMmh8fAMA
 JfM1p9bnIQf5Cxj1mUulvE/hyGErgnLiHFsa7EkY/KpObb4wErASaAGWH
 XCmGMaWRrJcdbrBc/lxIPdpeqz6t/vIHJJ6IJAwi63/Gn6JKi2ZIsg8Sk
 umis3O2PSXDCq41zf79a/zhN2WE42BcYvYx5gCUGOTc7D/fRupPw7p4hm g==;
X-CSE-ConnectionGUID: oLDfFVUtR0ig/n+kWH7NHQ==
X-CSE-MsgGUID: kHr4MP67Ttavq58NRwnO4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56961895"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56961895"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 01:22:52 -0700
X-CSE-ConnectionGUID: Ht05RHEPTS+ZG3dkNlS4jg==
X-CSE-MsgGUID: t5KIdjCeT9ml2EBZJGgY3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164903208"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 01:22:50 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, arun.r.murthy@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v6] drm/i915/display: Optimize panel power-on wait time
Date: Thu,  7 Aug 2025 13:54:02 +0530
Message-ID: <20250807082402.79018-1-dibin.moolakadan.subrahmanian@intel.com>
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
Changes in v6:
 - Removed goto in error path
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b64d0b30f5b1..b84eb43bd2d0 100644
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
 
@@ -624,13 +627,20 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 		    intel_de_read(display, pp_stat_reg),
 		    intel_de_read(display, pp_ctrl_reg));
 
-	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
+	ret = read_poll_timeout(intel_de_read, val,
+				(val & mask) == value,
+				10 * 1000, 5000 * 1000, true,
+				display, pp_stat_reg);
+
+	if (ret) {
 		drm_err(display->drm,
 			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 			dig_port->base.base.base.id, dig_port->base.base.name,
 			pps_name(intel_dp),
 			intel_de_read(display, pp_stat_reg),
 			intel_de_read(display, pp_ctrl_reg));
+		return;
+	}
 
 	drm_dbg_kms(display->drm, "Wait complete\n");
 }
-- 
2.43.0

