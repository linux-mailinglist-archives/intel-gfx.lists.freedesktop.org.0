Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F191C5180F9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF7410E646;
	Tue,  3 May 2022 09:25:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0659910F815
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569940; x=1683105940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zRtYlRE5XoW4bXz6wmP7m/ikHY7IadCaUrUMqBoF3dE=;
 b=A//cl6f+1xz2CnkfXmqfXapid5LZyyDuCcD8y5xB29oo92jBr2/i8P7o
 Bbcgl9kWZ/7zDQnfBt33UUIok6zsPv3Jp7HDrskp9cSsYhZTWlRPO4LUM
 L5PIIHffV9YLouUYJIs9hZ1ycfxcsKaL0LimBKgJMtKLr+JCJYuOC4BKp
 K92wb2weHx+5OIARkp7TZ6tWfh1dbzdCfEv57MtjOqijpJ9dxp8Ff5RS3
 nC6MF/iLw1AYmqm6A+r0uGQPcdMN1x9aXvsnzr4AUX3RbcnKjcLAXmNCt
 v7aQCT/2FnZSCyqgnBWmZjyOW7/YfofhC4yCH4hb2rmbLCoyFx7/r7PXU Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="265027120"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="265027120"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:40 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="584128766"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:24:03 +0300
Message-Id: <a137d2e272ad1eac5b286784008a4baf91bc2799.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 18/20] drm/edid: detect color formats and CTA
 revision in all CTA extensions
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert drm_find_cea_extension() to EDID block iterator in color format
and CTA revision detection. Detect them in all CTA extensions.

Also parse CTA Data Blocks in DisplayID even if there's no CTA EDID
extension.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 3b18a6e501df..41f24f4c2d23 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5447,32 +5447,40 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
 			      const struct edid *edid)
 {
 	struct drm_display_info *info = &connector->display_info;
+	struct drm_edid_iter edid_iter;
 	const struct cea_db *db;
 	struct cea_db_iter iter;
 	const u8 *edid_ext;
 
-	edid_ext = drm_find_cea_extension(edid);
-	if (!edid_ext)
-		return;
+	drm_edid_iter_begin(edid, &edid_iter);
+	drm_edid_iter_for_each(edid_ext, &edid_iter) {
+		if (edid_ext[0] != CEA_EXT)
+			continue;
 
-	info->cea_rev = edid_ext[1];
+		if (!info->cea_rev)
+			info->cea_rev = edid_ext[1];
 
-	/* The existence of a CEA block should imply RGB support */
-	info->color_formats = DRM_COLOR_FORMAT_RGB444;
+		if (info->cea_rev != edid_ext[1])
+			DRM_DEBUG_KMS("CEA extension version mismatch %u != %u\n",
+				      info->cea_rev, edid_ext[1]);
 
-	/* CTA DisplayID Data Block does not have byte #3 */
-	if (edid_ext[0] == CEA_EXT) {
+		/* The existence of a CTA extension should imply RGB support */
+		info->color_formats = DRM_COLOR_FORMAT_RGB444;
 		if (edid_ext[3] & EDID_CEA_YCRCB444)
 			info->color_formats |= DRM_COLOR_FORMAT_YCBCR444;
 		if (edid_ext[3] & EDID_CEA_YCRCB422)
 			info->color_formats |= DRM_COLOR_FORMAT_YCBCR422;
 	}
+	drm_edid_iter_end(&edid_iter);
 
 	cea_db_iter_edid_begin(edid, &iter);
 	cea_db_iter_for_each(db, &iter) {
 		/* FIXME: convert parsers to use struct cea_db */
 		const u8 *data = (const u8 *)db;
 
+		/* The existence of a CTA block should imply RGB support */
+		info->color_formats = DRM_COLOR_FORMAT_RGB444;
+
 		if (cea_db_is_hdmi_vsdb(db))
 			drm_parse_hdmi_vsdb_video(connector, data);
 		if (cea_db_is_hdmi_forum_vsdb(db) ||
-- 
2.30.2

