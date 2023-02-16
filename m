Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E408D699E1D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 21:45:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A5410EEB2;
	Thu, 16 Feb 2023 20:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFC7710EE9B;
 Thu, 16 Feb 2023 20:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676580320; x=1708116320;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nnS/v9e58259/I1aUQcopNV89llFsD81bJJrhdsCiho=;
 b=NC2aNFO/gGErV8ZDPPBoT+zjy06L1mBLMD+cX6oG9UgPjvmQ9MsXDrsW
 wpyVB5Xnuva8fqlpa0PpxZmiqnSoovdgnEu2bUtfY3wFOFwl371iVEyRD
 c2DOJpaQB1M53+Gjuqz5i9ykPn9vlg+MTz6+3iFydNNS2PqOncUBCQqsJ
 7UPZzVIWHYnQZViTljcd+QsxSrpbdG5993qi/8mEVpLiD2aCGv4sSKGaw
 VAomnFlEj7qnHAWKQ2ehu0g55EklArN4TpD2tegHIQ9M7sdaFIIaCa+wV
 XM0uh41Id6l5iHk1Tcq3EIojq+FMZohU5g/3W4EYizcYOAJqcpryAjWnm w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="394308438"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="394308438"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 12:45:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="670312004"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="670312004"
Received: from uwah-mobl.ger.corp.intel.com (HELO localhost) ([10.252.63.106])
 by orsmga002-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2023 12:45:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 16 Feb 2023 22:44:59 +0200
Message-Id: <e840c744d165608a41db5a5e2bd4b0205783c697.1676580180.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1676580180.git.jani.nikula@intel.com>
References: <cover.1676580180.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/displayid: return struct
 displayid_header from validate_displayid()
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 Iaroslav Boliukin <iam@lach.pw>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid figuring out the header pointer multiple times.

Cc: Iaroslav Boliukin <iam@lach.pw>
Cc: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_displayid.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_displayid.c b/drivers/gpu/drm/drm_displayid.c
index 7d03159dc146..0de9b5530393 100644
--- a/drivers/gpu/drm/drm_displayid.c
+++ b/drivers/gpu/drm/drm_displayid.c
@@ -20,7 +20,8 @@ displayid_get_header(const u8 *displayid, int length, int index)
 	return base;
 }
 
-static int validate_displayid(const u8 *displayid, int length, int idx)
+static const struct displayid_header *
+validate_displayid(const u8 *displayid, int length, int idx)
 {
 	int i, dispid_length;
 	u8 csum = 0;
@@ -28,7 +29,7 @@ static int validate_displayid(const u8 *displayid, int length, int idx)
 
 	base = displayid_get_header(displayid, length, idx);
 	if (IS_ERR(base))
-		return PTR_ERR(base);
+		return base;
 
 	DRM_DEBUG_KMS("base revision 0x%x, length %d, %d %d\n",
 		      base->rev, base->bytes, base->prod_id, base->ext_count);
@@ -36,16 +37,16 @@ static int validate_displayid(const u8 *displayid, int length, int idx)
 	/* +1 for DispID checksum */
 	dispid_length = sizeof(*base) + base->bytes + 1;
 	if (dispid_length > length - idx)
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
 
 	for (i = 0; i < dispid_length; i++)
 		csum += displayid[idx + i];
 	if (csum) {
 		DRM_NOTE("DisplayID checksum invalid, remainder is %d\n", csum);
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
 	}
 
-	return 0;
+	return base;
 }
 
 static const u8 *drm_find_displayid_extension(const struct drm_edid *drm_edid,
@@ -54,7 +55,6 @@ static const u8 *drm_find_displayid_extension(const struct drm_edid *drm_edid,
 {
 	const u8 *displayid = drm_find_edid_extension(drm_edid, DISPLAYID_EXT, ext_index);
 	const struct displayid_header *base;
-	int ret;
 
 	if (!displayid)
 		return NULL;
@@ -63,11 +63,10 @@ static const u8 *drm_find_displayid_extension(const struct drm_edid *drm_edid,
 	*length = EDID_LENGTH - 1;
 	*idx = 1;
 
-	ret = validate_displayid(displayid, *length, *idx);
-	if (ret)
+	base = validate_displayid(displayid, *length, *idx);
+	if (IS_ERR(base))
 		return NULL;
 
-	base = (const struct displayid_header *)&displayid[*idx];
 	*length = *idx + sizeof(*base) + base->bytes;
 
 	return displayid;
-- 
2.34.1

