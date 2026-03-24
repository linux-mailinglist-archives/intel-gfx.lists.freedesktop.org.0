Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YL6uAAmhwmm3fQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 15:34:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A897130A39F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 15:34:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E9D410E659;
	Tue, 24 Mar 2026 14:34:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yy72DInO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4DDC10E681;
 Tue, 24 Mar 2026 14:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774362885; x=1805898885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4NZpmQD7jvP7TH3Z+tNd5rPecV4VlJztFoF6zIhUVzg=;
 b=Yy72DInOYWFQ28S7hpbOoDJzw9pZYyrxqf431KUZ7UmOGJGSnFClBxT4
 qC8lElUuPVMGdtYQR/YbsExPYM5+pBsrxPzToBYOC3HmB60s1+HehH0tg
 nS+6nu6hsvNfcKA2zVOPvzobipV/DUWyLpJqcnV13QjwctV9eOVP/QikT
 6AZG2gUzmUzcTRfmfqmOul6AMz3xXBLOa6NamxuVXiab/ApYwGzmpPK7q
 tWf8FfHFy5GWN0kor2mIVSlAmDRLvkOPM6nJSl0IrkOICMN47icX6D8VM
 6ALgCkkgkFV/Xch9bCGy9LPRAX7z1YsfY+cgh2jmyQDJouJtXDkekAiZg A==;
X-CSE-ConnectionGUID: zv1D1FodQ0i6dVwTNDBplA==
X-CSE-MsgGUID: 9aBaOO8NRKGX8lZBEgpxaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75405148"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75405148"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 07:34:43 -0700
X-CSE-ConnectionGUID: EwGbab6CQsSaSc2CmxrhVw==
X-CSE-MsgGUID: nF933tPlRZyqCXfk5KTkQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="228843210"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.170])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 07:34:41 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH 4/8] drm/i915/display: move BXT clock gating init to display
Date: Tue, 24 Mar 2026 16:29:53 +0200
Message-ID: <20260324143420.310800-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260324143420.310800-1-luciano.coelho@intel.com>
References: <20260324143420.310800-1-luciano.coelho@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: A897130A39F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the BXT-specific display clock gating programming into display
intel_display_clock_gating.c, to remove more dependencies from i915.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../i915/display/intel_display_clock_gating.c | 25 +++++++++++++++++++
 .../i915/display/intel_display_clock_gating.h |  2 ++
 drivers/gpu/drm/i915/intel_clock_gating.c     | 22 +---------------
 3 files changed, 28 insertions(+), 21 deletions(-)

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
index e0833c5452c5..3512b00b240d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
@@ -12,10 +12,12 @@ struct intel_display;
 void intel_display_skl_init_clock_gating(struct intel_display *display);
 void intel_display_kbl_init_clock_gating(struct intel_display *display);
 void intel_display_cfl_init_clock_gating(struct intel_display *display);
+void intel_display_bxt_init_clock_gating(struct intel_display *display);
 #else
 static inline void intel_display_skl_init_clock_gating(struct intel_display *display) {}
 static inline void intel_display_kbl_init_clock_gating(struct intel_display *display) {}
 static inline void intel_display_cfl_init_clock_gating(struct intel_display *display) {}
+static inline void intel_display_bxt_init_clock_gating(struct intel_display *display) {}
 #endif
 
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

