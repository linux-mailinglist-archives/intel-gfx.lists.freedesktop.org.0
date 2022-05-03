Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 766905180F0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD04110F821;
	Tue,  3 May 2022 09:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EFF410F822
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569907; x=1683105907;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vAz4hEvneVOC/eJPJl1JkMyCzrsy0rv4//Elp39fIyg=;
 b=dsiihRfC3D4YOhkAkwYIl07aenGVDRK4VJ4Wz7hdQf1X76fhCpZ8iKwa
 U6lH29PIYXnfqo3Km7ruSvgLPe9x4ASN+vtOqGGGyTvKymSiLViuvwdDs
 2FbAsMEJ88N36vLEXxDgBEByv4TKjJo6Tvm/Ir4UT/94vKKSqt8sKrg9k
 PGAyCwcxAy6oHMud/I5wcXYvrNbrAa12LId/5yOKaoFj76GybyWxc5dy6
 lLKN1rwyOxi5T9gSCM9v9D5CU04BP6Kb5MkPqT4ioSw3tESr2b0we7+6P
 kXN7elGbEMCX7by0CpFmwmrK6dZJq5y8i/Ju65Rl9LWTYVZUPoDJgqiwo g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="327978562"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="327978562"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="562142254"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:56 +0300
Message-Id: <b867e7b628189d2f8fa7eac5b9aa701892724711.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/20] drm/edid: convert
 drm_detect_hdmi_monitor() to use cea db iter
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

Iterate through all CTA data blocks, not just the first CTA extension.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 1ea27278652b..ca594d502941 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5131,27 +5131,24 @@ EXPORT_SYMBOL(drm_av_sync_delay);
  */
 bool drm_detect_hdmi_monitor(const struct edid *edid)
 {
-	const u8 *edid_ext;
-	int i;
-	int start_offset, end_offset;
-
-	edid_ext = drm_find_cea_extension(edid);
-	if (!edid_ext)
-		return false;
-
-	if (cea_db_offsets(edid_ext, &start_offset, &end_offset))
-		return false;
+	const struct cea_db *db;
+	struct cea_db_iter iter;
+	bool hdmi = false;
 
 	/*
 	 * Because HDMI identifier is in Vendor Specific Block,
 	 * search it from all data blocks of CEA extension.
 	 */
-	for_each_cea_db(edid_ext, i, start_offset, end_offset) {
-		if (cea_db_is_hdmi_vsdb(&edid_ext[i]))
-			return true;
+	cea_db_iter_edid_begin(edid, &iter);
+	cea_db_iter_for_each(db, &iter) {
+		if (cea_db_is_hdmi_vsdb(db)) {
+			hdmi = true;
+			break;
+		}
 	}
+	cea_db_iter_end(&iter);
 
-	return false;
+	return hdmi;
 }
 EXPORT_SYMBOL(drm_detect_hdmi_monitor);
 
-- 
2.30.2

