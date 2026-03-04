Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BHLDJdEqGkfsAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:41:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB183201C69
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:41:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 348F910EA25;
	Wed,  4 Mar 2026 14:41:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ESxrLzO3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7904710EA25;
 Wed,  4 Mar 2026 14:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772635285; x=1804171285;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zU8IZNAt7Tu/162XC5JwFtbUKNzCyF5uz75SlEjayjo=;
 b=ESxrLzO3omyPjO2R2nhEZzGIiAmSzHdb+XSgJYS0VHPqoucIi+fucTeL
 EzOSlFjDf9MRjqaTzj4xHLYg+Pn7gmUcWHzOyiFio43em3GjnLh6Hep3z
 /R4xboRx2SxPbhkj8gny0xyZXBet3ZfY3b+za4pVbBbFSFuhEAJW1p0Ev
 2IbJqQZJBkz23pz8fYsJO5AOF9G8+0F5dSJSGOAGBWyy7ILwv59KxubTL
 W2k61MX4EBAXMW09sUpwoEsqWA/6WoNoi58Kg7BwJ3aUgKqM+s7FNXIjD
 ea8KQ4LbHCQjtuCrWRP4fYcnrMoXDOHZplflkUXOPQgMQqITb/HMnUfJl w==;
X-CSE-ConnectionGUID: vGAdMeY5TpiBq6kv9yAINg==
X-CSE-MsgGUID: XNF571u8TSCVIRPnbI7ELg==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77300894"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="77300894"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:41:25 -0800
X-CSE-ConnectionGUID: SPRtZLNFR0ygRCcnFI2BgQ==
X-CSE-MsgGUID: npAhZbCSTmS2D4X5rgbztA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="218320207"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:41:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/8] drm/intel: add shared step.h and switch i915 to use it
Date: Wed,  4 Mar 2026 16:40:50 +0200
Message-ID: <bdfa49fcc939985c66d75f3f39987813493c3ef1.1772635152.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772635152.git.jani.nikula@intel.com>
References: <cover.1772635152.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: CB183201C69
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
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

As the first step towards using shared definitions for step name
enumerations, add shared include/drm/intel/step.h and switch i915 to use
it.

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

