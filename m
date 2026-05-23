Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIbZOdkDEmqntQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 21:45:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9A75C0853
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 21:45:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BDB610E5BF;
	Sat, 23 May 2026 19:45:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="VtyuEaZV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E228C10E5DD;
 Sat, 23 May 2026 19:45:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1779565514; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=CO9PDGVl+5u0OwVqPuuAx6XXhZ1iGouKXq58Mj0Yw2JShLYN3i0rraMUCf7kpeg0egWLeXG82l75PgVMLY/JOEWv58dGjIHJ3qr7ICKt1+b3Iu7Ec41ToJUe1NYJsEQGDigNcvWcC2lYaeAKHOrRCGVbGkzA6dXYFEJFAz8Aj+o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1779565514;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=E8Lo2br7VH451pW8mbm3IAG619TpKWYG57DGcDu/ZNs=; 
 b=eD3adzr8W17t0iTaAoVast1qK/rbP7NnO1s9R0JvRSdj8vPUppRcqclSIWM3RB+r/qBsylxoRQf5Mzf421OqA4nfDqJEKEolE2I1qAx1mDgnSjGZptfgoy2Kdrl0IdfBXGTwYtHnorP18DTGqKM0Lwj5hBzfYRz9c6vhww8WxF0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779565514; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
 bh=E8Lo2br7VH451pW8mbm3IAG619TpKWYG57DGcDu/ZNs=;
 b=VtyuEaZVA3fA4sVAUtRvUGQMsAywjXBkIbTF/NCjD/yfBkHK72ij53fumYycP/7m
 tfmikKFa/a2vFMBecOa0k8GhQ+R+1Es7PipYnLadvxdFUFkwurTxiOnRxzINpgAabfj
 MPf/OvYoGqFRvGT8zBDtiMafhze6C3fga4pLcuOc=
Received: by mx.zohomail.com with SMTPS id 1779565513037845.0493217145747;
 Sat, 23 May 2026 12:45:13 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Sat, 23 May 2026 21:43:39 +0200
Subject: [PATCH v16 04/28] drm/connector: Let connectors have a say in
 their color format
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260523-color-format-v16-4-24340c5e4732@collabora.com>
References: <20260523-color-format-v16-0-24340c5e4732@collabora.com>
In-Reply-To: <20260523-color-format-v16-0-24340c5e4732@collabora.com>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <siqueira@igalia.com>, 
 Alex Deucher <alexander.deucher@amd.com>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
 Daniel Stone <daniel@fooishbar.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,fooishbar.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:mid,collabora.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,qualcomm.com:email]
X-Rspamd-Queue-Id: 9C9A75C0853
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a function to get the connector color format from a connector state,
and a new function pointer in drm_connector_funcs to allow connectors to
override what connector color format it returns.

This is useful for the bridge chain recursive bus format selection code,
which does not wish to implement connector implementation specific
checks like whether it involves HDMI.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Daniel Stone <daniel@fooishbar.org>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/drm_connector.c | 16 ++++++++++++++++
 include/drm/drm_connector.h     | 12 ++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index a0fca522f18f..41a5ab1e563e 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -3685,6 +3685,22 @@ void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
 }
 EXPORT_SYMBOL(drm_connector_oob_hotplug_event);
 
+/**
+ * drm_connector_get_color_format - Return connector color format of @conn_state
+ * @conn_state: pointer to the &struct drm_connector_state to go check
+ *
+ */
+enum drm_connector_color_format
+drm_connector_get_color_format(const struct drm_connector_state *conn_state)
+{
+	struct drm_connector *connector = conn_state->connector;
+
+	if (connector->funcs->color_format)
+		return connector->funcs->color_format(conn_state);
+
+	return conn_state->color_format;
+}
+EXPORT_SYMBOL(drm_connector_get_color_format);
 
 /**
  * DOC: Tile group
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 03e42c36175d..c9aad2bc8227 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1787,6 +1787,16 @@ struct drm_connector_funcs {
 	 * Allows connectors to create connector-specific debugfs files.
 	 */
 	void (*debugfs_init)(struct drm_connector *connector, struct dentry *root);
+
+	/**
+	 * @color_format:
+	 *
+	 * Allows connectors to return a connector color format other than
+	 * @conn_state.color_format for purposes of e.g. display protocol
+	 * specific helper logic having already mapped it to an output format.
+	 */
+	enum drm_connector_color_format (*color_format)(
+		const struct drm_connector_state *conn_state);
 };
 
 /**
@@ -2603,6 +2613,8 @@ drm_connector_is_unregistered(struct drm_connector *connector)
 
 void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
 				     enum drm_connector_status status);
+enum drm_connector_color_format
+drm_connector_get_color_format(const struct drm_connector_state *conn_state);
 const char *drm_get_connector_type_name(unsigned int connector_type);
 const char *drm_get_connector_status_name(enum drm_connector_status status);
 const char *drm_get_subpixel_order_name(enum subpixel_order order);

-- 
2.54.0

