Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 225D0508117
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 08:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B59610F194;
	Wed, 20 Apr 2022 06:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2768110F18F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 06:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650435917; x=1681971917;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yBl0nssoQEiPdNCyZAau/SrbV/JqK7oPdBUfUlTeSuQ=;
 b=UhJZeoNoIdTym2t5JvShSog97LxLXvllhb4K4RgYfoRQnxV7r8QcJFyi
 vt/JuEBreXVOKxbRSHVz3zMMGFlDQzZIjlmWwHyBexRzKMPuifWVepnGy
 xXfQFPff/wo6wyT7VmypoqyXkLlk1xRnTw57hj6mz67IOom6t7vV09PJ0
 hRpIIjaJ0rzkEvI+iQflyG6sOlTq6cHnU52JtiNuW9aZi3nYa4hz4DCyl
 abk747ePfa92qQUqyAKnhN92ze2XNgn4bX7g+5tC914aDikgfz7q2HvK9
 P1anxDcSAIAh/WbAWDpz6/rwZBBd/oZfSDQA/SBok2gqt10o6vLgYfMRt Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263414500"
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="263414500"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 23:25:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="529618338"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 23:25:14 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 23:25:05 -0700
Message-Id: <85b4fcd249fb577b1d2acee2a6d39be7178540ff.1650435571.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1650435571.git.ashutosh.dixit@intel.com>
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/pcode: Add a couple of pcode
 helpers
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

From: Dale B Stimson <dale.b.stimson@intel.com>

Add a couple of helpers to help formatting pcode commands and improve code
readability.

v2: Fixed commit author (Rodrigo)

Cc: Mike Ruhl <michael.j.ruhl@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h    |  3 +++
 drivers/gpu/drm/i915/intel_pcode.c | 32 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pcode.h | 12 +++++++++++
 3 files changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index fef71b242706..0d5a4ecd374a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6684,6 +6684,9 @@
 
 #define GEN6_PCODE_MAILBOX			_MMIO(0x138124)
 #define   GEN6_PCODE_READY			(1 << 31)
+#define   GEN6_PCODE_MB_PARAM2			REG_GENMASK(23, 16)
+#define   GEN6_PCODE_MB_PARAM1			REG_GENMASK(15, 8)
+#define   GEN6_PCODE_MB_COMMAND			REG_GENMASK(7, 0)
 #define   GEN6_PCODE_ERROR_MASK			0xFF
 #define     GEN6_PCODE_SUCCESS			0x0
 #define     GEN6_PCODE_ILLEGAL_CMD		0x1
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index 0cff212cc81b..87b9f5035741 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -239,3 +239,35 @@ int intel_pcode_init(struct drm_i915_private *i915)
 
 	return 0;
 }
+
+int __intel_gt_pcode_read(struct intel_gt *gt, u32 mbcmd, u32 p1, u32 p2, u32 *val)
+{
+	intel_wakeref_t wakeref;
+	u32 mbox;
+	int err;
+
+	mbox = REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND, mbcmd)
+		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1, p1)
+		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM2, p2);
+
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		err = intel_gt_pcode_read(gt, mbox, val, NULL);
+
+	return err;
+}
+
+int __intel_gt_pcode_write(struct intel_gt *gt, u32 mbcmd, u32 p1, u32 p2, u32 val)
+{
+	intel_wakeref_t wakeref;
+	u32 mbox;
+	int err;
+
+	mbox = REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND, mbcmd)
+		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1, p1)
+		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM2, p2);
+
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		err = intel_gt_pcode_write(gt, mbox, val);
+
+	return err;
+}
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index 96c954ec91f9..65175d82e033 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -36,4 +36,16 @@ int intel_gt_pcode_request(struct intel_gt *gt, u32 mbox, u32 request,
 
 int intel_pcode_init(struct drm_i915_private *i915);
 
+/*
+ * Helpers for dGfx PCODE mailbox command formatting
+ */
+int __intel_gt_pcode_read(struct intel_gt *gt, u32 mbcmd, u32 p1, u32 p2, u32 *val);
+int __intel_gt_pcode_write(struct intel_gt *gt, u32 mbcmd, u32 p1, u32 p2, u32 val);
+
+#define __snb_pcode_read(i915, mbcmd, p1, p2, val) \
+	__intel_gt_pcode_read(&(i915)->gt0, mbcmd, p1, p2, val)
+
+#define __snb_pcode_write(i915, mbcmd, p1, p2, val) \
+	__intel_gt_pcode_write(&(i915)->gt0, mbcmd, p1, p2, val)
+
 #endif /* _INTEL_PCODE_H */
-- 
2.34.1

