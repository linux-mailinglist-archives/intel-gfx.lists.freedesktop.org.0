Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBhuDU4kemmv2wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:59:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C8DA364C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:59:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E05810E6F9;
	Wed, 28 Jan 2026 14:59:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N7KH0YUZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1347E10E6F7;
 Wed, 28 Jan 2026 14:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769612363; x=1801148363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=woqO3Y4KFgKmLRVp8a6W677osEXDGoiDWg//5cv1PmY=;
 b=N7KH0YUZELI+k+ZVLoBnRoEkac1Bo7TXgfS4cMbrxNRbeFaUBJPCzALD
 pClr1nSmsjTtl+Kx8WmQ/XwBO3T/vLsWH18qEoesDmcieiwttLwXFRXCQ
 eO+k6tC1659H4gSiP85MguASP+TYpBhkho+vRnS6vIYXEGaGsXN3SDxAV
 hpDyur6Fp1B/PUnk2WU5eIeti7aD8fEtVZshZUytLe1F/728IMD8TqT8J
 OgtdfKsZU3RJN5u/qoIy+Hg47Mwhs2zpsDPOPIUmNqE5mXXf9OGL6CjnE
 HUwoCIqPGDIuiTMCH68NX+KjB1/PXtUA7o1wujqeJAHKYFQwms+JHXxyQ A==;
X-CSE-ConnectionGUID: Eh7rpexLS3aHu+qoGOUxTw==
X-CSE-MsgGUID: BZ3kjl66SsudWRAPjDCBtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="81935615"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="81935615"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:59:22 -0800
X-CSE-ConnectionGUID: RLR7scUBSueeGwHmkrH9ZQ==
X-CSE-MsgGUID: A+/E1iJgRA+rWKiReKhU+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208354110"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:59:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/4] drm/i915/display: move enum aux_ch to
 intel_display_limits.h
Date: Wed, 28 Jan 2026 16:59:07 +0200
Message-ID: <86ccc91ee1ca96fa145b750e2f1935918ec288d0.1769612208.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769612208.git.jani.nikula@intel.com>
References: <cover.1769612208.git.jani.nikula@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D5C8DA364C
X-Rspamd-Action: no action

Move enum aux_ch from intel_display.h to intel_display_limits.h to avoid
having to include the former from gvt. This currently happens via
intel_display_types.h, which we can also drop in favour of
intel_display_limits.h in intel_gvt_mmio_table.c.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h  | 26 -------------------
 .../drm/i915/display/intel_display_limits.h   | 26 +++++++++++++++++++
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  2 +-
 3 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f8e6e4e82722..4cced16af8ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -135,32 +135,6 @@ enum tc_port {
 	I915_MAX_TC_PORTS
 };
 
-enum aux_ch {
-	AUX_CH_NONE = -1,
-
-	AUX_CH_A,
-	AUX_CH_B,
-	AUX_CH_C,
-	AUX_CH_D,
-	AUX_CH_E, /* ICL+ */
-	AUX_CH_F,
-	AUX_CH_G,
-	AUX_CH_H,
-	AUX_CH_I,
-
-	/* tgl+ */
-	AUX_CH_USBC1 = AUX_CH_D,
-	AUX_CH_USBC2,
-	AUX_CH_USBC3,
-	AUX_CH_USBC4,
-	AUX_CH_USBC5,
-	AUX_CH_USBC6,
-
-	/* XE_LPD repositions D/E offsets and bitfields */
-	AUX_CH_D_XELPD = AUX_CH_USBC5,
-	AUX_CH_E_XELPD,
-};
-
 enum phy {
 	PHY_NONE = -1,
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
index cb3c9c665c44..453f7b720815 100644
--- a/drivers/gpu/drm/i915/display/intel_display_limits.h
+++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
@@ -138,6 +138,32 @@ enum hpd_pin {
 	HPD_NUM_PINS
 };
 
+enum aux_ch {
+	AUX_CH_NONE = -1,
+
+	AUX_CH_A,
+	AUX_CH_B,
+	AUX_CH_C,
+	AUX_CH_D,
+	AUX_CH_E, /* ICL+ */
+	AUX_CH_F,
+	AUX_CH_G,
+	AUX_CH_H,
+	AUX_CH_I,
+
+	/* tgl+ */
+	AUX_CH_USBC1 = AUX_CH_D,
+	AUX_CH_USBC2,
+	AUX_CH_USBC3,
+	AUX_CH_USBC4,
+	AUX_CH_USBC5,
+	AUX_CH_USBC6,
+
+	/* XE_LPD repositions D/E offsets and bitfields */
+	AUX_CH_D_XELPD = AUX_CH_USBC5,
+	AUX_CH_E_XELPD,
+};
+
 enum intel_color_block {
 	INTEL_PLANE_CB_PRE_CSC_LUT,
 	INTEL_PLANE_CB_CSC,
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 052596ac83a0..c0154fd77fc9 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -11,8 +11,8 @@
 #include "display/intel_color_regs.h"
 #include "display/intel_crt_regs.h"
 #include "display/intel_cursor_regs.h"
+#include "display/intel_display_limits.h"
 #include "display/intel_display_regs.h"
-#include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dp_aux_regs.h"
 #include "display/intel_dpio_phy.h"
-- 
2.47.3

