Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9261E5180F7
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC7A510F851;
	Tue,  3 May 2022 09:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F200410F849
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569936; x=1683105936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LgFw0QWX//FJl3OgAFF4kb/JrIZXSY24i33vd7BW9pA=;
 b=Kp4LO8Z4iEJsKx2qqHzhzcJUrsHMkXDZA0ypid6uYes8/g/tOmBfKHn3
 BUmBA30mxCYOMVLlvZgF3k58Oya4T8w7pfWxx03skdjaagvrJgxwonyUO
 2ALkMNX0m+ZOcst4aQ8WeTtaoAFOygsiIv+mppH70+kwKTP3yMt/sYIgU
 AZDAXg3O6fA2jHKqgmKRKU0tDHT1pEEBW0ua1zSvfszNy0Do/acmEn3f3
 VKj/KoVQei3hyuI5NFgec416dOX4NEZrMISqzw1S6gzuLz9OZTwKAhaOK
 ZtB8QT+t/cUR39/G2Q81bTPCN79McK6CnNYc90zsELaUhcYXayvvYvWXa Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="267313449"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="267313449"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:35 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="733843641"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:24:02 +0300
Message-Id: <59481d0397de4b91b3e6ea665882334e92538f40.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 17/20] drm/edid: detect basic audio in all
 CEA extensions
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

Convert drm_find_cea_extension() to EDID block iterator in basic audio
detection. Detect basic audio in all CEA extensions.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index bc12ede8694c..3b18a6e501df 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5112,17 +5112,21 @@ EXPORT_SYMBOL(drm_detect_hdmi_monitor);
  */
 bool drm_detect_monitor_audio(const struct edid *edid)
 {
+	struct drm_edid_iter edid_iter;
 	const struct cea_db *db;
 	struct cea_db_iter iter;
 	const u8 *edid_ext;
 	bool has_audio = false;
 
-	edid_ext = drm_find_cea_extension(edid);
-	if (!edid_ext)
-		goto end;
-
-	has_audio = (edid_ext[0] == CEA_EXT &&
-		    (edid_ext[3] & EDID_BASIC_AUDIO) != 0);
+	drm_edid_iter_begin(edid, &edid_iter);
+	drm_edid_iter_for_each(edid_ext, &edid_iter) {
+		if (edid_ext[0] == CEA_EXT) {
+			has_audio = edid_ext[3] & EDID_BASIC_AUDIO;
+			if (has_audio)
+				break;
+		}
+	}
+	drm_edid_iter_end(&edid_iter);
 
 	if (has_audio) {
 		DRM_DEBUG_KMS("Monitor has basic audio support\n");
-- 
2.30.2

