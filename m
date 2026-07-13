Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NCkWN8kYVWqxjwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 18:56:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E43A74DCAC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 18:56:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=igalia.com header.s=20170329 header.b=qXgUJhUT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCD2A10E62E;
	Mon, 13 Jul 2026 16:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C94610E633;
 Mon, 13 Jul 2026 16:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Bgw5L7qlEgRW4oVTl5DMnjtIeVwaG/+o1dwlqTw7Sg4=; b=qXgUJhUTn6d6TRenOr56FyJ2IJ
 3+lAf/uLq/Wd7gLZObYj+wtTMESX5SsZHHTNql0oPMAL3Dr0zeUpdshpagsFTLjzp7EZO+49Qgdrq
 o2iNTRdVp5Xp0+KPumU71ZwzySQP9+j6d/HtPh62qGGbgzohrHzvBbGWBO6e4S2IfR21QJRoHWfMO
 OwTLZCix/SGLs48gmi8VpyOWKa5dHHdiuLPzBVjG+fmRbxl39wuyZUQNg9Yh4hCrSAvf/PbjAruOU
 xFUXa9koCpo3nkGQweWA0A4yG288iZA3AG1jEOHRb7IKHnuQEL3700jQZm5A2Nx1+ruv6Fkqe/OmZ
 N4oBuNrA==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=localhost.localdomain) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wjJxK-00Eb2a-Dl; Mon, 13 Jul 2026 18:56:34 +0200
From: John Harrison <John.Harrison@Igalia.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: kernel-dev@igalia.com, Uma Shankar <uma.shankar@intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH] drm/i915/display: Fix too few bits in transcoder mask
 variables
Date: Mon, 13 Jul 2026 09:56:26 -0700
Message-ID: <20260713165626.2827609-1-John.Harrison@Igalia.com>
X-Mailer: git-send-email 2.43.0
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E43A74DCAC

New transcoder enum values (for CMTG) were recently added which pushed
the maximum transcoder mask beyond 8bits. The patch in question
updated the info structure's u8 to u16 but not any of the functions
that process transcoder masks. So fix those as well.

Signed-off-by: John Harrison <John.Harrison@Igalia.com>
Fixes: 789dda6429e0 ("drm/i915/cmtg: Add CMTG transcoder offset in struct _device_info")
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 214454f419e9..38763a6802c5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3767,9 +3767,9 @@ static void enabled_joiner_pipes(struct intel_display *display,
 	}
 }
 
-static u8 hsw_panel_transcoders(struct intel_display *display)
+static u16 hsw_panel_transcoders(struct intel_display *display)
 {
-	u8 panel_transcoder_mask = BIT(TRANSCODER_EDP);
+	u16 panel_transcoder_mask = BIT(TRANSCODER_EDP);
 
 	if (DISPLAY_VER(display) >= 11)
 		panel_transcoder_mask |= BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
@@ -3777,13 +3777,13 @@ static u8 hsw_panel_transcoders(struct intel_display *display)
 	return panel_transcoder_mask;
 }
 
-static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
+static u16 hsw_enabled_transcoders(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	u8 panel_transcoder_mask = hsw_panel_transcoders(display);
+	u16 panel_transcoder_mask = hsw_panel_transcoders(display);
 	enum transcoder cpu_transcoder;
 	u8 primary_pipe, secondary_pipes;
-	u8 enabled_transcoders = 0;
+	u16 enabled_transcoders = 0;
 
 	/*
 	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
@@ -3844,18 +3844,18 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 	return enabled_transcoders;
 }
 
-static bool has_edp_transcoders(u8 enabled_transcoders)
+static bool has_edp_transcoders(u16 enabled_transcoders)
 {
 	return enabled_transcoders & BIT(TRANSCODER_EDP);
 }
 
-static bool has_dsi_transcoders(u8 enabled_transcoders)
+static bool has_dsi_transcoders(u16 enabled_transcoders)
 {
 	return enabled_transcoders & (BIT(TRANSCODER_DSI_0) |
 				      BIT(TRANSCODER_DSI_1));
 }
 
-static bool has_pipe_transcoders(u8 enabled_transcoders)
+static bool has_pipe_transcoders(u16 enabled_transcoders)
 {
 	return enabled_transcoders & ~(BIT(TRANSCODER_EDP) |
 				       BIT(TRANSCODER_DSI_0) |
@@ -3863,7 +3863,7 @@ static bool has_pipe_transcoders(u8 enabled_transcoders)
 }
 
 static void assert_enabled_transcoders(struct intel_display *display,
-				       u8 enabled_transcoders)
+				       u16 enabled_transcoders)
 {
 	/* Only one type of transcoder please */
 	drm_WARN_ON(display->drm,
@@ -5880,7 +5880,7 @@ static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 }
 
 static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
-					       u8 transcoders)
+					       u16 transcoders)
 {
 	const struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
@@ -6516,7 +6516,7 @@ int intel_atomic_check(struct drm_device *dev,
 		}
 
 		if (is_trans_port_sync_mode(new_crtc_state)) {
-			u8 trans = new_crtc_state->sync_mode_slaves_mask;
+			u16 trans = new_crtc_state->sync_mode_slaves_mask;
 
 			if (new_crtc_state->master_transcoder != INVALID_TRANSCODER)
 				trans |= BIT(new_crtc_state->master_transcoder);
-- 
2.43.0

