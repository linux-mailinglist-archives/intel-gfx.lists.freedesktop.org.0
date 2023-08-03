Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAED076E8C7
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 14:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EEDA10E203;
	Thu,  3 Aug 2023 12:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A423010E203
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 12:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691066961; x=1722602961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kwjp4uSlNcDfGP93t89aPyIxc203CWb9fomGF5+RbiI=;
 b=SFCCmQFltzr9q9DsvId5a1jRQ2tfaGguHagnxvpUZQneoDpZx6TP/nKC
 /HzzPpQA0mvRJaS/W3OILv+gPjn9em1cprlKp8NlTftfVP3mH6qgIwCxW
 QzIf/FRB5P2CIG6Ufe+u21Vi58zq4LerKNmGlxtUMmER/u66OZiVC+cju
 9rvFAD6CDIZXbIxJTNfqHeG7Y/XJpocRbKc1/chtCj/xp9FXe19+xn0lh
 YTzzRuFw8IcZB6f27+7uo+ldKzDmY5vV8jo3dKz4N69+2Zf5eC0Q66gsD
 wu/waejmyV2E3SE25hNdl/SiXuscH+R8d66gsFrGtS/bNj+tjXmuyVKxq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="354779268"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="354779268"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 05:49:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="976055753"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="976055753"
Received: from tsengwil-desk2.itwn.intel.com (HELO gar) ([10.5.231.141])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 05:49:19 -0700
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Aug 2023 20:49:13 +0800
Message-Id: <20230803124913.210370-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230802101541.10045-1-william.tseng@intel.com>
References: <20230802101541.10045-1-william.tseng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/xelpd: Calculate
 first_line_bpg_offset for DSC 1.1
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
Cc: William Tseng <william.tseng@intel.com>,
 Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This change is required for DSC 1.1 because the current calculation
is for DSC 1.2 and may get a calculated value which is not
recommended by DSC 1.1, for example, the calculated value at 8bpp
becomes 15, not the value of 12 recommened by DSC 1.1.

v2:
- change the if-condition from minor version 2 to 1.
- add comment about first_line_bpg_offset for DSC 1.1.
v3:
- change variable name from rc to vdsc_cfg.
- add Cc

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bd9116d2cd76..c7db3bc94246 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -72,11 +72,19 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 	int qp_bpc_modifier = (bpc - 8) * 2;
 	u32 res, buf_i, bpp_i;
 
-	if (vdsc_cfg->slice_height >= 8)
-		vdsc_cfg->first_line_bpg_offset =
-			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
-	else
-		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
+	if (vdsc_cfg->dsc_version_minor == 1) {
+		/* The recommended and required Values from Table E-2 for DSC1.1 */
+		if (bpp == 8)
+			vdsc_cfg->first_line_bpg_offset = 12;
+		else
+			vdsc_cfg->first_line_bpg_offset = 15;
+	} else {
+		if (vdsc_cfg->slice_height >= 8)
+			vdsc_cfg->first_line_bpg_offset =
+				12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
+		else
+			vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
+	}
 
 	/* Our hw supports only 444 modes as of today */
 	if (bpp >= 12)
-- 
2.34.1

