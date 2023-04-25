Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E469D6EE870
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 21:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42BAA10E7F0;
	Tue, 25 Apr 2023 19:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41F6610E162
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 19:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1682451888;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Baw/KTPo2tU+H5jD2YSpm63MyKPuTzT/AXszr1gHw8U=;
 b=V9hefPMOyatMMssUjo2JWgud0L8F2ZagAg714AdIsRf7hv6i5jRUQzXHvDS7Ru2loARGHi
 zpXf95/7dnG5t/GCpcsW1mZpvNwZ7N9HIuD8s3eqXqimFAQTbmL6O3Wxcr2wmsJ0bD1AWT
 QdStB8rlqB0wsKZSNwJjAOxM0eEuu50=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-561-ZR7YExxsMPexdHg6oJS2WA-1; Tue, 25 Apr 2023 15:44:45 -0400
X-MC-Unique: ZR7YExxsMPexdHg6oJS2WA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E118185A78B;
 Tue, 25 Apr 2023 19:44:45 +0000 (UTC)
Received: from x1.nl (unknown [10.39.192.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 93AED2027043;
 Tue, 25 Apr 2023 19:44:43 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Tue, 25 Apr 2023 21:44:41 +0200
Message-Id: <20230425194441.68086-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
Subject: [Intel-gfx] [PATCH v2] drm/i915/dsi: Use unconditional msleep()
 instead of intel_dsi_msleep()
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
Cc: Hans de Goede <hdegoede@redhat.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The intel_dsi_msleep() helper skips sleeping if the MIPI-sequences have
a version of 3 or newer and the panel is in vid-mode.

This is based on the big comment around line 730 which starts with
"Panel enable/disable sequences from the VBT spec.", where
the "v3 video mode seq" column does not have any wait t# entries.

Checking the Windows driver shows that it does always honor
the VBT delays independent of the version of the VBT sequences.

Commit 6fdb335f1c9c ("drm/i915/dsi: Use unconditional msleep for
the panel_on_delay when there is no reset-deassert MIPI-sequence")
switched to a direct msleep() instead of intel_dsi_msleep()
when there is no MIPI_SEQ_DEASSERT_RESET sequence, to fix
the panel on an Acer Aspire Switch 10 E SW3-016 not turning on.

And now testing on a Nextbook Ares 8A shows that panel_on_delay
must always be honored otherwise the panel will not turn on.

Instead of only always using regular msleep() for panel_on_delay
do as Windows does and always use regular msleep() everywhere
were intel_dsi_msleep() is used and drop the intel_dsi_msleep()
helper.

Changes in v2:
- Replace all intel_dsi_msleep() calls instead of just
  the intel_dsi_msleep(panel_on_delay) call

Fixes: 6fdb335f1c9c ("drm/i915/dsi: Use unconditional msleep for the panel_on_delay when there is no reset-deassert MIPI-sequence")
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 11 ----------
 drivers/gpu/drm/i915/display/intel_dsi_vbt.h |  1 -
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 22 +++++---------------
 4 files changed, 6 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index fc0eaf40dc94..6dd942522021 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1211,7 +1211,7 @@ static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 
 	/* panel power on related mipi dsi vbt sequences */
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
-	intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
+	msleep(intel_dsi->panel_on_delay);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_INIT_OTP);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 2cbc1292ab38..f102c13cb959 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -762,17 +762,6 @@ void intel_dsi_vbt_exec_sequence(struct intel_dsi *intel_dsi,
 		gpiod_set_value_cansleep(intel_dsi->gpio_backlight, 0);
 }
 
-void intel_dsi_msleep(struct intel_dsi *intel_dsi, int msec)
-{
-	struct intel_connector *connector = intel_dsi->attached_connector;
-
-	/* For v3 VBTs in vid-mode the delays are part of the VBT sequences */
-	if (is_vid_mode(intel_dsi) && connector->panel.vbt.dsi.seq_version >= 3)
-		return;
-
-	msleep(msec);
-}
-
 void intel_dsi_log_params(struct intel_dsi *intel_dsi)
 {
 	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.h b/drivers/gpu/drm/i915/display/intel_dsi_vbt.h
index dc642c1fe7ef..468d873fab1a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.h
@@ -16,7 +16,6 @@ void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on);
 void intel_dsi_vbt_gpio_cleanup(struct intel_dsi *intel_dsi);
 void intel_dsi_vbt_exec_sequence(struct intel_dsi *intel_dsi,
 				 enum mipi_seq seq_id);
-void intel_dsi_msleep(struct intel_dsi *intel_dsi, int msec);
 void intel_dsi_log_params(struct intel_dsi *intel_dsi);
 
 #endif /* __INTEL_DSI_VBT_H__ */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 2289f6b1b4eb..37efeab52581 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -783,7 +783,6 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum port port;
@@ -831,21 +830,10 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 	if (!IS_GEMINILAKE(dev_priv))
 		intel_dsi_prepare(encoder, pipe_config);
 
+	/* Give the panel time to power-on and then deassert its reset */
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
-
-	/*
-	 * Give the panel time to power-on and then deassert its reset.
-	 * Depending on the VBT MIPI sequences version the deassert-seq
-	 * may contain the necessary delay, intel_dsi_msleep() will skip
-	 * the delay in that case. If there is no deassert-seq, then an
-	 * unconditional msleep is used to give the panel time to power-on.
-	 */
-	if (connector->panel.vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET]) {
-		intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
-		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
-	} else {
-		msleep(intel_dsi->panel_on_delay);
-	}
+	msleep(intel_dsi->panel_on_delay);
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
 
 	if (IS_GEMINILAKE(dev_priv)) {
 		glk_cold_boot = glk_dsi_enable_io(encoder);
@@ -879,7 +867,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 		msleep(20); /* XXX */
 		for_each_dsi_port(port, intel_dsi->ports)
 			dpi_send_cmd(intel_dsi, TURN_ON, false, port);
-		intel_dsi_msleep(intel_dsi, 100);
+		msleep(100);
 
 		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
 
@@ -1007,7 +995,7 @@ static void intel_dsi_post_disable(struct intel_atomic_state *state,
 	/* Assert reset */
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_ASSERT_RESET);
 
-	intel_dsi_msleep(intel_dsi, intel_dsi->panel_off_delay);
+	msleep(intel_dsi->panel_off_delay);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_OFF);
 
 	intel_dsi->panel_power_off_time = ktime_get_boottime();
-- 
2.39.1

