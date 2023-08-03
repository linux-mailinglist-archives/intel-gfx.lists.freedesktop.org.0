Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C01376E022
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 08:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52AA010E599;
	Thu,  3 Aug 2023 06:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8DC710E599
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 06:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691043814; x=1722579814;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zNjJMJqVdDd3lAtWigTSHexEdFJvybXhfCA+vTmmxTw=;
 b=fn+rkoPNHtKzqDfMK86WGFU3yqwmvAHZs5B14QIAEL+Pd19O9xYdW6QK
 sQkh58HT7x4NZYmx2N9UcgwiFATeCVhwXodB0mUprtZVuQjQlhQv9iPQi
 0L43gp7+MYymmIlPasiy/D9th4KQ6RyM8AZZXM3mdBI32OWoDrMWUUk3u
 MX7XhgIGY68QXXunZPinZHy+2TLu5dGbyT79oyHzkID6xikJ75X695SsS
 x4ObP8XViWo7byYKSKAIuzTzjV5jcmS4gUxotpkfA/HcTA5VPYmfGhRSk
 YU8VKOL7E1ONEcWYb9Ozp3cY/GruhxZB+ehmwwmQRZmSDnpqp1F3dFhXT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="373414915"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="373414915"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 23:23:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="819501773"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="819501773"
Received: from tsengwil-desk2.itwn.intel.com (HELO gar) ([10.5.231.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 23:23:14 -0700
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Aug 2023 14:23:08 +0800
Message-Id: <20230803062308.172824-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230802101541.10045-1-william.tseng@intel.com>
References: <20230802101541.10045-1-william.tseng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/xelpd: Calculate
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
Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>,
 William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This change is required for DSC 1.1 because the current calculation
is for DSC 1.2 and may get a calculated value which is not
recommended by DSC 1.1, for example, the calculated value at 8bpp
becomes 15, not the value of 12 recommened by DSC 1.1.

v2:
- change the if-condition from minor version 2 to 1.
- add comment about first_line_bpg_offset for DSC 1.1.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bd9116d2cd76..beeb1c594559 100644
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
+			rc->first_line_bpg_offset = 12;
+		else
+			rc->first_line_bpg_offset = 15;
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

