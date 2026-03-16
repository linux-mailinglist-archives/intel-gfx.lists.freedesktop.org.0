Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAxTK2n0t2mfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6482994E1
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E340110E506;
	Mon, 16 Mar 2026 12:15:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PdznPP1w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C30B10E50B;
 Mon, 16 Mar 2026 12:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773663335; x=1805199335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7IIcrqdIQQr9/ToSMQL0mLA/gYYCrzDj0Iazgg3c/1c=;
 b=PdznPP1wTl/ZYCSf+D+qmRJBhxz0grDgW6NpXhXYG/gZHFOdnTmPQtCG
 bGtiju2JtnADnqWdLMrUn9aoUpY+yFtFNYchmNRaCicKzOI6n1eHdfNV6
 ybVeXltVaYiuSnp6EyOgJ0LM3jSN8zEbplWubdM4Zravhtyq0inHmmSpq
 02PBveqFFH6kCrINvPEBSLKU9d6AgbP3/uoHSr2PqGPobCN4/n3TGAgJ9
 LFqENbz3kAUBHOFcBXq/dW9BsRCqlFCVraSlwK9I8ukbXxKxF6qfpBZfV
 mkJoB/L4HFzub9iaC8W+EFVr4ikv2rjnkiUpY5PcI87DMEu8RUkNOaFv0 g==;
X-CSE-ConnectionGUID: wBMKFAuaRSqfNpUPOyRxxA==
X-CSE-MsgGUID: xhZ6GtFSTm2fSe3ScJclhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="74711477"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74711477"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:35 -0700
X-CSE-ConnectionGUID: 7TfkNpayS36deivG7JF9xg==
X-CSE-MsgGUID: RWa1LH5LR7K0SnZi40u4qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221846919"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [CI 5/5] drm/intel: add shared step.h and switch i915 to use it
Date: Mon, 16 Mar 2026 14:15:02 +0200
Message-ID: <e76412a316ddff44dc46633d80e9caa5df54ed6b.1773663208.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773663208.git.jani.nikula@intel.com>
References: <cover.1773663208.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5B6482994E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

As the first step towards using shared definitions for step name
enumerations, add shared include/drm/intel/step.h and switch i915 to use
it.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_step.h | 57 +---------------------------
 include/drm/intel/step.h          | 62 +++++++++++++++++++++++++++++++
 2 files changed, 64 insertions(+), 55 deletions(-)
 create mode 100644 include/drm/intel/step.h

diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 22f1d6905160..2ca36eae4b5a 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+#include <drm/intel/step.h>
+
 struct drm_i915_private;
 
 struct intel_step_info {
@@ -19,61 +21,6 @@ struct intel_step_info {
 	u8 media_step;
 };
 
-#define STEP_ENUM_VAL(name)  STEP_##name,
-
-#define STEP_NAME_LIST(func)		\
-	func(A0)			\
-	func(A1)			\
-	func(A2)			\
-	func(A3)			\
-	func(B0)			\
-	func(B1)			\
-	func(B2)			\
-	func(B3)			\
-	func(C0)			\
-	func(C1)			\
-	func(C2)			\
-	func(C3)			\
-	func(D0)			\
-	func(D1)			\
-	func(D2)			\
-	func(D3)			\
-	func(E0)			\
-	func(E1)			\
-	func(E2)			\
-	func(E3)			\
-	func(F0)			\
-	func(F1)			\
-	func(F2)			\
-	func(F3)			\
-	func(G0)			\
-	func(G1)			\
-	func(G2)			\
-	func(G3)			\
-	func(H0)			\
-	func(H1)			\
-	func(H2)			\
-	func(H3)			\
-	func(I0)			\
-	func(I1)			\
-	func(I2)			\
-	func(I3)			\
-	func(J0)			\
-	func(J1)			\
-	func(J2)			\
-	func(J3)
-
-/*
- * Symbolic steppings that do not match the hardware. These are valid both as gt
- * and display steppings as symbolic names.
- */
-enum intel_step {
-	STEP_NONE = 0,
-	STEP_NAME_LIST(STEP_ENUM_VAL)
-	STEP_FUTURE,
-	STEP_FOREVER,
-};
-
 void intel_step_init(struct drm_i915_private *i915);
 const char *intel_step_name(enum intel_step step);
 
diff --git a/include/drm/intel/step.h b/include/drm/intel/step.h
new file mode 100644
index 000000000000..4de7520109bc
--- /dev/null
+++ b/include/drm/intel/step.h
@@ -0,0 +1,62 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2026 Intel Corporation */
+
+#ifndef __STEP_H__
+#define __STEP_H__
+
+#define STEP_ENUM_VAL(name)  STEP_##name,
+
+#define STEP_NAME_LIST(func)		\
+	func(A0)			\
+	func(A1)			\
+	func(A2)			\
+	func(A3)			\
+	func(B0)			\
+	func(B1)			\
+	func(B2)			\
+	func(B3)			\
+	func(C0)			\
+	func(C1)			\
+	func(C2)			\
+	func(C3)			\
+	func(D0)			\
+	func(D1)			\
+	func(D2)			\
+	func(D3)			\
+	func(E0)			\
+	func(E1)			\
+	func(E2)			\
+	func(E3)			\
+	func(F0)			\
+	func(F1)			\
+	func(F2)			\
+	func(F3)			\
+	func(G0)			\
+	func(G1)			\
+	func(G2)			\
+	func(G3)			\
+	func(H0)			\
+	func(H1)			\
+	func(H2)			\
+	func(H3)			\
+	func(I0)			\
+	func(I1)			\
+	func(I2)			\
+	func(I3)			\
+	func(J0)			\
+	func(J1)			\
+	func(J2)			\
+	func(J3)
+
+/*
+ * Symbolic steppings that do not match the hardware. These are valid both as gt
+ * and display steppings as symbolic names.
+ */
+enum intel_step {
+	STEP_NONE = 0,
+	STEP_NAME_LIST(STEP_ENUM_VAL)
+	STEP_FUTURE,
+	STEP_FOREVER,
+};
+
+#endif /* __STEP_H__ */
-- 
2.47.3

