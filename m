Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COptNkMvxGkAxQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:53:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB9132AD26
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:53:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1778310E82D;
	Wed, 25 Mar 2026 18:53:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FyCv/M0U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20F0C10E837;
 Wed, 25 Mar 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774464833; x=1806000833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MwITWG0tieuOpSpMOnt5DrxY0HmPib+1plbUPRHlpBY=;
 b=FyCv/M0UjO7n+cr9WSnsb++Me4GVyUCnW93pvdAYnGXf/A/eGM+NzePI
 2pJ6Lrj0uegB2kRZYE9OEJdLTa1xJFifeJMyqKekj1emwLkGFaGyESbyH
 wfC2y4M/cCgAudrSlWvyPnP2w+WcFIXHkyn1voZ5Is5br7QfT4Sa8jln8
 RVjiUre2WdXaTwrjmXor0jLXClOqAbHi6DWWRGXEXh6zrDdWZ3OTV24aY
 X7S0/0wj4abra84e0GSLnyHL5bDZT159S6miUm5NXr3vEjXWU8j8bobax
 VKzTPvP3i+FAMJMbHxKYuopCbThyPCpnxjPXfdRlbxgdmeUcvQKADOz3b w==;
X-CSE-ConnectionGUID: BMLKxReQRVavwXTyY5/0Hg==
X-CSE-MsgGUID: wP2BPCfpSDynrF3I6hnVgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75399919"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75399919"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:53:53 -0700
X-CSE-ConnectionGUID: KW97V1z+QJWyLeaBKptdZg==
X-CSE-MsgGUID: QnmoDvFBTFGWZ2X/5n8p8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="221872399"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:53:51 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/12] drm/i915/mchbar: Provide intel_mchbar_read*()
 abstraction
Date: Wed, 25 Mar 2026 20:53:31 +0200
Message-ID: <20260325185342.11482-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8EB9132AD26
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

MCHBAR registers are a bit special in that:
- we access them through the mirror
- the mirror is read only on HSW+
- the mirror requires the actual MCHBAR to be enabled in device 0:0.0
- the mirror is gone on MTL+

So I'd prefer to treat MCHBAR registers as a bit special in
the code as well, and do all accesses to them via dedicated
functions. Prodive such functions in the form of
intel_mchbar_read*().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile               |  1 +
 drivers/gpu/drm/i915/display/intel_mchbar.c | 32 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_mchbar.h | 22 ++++++++++++++
 drivers/gpu/drm/xe/Makefile                 |  1 +
 4 files changed, 56 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index b677720a1c2d..0e48305df8b2 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -295,6 +295,7 @@ i915-y += \
 	display/intel_link_bw.o \
 	display/intel_load_detect.o \
 	display/intel_lpe_audio.o \
+	display/intel_mchbar.o \
 	display/intel_modeset_lock.o \
 	display/intel_modeset_setup.o \
 	display/intel_modeset_verify.o \
diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.c b/drivers/gpu/drm/i915/display/intel_mchbar.c
new file mode 100644
index 000000000000..950a36d586c3
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_mchbar.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#include "intel_display_core.h"
+#include "intel_mchbar.h"
+#include "intel_uncore.h"
+
+u16 intel_mchbar_read16(struct intel_display *display,
+			i915_reg_t reg)
+{
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+
+	return intel_uncore_read16(uncore, reg);
+}
+
+u32 intel_mchbar_read(struct intel_display *display,
+		      i915_reg_t reg)
+{
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+
+	return intel_uncore_read(uncore, reg);
+}
+
+u64 intel_mchbar_read64(struct intel_display *display,
+			i915_reg_t reg)
+{
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+
+	return intel_uncore_read64(uncore, reg);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.h b/drivers/gpu/drm/i915/display/intel_mchbar.h
new file mode 100644
index 000000000000..ced5023c4522
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_mchbar.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2026 Intel Corporation
+ */
+
+#ifndef __INTEL_MCHBAR_H__
+#define __INTEL_MCHBAR_H__
+
+#include <linux/types.h>
+
+#include "i915_reg_defs.h"
+
+struct intel_display;
+
+u16 intel_mchbar_read16(struct intel_display *display,
+			i915_reg_t reg);
+u32 intel_mchbar_read(struct intel_display *display,
+		      i915_reg_t reg);
+u64 intel_mchbar_read64(struct intel_display *display,
+			i915_reg_t reg);
+
+#endif /* __INTEL_MCHBAR_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 49de1c22a469..6ae190316b95 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -304,6 +304,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_link_bw.o \
 	i915-display/intel_lspcon.o \
 	i915-display/intel_lt_phy.o \
+	i915-display/intel_mchbar.o \
 	i915-display/intel_modeset_lock.o \
 	i915-display/intel_modeset_setup.o \
 	i915-display/intel_modeset_verify.o \
-- 
2.52.0

