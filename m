Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A06DC51BD89
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 12:53:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 840D210EDBE;
	Thu,  5 May 2022 10:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F2D410EDBE
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 10:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651747980; x=1683283980;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dZB2z4Uhszg8xat+QTonexTBOLymkTMVRUJbohubGbs=;
 b=MbY/VWfZMjNwG/N03lR8VNfdlSFkCDAJZ54sxsAUC8GEZyIljt++rs5A
 kgRkgFw1XBUjk8Nh96ZbZRHgjPOUySJydtP1GnqSQfpmO1OlNdfy7kNzV
 LsuiwxMa1aI233c/hfk3aE1KJaIKwJiJszyNvp9VBMov/0caOlmgXZqSO
 KZKRN5SbbrZBOuy5AFQJVM6hJF7UNwiKOrsdU3GmjNRzdOeC283D3zyzI
 8jk5uWAX5kzzdoz2GGo1qhum8xZIsp0ChKmSt3UMAr8jZHUcVy9+N1ibi
 XxZuCDTfWjBH7e6BQORLoDRQjK2g5/65wZ5tO9zaPpaw4Ysfwp4ZB5k9E A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="293268863"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="293268863"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 03:52:59 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="563187128"
Received: from mstepka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.134.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 03:52:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 13:52:42 +0300
Message-Id: <20220505105242.1198521-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <a137d2e272ad1eac5b286784008a4baf91bc2799.1651569697.git.jani.nikula@intel.com>
References: <a137d2e272ad1eac5b286784008a4baf91bc2799.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/edid: detect color formats and CTA
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert drm_find_cea_extension() to EDID block iterator in color format
and CTA revision detection. Detect them in all CTA extensions.

Also parse CTA Data Blocks in DisplayID even if there's no CTA EDID
extension.

v2:
- Don't assume DRM_COLOR_FORMAT_RGB444 support if there's only DisplayID
  CTA Data Blocks (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 3b18a6e501df..8d737322145c 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5447,26 +5447,31 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
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
-- 
2.30.2

