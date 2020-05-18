Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1A51D8BA2
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 01:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644526E4B0;
	Mon, 18 May 2020 23:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 977F66E4B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 23:30:54 +0000 (UTC)
IronPort-SDR: 4rVKz+korj00RanRuYlW3iMLeWocrP3LxgxJoa3B9jZgwMxrnFBGTRGy7GG5ieMWLcJ2xshfDM
 rWhmq3TjJPww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 16:30:54 -0700
IronPort-SDR: tLI30FDg0d3E0ZoGuFKv84yWmBiWatGIfS/Ol1Ug1PY9R3BGwuXV1LphR0s2NSqZYg+z/s+Da5
 wV6ihDJTnemg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,408,1583222400"; d="scan'208";a="299932235"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 18 May 2020 16:30:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 16:30:49 -0700
Message-Id: <20200518233049.19759-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200518233049.19759-1-lucas.demarchi@intel.com>
References: <20200518233049.19759-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: trace intel_uncore_*_fw()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we have the declaration of trace_i915_reg_rw() in a separate
header, start tracing intel_uncore_*_fw() mmio-accessors.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.h | 27 ++++++++++++++++++++++-----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 8d3aa8b9acf9..0f95b32ff0f0 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -31,6 +31,7 @@
 #include <linux/io-64-nonatomic-lo-hi.h>
 
 #include "i915_reg.h"
+#include "i915_trace_reg_rw.h"
 
 struct drm_i915_private;
 struct intel_runtime_pm;
@@ -348,8 +349,9 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
 #undef __uncore_read
 #undef __uncore_write
 
-/* These are untraced mmio-accessors that are only valid to be used inside
- * critical sections, such as inside IRQ handlers, where forcewake is explicitly
+/*
+ * These are mmio-accessors that are only valid to be used inside critical
+ * sections, such as inside IRQ handlers, where forcewake is explicitly
  * controlled.
  *
  * Think twice, and think again, before using these.
@@ -374,9 +376,24 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
  * therefore generally be serialised, by either the dev_priv->uncore.lock or
  * a more localised lock guarding all access to that bank of registers.
  */
-#define intel_uncore_read_fw(...) __raw_uncore_read32(__VA_ARGS__)
-#define intel_uncore_write_fw(...) __raw_uncore_write32(__VA_ARGS__)
-#define intel_uncore_write64_fw(...) __raw_uncore_write64(__VA_ARGS__)
+#define intel_uncore_read_fw(uncore, reg) ({ \
+	typeof(reg) reg___ = reg; \
+	u32 val___ = __raw_uncore_read32(uncore, (reg___)); \
+	trace_i915_reg_rw(false, reg___, val___, sizeof(val___), true); \
+	val___; })
+
+#define intel_uncore_write_fw(uncore, reg, val) ({ \
+	typeof(reg) reg___ = reg; \
+	typeof(val) val___ =  val; \
+	trace_i915_reg_rw(true, reg___, val___, sizeof(val___), true); \
+	__raw_uncore_write32(uncore, reg___, val___); })
+
+#define intel_uncore_write64_fw(uncore, reg, val) ({ \
+	typeof(reg) reg___ = reg; \
+	typeof(val) val___ =  val; \
+	trace_i915_reg_rw(true, reg___, val___, sizeof(val___), true); \
+	__raw_uncore_write64(uncore, reg___, val___); })
+
 #define intel_uncore_posting_read_fw(...) ((void)intel_uncore_read_fw(__VA_ARGS__))
 
 static inline void intel_uncore_rmw(struct intel_uncore *uncore,
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
