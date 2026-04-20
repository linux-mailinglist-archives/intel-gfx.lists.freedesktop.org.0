Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KgoOe4B5mkvqQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 12:37:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1FC429644
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 12:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2407C10E4DB;
	Mon, 20 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RQpXPBFa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA77A10E4D3;
 Mon, 20 Apr 2026 10:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776681452; x=1808217452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E3KiW6ZqYL54HVfSxqHNi/rZhujJoSFp9LSUB49HDUA=;
 b=RQpXPBFaKd1XLk6td7bmQT49PI7YUAvcbZvXx2c4GdlMezvsOSb/e4nO
 Kt/odGuR4kgpCtJq2Etr+ox5wD0umgtGPaFtPcZd6Yx0xSNmdIua5n4iR
 BZHY16jih7NFDgV4iYzvgDA/RvZegWo1Y/OJUMkwrv62AFg7ZCdczUywT
 /CwiZdvGsfpSlTpWHM+cOvV9xen5kqN4nDObVWTY6NFRZJA4PWlyv5QEp
 rmVXi+Ya9C/MB0DoWFzrOzr/Q00Au7SelCXzu6cL3W2V+p+xGW2xkptq8
 VQ84N5UTNYJ38OPukB03b+mbwTIOTmjn+aE3ILsHfnqp9CnAMgwcJW5SY Q==;
X-CSE-ConnectionGUID: +9O1biBrRqSQc2OwsnPd0A==
X-CSE-MsgGUID: byisRP7ySpWKj2RUrnu38Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="81464755"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="81464755"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 03:37:32 -0700
X-CSE-ConnectionGUID: Hm7THKzWTGeHGRi4TB6jyQ==
X-CSE-MsgGUID: pHHr9u85RSGqFRjv4l0cMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="231554575"
Received: from vpanait-mobl.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.99])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 03:37:29 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3 4/8] drm/i915/display: move BXT clock gating init to display
Date: Mon, 20 Apr 2026 13:30:46 +0300
Message-ID: <20260420103705.3453499-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420103705.3453499-1-luciano.coelho@intel.com>
References: <20260420103705.3453499-1-luciano.coelho@intel.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9B1FC429644
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the BXT-specific display clock gating programming into display
intel_display_clock_gating.c, to remove more dependencies from i915.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../i915/display/intel_display_clock_gating.c | 25 +++++++++++++++++++
 .../i915/display/intel_display_clock_gating.h |  1 +
 drivers/gpu/drm/i915/intel_clock_gating.c     | 22 +---------------
 3 files changed, 27 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
index 82ea21d7377d..59041c807d6d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
@@ -35,3 +35,28 @@ void intel_display_cfl_init_clock_gating(struct intel_display *display)
 	 */
 	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 }
+
+void intel_display_bxt_init_clock_gating(struct intel_display *display)
+{
+	/*
+	 * Wa: Backlight PWM may stop in the asserted state, causing backlight
+	 * to stay fully on.
+	 */
+	intel_de_write(display, GEN9_CLKGATE_DIS_0,
+		       intel_de_read(display, GEN9_CLKGATE_DIS_0) |
+		       PWM1_GATING_DIS | PWM2_GATING_DIS);
+
+	/*
+	 * Lower the display internal timeout.
+	 * This is needed to avoid any hard hangs when DSI port PLL
+	 * is off and a MMIO access is attempted by any privilege
+	 * application, using batch buffers or any other means.
+	 */
+	intel_de_write(display, RM_TIMEOUT, MMIO_TIMEOUT_US(950));
+
+	/*
+	 * WaFbcTurnOffFbcWatermark:bxt
+	 * Display WA #0562: bxt
+	 */
+	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
index 63960f1e80fc..6bc84a9a4342 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
@@ -11,5 +11,6 @@ struct intel_display;
 void intel_display_skl_init_clock_gating(struct intel_display *display);
 void intel_display_kbl_init_clock_gating(struct intel_display *display);
 void intel_display_cfl_init_clock_gating(struct intel_display *display);
+void intel_display_bxt_init_clock_gating(struct intel_display *display);
 
 #endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index b9bd23c2731e..4c1937d922b2 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -88,27 +88,7 @@ static void bxt_init_clock_gating(struct drm_i915_private *i915)
 	 */
 	intel_uncore_rmw(&i915->uncore, GEN8_UCGCTL6, 0, GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);
 
-	/*
-	 * Wa: Backlight PWM may stop in the asserted state, causing backlight
-	 * to stay fully on.
-	 */
-	intel_uncore_write(&i915->uncore, GEN9_CLKGATE_DIS_0,
-			   intel_uncore_read(&i915->uncore, GEN9_CLKGATE_DIS_0) |
-			   PWM1_GATING_DIS | PWM2_GATING_DIS);
-
-	/*
-	 * Lower the display internal timeout.
-	 * This is needed to avoid any hard hangs when DSI port PLL
-	 * is off and a MMIO access is attempted by any privilege
-	 * application, using batch buffers or any other means.
-	 */
-	intel_uncore_write(&i915->uncore, RM_TIMEOUT, MMIO_TIMEOUT_US(950));
-
-	/*
-	 * WaFbcTurnOffFbcWatermark:bxt
-	 * Display WA #0562: bxt
-	 */
-	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
+	intel_display_bxt_init_clock_gating(i915->display);
 }
 
 static void glk_init_clock_gating(struct drm_i915_private *i915)
-- 
2.53.0

