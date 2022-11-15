Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D58F6629ACF
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 14:41:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47DF810E3F6;
	Tue, 15 Nov 2022 13:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A822910E066;
 Tue, 15 Nov 2022 13:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668519660; x=1700055660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mhVtNGhEmDJ5WPRVER5+cwaw0tm9569XaU4314zyHpU=;
 b=D4Eixzk9Le+lzDx06wppMTeOnNz4598/AUapGVlvuqIwyOcpe38Bv/b4
 o/jDXVyWj9w1a/5aYtiYKpz5BtzNS3cQ7gWO0NWPOIiYBry5rsHlT+IQW
 CoXTmiaplc2jeTam+/LdYwb4OecpXNToiM7yUskF889GaoQlLjM1cGWVD
 pzZuENDRi41NNiM59MsXAgsI3GbBNAkjU6JNHqMRZHzq5lX9snZdwn2M9
 A3WPUzTwuQgfnGmUj8gdmKSqPcPq8/abeJNVHSh+fH6/1kHYiclrSLLJt
 TlNhBFgYF4UGC6EiYLOM6l006ecNpd6qSYnaXBI9tWS8VVDjU3a6LIK0o Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="314062532"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="314062532"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 05:41:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="744595380"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="744595380"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 05:40:57 -0800
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Nov 2022 19:14:40 +0530
Message-Id: <20221115134440.3669021-2-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221115134440.3669021-1-badal.nilawar@intel.com>
References: <20221115134440.3669021-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/mtl: Enable Idle Messaging for GSC
 CS
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
Cc: dri-devel@lists.freedesktop.org, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

By defaut idle mesaging is disabled for GSC CS so to unblock RC6
entry on media tile idle messaging need to be enabled.

v2:
 - Fix review comments (Vinay)
 - Set GSC idle hysterisis to 5 us (Badal)

Bspec: 71496

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h   |  4 ++++
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index b0a4a2dbe3ee..5522885b2db0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -15,6 +15,22 @@
 #include "intel_rc6.h"
 #include "intel_ring.h"
 #include "shmem_utils.h"
+#include "intel_gt_regs.h"
+
+static void intel_gsc_idle_msg_enable(struct intel_engine_cs *engine)
+{
+	struct drm_i915_private *i915 = engine->i915;
+
+	if (IS_METEORLAKE(i915) && engine->id == GSC0) {
+		intel_uncore_write(engine->gt->uncore,
+				   RC_PSMI_CTRL_GSCCS,
+				   _MASKED_BIT_DISABLE(IDLE_MSG_DISABLE));
+		/* 5 us hysterisis */
+		intel_uncore_write(engine->gt->uncore,
+				   PWRCTX_MAXCNT_GSCCS,
+				   0xA);
+	}
+}
 
 static void dbg_poison_ce(struct intel_context *ce)
 {
@@ -275,6 +291,8 @@ void intel_engine_init__pm(struct intel_engine_cs *engine)
 
 	intel_wakeref_init(&engine->wakeref, rpm, &wf_ops);
 	intel_engine_init_heartbeat(engine);
+
+	intel_gsc_idle_msg_enable(engine);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 07031e03f80c..20472eb15364 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -913,6 +913,10 @@
 #define  MSG_IDLE_FW_MASK	REG_GENMASK(13, 9)
 #define  MSG_IDLE_FW_SHIFT	9
 
+#define	RC_PSMI_CTRL_GSCCS	_MMIO(0x11a050)
+#define	  IDLE_MSG_DISABLE	BIT(0)
+#define PWRCTX_MAXCNT_GSCCS	_MMIO(0x11a054)
+
 #define FORCEWAKE_MEDIA_GEN9			_MMIO(0xa270)
 #define FORCEWAKE_RENDER_GEN9			_MMIO(0xa278)
 
-- 
2.25.1

