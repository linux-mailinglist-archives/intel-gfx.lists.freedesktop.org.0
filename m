Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8037E5242BE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 04:32:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0498810FF42;
	Thu, 12 May 2022 02:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A44D10FF42
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 02:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652322753; x=1683858753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RF5sLNb1pTlo4YX2Runrr/5sXcQbfjUR6DTqVivU0sw=;
 b=J0HJaOVvB9YmLilE+sNeSiRK1MFEd4HvvYGwwJ4e/n5trNuFa7duSvJy
 Y3S8V2D+xF6cgWbFLbsNOuzkzOnF43VkZPS0x5LtfB2VnSr0DUi8MwWPL
 2EQEvBhdubiYJj+4I9Y5JpfaZ/VKlgAWGDqMdYkNyMzIciEThqFuG3Xqi
 q+8rnpeJi4bdF255CyxVC9QzpcVyS+gf49ZlmnQ4GXIim3UHNdDkmT3Uk
 TF0/UKOLQf8gKULhmQRR4tfFJCz/6/Wkh/U5MKPxOXOkznlIiM/MO/Av4
 9gQYXrEBhnU0xRjlFsZ/fQ9GvD8CR+wQ5QnVHOA9l+wsQ9qkE138DWTv0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="269540418"
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="269540418"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 19:32:30 -0700
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="739484200"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 19:32:30 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 19:32:18 -0700
Message-Id: <ab36025ba1303735dff9df8b326a9abbcae9008b.1652320806.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1652320806.git.ashutosh.dixit@intel.com>
References: <cover.1652320806.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/pcode: Add a couple of pcode
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
Cc: Dale B Stimson <dale.b.stimson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dale B Stimson <dale.b.stimson@intel.com>

Some dGfx pcode commands take additional sub-commands and parameters. Add a
couple of helpers to help formatting these commands to improve code
readability.

v2: Fixed commit author (Rodrigo)
v3: Function rename and convert to new uncore interface for pcode functions
    Remove unnecessary #define's (Andi)
v4: Another function rename

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h    |  3 +++
 drivers/gpu/drm/i915/intel_pcode.c | 32 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pcode.h |  6 ++++++
 3 files changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ab64ab4317b3..0e04345248ea 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6698,6 +6698,9 @@
 
 #define GEN6_PCODE_MAILBOX			_MMIO(0x138124)
 #define   GEN6_PCODE_READY			(1 << 31)
+#define   GEN6_PCODE_MB_PARAM2			REG_GENMASK(23, 16)
+#define   GEN6_PCODE_MB_PARAM1			REG_GENMASK(15, 8)
+#define   GEN6_PCODE_MB_COMMAND			REG_GENMASK(7, 0)
 #define   GEN6_PCODE_ERROR_MASK			0xFF
 #define     GEN6_PCODE_SUCCESS			0x0
 #define     GEN6_PCODE_ILLEGAL_CMD		0x1
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index 2be700932322..a234d9b4ed14 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -214,3 +214,35 @@ int intel_pcode_init(struct intel_uncore *uncore)
 				 DG1_UNCORE_INIT_STATUS_COMPLETE,
 				 DG1_UNCORE_INIT_STATUS_COMPLETE, 180000);
 }
+
+int snb_pcode_read_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 *val)
+{
+	intel_wakeref_t wakeref;
+	u32 mbox;
+	int err;
+
+	mbox = REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND, mbcmd)
+		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1, p1)
+		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM2, p2);
+
+	with_intel_runtime_pm(uncore->rpm, wakeref)
+		err = snb_pcode_read(uncore, mbox, val, NULL);
+
+	return err;
+}
+
+int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 val)
+{
+	intel_wakeref_t wakeref;
+	u32 mbox;
+	int err;
+
+	mbox = REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND, mbcmd)
+		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1, p1)
+		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM2, p2);
+
+	with_intel_runtime_pm(uncore->rpm, wakeref)
+		err = snb_pcode_write(uncore, mbox, val);
+
+	return err;
+}
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index 8f6241b114a5..8d2198e29422 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -21,4 +21,10 @@ int skl_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
 
 int intel_pcode_init(struct intel_uncore *uncore);
 
+/*
+ * Helpers for dGfx PCODE mailbox command formatting
+ */
+int snb_pcode_read_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 *val);
+int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 val);
+
 #endif /* _INTEL_PCODE_H */
-- 
2.34.1

