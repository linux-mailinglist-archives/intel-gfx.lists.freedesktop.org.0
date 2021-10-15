Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB3842F067
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 14:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A54A96ECFE;
	Fri, 15 Oct 2021 12:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from msg-4.mailo.com (ip-15.mailobj.net [213.182.54.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C8A6ECFE;
 Fri, 15 Oct 2021 12:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=net-c.es; s=mailo;
 t=1634297909; bh=fAZBlXdW20V7B6rubts4j3AhP0Cl8xUukv0+rRfZYFI=;
 h=X-EA-Auth:From:To:Cc:Subject:Date:Message-Id:X-Mailer:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding;
 b=gjj37Aixv5xJdN58Ez1/fLCHxq7IFh3PlJe4msG5FsS23Wlrs3CswwaZb1Lq5FcZj
 xwrYQsjQokQprkoJuQ8xBtagk1qQun0mnsT9dHbHpSWg9m8Kfr5VwMNOGRFGWPVs+c
 n1w5TYiDkaC6HyPf0alj19blCCzxnIUMN66EBoYg=
Received: by b-1.in.mailobj.net [192.168.90.11] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Fri, 15 Oct 2021 13:38:00 +0200 (CEST)
X-EA-Auth: OpAPpDuk34NEqFBHIsNujJj7mQbAW8f0DOXirFzmZTzf1PSJRw7ClxBxkO3zsoMj96sFauyhyJABJq4/MLscESRqo1iPiuuz
From: Claudio Suarez <cssk@net-c.es>
To: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Pan Xinhui <Xinhui.Pan@amd.com>, Emma Anholt <emma@anholt.net>,
 Maxime Ripard <mripard@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sandy Huang <hjc@rock-chips.com>, heiko@sntech.de,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>, Ben Skeggs <bskeggs@redhat.com>,
 nouveau@lists.freedesktop.org
Cc: Claudio Suarez <cssk@net-c.es>
Date: Fri, 15 Oct 2021 13:37:04 +0200
Message-Id: <20211015113713.630119-7-cssk@net-c.es>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211015113713.630119-1-cssk@net-c.es>
References: <20211015113713.630119-1-cssk@net-c.es>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/15] drm/gma500: replace
 drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
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

Once EDID is parsed, the monitor HDMI support information is available
through drm_display_info.is_hdmi. Retriving the same information with
drm_detect_hdmi_monitor() is less efficient. Change to
drm_display_info.is_hdmi

Signed-off-by: Claudio Suarez <cssk@net-c.es>
---
 drivers/gpu/drm/gma500/cdv_intel_hdmi.c | 3 ++-
 drivers/gpu/drm/gma500/psb_intel_sdvo.c | 6 ++++--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/gma500/cdv_intel_hdmi.c b/drivers/gpu/drm/gma500/cdv_intel_hdmi.c
index e525689f84f0..d9db5d52d52e 100644
--- a/drivers/gpu/drm/gma500/cdv_intel_hdmi.c
+++ b/drivers/gpu/drm/gma500/cdv_intel_hdmi.c
@@ -130,6 +130,7 @@ static enum drm_connector_status cdv_hdmi_detect(
 	struct edid *edid = NULL;
 	enum drm_connector_status status = connector_status_disconnected;
 
+	/* This updates connector->display_info */
 	edid = drm_get_edid(connector, &gma_encoder->i2c_bus->adapter);
 
 	hdmi_priv->has_hdmi_sink = false;
@@ -138,7 +139,7 @@ static enum drm_connector_status cdv_hdmi_detect(
 		if (edid->input & DRM_EDID_INPUT_DIGITAL) {
 			status = connector_status_connected;
 			hdmi_priv->has_hdmi_sink =
-						drm_detect_hdmi_monitor(edid);
+						connector->display_info.is_hdmi;
 			hdmi_priv->has_hdmi_audio =
 						drm_detect_monitor_audio(edid);
 		}
diff --git a/drivers/gpu/drm/gma500/psb_intel_sdvo.c b/drivers/gpu/drm/gma500/psb_intel_sdvo.c
index 355da2856389..5ef49d17de98 100644
--- a/drivers/gpu/drm/gma500/psb_intel_sdvo.c
+++ b/drivers/gpu/drm/gma500/psb_intel_sdvo.c
@@ -1266,8 +1266,10 @@ psb_intel_sdvo_hdmi_sink_detect(struct drm_connector *connector)
 		if (edid->input & DRM_EDID_INPUT_DIGITAL) {
 			status = connector_status_connected;
 			if (psb_intel_sdvo->is_hdmi) {
-				psb_intel_sdvo->has_hdmi_monitor = drm_detect_hdmi_monitor(edid);
-				psb_intel_sdvo->has_hdmi_audio = drm_detect_monitor_audio(edid);
+				psb_intel_sdvo->has_hdmi_monitor =
+						connector->display_info.is_hdmi;
+				psb_intel_sdvo->has_hdmi_audio =
+						drm_detect_monitor_audio(edid);
 			}
 		} else
 			status = connector_status_disconnected;
-- 
2.33.0


