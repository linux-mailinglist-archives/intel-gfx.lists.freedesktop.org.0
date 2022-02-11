Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 247C64B2100
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 10:07:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E087710EA32;
	Fri, 11 Feb 2022 09:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80BDC10EA33
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 09:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644570436; x=1676106436;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yv8/9NVmKl/XxKeICz1qUAJfXd2Ij9k3NXn/8m44CYc=;
 b=GmesMieZrqXhNZFu691wszpN4+Cbo5R9O1XdUFpGqmif2srWTc4uU7wG
 ygtUoCpd1H2HquFsBPW3sIxVJ/6gsSmWme1OYaiBHfyODYfA0xFyz4eaT
 mBk/OjeMm0rfPfxcBXCDzbaAVNK2Be1I2DmW2YrT7FwY6RfWO7AW5shzZ
 sf/8SjCOOJ8bOnlNrSPeHnCDSkDI60ggImbtqLpqXoRloJqrAVV9cT8bL
 kzJ7lud4Jahn0F49yuR0jka8Iv0yWSppEWcAdPBbAuUy5phjlDHFNsWP4
 fH++Q8f/tG+jpd+coyy8/7zLO0b7D4M9I51KuB25NWR9PYRJJxHYiOtyC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="230337808"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="230337808"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 01:06:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="500717093"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 11 Feb 2022 01:06:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Feb 2022 11:06:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Feb 2022 11:06:27 +0200
Message-Id: <20220211090629.15555-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm/i915: Add REG_GENMASK64() and
 REG_FIELD_GET64()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We treat SSKPD as a 64 bit register. Add the support macros
to define/extract bits in such registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg_defs.h | 57 +++++++++++++++++++++-------
 1 file changed, 43 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index 34d37bbf08cd..069799aa3768 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -22,20 +22,35 @@
 	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
 				 ((__n) < 0 || (__n) > 31))))
 
-/**
- * REG_GENMASK() - Prepare a continuous u32 bitmask
- * @__high: 0-based high bit
- * @__low: 0-based low bit
- *
- * Local wrapper for GENMASK() to force u32, with compile time checks.
- *
- * @return: Continuous bitmask from @__high to @__low, inclusive.
- */
-#define REG_GENMASK(__high, __low)					\
-	((u32)(GENMASK(__high, __low) +					\
-	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&	\
+#define _REG_GENMASK(__type, __high, __low)				\
+	((__type)(GENMASK(__high, __low) +				\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&		\
 				 __is_constexpr(__low) &&		\
-				 ((__low) < 0 || (__high) > 31 || (__low) > (__high)))))
+				 ((__low) < 0 ||			\
+				  (__high) >= BITS_PER_TYPE(__type) ||	\
+				  (__low) > (__high)))))
+
+/**
+ * REG_GENMASK() - Prepare a continuous u32 bitmask
+ * @__high: 0-based high bit
+ * @__low: 0-based low bit
+ *
+ * Local wrapper for GENMASK() to force u32, with compile time checks.
+ *
+ * @return: Continuous bitmask from @__high to @__low, inclusive.
+ */
+#define REG_GENMASK(__high, __low) _REG_GENMASK(u32, __high, __low)
+
+/**
+ * REG_GENMASK64() - Prepare a continuous u64 bitmask
+ * @__high: 0-based high bit
+ * @__low: 0-based low bit
+ *
+ * Local wrapper for GENMASK() to force u32, with compile time checks.
+ *
+ * @return: Continuous bitmask from @__high to @__low, inclusive.
+ */
+#define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
 
 /*
  * Local integer constant expression version of is_power_of_2().
@@ -59,6 +74,8 @@
 	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
 	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
 
+#define _REG_FIELD_GET(__type, __mask, __val)	((__type)FIELD_GET(__mask, __val))
+
 /**
  * REG_FIELD_GET() - Extract a u32 bitfield value
  * @__mask: shifted mask defining the field's length and position
@@ -69,7 +86,19 @@
  *
  * @return: Masked and shifted value of the field defined by @__mask in @__val.
  */
-#define REG_FIELD_GET(__mask, __val)	((u32)FIELD_GET(__mask, __val))
+#define REG_FIELD_GET(__mask, __val)	_REG_FIELD_GET(u32, __mask, __val)
+
+/**
+ * REG_FIELD_GET64() - Extract a u64 bitfield value
+ * @__mask: shifted mask defining the field's length and position
+ * @__val: value to extract the bitfield value from
+ *
+ * Local wrapper for FIELD_GET() to force u64 and for consistency with
+ * REG_GENMASK64().
+ *
+ * @return: Masked and shifted value of the field defined by @__mask in @__val.
+ */
+#define REG_FIELD_GET64(__mask, __val)	_REG_FIELD_GET(u64, __mask, __val)
 
 typedef struct {
 	u32 reg;
-- 
2.34.1

