Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YO4DMC6D8GlwUQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 11:51:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73434481E15
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 11:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0220410EACB;
	Tue, 28 Apr 2026 09:51:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DQqW9hD0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A5510EACA;
 Tue, 28 Apr 2026 09:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777369898; x=1808905898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S5RoBIsu1I/17XaWLp6eVcu1LK/41IzZGMsZd0yQ6Zg=;
 b=DQqW9hD0MdPaN1wrYzqbzzAe6zb4Njjxv28UiJE2VSYKonMrSwo4XsaR
 cMXfw/nocbdIBGJsSiFcQnS7GRU+Lz1lhjG5qnqfx/QHDGgVxJ5PYNxS7
 uNF6VOvU0/5i7uVrevqLPHVZicSAODZ50TzcdqjElQW750ieDsM6vpYfw
 nRinqL0yvCrb4SXAkaNRynB48LxkrIb1iQ+jFaQI2Zy+knBZHpABZmkVn
 yzXkKuRWAwNuOJ/lBJW+pxRcIl/vBlkrVt8z0TY/rnXguVi/IsxNabpR7
 x/vcv6pMDzD7wr1HcxKncvnYEjMUqUHqWWrbPTQbu3ITy1toS1/4TVvW6 g==;
X-CSE-ConnectionGUID: royyrW2uSlm1WeCuBT4zvg==
X-CSE-MsgGUID: RD2Dd0OcT/OxXc8z8BzWFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78385120"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="78385120"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:51:38 -0700
X-CSE-ConnectionGUID: Jx1/rAdgQH22pNDeideo/Q==
X-CSE-MsgGUID: JIixJx0oT9+YpKlFNubcDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="238891837"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.243])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:51:36 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v5 4/8] drm/i915/display: move BXT clock gating init to display
Date: Tue, 28 Apr 2026 12:48:22 +0300
Message-ID: <20260428095104.818360-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260428095104.818360-1-luciano.coelho@intel.com>
References: <20260428095104.818360-1-luciano.coelho@intel.com>
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
X-Rspamd-Queue-Id: 73434481E15
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]

Move the BXT-specific display clock gating programming into display
intel_display_clock_gating.c, to remove more dependencies from i915.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
index 80d7f057cb81..a9efa5ce8f6a 100644
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

