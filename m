Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A9142F066
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 14:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1581A6ED15;
	Fri, 15 Oct 2021 12:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2573 seconds by postgrey-1.36 at gabe;
 Fri, 15 Oct 2021 12:20:30 UTC
Received: from msg-3.mailo.com (ip-8.mailobj.net [213.182.54.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D79E6E2D5;
 Fri, 15 Oct 2021 12:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=net-c.es; s=mailo;
 t=1634297909; bh=QBcYM19WYIft9nyGf96kprXPvyWbRp1gWatVdt76c0U=;
 h=X-EA-Auth:From:To:Cc:Subject:Date:Message-Id:X-Mailer:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding;
 b=ZztwFt1HtLz+ROpeY1J85VZapMqZASbFXSmZ5GB2VcMYc+cvCiJ7KBgU1gFpJX4HE
 e8M7Bq80v1n3fWMxiP1aUngoTSQ27V96sbW+CInQ6SLSdZKJACWmEGA9pvmJPHzdqW
 1wzCOEExSVWdFicxjEbti5/MrJNxigsElB5z6prE=
Received: by b-1.in.mailobj.net [192.168.90.11] with ESMTP
 via ip-206.mailobj.net [213.182.55.206]
 Fri, 15 Oct 2021 13:38:02 +0200 (CEST)
X-EA-Auth: poGc6xz6ZqqEJXNZ9UjzI5MiSKkhrUJ4AW0hkIeTezxOINaMqijrue2rwcYd3CC4y3eESmyNBCSifR1JG/ltACbh1gPUm7js
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
Date: Fri, 15 Oct 2021 13:37:05 +0200
Message-Id: <20211015113713.630119-8-cssk@net-c.es>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211015113713.630119-1-cssk@net-c.es>
References: <20211015113713.630119-1-cssk@net-c.es>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/15] drm/exynos: replace
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
 drivers/gpu/drm/exynos/exynos_hdmi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_hdmi.c b/drivers/gpu/drm/exynos/exynos_hdmi.c
index 7655142a4651..a563d6386abe 100644
--- a/drivers/gpu/drm/exynos/exynos_hdmi.c
+++ b/drivers/gpu/drm/exynos/exynos_hdmi.c
@@ -893,12 +893,14 @@ static int hdmi_get_modes(struct drm_connector *connector)
 	if (!edid)
 		return -ENODEV;
 
-	hdata->dvi_mode = !drm_detect_hdmi_monitor(edid);
+	/* This updates connector->display_info */
+	drm_connector_update_edid_property(connector, edid);
+
+	hdata->dvi_mode = !connector->display_info.is_hdmi;
 	DRM_DEV_DEBUG_KMS(hdata->dev, "%s : width[%d] x height[%d]\n",
 			  (hdata->dvi_mode ? "dvi monitor" : "hdmi monitor"),
 			  edid->width_cm, edid->height_cm);
 
-	drm_connector_update_edid_property(connector, edid);
 	cec_notifier_set_phys_addr_from_edid(hdata->notifier, edid);
 
 	ret = drm_add_edid_modes(connector, edid);
-- 
2.33.0


