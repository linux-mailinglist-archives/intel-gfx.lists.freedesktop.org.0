Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2JePIxwsR2rTTwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 05:27:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E18F66FE327
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 05:27:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=L6sbEmlJ;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A027810F370;
	Fri,  3 Jul 2026 03:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9032110F370;
 Fri,  3 Jul 2026 03:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783049240; x=1814585240;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1nJnf9s3xxP59eENOWsUKThPW+MJ+Cqh71dxl6nZ8Gc=;
 b=L6sbEmlJNONll5crRbPaXcDxb9zLhRloZCBDL9KYhcFJm6PyhMm6i6KL
 JTcXTwTKjyTM/mv5tz03YcYE7FA4s1IYsnLILxVZErqXALaKLuf6eFwAQ
 ueHKSIoQjZUeULcjo67jYeT3+x7oe/VGlKgsnzqWhr1xcjKsjiJWQsTAm
 UN76SOnzXMcZTQ4HSOflkdI+Z6bW+UIcGRjajOybgMDVvOT/ENXqs6QA7
 1qnozPm2IcPUCeavzUxz1TJwNNdCag09NqjBBKM76gP96QNzG7TRDY0UU
 CIGc6Lg1s5GoDpO8X5TopsKdHkATyxlaHsSoSWLf5J7WrOG6EqIDprZgQ Q==;
X-CSE-ConnectionGUID: HJB9csw3SeaMj48Mfnm2KQ==
X-CSE-MsgGUID: LoOY20S2QWOScz35MGO4Fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="83854143"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="83854143"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 20:27:20 -0700
X-CSE-ConnectionGUID: d7cpPm7aS9OwgnxyPL2REQ==
X-CSE-MsgGUID: wL6OPC2ITsKtNPyxE2f35w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="283095937"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 02 Jul 2026 20:27:13 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/display: Skip TRANS_VTOTAL.Vtotal write on NVL pre-C0
Date: Fri,  3 Jul 2026 08:56:54 +0530
Message-Id: <20260703032653.2122784-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
X-Rspamd-Action: no action
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
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E18F66FE327

On Nova Lake A/B steppings the GOP breaks DP-Alt / native DP output
when TRANS_VTOTAL.Vtotal is programmed with a non-zero value, and the
initial hardware readout of that field on such systems ends up in
adjusted_mode.crtc_vtotal = 1 -- tripping the DSB scanline WARN in
assert_dsl_ok() during intel_initial_commit.

Keep TRANS_VTOTAL.Vtotal at 0 on Nova Lake pre-C0 (A0..B3) in both
transcoder timing paths, and restore adjusted_mode.crtc_vtotal from
TRANS_VRR_VMIN in intel_vrr_get_config() so downstream state stays
consistent.

Fixes: f26a8df8dff9 ("drm/i915/display: Program TRANS_VTOTAL from mode vtotal")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 6 ++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 90c05ad08f86..214454f419e9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -45,6 +45,7 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_rect.h>
 #include <drm/drm_vblank.h>
+#include <drm/intel/step.h>
 
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
@@ -2737,6 +2738,10 @@ void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
+	if (display->platform.novalake &&
+	    IS_DISPLAY_STEP(display, STEP_A0, STEP_C0))
+		crtc_vtotal = 1;
+
 	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
@@ -2830,6 +2835,10 @@ void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
 	 * The double buffer latch point for TRANS_VTOTAL
 	 * is the transcoder's undelayed vblank.
 	 */
+	if (display->platform.novalake &&
+	    IS_DISPLAY_STEP(display, STEP_A0, STEP_C0))
+		crtc_vtotal = 1;
+
 	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index bffbdee76ee1..51e4f3309b8b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -5,6 +5,7 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/step.h>
 
 #include "intel_alpm.h"
 #include "intel_cmtg.h"
@@ -1106,6 +1107,11 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 			crtc_state->vrr.vmin += intel_vrr_vmin_flipline_offset(display);
 		}
 
+		if (display->platform.novalake &&
+		    IS_DISPLAY_STEP(display, STEP_A0, STEP_C0))
+			crtc_state->hw.adjusted_mode.crtc_vtotal =
+				intel_vrr_vmin_vtotal(crtc_state);
+
 		if (HAS_AS_SDP(display)) {
 			trans_vrr_vsync =
 				intel_de_read(display,
-- 
2.34.1

