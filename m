Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KP3aIio4n2m5ZQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:58:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A31019BE08
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A9610E820;
	Wed, 25 Feb 2026 17:58:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aSJ9xNIR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9588B10E80E;
 Wed, 25 Feb 2026 17:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772042279; x=1803578279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jjdulGPqdsrS949JcTkMZoD1J18rnAj6L8VzBzXAxrg=;
 b=aSJ9xNIR5Iz3+tWjfuNrl7UxOyBw0g7rrKVAncfaG6eni2nzqa9HDHE0
 FF6RHto0JRwxZIYgFO75LYSZ2Qw/uhxVWt9MbZbv9HW5RZInt6Lb4IO6s
 P1LEMxEPOnZHo53As5P6NhOlcHPcgp3ENw5J3zms8XMI3gE4sA8yuXXdx
 f3wlENk9qvCqtympnKi5hQiksdEklyDpPj0ohYyqX3adgfRMcs27a/6jS
 PFthsFP5W4cyttzSMVXfwvuRnTUhTKodkKJA398bZGfYjlF+tszQW7Pvh
 WyLSLYKSGLFXYSUjqOr7cz2LJrfj22PmjViL8NzDssBgq8ODI49jtxUpj w==;
X-CSE-ConnectionGUID: 2kR5nq8lQYO3dleJ5ac3Cw==
X-CSE-MsgGUID: W1AyKfkYTcubKaL6p/ej8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72793842"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="72793842"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:51 -0800
X-CSE-ConnectionGUID: wv+NCNwpT+OevDwz0dxv2w==
X-CSE-MsgGUID: rn4Bv+zlSQOzw8HwWO1/ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="214394515"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 7/8] drm/intel: add pick.h for the various "picker" helpers
Date: Wed, 25 Feb 2026 19:57:09 +0200
Message-ID: <fcd70f3317755bf98a6e7ae88974aa8ba06efd1e.1772042022.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772042022.git.jani.nikula@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 2A31019BE08
X-Rspamd-Action: no action

Add a shared header that's used by i915, xe, and i915 display.

This allows us to drop the compat-i915-headers/i915_reg_defs.h include
from xe_reg_defs.h. All the register macro helpers were subtly pulled in
from i915 to all of xe through this.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg_defs.h          | 45 +---------------
 .../drm/xe/compat-i915-headers/intel_uncore.h |  1 +
 drivers/gpu/drm/xe/regs/xe_reg_defs.h         |  5 +-
 include/drm/intel/pick.h                      | 51 +++++++++++++++++++
 4 files changed, 56 insertions(+), 46 deletions(-)
 create mode 100644 include/drm/intel/pick.h

diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index a1dc7ff2bef7..e897d3ccbf9e 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -6,52 +6,9 @@
 #ifndef __I915_REG_DEFS__
 #define __I915_REG_DEFS__
 
+#include <drm/intel/pick.h>
 #include <drm/intel/reg_bits.h>
 
-/*
- * Given the first two numbers __a and __b of arbitrarily many evenly spaced
- * numbers, pick the 0-based __index'th value.
- *
- * Always prefer this over _PICK() if the numbers are evenly spaced.
- */
-#define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))
-
-/*
- * Like _PICK_EVEN(), but supports 2 ranges of evenly spaced address offsets.
- * @__c_index corresponds to the index in which the second range starts to be
- * used. Using math interval notation, the first range is used for indexes [ 0,
- * @__c_index), while the second range is used for [ @__c_index, ... ). Example:
- *
- * #define _FOO_A			0xf000
- * #define _FOO_B			0xf004
- * #define _FOO_C			0xf008
- * #define _SUPER_FOO_A			0xa000
- * #define _SUPER_FOO_B			0xa100
- * #define FOO(x)			_MMIO(_PICK_EVEN_2RANGES(x, 3,		\
- *					      _FOO_A, _FOO_B,			\
- *					      _SUPER_FOO_A, _SUPER_FOO_B))
- *
- * This expands to:
- *	0: 0xf000,
- *	1: 0xf004,
- *	2: 0xf008,
- *	3: 0xa000,
- *	4: 0xa100,
- *	5: 0xa200,
- *	...
- */
-#define _PICK_EVEN_2RANGES(__index, __c_index, __a, __b, __c, __d)		\
-	(BUILD_BUG_ON_ZERO(!__is_constexpr(__c_index)) +			\
-	 ((__index) < (__c_index) ? _PICK_EVEN(__index, __a, __b) :		\
-				   _PICK_EVEN((__index) - (__c_index), __c, __d)))
-
-/*
- * Given the arbitrary numbers in varargs, pick the 0-based __index'th number.
- *
- * Always prefer _PICK_EVEN() over this if the numbers are evenly spaced.
- */
-#define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
-
 typedef struct {
 	u32 reg;
 } i915_reg_t;
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index c5e198ace7bc..a8cfd65119e0 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_UNCORE_H__
 #define __INTEL_UNCORE_H__
 
+#include "i915_reg_defs.h"
 #include "xe_device.h"
 #include "xe_device_types.h"
 #include "xe_mmio.h"
diff --git a/drivers/gpu/drm/xe/regs/xe_reg_defs.h b/drivers/gpu/drm/xe/regs/xe_reg_defs.h
index c39aab843e35..27ac0bf1f6cd 100644
--- a/drivers/gpu/drm/xe/regs/xe_reg_defs.h
+++ b/drivers/gpu/drm/xe/regs/xe_reg_defs.h
@@ -6,12 +6,13 @@
 #ifndef _XE_REG_DEFS_H_
 #define _XE_REG_DEFS_H_
 
+#include <drm/intel/pick.h>
+#include <drm/intel/reg_bits.h>
+
 #include <linux/build_bug.h>
 #include <linux/log2.h>
 #include <linux/sizes.h>
 
-#include "compat-i915-headers/i915_reg_defs.h"
-
 /**
  * XE_REG_ADDR_MAX - The upper limit on MMIO register address
  *
diff --git a/include/drm/intel/pick.h b/include/drm/intel/pick.h
new file mode 100644
index 000000000000..d976fab8f270
--- /dev/null
+++ b/include/drm/intel/pick.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef _PICK_H_
+#define _PICK_H_
+
+/*
+ * Given the first two numbers __a and __b of arbitrarily many evenly spaced
+ * numbers, pick the 0-based __index'th value.
+ *
+ * Always prefer this over _PICK() if the numbers are evenly spaced.
+ */
+#define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))
+
+/*
+ * Like _PICK_EVEN(), but supports 2 ranges of evenly spaced address offsets.
+ * @__c_index corresponds to the index in which the second range starts to be
+ * used. Using math interval notation, the first range is used for indexes [ 0,
+ * @__c_index), while the second range is used for [ @__c_index, ... ). Example:
+ *
+ * #define _FOO_A			0xf000
+ * #define _FOO_B			0xf004
+ * #define _FOO_C			0xf008
+ * #define _SUPER_FOO_A			0xa000
+ * #define _SUPER_FOO_B			0xa100
+ * #define FOO(x)			_MMIO(_PICK_EVEN_2RANGES(x, 3,		\
+ *					      _FOO_A, _FOO_B,			\
+ *					      _SUPER_FOO_A, _SUPER_FOO_B))
+ *
+ * This expands to:
+ *	0: 0xf000,
+ *	1: 0xf004,
+ *	2: 0xf008,
+ *	3: 0xa000,
+ *	4: 0xa100,
+ *	5: 0xa200,
+ *	...
+ */
+#define _PICK_EVEN_2RANGES(__index, __c_index, __a, __b, __c, __d)		\
+	(BUILD_BUG_ON_ZERO(!__is_constexpr(__c_index)) +			\
+	 ((__index) < (__c_index) ? _PICK_EVEN(__index, __a, __b) :		\
+				   _PICK_EVEN((__index) - (__c_index), __c, __d)))
+
+/*
+ * Given the arbitrary numbers in varargs, pick the 0-based __index'th number.
+ *
+ * Always prefer _PICK_EVEN() over this if the numbers are evenly spaced.
+ */
+#define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
+
+#endif
-- 
2.47.3

