Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B40EC6EBAE5
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Apr 2023 20:44:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E342F10E08E;
	Sat, 22 Apr 2023 18:44:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEBA310E08E
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Apr 2023 18:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1682189050;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=mmxRlp7sO3FmZe8GlXgS6wzBX13lPdwNbQmL4X4fggw=;
 b=Wfe0CYD27v4B8zRHSkqlNG1cu+O/LGSSF/MvjWMtJ6QoLlsM1BKn7RodvW3cjX3Dn1J8qQ
 WeEr/wxwfZ2IOddfHGkxMal+WFr/S/FtmkEC6PgDWC4FLniRKSWI6j40gkVDX/XOxg63/L
 MPaZW05/dSe2vdbkeIgvpugGslqH+v4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-330-CSKvXFHEMXuKP48HutWcUQ-1; Sat, 22 Apr 2023 14:44:06 -0400
X-MC-Unique: CSKvXFHEMXuKP48HutWcUQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72DCB3810B06;
 Sat, 22 Apr 2023 18:44:06 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 758C82022EC9;
 Sat, 22 Apr 2023 18:44:05 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Sat, 22 Apr 2023 20:43:59 +0200
Message-Id: <20230422184359.56503-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: Always use unconditional msleep()
 for the panel_on_delay
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

Commit 6fdb335f1c9c ("drm/i915/dsi: Use unconditional msleep for
the panel_on_delay when there is no reset-deassert MIPI-sequence")
switched to a direct msleep() instead of intel_dsi_msleep()
when there is no MIPI_SEQ_DEASSERT_RESET sequence, to fix
the panel on an Acer Aspire Switch 10 E SW3-016 not turning on.

This was done under the assumption that when there is a v3
MIPI_SEQ_DEASSERT_RESET sequence it will take care of any
necessary delays.

On the Nextbook Ares 8A (a Cherry Trail device like the Acer SW3-016)
there is a MIPI_SEQ_DEASSERT_RESET sequence, yet panel_on_delay
must still be honored otherwise the panel will not turn on.

Switch to always using an unconditional msleep() for
the panel_on_delay instead of making this depend on
the presence of a MIPI_SEQ_DEASSERT_RESET sequence.

Fixes: 6fdb335f1c9c ("drm/i915/dsi: Use unconditional msleep for the panel_on_delay when there is no reset-deassert MIPI-sequence")
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index a6d6d8b33f3f..1b87f8f5f7fd 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -788,7 +788,6 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum port port;
@@ -836,21 +835,10 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
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
-- 
2.39.2

