Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FEA1DC3D1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17DD06E8D2;
	Thu, 21 May 2020 00:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D199C6E8CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:08 +0000 (UTC)
IronPort-SDR: Y/UUgbaaohWXTK3kAEagPuXtGW8V43W1Z3Fv+IbiH3J28i2+wYvgpyUysTYTHlOw5RDsrd6g7n
 fmtPCh1FXYcA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:08 -0700
IronPort-SDR: o30rC8kYzzYv+myUymBT4VLXwQdC9aoPK42zNkwKv1wKHDsQeiIxhZIGemUDxf2a54uXXOGLNz
 07HQSy+rpe5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720873"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:34 -0700
Message-Id: <20200521003803.18936-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/37] drm/i915: make intel_{uncore,
 de}_rmw() more useful
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Return the old value read so some places of the code can still do the
rmw but add warnings/errors about the value it read.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h |  4 ++--
 drivers/gpu/drm/i915/intel_uncore.h     | 10 +++++++---
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 00da10bf35f5..d5441b1ba2fe 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -42,10 +42,10 @@ intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
 	intel_uncore_write_fw(&i915->uncore, reg, val);
 }
 
-static inline void
+static inline u32
 intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
 {
-	intel_uncore_rmw(&i915->uncore, reg, clear, set);
+	return intel_uncore_rmw(&i915->uncore, reg, clear, set);
 }
 
 static inline int
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 8d3aa8b9acf9..5da43b56fa11 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -379,8 +379,8 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
 #define intel_uncore_write64_fw(...) __raw_uncore_write64(__VA_ARGS__)
 #define intel_uncore_posting_read_fw(...) ((void)intel_uncore_read_fw(__VA_ARGS__))
 
-static inline void intel_uncore_rmw(struct intel_uncore *uncore,
-				    i915_reg_t reg, u32 clear, u32 set)
+static inline u32 intel_uncore_rmw(struct intel_uncore *uncore,
+				   i915_reg_t reg, u32 clear, u32 set)
 {
 	u32 old, val;
 
@@ -388,9 +388,11 @@ static inline void intel_uncore_rmw(struct intel_uncore *uncore,
 	val = (old & ~clear) | set;
 	if (val != old)
 		intel_uncore_write(uncore, reg, val);
+
+	return old;
 }
 
-static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
+static inline u32 intel_uncore_rmw_fw(struct intel_uncore *uncore,
 				       i915_reg_t reg, u32 clear, u32 set)
 {
 	u32 old, val;
@@ -399,6 +401,8 @@ static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
 	val = (old & ~clear) | set;
 	if (val != old)
 		intel_uncore_write_fw(uncore, reg, val);
+
+	return old;
 }
 
 static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
