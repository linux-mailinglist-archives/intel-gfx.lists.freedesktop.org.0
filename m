Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE424B2CB4
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 19:20:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35AAC10E9F2;
	Fri, 11 Feb 2022 18:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24EB810E9F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 18:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644603649; x=1676139649;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5LCWLj0izAItG4WJTNBHXZ9OEfDo90JfsDPkCyNOu7M=;
 b=SFYsq114TnCY4dOnaSNsbUnkEcSG3ZjwJvkIJfFKoNEceSNqQ3r4FJQS
 wuD9MPWgjukxKsX16CxJZrzvn8q2WaDlwVdgkdqqSBl4VCcwfpzVhu+P8
 wPErFs/pVXI9/Pqix382IxeS01ePN6qUqgBenK/JQJ0Q6VgP+2QtrblTW
 m9KG2w1zMVuYHjf8U3aHtjtKco5QwcMbV/PlNa+29wPqg8aHtQSVCcpgG
 O222HEOwEg+tyqM4wGtfYeadotH+akUbi8kP1nktgm6hFbpMGqic0icxk
 Q8xXTS/VZyCEqx4MThRtj7ne1H+ye1Zw2nk01GixGm67HyR8rFnQxm2U9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10255"; a="249729969"
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="249729969"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 10:20:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="527044012"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 11 Feb 2022 10:20:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Feb 2022 20:20:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Feb 2022 20:20:45 +0200
Message-Id: <20220211182045.23555-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220211090629.15555-7-ville.syrjala@linux.intel.com>
References: <20220211090629.15555-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/8] drm/i915: Add REG_GENMASK64() and
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

v2: Fix 32bit builds

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg_defs.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index 34d37bbf08cd..d78d78fce431 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -37,6 +37,21 @@
 				 __is_constexpr(__low) &&		\
 				 ((__low) < 0 || (__high) > 31 || (__low) > (__high)))))
 
+/**
+ * REG_GENMASK64() - Prepare a continuous u64 bitmask
+ * @__high: 0-based high bit
+ * @__low: 0-based low bit
+ *
+ * Local wrapper for GENMASK_ULL() to force u64, with compile time checks.
+ *
+ * @return: Continuous bitmask from @__high to @__low, inclusive.
+ */
+#define REG_GENMASK64(__high, __low)					\
+	((u64)(GENMASK_ULL(__high, __low) +				\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&		\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 || (__high) > 63 || (__low) > (__high)))))
+
 /*
  * Local integer constant expression version of is_power_of_2().
  */
@@ -71,6 +86,18 @@
  */
 #define REG_FIELD_GET(__mask, __val)	((u32)FIELD_GET(__mask, __val))
 
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
+#define REG_FIELD_GET64(__mask, __val)	((u64)FIELD_GET(__mask, __val))
+
 typedef struct {
 	u32 reg;
 } i915_reg_t;
-- 
2.34.1

