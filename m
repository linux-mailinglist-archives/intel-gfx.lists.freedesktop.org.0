Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC732513F9E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 02:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9954610F492;
	Fri, 29 Apr 2022 00:40:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C482910F36A
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 00:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651192795; x=1682728795;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=72bU9dZ0kJiw+xcsRsEfoYp2+8BZmkjmLAewri2gV/0=;
 b=ElVvP5GOS/BPwTVV9+/Lw84PDWjz1qdkflP81MPvSaNyhube07aJ0Fld
 ylNsUs7oBMCiRq0uF55c3U4fRUZo68pbnrQkih1bs9e0mTilGPHAKxWGs
 WjUSdPHRRjzCqd+ONvynCtMb5OtAs+hHn/f4J7u/TbbMS9Y8IfMm/seQV
 NgoLpmOgkSYZI8rguJbyzkqZH0FucRy0lbuiOr7esqBaHKOz5cUeSDTPD
 n04kOJ39gRGmlWvVO70nF/rnWUyDXK/QaZdtdOvIwfL7akJjWJ19xnjMn
 GYcTVxYY46PuVBNu2e/zcvQxxK7NvnoZ17EPCB5J5jSlcsEyun6AKB7P+ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="329419335"
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="329419335"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 17:39:53 -0700
X-IronPort-AV: E=Sophos;i="5.91,296,1647327600"; d="scan'208";a="662069867"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 17:39:52 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Apr 2022 17:39:39 -0700
Message-Id: <a170501673fa93482d5de606b15a451e22ac3c01.1651192357.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1651192357.git.ashutosh.dixit@intel.com>
References: <cover.1651192357.git.ashutosh.dixit@intel.com>
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
Cc: Dale B Stimson <dale.b.stimson@intel.com>,
 Andi Shyti <andi.shyti@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dale B Stimson <dale.b.stimson@intel.com>

Some dGfx pcode commands take additional sub-commands and parameters. Add a
couple of helpers to help formatting these commands to improve code
readability.

v2: Fixed commit author (Rodrigo)
v3: Function rename and convert to new uncore interface for pcode functions
    Remove unnecessary #define's (Andi)

Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h    |  3 +++
 drivers/gpu/drm/i915/intel_pcode.c | 32 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pcode.h |  6 ++++++
 3 files changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9ccb67eec1bd..5a4689171cc7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6689,6 +6689,9 @@
 
 #define GEN6_PCODE_MAILBOX			_MMIO(0x138124)
 #define   GEN6_PCODE_READY			(1 << 31)
+#define   GEN6_PCODE_MB_PARAM2			REG_GENMASK(23, 16)
+#define   GEN6_PCODE_MB_PARAM1			REG_GENMASK(15, 8)
+#define   GEN6_PCODE_MB_COMMAND			REG_GENMASK(7, 0)
 #define   GEN6_PCODE_ERROR_MASK			0xFF
 #define     GEN6_PCODE_SUCCESS			0x0
 #define     GEN6_PCODE_ILLEGAL_CMD		0x1
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index 66020b2e461f..f80aaf988cea 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -223,3 +223,35 @@ int intel_pcode_init(struct intel_uncore *uncore)
 
 	return ret;
 }
+
+int intel_pcode_read_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 *val)
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
+		err = intel_pcode_read(uncore, mbox, val, NULL);
+
+	return err;
+}
+
+int intel_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 val)
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
+		err = intel_pcode_write(uncore, mbox, val);
+
+	return err;
+}
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index a03d4ef688aa..b0f24bedef92 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -36,4 +36,10 @@ int intel_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
 
 int intel_pcode_init(struct intel_uncore *uncore);
 
+/*
+ * Helpers for dGfx PCODE mailbox command formatting
+ */
+int intel_pcode_read_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 *val);
+int intel_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 val);
+
 #endif /* _INTEL_PCODE_H */
-- 
2.34.1

