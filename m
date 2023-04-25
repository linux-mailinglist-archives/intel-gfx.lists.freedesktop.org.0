Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 075316EE0B2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F0ED10E70F;
	Tue, 25 Apr 2023 10:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035CE10E700
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420129; x=1713956129;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3km4v29/GLxSQfRhPnIdunBJsp94zH/Fw5MghfY8rx0=;
 b=m1TfhFi4GYXbYDGYznHkjdWNTZwpXvbyF7I+j4tiFKSlz4tjntRxpkda
 MhAzvFO7tChMqj3UnTxQEDOVYy4uszWvfyWtABJv0l+C6wv9dpJRUJZ+U
 CRgqRse0wT6iVASSitA6d/6jWzKrTmHRNVsZvRLvFFdZ1/ah7MAD6CNuf
 byVibSYXzAM4wbxZ9I/MFKZFJvxd8kCg31p7JwjL0q53rznUbuwlxv9k5
 5PdRj4L3T5zLuBlaY1W94IhYVLu3BYnSN9CxkaPveoEjfoOcp8KZHJDEK
 7EhHct7ZZ3frI5Uu/VGG+DIphmoY+O1HVH5Yag4P/YSohI1Gy9OeffG9J Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019659"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019659"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:55:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367500"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367500"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:55:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:55:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:48 +0300
Message-Id: <20230425105450.18441-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/14] drm/i915/dsi: Move panel reset+power off
 to be the last thing
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Follow what Windows does and do the DSI panel reset+power off
after everything else.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index d133cd450271..30b1ad51b0c5 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1291,12 +1291,6 @@ static void gen11_dsi_powerdown_panel(struct intel_encoder *encoder)
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_OFF);
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_ASSERT_RESET);
-
-	msleep(intel_dsi->panel_off_delay);
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_OFF);
-
-	intel_dsi->panel_power_off_time = ktime_get_boottime();
 
 	/* ensure cmds dispatched to panel */
 	wait_for_cmds_dispatched_to_panel(encoder);
@@ -1408,6 +1402,7 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 				   const struct intel_crtc_state *old_crtc_state,
 				   const struct drm_connector_state *old_conn_state)
 {
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(old_conn_state->crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
@@ -1434,6 +1429,13 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 
 	/* step4: disable IO power */
 	gen11_dsi_disable_io_power(encoder);
+
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_ASSERT_RESET);
+
+	intel_dsi_msleep(intel_dsi, intel_dsi->panel_off_delay);
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_OFF);
+
+	intel_dsi->panel_power_off_time = ktime_get_boottime();
 }
 
 static enum drm_mode_status gen11_dsi_mode_valid(struct drm_connector *connector,
-- 
2.39.2

