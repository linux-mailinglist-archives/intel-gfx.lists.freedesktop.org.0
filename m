Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLspF/Xg3GmKXwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBAB3EBF25
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A5F10E432;
	Mon, 13 Apr 2026 12:26:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="Oe824Ul5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DDD210E842
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 17:09:28 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id 2546F4E429AE;
 Thu,  9 Apr 2026 17:09:27 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id EF788603E4;
 Thu,  9 Apr 2026 17:09:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 3464D10450194; 
 Thu,  9 Apr 2026 19:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1775754565; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=/BnmzacK3p+goeM6btgJOfufv2mmWaIWfzKl5rpCwvo=;
 b=Oe824Ul5L9Gw0jltQl/MVysrzJowGDJEKJbc+mY8J4VaAwMONI8kpaxS5gO0EqeUVBAADH
 4EmQH3u86UybZeduObTEUDBmAQU/AEXAn8+3RZ/QkUJ9em59VJ1/Rt48tSYsjz3LxC/nN7
 XKaY5jKhJsfpHij7aP3qggvp4xzeaebQaor74zWMPnK9Zi4YuYWFKETpJ32zjUwu7z/+Io
 py57wstDhUuhzikracdWms22I6NlpF3yIN8Y13foCoTBXcTHmXWGxjJdeDCf2lWwCNFylb
 ngvq3+VeDN1H9U96TlXOh0oFE24tsjBiEPI8E8ukt5VPoE/EB7Kj5hzCNe1Ezw==
From: Kory Maincent <kory.maincent@bootlin.com>
Date: Thu, 09 Apr 2026 19:08:25 +0200
Subject: [PATCH RFC 09/12] drm: Introduce drmm_connector_dp_init() with
 link training state properties
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260409-feat_link_cap-v1-9-7069e8199ce2@bootlin.com>
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
In-Reply-To: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Dave Airlie <airlied@redhat.com>, 
 Jesse Barnes <jbarnes@virtuousgeek.org>, Eric Anholt <eric@anholt.net>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chris Wilson <chris@chris-wilson.co.uk>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Simona Vetter <simona.vetter@ffwll.ch>, 
 Kory Maincent <kory.maincent@bootlin.com>
X-Mailer: b4 0.14-dev-d4707
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Approved-At: Mon, 13 Apr 2026 12:26:15 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[91];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:airlied@redhat.com,m:jbarnes@virtuousgeek.org,m:eric@anholt.net,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:chris@chris-wilson.co.uk,m:thomas.petazzoni@bootlin.com,m:markyacoub@google.com,m:seanpaul@google.com,m:louis.chauvet@bootlin.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:simona.vetter@ffwll.ch,m:kory.maincent@bootlin.com,m:jernejskrabec@gmail.com,m:matthiasbgg@gmail.c
 om,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FORGED_SENDER(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0DBAB3EBF25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a managed DisplayPort connector initialization helper,
drmm_connector_dp_init(), modeled after the existing HDMI counterpart
drmm_connector_hdmi_init(). Cleanup is handled automatically via a
DRM-managed action.

The helper creates the following immutable connector properties to expose
DP link training capabilities and state to userspace:

  - num_lanes: bitmask of supported lane counts (1, 2, 4)
  - link_rate: Array of supported link rates.
  - dsc_en: Display Stream Compression supported
  - voltage_swingN: per-lane voltage swing level bitmask
  - pre-emphasisN: per-lane pre-emphasis level bitmask

Link rates are passed by the driver in deca-kbps, following the DRM
convention, but exposed to userspace in kbps for clarity.

Two additional helpers are provided to update and reset those properties
at runtime:
  - drm_connector_dp_set_link_train_properties()
  - drm_connector_dp_reset_link_train_properties()

Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
 drivers/gpu/drm/Makefile           |   1 +
 drivers/gpu/drm/drm_dp_connector.c | 344 +++++++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h        |  38 ++++
 include/drm/drm_dp_connector.h     | 109 ++++++++++++
 4 files changed, 492 insertions(+)

diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index e97faabcd7830..8ff08c2fb863e 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -42,6 +42,7 @@ drm-y := \
 	drm_color_mgmt.o \
 	drm_colorop.o \
 	drm_connector.o \
+	drm_dp_connector.o \
 	drm_crtc.o \
 	drm_displayid.o \
 	drm_drv.o \
diff --git a/drivers/gpu/drm/drm_dp_connector.c b/drivers/gpu/drm/drm_dp_connector.c
new file mode 100644
index 0000000000000..b25637a4378d5
--- /dev/null
+++ b/drivers/gpu/drm/drm_dp_connector.c
@@ -0,0 +1,344 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2026 Google
+ * Author: Kory Maincent <kory.maincent@bootlin.com>
+ */
+#include <drm/drm_dp_connector.h>
+#include <drm/drm_print.h>
+#include <linux/list.h>
+
+/**
+ * drm_connector_dp_link_reset_properties() - Reset DisplayPort link configuration
+ * @connector: DRM connector
+ * @dp_link: Link training informations
+ *
+ * Returns: Zero on success, or an errno code otherwise.
+ */
+int
+drm_connector_dp_set_link_train_properties(struct drm_connector *connector,
+					   const struct drm_connector_dp_link_train *dp_link_train)
+{
+	u32 lrate = 0;
+	int ret;
+
+	if (!connector)
+		return -ENODEV;
+
+	if (dp_link_train->nlanes && !is_power_of_2(dp_link_train->nlanes & DRM_NLANES_MASK)) {
+		drm_err(connector->dev, "Wrong lane number");
+		return -EINVAL;
+	}
+
+	if (dp_link_train->rate) {
+		struct drm_property_enum *prop_enum;
+		bool found = false;
+
+		list_for_each_entry(prop_enum, &connector->dp.link_rate_property->enum_list, head) {
+			u32 parsed_rate;
+
+			/* Convert dp_link_train->rate from deca-kbps to kbps */
+			if (!kstrtou32(prop_enum->name, 10, &parsed_rate) &&
+			    dp_link_train->rate * 10 == parsed_rate) {
+				lrate = 1 << prop_enum->value;
+				found = true;
+				break;
+			}
+		}
+
+		if (!found) {
+			drm_err(connector->dev, "Wrong rate value");
+			return -EINVAL;
+		}
+	}
+
+	ret = drm_object_property_set_value(&connector->base, connector->dp.nlanes_property,
+					    dp_link_train->nlanes);
+	if (ret)
+		return ret;
+
+	ret = drm_object_property_set_value(&connector->base, connector->dp.link_rate_property,
+					    lrate);
+	if (ret)
+		return ret;
+
+	if (connector->dp.dsc_en_property) {
+		ret = drm_object_property_set_value(&connector->base, connector->dp.dsc_en_property,
+						    dp_link_train->dsc_en);
+		if (ret)
+			return ret;
+	}
+
+	for (int i = 0; i < 4; i++) {
+		if (connector->dp.v_swing_property[i]) {
+			ret = drm_object_property_set_value(&connector->base,
+							    connector->dp.v_swing_property[i],
+							    dp_link_train->v_swing[i]);
+			if (ret)
+				return ret;
+		}
+
+		if (connector->dp.pre_emph_property[i]) {
+			ret = drm_object_property_set_value(&connector->base,
+							    connector->dp.pre_emph_property[i],
+							    dp_link_train->pre_emph[i]);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL(drm_connector_dp_set_link_train_properties);
+
+/**
+ * drm_connector_dp_link_reset_properties() - Reset DisplayPort link configuration
+ * @connector: DRM connector
+ */
+void drm_connector_dp_reset_link_train_properties(struct drm_connector *connector)
+{
+	struct drm_connector_dp_link_train dp_link_train = {0};
+
+	drm_connector_dp_set_link_train_properties(connector, &dp_link_train);
+}
+EXPORT_SYMBOL(drm_connector_dp_reset_link_train_properties);
+
+static int drm_connector_create_nlanes_prop(struct drm_connector *connector,
+					    u8 sup_nlanes)
+{
+	static const struct drm_prop_enum_list props[] = {
+		{__builtin_ffs(DRM_DP_1LANE) - 1, "1" },
+		{__builtin_ffs(DRM_DP_2LANE) - 1, "2" },
+		{__builtin_ffs(DRM_DP_4LANE) - 1, "4" },
+	};
+	struct drm_property *prop;
+
+	if (drm_WARN_ON(connector->dev, sup_nlanes != (sup_nlanes & DRM_NLANES_MASK)))
+		return -EINVAL;
+
+	prop = drm_property_create_bitmask(connector->dev, DRM_MODE_PROP_IMMUTABLE,
+					   "num_lanes", props, ARRAY_SIZE(props),
+					   sup_nlanes);
+	if (!prop)
+		return -ENOMEM;
+
+	drm_object_attach_property(&connector->base, prop, 0);
+
+	connector->dp.nlanes_property = prop;
+
+	return 0;
+}
+
+static int drm_connector_create_lrate_prop(struct drm_connector *connector,
+					   u32 sup_nlrates,
+					   const u32 *sup_lrates)
+{
+	struct drm_prop_enum_list *props;
+	u32 supp_nlrates_bitmask = 0;
+	struct drm_property *prop;
+	int ret = 0;
+
+	if (!sup_nlrates || !sup_lrates)
+		return 0;
+
+	props = kcalloc(sup_nlrates, sizeof(*props), GFP_KERNEL);
+	if (!props)
+		return -ENOMEM;
+
+	for (int i = 0; i < sup_nlrates; i++) {
+		props[i].type = i;
+		/* Convert deca-kbps to kbps */
+		props[i].name = kasprintf(GFP_KERNEL, "%d", sup_lrates[i] * 10);
+		if (!props[i].name) {
+			while (i--)
+				kfree(props[i].name);
+			kfree(props);
+			return -ENOMEM;
+		}
+		supp_nlrates_bitmask |= 1 << i;
+	}
+
+	prop = drm_property_create_bitmask(connector->dev, DRM_MODE_PROP_IMMUTABLE,
+					   "link_rate", props, sup_nlrates,
+					   supp_nlrates_bitmask);
+	if (!prop) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	drm_object_attach_property(&connector->base, prop, 0);
+
+	connector->dp.link_rate_property = prop;
+
+out:
+	for (int i = 0; i < sup_nlrates; i++)
+		kfree(props[i].name);
+
+	kfree(props);
+	return ret;
+}
+
+static int drm_connector_create_dsc_prop(struct drm_connector *connector)
+{
+	struct drm_property *prop;
+
+	prop = drm_property_create_bool(connector->dev, DRM_MODE_PROP_IMMUTABLE, "dsc_en");
+	if (!prop)
+		return -ENOMEM;
+
+	drm_object_attach_property(&connector->base, prop, 0);
+
+	connector->dp.dsc_en_property = prop;
+
+	return 0;
+}
+
+static int drm_connector_create_vswing_prop(struct drm_connector *connector,
+					    u8 sup_v_swings, int id)
+{
+	static const struct drm_prop_enum_list props[] = {
+		{__builtin_ffs(DRM_DP_VOLTAGE_SWING_LEVEL_0) - 1, "level_0" },
+		{__builtin_ffs(DRM_DP_VOLTAGE_SWING_LEVEL_1) - 1, "level_1" },
+		{__builtin_ffs(DRM_DP_VOLTAGE_SWING_LEVEL_2) - 1, "level_2" },
+		{__builtin_ffs(DRM_DP_VOLTAGE_SWING_LEVEL_3) - 1, "level_3" },
+	};
+	struct drm_property *prop;
+	char str[16];
+
+	if (!sup_v_swings)
+		return 0;
+
+	if (drm_WARN_ON(connector->dev, sup_v_swings != (sup_v_swings &
+						   DRM_DP_VOLTAGE_SWING_LEVEL_MASK)))
+		return -EINVAL;
+
+	snprintf(str, sizeof(str), "voltage_swing%d", id);
+	prop = drm_property_create_bitmask(connector->dev, DRM_MODE_PROP_IMMUTABLE,
+					   str, props, ARRAY_SIZE(props),
+					   sup_v_swings);
+	if (!prop)
+		return -ENOMEM;
+
+	drm_object_attach_property(&connector->base, prop, 0);
+
+	connector->dp.v_swing_property[id] = prop;
+
+	return 0;
+}
+
+static int drm_connector_create_pre_emph_prop(struct drm_connector *connector,
+					      u8 sup_pre_emph, int id)
+{
+	static const struct drm_prop_enum_list props[] = {
+		{__builtin_ffs(DRM_DP_PRE_EMPH_LEVEL_0) - 1, "level_0" },
+		{__builtin_ffs(DRM_DP_PRE_EMPH_LEVEL_1) - 1, "level_1" },
+		{__builtin_ffs(DRM_DP_PRE_EMPH_LEVEL_2) - 1, "level_2" },
+		{__builtin_ffs(DRM_DP_PRE_EMPH_LEVEL_3) - 1, "level_3" },
+	};
+	struct drm_property *prop;
+	char str[16];
+
+	if (!sup_pre_emph)
+		return 0;
+
+	if (drm_WARN_ON(connector->dev, sup_pre_emph != (sup_pre_emph &
+						   DRM_DP_PRE_EMPH_LEVEL_MASK)))
+		return -EINVAL;
+
+	snprintf(str, sizeof(str), "pre_emphasis%d", id);
+	prop = drm_property_create_bitmask(connector->dev, DRM_MODE_PROP_IMMUTABLE,
+					   str, props, ARRAY_SIZE(props),
+					   sup_pre_emph);
+	if (!prop)
+		return -ENOMEM;
+
+	drm_object_attach_property(&connector->base, prop, 0);
+
+	connector->dp.pre_emph_property[id] = prop;
+
+	return 0;
+}
+
+static int
+drm_connector_dp_create_props(struct drm_connector *connector,
+			      const struct drm_connector_dp_link_train_caps *dp_link_train_caps)
+{
+	u8 nlanes;
+	int ret;
+
+	ret = drm_connector_create_nlanes_prop(connector, dp_link_train_caps->nlanes);
+	if (ret)
+		return ret;
+
+	ret = drm_connector_create_lrate_prop(connector, dp_link_train_caps->nrates,
+					      dp_link_train_caps->rates);
+	if (ret)
+		return ret;
+
+	if (dp_link_train_caps->dsc) {
+		ret = drm_connector_create_dsc_prop(connector);
+		if (ret)
+			return ret;
+	}
+
+	nlanes = 1 << (fls(dp_link_train_caps->nlanes) - 1);
+	for (int i = 0; i < nlanes; i++) {
+		ret = drm_connector_create_vswing_prop(connector,
+						       dp_link_train_caps->v_swings, i);
+		if (ret)
+			return ret;
+
+		ret = drm_connector_create_pre_emph_prop(connector,
+							 dp_link_train_caps->pre_emphs, i);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * drmm_connector_dp_init - Init a preallocated DisplayPort connector
+ * @dev: DRM device
+ * @connector: A pointer to the DisplayPort connector to init
+ * @funcs: callbacks for this connector
+ * @dp_link_train_caps: DisplayPort link training capabilities. The pointer
+ *			is not kept by the DRM core
+ * @connector_type: user visible type of the connector
+ * @ddc: optional pointer to the associated ddc adapter
+ *
+ * Initialises a preallocated DisplayPort connector. Connectors can be
+ * subclassed as part of driver connector objects.
+ *
+ * Cleanup is automatically handled with a call to
+ * drm_connector_cleanup() in a DRM-managed action.
+ *
+ * The connector structure should be allocated with drmm_kzalloc().
+ *
+ * The @drm_connector_funcs.destroy hook must be NULL.
+ *
+ * Returns:
+ * Zero on success, error code on failure.
+ */
+int drmm_connector_dp_init(struct drm_device *dev,
+			   struct drm_connector *connector,
+			   const struct drm_connector_funcs *funcs,
+			   const struct drm_connector_dp_link_train_caps *dp_link_train_caps,
+			   int connector_type,
+			   struct i2c_adapter *ddc)
+{
+	int ret;
+
+	if (!(connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	      connector_type == DRM_MODE_CONNECTOR_eDP))
+		return -EINVAL;
+
+	if (!dp_link_train_caps)
+		return -EINVAL;
+
+	ret = drmm_connector_init(dev, connector, funcs, connector_type, ddc);
+	if (ret)
+		return ret;
+
+	return drm_connector_dp_create_props(connector, dp_link_train_caps);
+}
+EXPORT_SYMBOL(drmm_connector_dp_init);
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index f83f28cae2075..df3a71fed35b1 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1987,6 +1987,39 @@ struct drm_connector_cec {
 	void *data;
 };
 
+/**
+ * struct drm_connector_dp - DRM Connector DisplayPort-related structure
+ */
+struct drm_connector_dp {
+	/**
+	 * @nlanes_property: Connector property to report the number of lanes
+	 */
+	struct drm_property *nlanes_property;
+
+	/**
+	 * @link_rate_property: Connector property to report the link rate
+	 */
+	struct drm_property *link_rate_property;
+
+	/**
+	 * @dsc_en_property: Connector property to report the Display Stream
+	 * Compression supporrt
+	 */
+	struct drm_property *dsc_en_property;
+
+	/**
+	 * @v_swing_property: Connector property to report the voltage
+	 * swing per lane
+	 */
+	struct drm_property *v_swing_property[4];
+
+	/**
+	 * @pre_emph_property: Connector property to report the
+	 * pre-emphasis per lane
+	 */
+	struct drm_property *pre_emph_property[4];
+};
+
 /**
  * struct drm_connector - central DRM connector control structure
  *
@@ -2410,6 +2443,11 @@ struct drm_connector {
 	 * @cec: CEC-related data.
 	 */
 	struct drm_connector_cec cec;
+
+	/**
+	 * @dp: DisplayPort-related variable and properties.
+	 */
+	struct drm_connector_dp dp;
 };
 
 #define obj_to_connector(x) container_of(x, struct drm_connector, base)
diff --git a/include/drm/drm_dp_connector.h b/include/drm/drm_dp_connector.h
new file mode 100644
index 0000000000000..77d2f4bb6df68
--- /dev/null
+++ b/include/drm/drm_dp_connector.h
@@ -0,0 +1,109 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef DRM_DP_CONNECTOR_H_
+#define DRM_DP_CONNECTOR_H_
+
+#include <drm/drm_connector.h>
+
+#define DRM_DP_1LANE	BIT(0)
+#define DRM_DP_2LANE	BIT(1)
+#define DRM_DP_4LANE	BIT(2)
+#define DRM_NLANES_MASK (DRM_DP_1LANE | DRM_DP_2LANE | DRM_DP_4LANE)
+#define DRM_DP_VOLTAGE_SWING_LEVEL_0 BIT(0)
+#define DRM_DP_VOLTAGE_SWING_LEVEL_1 BIT(1)
+#define DRM_DP_VOLTAGE_SWING_LEVEL_2 BIT(2)
+#define DRM_DP_VOLTAGE_SWING_LEVEL_3 BIT(3)
+#define DRM_DP_VOLTAGE_SWING_LEVEL_MASK (DRM_DP_VOLTAGE_SWING_LEVEL_0 | \
+					 DRM_DP_VOLTAGE_SWING_LEVEL_1 | \
+					 DRM_DP_VOLTAGE_SWING_LEVEL_2 | \
+					 DRM_DP_VOLTAGE_SWING_LEVEL_3)
+#define DRM_DP_PRE_EMPH_LEVEL_0 BIT(0)
+#define DRM_DP_PRE_EMPH_LEVEL_1 BIT(1)
+#define DRM_DP_PRE_EMPH_LEVEL_2 BIT(2)
+#define DRM_DP_PRE_EMPH_LEVEL_3 BIT(3)
+#define DRM_DP_PRE_EMPH_LEVEL_MASK (DRM_DP_PRE_EMPH_LEVEL_0 | \
+				    DRM_DP_PRE_EMPH_LEVEL_1 | \
+				    DRM_DP_PRE_EMPH_LEVEL_2 | \
+				    DRM_DP_PRE_EMPH_LEVEL_3)
+
+/**
+ * struct drm_connector_dp_link_train_caps - DRM DisplayPort link training
+ * capabilities
+ */
+struct drm_connector_dp_link_train_caps {
+	/**
+	 * @nlanes: Bitmask of lanes number supported
+	 */
+	u8 nlanes;
+
+	/**
+	 * @nrates: Number of link rates supported
+	 */
+	u32 nrates;
+
+	/**
+	 * @rates: Array listing the supported link rates in deca-kbps
+	 */
+	const u32 *rates;
+
+	/**
+	 * @dsc: Display Stream Compression supported
+	 */
+	bool dsc;
+
+	/**
+	 * @v_swings: Bitmask of voltage swing level supported
+	 */
+	u8 v_swings;
+
+	/**
+	 * @pre_emphs: Bitmask of pre-emphasis level supported
+	 */
+	u8 pre_emphs;
+};
+
+/**
+ * struct drm_connector_dp_link_train - DRM DisplayPort link training
+ * information report
+ */
+struct drm_connector_dp_link_train {
+	/**
+	 * @nlanes: The number of lanes used
+	 */
+	u8 nlanes;
+
+	/**
+	 * @rates: Link rate value selected in deca-kbps
+	 */
+	u32 rate;
+
+	/**
+	 * @dsc: Display Stream Compression enabled
+	 */
+	bool dsc_en;
+
+	/**
+	 * @v_swings: Array listing the bitmask voltage swing level per lanes
+	 */
+	u8 v_swing[4];
+
+	/**
+	 * @pre_emph: Array listing the bitmask pre-emphasis level per lanes
+	 */
+	u8 pre_emph[4];
+};
+
+int drmm_connector_dp_init(struct drm_device *dev,
+			   struct drm_connector *connector,
+			   const struct drm_connector_funcs *funcs,
+			   const struct drm_connector_dp_link_train_caps *dp_link_train_caps,
+			   int connector_type,
+			   struct i2c_adapter *ddc);
+
+int
+drm_connector_dp_set_link_train_properties(struct drm_connector *con,
+					   const struct drm_connector_dp_link_train *dp_link_train);
+
+void drm_connector_dp_reset_link_train_properties(struct drm_connector *connector);
+
+#endif // DRM_DP_CONNECTOR_H_

-- 
2.43.0

