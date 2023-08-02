Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF0576CA97
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 12:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 210D910E064;
	Wed,  2 Aug 2023 10:16:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633F710E064
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 10:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690971366; x=1722507366;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QxfMKRPK8QBH1HMJ+NysOox+18cuioskAbMzTpu5gaY=;
 b=RBcxOOeVJe3dkEXlyF80Jrjq+fVepGqo3U/WwF8BQL0dZYLj+JbffsPi
 79srLJIoxFY1KSltniZOUlahCn26iy+NOZ4ZY1OwDVTYDXcVF7qINkmdV
 WINWQoF2pzgdqelm506xitfA/o4Lfh1uNOkoe7zliEENTCZRg/H3xnDXC
 GxMziVFAekbghPm7yBA/lc1KXSdHLi8fp8mZ5vTbcdmdEc6p0mc8BzpeC
 KzEspocOOIEFHPgZMqfxeNJw5X53fUmnRBcNd6ijIT62YWFYRSvUa9eEr
 q1aqMf4D0Mun8WR/AbhfE91WMuxMFT/64Uw6/XvH4MU2WK7DYwdSUaeeo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="400490224"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="400490224"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 03:15:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="732326853"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="732326853"
Received: from tsengwil-desk2.itwn.intel.com (HELO gar) ([10.5.231.141])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 03:15:46 -0700
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Aug 2023 18:15:41 +0800
Message-Id: <20230802101541.10045-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate first_line_bpg_offset
 for DSC 1.1
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
Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>,
 William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This change is required for DSC 1.1 because the current calculation
is for DSC 1.2 and may get a calculated value which is not
recommended by DSC 1.1, for example, the calculated value at 8bpp
becomes 15, not the value of 12 recommened by DSC 1.1.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bd9116d2cd76..9b350f5f8ebb 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -72,11 +72,18 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 	int qp_bpc_modifier = (bpc - 8) * 2;
 	u32 res, buf_i, bpp_i;
 
-	if (vdsc_cfg->slice_height >= 8)
-		vdsc_cfg->first_line_bpg_offset =
-			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
-	else
-		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
+	if (vdsc_cfg->dsc_version_minor == 2) {
+		if (vdsc_cfg->slice_height >= 8)
+			vdsc_cfg->first_line_bpg_offset =
+				12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
+		else
+			vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
+	} else {
+		if (bpp == 8)
+			rc->first_line_bpg_offset = 12;
+		else
+			rc->first_line_bpg_offset = 15;
+	}
 
 	/* Our hw supports only 444 modes as of today */
 	if (bpp >= 12)
-- 
2.34.1

