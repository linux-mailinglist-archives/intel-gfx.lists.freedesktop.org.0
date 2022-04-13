Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C514FFD8D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 20:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11AFF10E1C4;
	Wed, 13 Apr 2022 18:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B0C10E1A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 18:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649873479; x=1681409479;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O5i4Esjq5jCFqc4c1Grt25ARZoRzXUiYXc0Kh/yqVuo=;
 b=nPLgA88UPLkmtnXJtGOUvx/1anyH7OVp57j+inJPOooumoomI5iRLHYH
 JZx/o/HFeFOEehG4A97l3YBz1KQtl+lM44knu2rRq9XNEtGkaxfkxhuVi
 LEtuFYXZ5L0lR+0vecPnbQmfsYtxqNL/4nPEDTmcngHpTrNNnVJ/Xq6qb
 HOQpfUlvPbzTtsOMkgsUbkdPt0klI7ZF9P8i6xd+6VnXNHmP1hrg4+cZp
 XuYWNJNqaNj96V0Isn2kDItNQA4JNt/UfIqOJ7yBn7Ga+nJjAfpdgUV55
 nBuwyq820q3HMAPQyaTkyoLRlBT+aVrWJ1IX4sIac8NThM+Ynt7Mh6vM9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="323181902"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="323181902"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 11:11:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="802788715"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 11:11:15 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 11:11:05 -0700
Message-Id: <5b1cfcd6fc47dcc3d6aa9ed2f4412e7b6bf1159c.1649871650.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1649871650.git.ashutosh.dixit@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/pcode: Add a couple of pcode
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a couple of helpers to help formatting pcode commands and improve code
readability.

Cc: Mike Ruhl <michael.j.ruhl@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Original-author: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
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

