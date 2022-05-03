Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE665180F4
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0666510F828;
	Tue,  3 May 2022 09:25:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C30D10F828
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569926; x=1683105926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=51/5DyNo1x7cu2mFU+Tyx78aoW6oV0UNNFYjxVMBsEw=;
 b=FHJWG5MtJPzTGpPedTnSlIjosAD3hCIDEKaQ+Jd/WNSUy2ydDvuyjHkB
 5MIsz2GDzBwJvzzT9TOcPDxbCT1gIC6qNMwc6pXHG+jT0vQvsbuhysxLT
 WOwX2RCLfQM3+Ak03xgs+ODPWEtdAvKqQ9/nnFASw6P3jIZkQzN7FxtRW
 VHJ/yOultrHI21Em8JLN9qavTw9Pf4q2gthr1Ulfdi3SSMbGQez3r67NV
 1nzIWviYwYiK56FKGcvgfSRwYQh9Ll0WpfUHqNPkO/JQdmvzzh3GK2/lA
 u32canlvF27VjYVJ2xbi1c7CPsUauG5yG49V2MuZ5d3q+CYThzbws0foV A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="247343744"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="247343744"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:25 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="620278427"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:24:00 +0300
Message-Id: <a5b35ed0e711bd874f76ae87ee0b70150d0a77c4.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/20] drm/edid: sunset the old unused cea
 data block iterators
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

All CTA data block iteration has now been converted to the new cea db
iterators.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 45 --------------------------------------
 1 file changed, 45 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 77986895e501..208b1efb490d 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4349,48 +4349,6 @@ cea_revision(const u8 *cea)
 	return cea[1];
 }
 
-static int
-cea_db_offsets(const u8 *cea, int *start, int *end)
-{
-	/* DisplayID CTA extension blocks and top-level CEA EDID
-	 * block header definitions differ in the following bytes:
-	 *   1) Byte 2 of the header specifies length differently,
-	 *   2) Byte 3 is only present in the CEA top level block.
-	 *
-	 * The different definitions for byte 2 follow.
-	 *
-	 * DisplayID CTA extension block defines byte 2 as:
-	 *   Number of payload bytes
-	 *
-	 * CEA EDID block defines byte 2 as:
-	 *   Byte number (decimal) within this block where the 18-byte
-	 *   DTDs begin. If no non-DTD data is present in this extension
-	 *   block, the value should be set to 04h (the byte after next).
-	 *   If set to 00h, there are no DTDs present in this block and
-	 *   no non-DTD data.
-	 */
-	if (cea[0] == DATA_BLOCK_CTA) {
-		/*
-		 * for_each_displayid_db() has already verified
-		 * that these stay within expected bounds.
-		 */
-		*start = 3;
-		*end = *start + cea[2];
-	} else if (cea[0] == CEA_EXT) {
-		/* Data block offset in CEA extension block */
-		*start = 4;
-		*end = cea[2];
-		if (*end == 0)
-			*end = 127;
-		if (*end < 4 || *end > 127)
-			return -ERANGE;
-	} else {
-		return -EOPNOTSUPP;
-	}
-
-	return 0;
-}
-
 /*
  * CTA Data Block iterator.
  *
@@ -4643,9 +4601,6 @@ static bool cea_db_is_hdmi_hdr_metadata_block(const void *db)
 		cea_db_payload_len(db) >= 3;
 }
 
-#define for_each_cea_db(cea, i, start, end) \
-	for ((i) = (start); (i) < (end) && (i) + cea_db_payload_len(&(cea)[(i)]) < (end); (i) += cea_db_payload_len(&(cea)[(i)]) + 1)
-
 static void drm_parse_y420cmdb_bitmap(struct drm_connector *connector,
 				      const u8 *db)
 {
-- 
2.30.2

