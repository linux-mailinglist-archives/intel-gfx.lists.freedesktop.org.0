Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B64D5180FB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737D210F817;
	Tue,  3 May 2022 09:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3151910F817
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569951; x=1683105951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FgHdZNLN31+//9bdXVMVdxznrDWOyAsCeNM60kOhUkw=;
 b=F2su0pbB7R84ae0DvEMWxLPi4nb8QeKt8xwAfIJJnEGZHg8lLb/4iiDk
 vK5/NXA5DFBj5kRjQFKAkbIE9v4XwpMTcgXTfZmAnD/dWXHK1HaH/8Kjq
 hhXdgsFqdHw9qPg9a6IIh+M0bNhU4HJ9v5o/FslQJOy3I0Nfpv/ZYmhpH
 PRUprVnLZlyWKGVR1rx18MenFHrwykBqbZntFRN4bAs91bdKTRpnIFEez
 bBuNV0CC3oWJqdoLwJ7EuReCvCV3FTc489rkLBFwnUXowpwRtrpdf0F3P
 RH3YM9bHwZmwooXrd8qrUXMOS4KbCeAm9nGExlwiog4yjkgaY8mSn/vEI Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="267028768"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="267028768"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:50 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="516490534"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:24:05 +0300
Message-Id: <a5bf228942e6bd0fc70d5cf7a14c249a14a7afcd.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 20/20] drm/edid: sunset
 drm_find_cea_extension()
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

Convert drm_find_cea_extension() to a predicate function to check if the
EDID has a CTA extension or a DisplayID CTA data block. This is mainly
to avoid adding new users that only find the first CTA extension.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 391c91199aa2..d2f64c321a13 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -3558,30 +3558,29 @@ const u8 *drm_find_edid_extension(const struct edid *edid,
 	return edid_ext;
 }
 
-static const u8 *drm_find_cea_extension(const struct edid *edid)
+/* Return true if the EDID has a CTA extension or a DisplayID CTA data block */
+static bool drm_edid_has_cta_extension(const struct edid *edid)
 {
 	const struct displayid_block *block;
 	struct displayid_iter iter;
-	const u8 *cea;
 	int ext_index = 0;
+	bool found = false;
 
 	/* Look for a top level CEA extension block */
-	/* FIXME: make callers iterate through multiple CEA ext blocks? */
-	cea = drm_find_edid_extension(edid, CEA_EXT, &ext_index);
-	if (cea)
-		return cea;
+	if (drm_find_edid_extension(edid, CEA_EXT, &ext_index))
+		return true;
 
 	/* CEA blocks can also be found embedded in a DisplayID block */
 	displayid_iter_edid_begin(edid, &iter);
 	displayid_iter_for_each(block, &iter) {
 		if (block->tag == DATA_BLOCK_CTA) {
-			cea = (const u8 *)block;
+			found = true;
 			break;
 		}
 	}
 	displayid_iter_end(&iter);
 
-	return cea;
+	return found;
 }
 
 static __always_inline const struct drm_display_mode *cea_mode_for_vic(u8 vic)
@@ -3854,8 +3853,8 @@ add_alternate_cea_modes(struct drm_connector *connector, const struct edid *edid
 	LIST_HEAD(list);
 	int modes = 0;
 
-	/* Don't add CEA modes if the CEA extension block is missing */
-	if (!drm_find_cea_extension(edid))
+	/* Don't add CTA modes if the CTA extension block is missing */
+	if (!drm_edid_has_cta_extension(edid))
 		return 0;
 
 	/*
-- 
2.30.2

