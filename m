Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF875A9746
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 14:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E1C810E706;
	Thu,  1 Sep 2022 12:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EF3010E730;
 Thu,  1 Sep 2022 12:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662036497; x=1693572497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Db/FYRIYv/OpP5k/4RISp+tbzDuKSsBZgMMuKvs2sbA=;
 b=PlzWs2c92sJGL22kv0G03TIDCBpddBlVZJs4kld4QoONiZ+1RAKLeBq/
 9J9yYmlb9LgQMSh5r8rVEe6ScxB4sLAjt/sI8EW10D5uV0i9PBpURUgY3
 zpGin3MaVfyx5tTzLZ3Kjsv2EdJJMHuF1K8itgFhnUEwg6QoQsi5E+KGq
 cvJIWWk0IRsMTwQ+/x7LzIfhDBmR32rWK2gJt0q2dFHlf+bSHJcyP7d9T
 6R8WjFkQIU/LoYNUshXKnfNuWWP6ERNgJ1v8jepihjCVWnZNfSlOOLEtk
 V/q7nzDm0U8oknL2fENfMWahl6B5s6nmnrYB9BTNVK07tnNn6rFZN24C7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="275451624"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="275451624"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:48:16 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="673832474"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.142])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:48:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  1 Sep 2022 15:47:10 +0300
Message-Id: <bb733eccfb389533cc6e207689be845164a1ed91.1662036058.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662036058.git.jani.nikula@intel.com>
References: <cover.1662036058.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/rockchip: cdn-dp: call
 drm_connector_update_edid_property() unconditionally
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sandy Huang <hjc@rock-chips.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Calling drm_connector_update_edid_property() should be done
unconditionally instead of depending on the number of modes added. Also
match the call order in inno_hdmi and rk3066_hdmi.

Cc: Sandy Huang <hjc@rock-chips.com>
Cc: Heiko Stübner <heiko@sntech.de>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index c204e9b95c1f..f77bdf5f5168 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -273,10 +273,9 @@ static int cdn_dp_connector_get_modes(struct drm_connector *connector)
 				  edid->width_cm, edid->height_cm);
 
 		dp->sink_has_audio = drm_detect_monitor_audio(edid);
+
+		drm_connector_update_edid_property(connector, edid);
 		ret = drm_add_edid_modes(connector, edid);
-		if (ret)
-			drm_connector_update_edid_property(connector,
-								edid);
 	}
 	mutex_unlock(&dp->lock);
 
-- 
2.34.1

