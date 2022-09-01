Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FB95A9741
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 14:48:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D241C10E723;
	Thu,  1 Sep 2022 12:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 288D310E702;
 Thu,  1 Sep 2022 12:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662036485; x=1693572485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QWZaprkOeYujt44+JVnMy9XjJR5A+VxNEDEd6UgGr3w=;
 b=lBjND2G8ggTUMjCzf0ki5eUBCYAjTZE+Agk1yXxoZ92auTGJA/qE4w4J
 1skY3ieyXm10lh4K92aHLPoY0SPCg0pdrx4juXAaIVW/T05CJ/tH0oz1j
 sXnN4O2iBhGthsDiHtCxGZ3fExvMn8zZwtVYgXQdDltVWwkpuWOcXGGij
 dIjNskt7ZcdWCp4kVXu39lWhO5VZdIth/zfg5hGB8MSC7+Nn7FX9mRGDp
 F+uXy1r2op1eqpDRXVCL2ND0uty7YaW70A8iNNhJfMGeT1lQ64p2Bx2Dl
 WFW6tjsyta1Nv+TAjxqqEveCMyW3ENSmz4lR8OV0K2dN/C3rocvWvQyFC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="276105177"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="276105177"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:48:04 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="563447814"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.142])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 05:48:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  1 Sep 2022 15:47:08 +0300
Message-Id: <d9a0d99aa4c2780de242d065b7ea7e8095c06ad8.1662036058.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662036058.git.jani.nikula@intel.com>
References: <cover.1662036058.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i2c/tda998x: convert to using has_audio
 from display_info
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
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Russell King <linux@armlinux.org.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer the parsed results for has_audio in display info over calling
drm_detect_monitor_audio().

Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i2c/tda998x_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i2c/tda998x_drv.c b/drivers/gpu/drm/i2c/tda998x_drv.c
index f8eb6f69be05..71b6bacf399c 100644
--- a/drivers/gpu/drm/i2c/tda998x_drv.c
+++ b/drivers/gpu/drm/i2c/tda998x_drv.c
@@ -1310,7 +1310,7 @@ static int tda998x_connector_get_modes(struct drm_connector *connector)
 
 	mutex_lock(&priv->audio_mutex);
 	n = drm_add_edid_modes(connector, edid);
-	priv->sink_has_audio = drm_detect_monitor_audio(edid);
+	priv->sink_has_audio = connector->display_info.has_audio;
 	mutex_unlock(&priv->audio_mutex);
 
 	kfree(edid);
-- 
2.34.1

