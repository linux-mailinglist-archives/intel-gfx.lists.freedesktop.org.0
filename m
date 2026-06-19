Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RnjlOYRNNWoHsAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 16:09:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F4D6A6489
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 16:09:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=ZncerNAw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=bootlin.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4DE010F62B;
	Fri, 19 Jun 2026 14:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F3010F62A
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2026 14:09:05 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id 15E6C1A3A20;
 Fri, 19 Jun 2026 14:09:04 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id DD1DA601AD;
 Fri, 19 Jun 2026 14:09:03 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 51781106C8234; 
 Fri, 19 Jun 2026 16:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1781878142; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=TO+8vf61kNju4PwtuIv9SwXy8zceN+AIryuGq2GsET8=;
 b=ZncerNAwoGtviiVsHNj7vZKGV3N7lfq5zDOhto3C1/blrMQ53z2GWeVHoX7vP7+4dIPbC/
 +Jeyo+IJzxumTF1XTcTSfOrZ6f1DBrPQJBDPdepkjWx8QF5FfT8sHPIZaOCo0AFL0Oa+nB
 yqft7kAqpDUipMtTE7sOx5MMRPMhHrV5RRhHB3leE485rWqbyZxMMh5XLn6ohPAnKBZC2A
 /w7Sh5kA5TrE37Xqkwgeai/pWQz3QKwgQYY/MN12t4Ihw2bLsKtMvp2XDsnE6ddMCD5Yxd
 M/+xKmasavxYoc75xlouIbBOGat6wmKDUaJrQdxs3n/5ZmDvAn52p8Sj+WzMaw==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Fri, 19 Jun 2026 16:08:45 +0200
Subject: [PATCH RFC v2 3/4] drm/bridge: Wire drmm_connector_dp_init() via
 new DRM_BRIDGE_OP_DP flag
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260619-feat_link_cap-v2-3-a3dec4c02ad9@bootlin.com>
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lumag@kernel.org,m:daniels@collabora.com,m:thomas.petazzoni@bootlin.com,m:markyacoub@google.com,m:seanpaul@google.com,m:navaremanasi@google.com,m:ddavenport@google.com,m:louis.chauvet@bootlin.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:kory.maincent@bootlin.com,m:jernejskrabec@gmail.com,m:matthiasbgg@gmai
 l.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com,pengutronix.de,collabora.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_TWELVE(0.00)[36];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63F4D6A6489

Introduce DRM_BRIDGE_OP_DP, a new bridge operation flag for bridges
that provide DisplayPort connector operations with link training support.
Bridges advertising this flag must fill the dp_link_caps field in
struct drm_bridge with their link capabilities.

In drm_bridge_connector_init(), when a bridge sets DRM_BRIDGE_OP_DP,
use drmm_connector_dp_init() instead of the generic drmm_connector_init()
so the connector exposes link training state properties to userspace.
This mirrors the existing pattern used for HDMI bridges.

Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 24 ++++++++++++++++++++++++
 include/drm/drm_bridge.h                       | 13 +++++++++++++
 2 files changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index cafa498c38482..6ea4d45e3146b 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -108,6 +108,13 @@ struct drm_bridge_connector {
 	 * HDMI Audio infrastructure, if any (see &DRM_BRIDGE_OP_HDMI_AUDIO).
 	 */
 	struct drm_bridge *bridge_hdmi_audio;
+	/**
+	 * @bridge_dp:
+	 *
+	 * The bridge in the chain that implements necessary support for the
+	 * DisplayPort connector infrastructure, if any (see &DRM_BRIDGE_OP_DP).
+	 */
+	struct drm_bridge *bridge_dp;
 	/**
 	 * @bridge_dp_audio:
 	 *
@@ -773,6 +780,7 @@ static void drm_bridge_connector_put_bridges(struct drm_device *dev, void *data)
 	drm_bridge_put(bridge_connector->bridge_hdmi_audio);
 	drm_bridge_put(bridge_connector->bridge_dp_audio);
 	drm_bridge_put(bridge_connector->bridge_hdmi_cec);
+	drm_bridge_put(bridge_connector->bridge_dp);
 }
 
 /**
@@ -908,6 +916,15 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 			bridge_connector->bridge_hdmi_audio = drm_bridge_get(bridge);
 		}
 
+		if (bridge->ops & DRM_BRIDGE_OP_DP) {
+			if (bridge_connector->bridge_dp)
+				return ERR_PTR(-EBUSY);
+			if (!bridge->dp_link_caps)
+				return ERR_PTR(-EINVAL);
+
+			bridge_connector->bridge_dp = drm_bridge_get(bridge);
+		}
+
 		if (bridge->ops & DRM_BRIDGE_OP_DP_AUDIO) {
 			if (bridge_connector->bridge_dp_audio)
 				return ERR_PTR(-EBUSY);
@@ -996,6 +1013,13 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 					       max_bpc);
 		if (ret)
 			return ERR_PTR(ret);
+	} else if (bridge_connector->bridge_dp) {
+		ret = drmm_connector_dp_init(drm, connector,
+					     &drm_bridge_connector_funcs,
+					     bridge_connector->bridge_dp->dp_link_caps,
+					     connector_type, ddc);
+		if (ret)
+			return ERR_PTR(ret);
 	} else {
 		ret = drmm_connector_init(drm, connector,
 					  &drm_bridge_connector_funcs,
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index 4ba3a5deef9a6..02411e0b71c35 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -1092,6 +1092,14 @@ enum drm_bridge_ops {
 	 * &drm_bridge_funcs->hdmi_clear_spd_infoframe callbacks.
 	 */
 	DRM_BRIDGE_OP_HDMI_SPD_INFOFRAME = BIT(10),
+	/**
+	 * @DRM_BRIDGE_OP_DP: The bridge provides DisplayPort connector
+	 * operations, including link training support. Bridges that set
+	 * this flag must provide DisplayPort-related information and
+	 * fill the &drm_bridge->dp_link_train_caps link training
+	 * capabilities.
+	 */
+	DRM_BRIDGE_OP_DP = BIT(11),
 };
 
 /**
@@ -1267,6 +1275,11 @@ struct drm_bridge {
 	 */
 	void *hpd_data;
 
+	/**
+	 * @dp_link_caps: DisplayPort link capabilities
+	 */
+	const struct drm_connector_dp_link_caps *dp_link_caps;
+
 	/**
 	 * @next_bridge: Pointer to the following bridge, automatically put
 	 * when this bridge is freed (i.e. at destroy time). This is for

-- 
2.43.0

