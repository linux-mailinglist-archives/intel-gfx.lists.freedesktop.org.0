Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EC74B58FD
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 18:45:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C90B10E277;
	Mon, 14 Feb 2022 17:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77C0810E277
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 17:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644860714; x=1676396714;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=umPqGfAOo4JHgWD7+Jf6sRaary8YM9/HFFbXhbNsMZs=;
 b=I7alAzIxscMS6fZ6S3ITjtk5gLqbgdHWQaujvjkvVDdRNwU6mtGBLnbh
 92EotyvMHiBrN7VCpVPyZwujBEtnC6tVbzsoHZoEbHBsGvuk4mWM42TLs
 Vtl90tghq2vt3a5pWMZJHmz1F07BxWP9dLoOwtRMBnl1KlhrI3wznQ6yi
 ElckLunKQD1yPO6SDwwZP/vKmgdnwt14byNxE2yRACw8L1lTsWg6fr4Uh
 fontF1WcDXTx5dN7Rbfc/pmTnlUOHMqC2KV8hSDZPvb2jlArHb2G9aU7y
 dTGPYirpPRcgU8wp/EjD2yOHZW1RPkgbLebFm28fDF77MX6PvbQTcCvLr g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="274717708"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="274717708"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 09:38:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="703199975"
Received: from unknown (HELO localhost) ([10.252.13.38])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 09:38:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 19:38:09 +0200
Message-Id: <20220214173810.2108975-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/lrc: move lrc_get_runtime() to
 intel_lrc.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the static inline next to the only caller.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context_sseu.c |  1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 11 +++++++++++
 drivers/gpu/drm/i915/gt/intel_lrc.h          | 11 -----------
 drivers/gpu/drm/i915/i915_perf.c             |  1 +
 4 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context_sseu.c b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
index e86d8255feec..ece16c2b5b8e 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_context_sseu.c
@@ -9,6 +9,7 @@
 #include "intel_engine_pm.h"
 #include "intel_gpu_commands.h"
 #include "intel_lrc.h"
+#include "intel_lrc_reg.h"
 #include "intel_ring.h"
 #include "intel_sseu.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 8189bc8a16ec..5b107b698b65 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1720,6 +1720,17 @@ static void st_update_runtime_underflow(struct intel_context *ce, s32 dt)
 #endif
 }
 
+static u32 lrc_get_runtime(const struct intel_context *ce)
+{
+	/*
+	 * We can use either ppHWSP[16] which is recorded before the context
+	 * switch (and so excludes the cost of context switches) or use the
+	 * value from the context image itself, which is saved/restored earlier
+	 * and so includes the cost of the save.
+	 */
+	return READ_ONCE(ce->lrc_reg_state[CTX_TIMESTAMP]);
+}
+
 void lrc_update_runtime(struct intel_context *ce)
 {
 	u32 old;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index 7f697845c4cf..2af85a15a370 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -9,7 +9,6 @@
 #include <linux/types.h>
 
 #include "intel_context.h"
-#include "intel_lrc_reg.h"
 
 struct drm_i915_gem_object;
 struct intel_engine_cs;
@@ -68,15 +67,5 @@ void lrc_check_regs(const struct intel_context *ce,
 		    const char *when);
 
 void lrc_update_runtime(struct intel_context *ce);
-static inline u32 lrc_get_runtime(const struct intel_context *ce)
-{
-	/*
-	 * We can use either ppHWSP[16] which is recorded before the context
-	 * switch (and so excludes the cost of context switches) or use the
-	 * value from the context image itself, which is saved/restored earlier
-	 * and so includes the cost of the save.
-	 */
-	return READ_ONCE(ce->lrc_reg_state[CTX_TIMESTAMP]);
-}
 
 #endif /* __INTEL_LRC_H__ */
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 36f1325baa7d..00fb40029f43 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -206,6 +206,7 @@
 #include "gt/intel_gt_clock_utils.h"
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
+#include "gt/intel_lrc_reg.h"
 #include "gt/intel_ring.h"
 
 #include "i915_drv.h"
-- 
2.30.2

