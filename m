Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 869CE501260
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:08:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92CF810FF82;
	Thu, 14 Apr 2022 15:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC2A10FF85;
 Thu, 14 Apr 2022 15:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649948886; x=1681484886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=29zczUUX57yKL4EmfUU4UBQXbZGhhOud6StRedh2RKk=;
 b=hJwSK0Ht7eKTHUu8SJQhcelq2Er1Llox62qTh9Y4f4w/PBlugxlyKhrz
 Yny1J1t0hcSTzzXfJREZ//QlSx+dTKKAmqILpPiWuFbyIBBoRNU8BR7Nn
 spFRFFDAkzgRAXmm39dNgu/vSL4Rxn9J8OkotGeEmMjUNBehQmKkDaLZA
 cXn82AFEiMMVwUPh6xtF9knf444TmrV70xmkcNbIwI4KL3oDBwZI7TvR6
 L9oVNbPamW0I4OvNnVwGnbokdXjvKsZBXWSlXZPNoorbDYXGWDAN8CjaP
 ouKJiy4vFcaKvVN27PUPOc8hr1p65/tFaXE2YNgkrfAt6Pqq3it728DLF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="262703055"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="262703055"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:08:05 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="508439562"
Received: from nplaweck-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.149.236])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:08:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 14 Apr 2022 18:06:53 +0300
Message-Id: <b9ff79857c53ef89e3e1920cb8860430b1487f17.1649948563.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649948562.git.jani.nikula@intel.com>
References: <cover.1649948562.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/19] drm/edid: convert
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Iterate through all CTA data blocks, not just the first CTA extension.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 164a2020f9e1..b1fac281fd85 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5155,27 +5155,24 @@ EXPORT_SYMBOL(drm_av_sync_delay);
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

