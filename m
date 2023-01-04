Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC5A65D04E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 11:06:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8298010E553;
	Wed,  4 Jan 2023 10:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F29C610E553;
 Wed,  4 Jan 2023 10:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672826812; x=1704362812;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vvz5Dg5Aun2xwE/bgoePxN1JJSbuunFOFA2nNxZMppI=;
 b=N63vtaZ9ou4ayLvvy+VduJB3jdaQHAa937GVLF5PVhQw2F5w/9ukKYBC
 /2AnDnfn/d1h889lOk8mSGEEkjMPWYAQjJTGxlZBRNb34jQu+SozeUC19
 ensMGMaD9gW/S3pL0PiXaLsQ2rXKGpMA8DYQDbBE4xSdC5hr7vrjGGbpR
 0OHYeKN28a8WBKmqyKF4c2ErFvSvra8NSqgOlOrGc2kTXrcvsxYTh/Gwr
 812F/xcTYseA5c1+eN5Fzh7iJkoN5BKi4ZM0N6NRLg0N9wqjInXJu66lL
 9pBZJu7RBdl5FIsCDRzkHe907JtxOLgxTvdGpIuA9TNf1kkpU00i0HtMz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="408156958"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="408156958"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 02:06:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="723590918"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="723590918"
Received: from mkabdel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.25.63])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 02:06:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  4 Jan 2023 12:05:31 +0200
Message-Id: <b0ab3e9fc5836e94a3ea8914d45c5084becb9a14.1672826282.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1672826282.git.jani.nikula@intel.com>
References: <cover.1672826282.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 16/22] drm/edid: refactor
 _drm_edid_connector_update() and rename
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

By moving update_display_info() out of _drm_edid_connector_update() we
make the function purely about adding modes. Rename accordingly.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 5881df5bddb9..95c383220afc 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -6663,19 +6663,12 @@ static int add_displayid_detailed_modes(struct drm_connector *connector,
 	return num_modes;
 }
 
-static int _drm_edid_connector_update(struct drm_connector *connector,
-				      const struct drm_edid *drm_edid)
+static int _drm_edid_connector_add_modes(struct drm_connector *connector,
+					 const struct drm_edid *drm_edid)
 {
 	const struct drm_display_info *info = &connector->display_info;
 	int num_modes = 0;
 
-	/*
-	 * CEA-861-F adds ycbcr capability map block, for HDMI 2.0 sinks.
-	 * To avoid multiple parsing of same block, lets parse that map
-	 * from sink info, before parsing CEA modes.
-	 */
-	update_display_info(connector, drm_edid);
-
 	if (!drm_edid)
 		return 0;
 
@@ -6780,7 +6773,9 @@ int drm_edid_connector_update(struct drm_connector *connector,
 {
 	int count;
 
-	count = _drm_edid_connector_update(connector, drm_edid);
+	update_display_info(connector, drm_edid);
+
+	count = _drm_edid_connector_add_modes(connector, drm_edid);
 
 	_drm_update_tile_info(connector, drm_edid);
 
@@ -6850,7 +6845,8 @@ EXPORT_SYMBOL(drm_connector_update_edid_property);
  */
 int drm_add_edid_modes(struct drm_connector *connector, struct edid *edid)
 {
-	struct drm_edid drm_edid;
+	struct drm_edid _drm_edid;
+	const struct drm_edid *drm_edid;
 
 	if (edid && !drm_edid_is_valid(edid)) {
 		drm_warn(connector->dev, "[CONNECTOR:%d:%s] EDID invalid.\n",
@@ -6858,8 +6854,11 @@ int drm_add_edid_modes(struct drm_connector *connector, struct edid *edid)
 		edid = NULL;
 	}
 
-	return _drm_edid_connector_update(connector,
-					  drm_edid_legacy_init(&drm_edid, edid));
+	drm_edid = drm_edid_legacy_init(&_drm_edid, edid);
+
+	update_display_info(connector, drm_edid);
+
+	return _drm_edid_connector_add_modes(connector, drm_edid);
 }
 EXPORT_SYMBOL(drm_add_edid_modes);
 
-- 
2.34.1

