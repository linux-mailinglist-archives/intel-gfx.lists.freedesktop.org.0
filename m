Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDi+NhMMn2neYgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:49:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8057F198FA0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 15:49:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE8F610E7A0;
	Wed, 25 Feb 2026 14:49:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mklffmf7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 088E910E1AB;
 Wed, 25 Feb 2026 14:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772030992; x=1803566992;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VxoviG3mjs3DhL7X5bagqmfQ4dOTgmYoiMRTz8SEEqQ=;
 b=mklffmf7iEtP+4lGC7CWiTV7DYZ1z2E6Ht8o1iuTh/Gv4dZas6LSy1m6
 3nusyshXiiGhPX2p29GxWtxpe9Sb9xnFvHElNc2dOErd1crHSckEpXYnx
 auXak+pLwQy2OvdWC4Sn63s0I+R2FZeEDceVVhImN1K2xxTiOkluioFjC
 l/EqEduZytKGwBEcbjVY00bmKvzLyEbzEvPhxqjRnlQofgL73bUSjd4Kl
 NbuUK/Kpov50OrcFS5AJCZ8mc1lGvJhZ6QKcCKvbX7rYFwBekokCaa+Lh
 FfyxafiYQRsfGPAGhHbzVGBvBsMoj5uRyoBLMc3Y3hU5TkRRGJpJbn6by A==;
X-CSE-ConnectionGUID: 9oWodsG2QlK6CUhB/jAM1g==
X-CSE-MsgGUID: OUdG+lj9TMi8iLBS708rug==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="95686376"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="95686376"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:49:52 -0800
X-CSE-ConnectionGUID: E73dDv8QTCWmeoNszkZD3w==
X-CSE-MsgGUID: FJcDL2WSR76JvB5pd6gEmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216387406"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 06:49:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 06/10] drm/i915/dpt: drop _common from the DPT file names
Date: Wed, 25 Feb 2026 16:49:12 +0200
Message-ID: <3f2da737a26bb71a7bc05a3e6c456302e3c72656.1772030909.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772030909.git.jani.nikula@intel.com>
References: <cover.1772030909.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[intel.com,gmail.com];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8057F198FA0
X-Rspamd-Action: no action

With the intel_dpt.[ch] file names vacated, and i915 specific code moved
away, we can rename the intel_dpt_common.[ch] files to the simpler name.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                                   | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c                    | 2 +-
 .../gpu/drm/i915/display/{intel_dpt_common.c => intel_dpt.c}    | 2 +-
 .../gpu/drm/i915/display/{intel_dpt_common.h => intel_dpt.h}    | 0
 drivers/gpu/drm/i915/i915_driver.c                              | 2 +-
 drivers/gpu/drm/xe/Makefile                                     | 2 +-
 6 files changed, 5 insertions(+), 5 deletions(-)
 rename drivers/gpu/drm/i915/display/{intel_dpt_common.c => intel_dpt.c} (98%)
 rename drivers/gpu/drm/i915/display/{intel_dpt_common.h => intel_dpt.h} (100%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index f1f504b36374..1c7c7687033c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -271,7 +271,7 @@ i915-y += \
 	display/intel_dpio_phy.o \
 	display/intel_dpll.o \
 	display/intel_dpll_mgr.o \
-	display/intel_dpt_common.o \
+	display/intel_dpt.o \
 	display/intel_dram.o \
 	display/intel_drrs.o \
 	display/intel_dsb.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 24ea9c2b28ad..27354585ba92 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -84,7 +84,7 @@
 #include "intel_dp_tunnel.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
-#include "intel_dpt_common.h"
+#include "intel_dpt.h"
 #include "intel_drrs.h"
 #include "intel_dsb.h"
 #include "intel_dsi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpt_common.c b/drivers/gpu/drm/i915/display/intel_dpt.c
similarity index 98%
rename from drivers/gpu/drm/i915/display/intel_dpt_common.c
rename to drivers/gpu/drm/i915/display/intel_dpt.c
index 6551318b037b..dffd500d378e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt_common.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -6,7 +6,7 @@
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
-#include "intel_dpt_common.h"
+#include "intel_dpt.h"
 #include "intel_parent.h"
 #include "skl_universal_plane_regs.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpt_common.h b/drivers/gpu/drm/i915/display/intel_dpt.h
similarity index 100%
rename from drivers/gpu/drm/i915/display/intel_dpt_common.h
rename to drivers/gpu/drm/i915/display/intel_dpt.h
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 570626f8a554..31a608ccab00 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -59,7 +59,7 @@
 #include "display/intel_display_power.h"
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
-#include "display/intel_dpt_common.h"
+#include "display/intel_dpt.h"
 #include "display/intel_dram.h"
 #include "display/intel_encoder.h"
 #include "display/intel_fbdev.h"
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 41ec698b3cc1..8fc0c3678944 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -275,7 +275,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_dp_test.o \
 	i915-display/intel_dpll.o \
 	i915-display/intel_dpll_mgr.o \
-	i915-display/intel_dpt_common.o \
+	i915-display/intel_dpt.o \
 	i915-display/intel_dram.o \
 	i915-display/intel_drrs.o \
 	i915-display/intel_dsb.o \
-- 
2.47.3

