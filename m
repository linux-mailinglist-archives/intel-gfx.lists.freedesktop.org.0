Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0303B51FBF5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 14:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1176110EE68;
	Mon,  9 May 2022 12:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4867C10EE68;
 Mon,  9 May 2022 12:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652097830; x=1683633830;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VqXXpce1WjRUgzEhWSM3qk067V1CTj8Lo71IUfBzbZc=;
 b=PXjdLS2f6WDYXxKB/iuvwexyLPduShY6+xKpqmkaugwpOZO44X3xQPjQ
 Lpc31QNrWAELWl2NbqNJanIE7licAO/gsPA8Scc1tf168TEJsSZ8UZoTs
 mlKW507RsztFo+8ksquX5ujDfxSUmyylzTmPm5IV17+fxeGUHvUzZuEE1
 0zLhv310Drr8JU93FCOBqb61D3C9+LejL2gdmBSpODO/r2f19gXIwZKtC
 bfQGGxDb/Klwn2fN9wjQFd9MssS0QlblBvn2k84CJDjr34K7OtbPlXNVM
 eqodnVIHtHSnvW37xZy2flMmhJ96Oveir4xCF+WtddDZDxaa84Lw3Cq7l A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="249565922"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="249565922"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 05:03:49 -0700
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="565030991"
Received: from csawicki-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.129.3])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 05:03:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  9 May 2022 15:03:03 +0300
Message-Id: <000452fddedbaf7f473ac25d4dde2502e60b8e39.1652097712.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1652097712.git.jani.nikula@intel.com>
References: <cover.1652097712.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/25] drm/edid: start propagating drm_edid
 to lower levels
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

We'll need to propagate drm_edid everywhere. This is a clunky start, but
a start nonetheless. We'll eventually convert all of the EDID parsing to
struct drm_edid.

Initially, we'll just create the struct drm_edid in stack. This will be
the compat layer for legacy struct edid code. In the future, we'll have
EDID read return drm_edid objects.

v2: Add legacy init helper.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 30 +++++++++++++++++++++++++++---
 1 file changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 480fd9fbe412..f48f1f1a1fa7 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1608,6 +1608,24 @@ static const void *edid_extension_block_data(const struct edid *edid, int index)
 	return edid_block_data(edid, index + 1);
 }
 
+/*
+ * Initializer helper for legacy interfaces, where we have no choice but to
+ * trust edid size. Not for general purpose use.
+ */
+static const struct drm_edid *drm_edid_legacy_init(struct drm_edid *drm_edid,
+						   const struct edid *edid)
+{
+	if (!edid)
+		return NULL;
+
+	memset(drm_edid, 0, sizeof(*drm_edid));
+
+	drm_edid->edid = edid;
+	drm_edid->size = edid_size(edid);
+
+	return drm_edid;
+}
+
 /*
  * EDID base and extension block iterator.
  *
@@ -5814,17 +5832,20 @@ static int add_displayid_detailed_modes(struct drm_connector *connector,
 }
 
 static int drm_edid_connector_update(struct drm_connector *connector,
-				     const struct edid *edid)
+				     const struct drm_edid *drm_edid)
 {
+	const struct edid *edid;
 	int num_modes = 0;
 	u32 quirks;
 
-	if (edid == NULL) {
+	if (!drm_edid) {
 		drm_reset_display_info(connector);
 		clear_eld(connector);
 		return 0;
 	}
 
+	edid = drm_edid->edid;
+
 	/*
 	 * CEA-861-F adds ycbcr capability map block, for HDMI 2.0 sinks.
 	 * To avoid multiple parsing of same block, lets parse that map
@@ -5890,13 +5911,16 @@ static int drm_edid_connector_update(struct drm_connector *connector,
  */
 int drm_add_edid_modes(struct drm_connector *connector, struct edid *edid)
 {
+	struct drm_edid drm_edid;
+
 	if (edid && !drm_edid_is_valid(edid)) {
 		drm_warn(connector->dev, "%s: EDID invalid.\n",
 			 connector->name);
 		edid = NULL;
 	}
 
-	return drm_edid_connector_update(connector, edid);
+	return drm_edid_connector_update(connector,
+					 drm_edid_legacy_init(&drm_edid, edid));
 }
 EXPORT_SYMBOL(drm_add_edid_modes);
 
-- 
2.30.2

