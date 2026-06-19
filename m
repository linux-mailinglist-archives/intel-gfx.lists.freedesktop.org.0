Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g8d0OYFNNWoDsAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 16:09:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943BF6A647F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 16:09:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=EcUPDm3r;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=bootlin.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11B1210F62C;
	Fri, 19 Jun 2026 14:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1910410F62C;
 Fri, 19 Jun 2026 14:09:02 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id C5A0C4E42FCC;
 Fri, 19 Jun 2026 14:09:00 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 96D1E601AD;
 Fri, 19 Jun 2026 14:09:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 101E8106C8915; 
 Fri, 19 Jun 2026 16:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1781878138; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=WYmEJNz3NsaspEzRtIiaYYYiWt7RbsEucvy29K5gXTk=;
 b=EcUPDm3ry+OzvhnXOfEkAkHBx/tPYfxd2RMg8aSl9FM0euRx2163xsTU/rtH9/QYc0vwQ5
 fDF3HJTSNYcnvqltUNTK1Oxwk1kMecHBOhDEciah8wIiI31SXZL5EfBxwMGm1SLhehvyJ4
 OpXCP9uv90CTCH80zRXuAnyKeACVORg6yDBUIp/UIOWOdawjARvkwvBxwiLxzVBbac01hY
 e34+Mmo2mmBYokNzH9RcWANF9K5GJI09mXxmXZLkuMBGNmx7d6Rf5uJxqP8Pt8+KX6gTZv
 a2ovF78MO+UGvAdpAN8DLhxdwgDKjg9/sG9Epf0xthekYgwAFwqip+1Zw/jb/Q==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Fri, 19 Jun 2026 16:08:44 +0200
Subject: [PATCH RFC v2 2/4] drm/i915/display/dp: Adopt dp_connector helpers
 to expose link training state
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260619-feat_link_cap-v2-2-a3dec4c02ad9@bootlin.com>
References: <20260619-feat_link_cap-v2-0-a3dec4c02ad9@bootlin.com>
In-Reply-To: <20260619-feat_link_cap-v2-0-a3dec4c02ad9@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, Daniel Stone <daniels@collabora.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, 
 Manasi Navare <navaremanasi@google.com>, 
 Drew Davenport <ddavenport@google.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Kory Maincent <kory.maincent@bootlin.com>
X-Mailer: b4 0.15.0
X-Last-TLS-Session-Version: TLSv1.3
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
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com,pengutronix.de,collabora.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_TWELVE(0.00)[36];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 943BF6A647F

Switch the i915 DP connector initialization from
drm_connector_init_with_ddc() to drm_connector_dp_init_with_ddc(),
providing the source link capabilities (supported lane counts, link rates
and DSC support).

Add intel_dp_report_link_train() to collect the negotiated link
parameters (rate, lane count and DSC enable) and report them via
drm_dp_set_max_link_params() and drm_dp_set_cur_link_params() once
link training completes successfully.

Reset the link properties via drm_dp_reset_link_params()
when the connector is reported as disconnected or when the display device
is disabled, so the exposed state always reflects the current link status.

Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---

Changes in v2:
- Remove voltage swing and pre emphasis properties.
---
 drivers/gpu/drm/i915/display/intel_dp.c            | 26 ++++++++++++++++++----
 .../gpu/drm/i915/display/intel_dp_link_training.c  | 17 ++++++++++++++
 2 files changed, 39 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f01a6eed38395..46c06c76952e0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6414,8 +6414,10 @@ intel_dp_detect(struct drm_connector *_connector,
 	drm_WARN_ON(display->drm,
 		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
 
-	if (!intel_display_device_enabled(display))
+	if (!intel_display_device_enabled(display)) {
+		drm_dp_sink_reset_link_caps(_connector);
 		return connector_status_disconnected;
+	}
 
 	if (!intel_display_driver_check_access(display))
 		return connector->base.status;
@@ -6465,6 +6467,8 @@ intel_dp_detect(struct drm_connector *_connector,
 
 		intel_dp_tunnel_disconnect(intel_dp);
 
+		drm_dp_sink_reset_link_caps(_connector);
+
 		goto out_unset_edid;
 	}
 
@@ -7240,10 +7244,12 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 			struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(dig_port);
+	struct drm_connector_dp_link_caps link_caps;
 	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_device *dev = encoder->base.dev;
 	enum port port = encoder->port;
+	u32 *rates;
 	int type;
 
 	if (drm_WARN(dev, dig_port->max_lanes < 1,
@@ -7291,8 +7297,21 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		    type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
 		    encoder->base.base.id, encoder->base.name);
 
-	drm_connector_init_with_ddc(dev, &connector->base, &intel_dp_connector_funcs,
-				    type, &intel_dp->aux.ddc);
+	intel_dp_set_source_rates(intel_dp);
+	link_caps.nlanes = 4;
+	link_caps.nlink_rates = intel_dp->num_source_rates;
+	rates = kmemdup_array(intel_dp->source_rates, intel_dp->num_source_rates,
+			      sizeof(*rates), GFP_KERNEL);
+	if (!rates)
+		goto fail;
+
+	link_caps.link_rates = rates;
+	link_caps.dsc = HAS_DSC(display);
+
+	drm_connector_dp_init_with_ddc(dev, &connector->base, &intel_dp_connector_funcs,
+				       &link_caps, type, &intel_dp->aux.ddc);
+	kfree(rates);
+
 	drm_connector_helper_add(&connector->base, &intel_dp_connector_helper_funcs);
 
 	if (!HAS_GMCH(display) && DISPLAY_VER(display) < 12)
@@ -7315,7 +7334,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		goto fail;
 	}
 
-	intel_dp_set_source_rates(intel_dp);
 	intel_dp_set_common_rates(intel_dp);
 	intel_dp_reset_link_params(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a26094223f780..25e0e957fe36d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1231,6 +1231,18 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 	return sink_status & DP_INTRA_HOP_AUX_REPLY_INDICATION ? 1 : 0;
 }
 
+static void intel_dp_report_link_train(struct intel_dp *intel_dp)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+
+	drm_dp_set_max_link_params(&connector->base, intel_dp->link_rate,
+				   intel_dp->lane_count);
+
+	drm_dp_set_cur_link_params(&connector->base, intel_dp->link_rate,
+				   intel_dp->lane_count,
+				   connector->dp.dsc_decompression_enabled);
+}
+
 /**
  * intel_dp_stop_link_train - stop link training
  * @intel_dp: DP struct
@@ -1259,6 +1271,9 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	intel_dp_program_link_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX,
 					       DP_TRAINING_PATTERN_DISABLE);
 
+	if (!intel_dp->is_mst)
+		intel_dp_report_link_train(intel_dp);
+
 	if (intel_dp_is_uhbr(crtc_state)) {
 		ret = poll_timeout_us(ret = intel_dp_128b132b_intra_hop(intel_dp, crtc_state),
 				      ret == 0,
@@ -1772,6 +1787,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	 */
 	int lttpr_count;
 
+	drm_dp_sink_set_link_caps(&intel_dp->attached_connector->base, &intel_dp->aux);
+
 	intel_hpd_block(encoder);
 
 	lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);

-- 
2.43.0

