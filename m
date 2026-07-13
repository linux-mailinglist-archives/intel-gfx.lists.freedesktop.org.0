Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 09tpIgZ4VWqRowAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 01:43:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D31B374FC61
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 01:43:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=igalia.com header.s=20170329 header.b=Y4BTsTQO;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9602B10E2E9;
	Mon, 13 Jul 2026 23:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EDC310E2E9;
 Mon, 13 Jul 2026 23:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pofkKNf1ZRcJb2ob42/GV7t7rQSOQ/uhrVsYxEKCW3w=; b=Y4BTsTQOzs64IGvt91RoHXXAX3
 AxMQob614m6cTPY2JCUf2d32dPikKMTY63drguhpFPW2TKZXFe0tDCI9qnCGsVnsyTquILYGuOZ1R
 KLwI9DqbGj1lH+DSAL9Yp+psWYJ23aMMypSJljfztKAIbbgCzCh8lG+4seWVFZTTOxvX9mdCUzJzE
 A09fQjyqX0Tufu5DHQn45fttEV+XqiSIX4sKnP5081hv/x4lg9xVRiC0GG59R7mA3NsoCXqYT6rwU
 qPnwv0ba+apxMkS9ieH2+4/iHFjmxNDyMu+mmHWgVd49xZ9Ju1kNBwxUHsEUAHqIkFb0AtowNyYew
 G76zPhZg==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=localhost.localdomain) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wjQIX-00Ej4M-FK; Tue, 14 Jul 2026 01:42:54 +0200
From: John Harrison <John.Harrison@Igalia.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: kernel-dev@igalia.com, Uma Shankar <uma.shankar@intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2] drm/i915/display: Fix too few bits in transcoder mask
 variables
Date: Mon, 13 Jul 2026 16:41:38 -0700
Message-ID: <20260713234138.3861243-1-John.Harrison@Igalia.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[igalia.com:email,Igalia.com:from_mime,Igalia.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D31B374FC61

New transcoder enum values (for CMTG) were recently added which pushed
the maximum transcoder mask beyond 8bits. The patch in question
updated the info structure's u8 to u16 but not any of the functions
that process transcoder masks. So fix those as well.

v2: Fix more instances (found by Sashiko)

Signed-off-by: John Harrison <John.Harrison@Igalia.com>
Fixes: 789dda6429e0 ("drm/i915/cmtg: Add CMTG transcoder offset in struct _device_info")
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++---
 drivers/gpu/drm/i915/display/intel_display.c  | 22 +++++++++----------
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    | 18 +++++++--------
 6 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2b7eb010511b..617106c68cb4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4563,7 +4563,7 @@ static bool crtcs_port_sync_compatible(const struct intel_crtc_state *crtc_state
 		m_n_equal(&crtc_state1->dp_m_n, &crtc_state2->dp_m_n);
 }
 
-static u8
+static u16
 intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crtc_state,
 				int tile_group_id)
 {
@@ -4572,7 +4572,7 @@ intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crtc_state,
 	const struct drm_connector_state *conn_state;
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(ref_crtc_state->uapi.state);
-	u8 transcoders = 0;
+	u16 transcoders = 0;
 	int i;
 
 	/*
@@ -4616,7 +4616,7 @@ static int intel_ddi_compute_config_late(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_connector *connector = conn_state->connector;
-	u8 port_sync_transcoders = 0;
+	u16 port_sync_transcoders = 0;
 	int ret = 0;
 
 	if (intel_crtc_has_dp_encoder(crtc_state))
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
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c048da7d6fea..8bd213db5e7a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1372,7 +1372,7 @@ struct intel_crtc_state {
 	enum transcoder master_transcoder;
 
 	/* Bitmask to indicate slaves attached */
-	u8 sync_mode_slaves_mask;
+	u16 sync_mode_slaves_mask;
 
 	/* Only valid on TGL+ */
 	enum transcoder mst_master_transcoder;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ade7e51e7590..799dca78767b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6583,7 +6583,7 @@ static int intel_modeset_tile_group(struct intel_atomic_state *state,
 	return ret;
 }
 
-static int intel_modeset_affected_transcoders(struct intel_atomic_state *state, u8 transcoders)
+static int intel_modeset_affected_transcoders(struct intel_atomic_state *state, u16 transcoders)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
@@ -6631,7 +6631,7 @@ static int intel_modeset_synced_crtcs(struct intel_atomic_state *state,
 		drm_atomic_get_old_connector_state(&state->base, &connector->base);
 	const struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc *crtc;
-	u8 transcoders;
+	u16 transcoders;
 
 	crtc = to_intel_crtc(old_conn_state->crtc);
 	if (!crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ecc90e8faee1..507e2156d905 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -776,7 +776,7 @@ intel_dp_mst_transcoder_mask(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_digital_connector_state *conn_state;
 	struct intel_connector *connector;
-	u8 transcoders = 0;
+	u16 transcoders = 0;
 	int i;
 
 	if (DISPLAY_VER(display) < 12)
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index e8730b5baf2a..e27a531e1aa2 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -186,11 +186,11 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
  * Return all the pipes using a transcoder in @transcoder_mask.
  * For joiner configs return only the joiner primary.
  */
-static u8 get_transcoder_pipes(struct intel_display *display,
-			       u8 transcoder_mask)
+static u16 get_transcoder_pipes(struct intel_display *display,
+				u16 transcoder_mask)
 {
 	struct intel_crtc *temp_crtc;
-	u8 pipes = 0;
+	u16 pipes = 0;
 
 	for_each_intel_crtc(display, temp_crtc) {
 		struct intel_crtc_state *temp_crtc_state =
@@ -214,7 +214,7 @@ static u8 get_transcoder_pipes(struct intel_display *display,
  * For joiner configs return only the joiner primary pipes.
  */
 static void get_portsync_pipes(struct intel_crtc *crtc,
-			       u8 *master_pipe_mask, u8 *slave_pipes_mask)
+			       u16 *master_pipe_mask, u16 *slave_pipes_mask)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state =
@@ -243,10 +243,10 @@ static void get_portsync_pipes(struct intel_crtc *crtc,
 	*slave_pipes_mask = get_transcoder_pipes(display, master_crtc_state->sync_mode_slaves_mask);
 }
 
-static u8 get_joiner_secondary_pipes(struct intel_display *display, u8 primary_pipes_mask)
+static u16 get_joiner_secondary_pipes(struct intel_display *display, u16 primary_pipes_mask)
 {
 	struct intel_crtc *primary_crtc;
-	u8 pipes = 0;
+	u16 pipes = 0;
 
 	for_each_intel_crtc_in_pipe_mask(display, primary_crtc, primary_pipes_mask) {
 		struct intel_crtc_state *primary_crtc_state =
@@ -263,9 +263,9 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc *temp_crtc;
-	u8 portsync_master_mask;
-	u8 portsync_slaves_mask;
-	u8 joiner_secondaries_mask;
+	u16 portsync_master_mask;
+	u16 portsync_slaves_mask;
+	u16 joiner_secondaries_mask;
 
 	/* TODO: Add support for MST */
 	get_portsync_pipes(crtc, &portsync_master_mask, &portsync_slaves_mask);
-- 
2.43.0

