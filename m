Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBBE4E99C3
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 16:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E694110E68F;
	Mon, 28 Mar 2022 14:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9FF10E6AB;
 Mon, 28 Mar 2022 14:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648478125; x=1680014125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F4n0QemD32iWQKmV8+qBQ98OH3sMb+wggdVhD4GtRiY=;
 b=bKeOLJqyI2b3Q3jFjwyrgSj/u7WLRk2kjLO2hP/6xpNG3JpQpkB3dItF
 GVO90gMlBSfQNw2GDe6llooz/m4ZupOeclwzAhDWZSaiIyLevBCZjt6RG
 u4vkPorTQbx8CmjknYe2NGe2lQiRgh4fjTT7bBBAuRZdMBx20W8oGCfKW
 iVokcR8Qg662MIKeP4Sz2s43y0aWkCCnMBj7XCCmWRbZZ05gUpivFvtmv
 +lhP4f5XpwVxRCIWegfmIhiUhKZ+hxJz5F0FlYCptd5rx3xwkwDfva6cq
 Ax/2ehg+JqBvzGyR65UN2r5Mx9gqo9TQfzzmn9CUAWHCeLMB7GrYj3+Nm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="256586324"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="256586324"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 07:35:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="518153294"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 07:35:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 28 Mar 2022 17:34:27 +0300
Message-Id: <9fe5f5c39039e585fecfffb390297d49262e5fd3.1648477901.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1648477901.git.jani.nikula@intel.com>
References: <cover.1648477901.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/12] drm/edid: use struct detailed_timing
 member access in gtf2 functions
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

Use struct detailed_timing member access instead of direct offsets to
avoid casting.

Use BUILD_BUG_ON() for sanity check.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 57 +++++++++++++++++++++++++-------------
 1 file changed, 37 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 39c8bf4ca082..27a0e9bf260c 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2438,61 +2438,78 @@ drm_monitor_supports_rb(struct edid *edid)
 }
 
 static void
-find_gtf2(struct detailed_timing *t, void *data)
+find_gtf2(struct detailed_timing *descriptor, void *data)
 {
-	u8 *r = (u8 *)t;
+	struct detailed_timing **res = data;
 
-	if (!is_display_descriptor(t, EDID_DETAIL_MONITOR_RANGE))
+	if (!is_display_descriptor(descriptor, EDID_DETAIL_MONITOR_RANGE))
 		return;
 
-	if (r[10] == 0x02)
-		*(u8 **)data = r;
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.flags) != 10);
+
+	if (descriptor->data.other_data.data.range.flags == 0x02)
+		*res = descriptor;
 }
 
 /* Secondary GTF curve kicks in above some break frequency */
 static int
 drm_gtf2_hbreak(struct edid *edid)
 {
-	u8 *r = NULL;
+	struct detailed_timing *descriptor = NULL;
+
+	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &descriptor);
 
-	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &r);
-	return r ? (r[12] * 2) : 0;
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.hfreq_start_khz) != 12);
+
+	return descriptor ? descriptor->data.other_data.data.range.formula.gtf2.hfreq_start_khz * 2 : 0;
 }
 
 static int
 drm_gtf2_2c(struct edid *edid)
 {
-	u8 *r = NULL;
+	struct detailed_timing *descriptor = NULL;
+
+	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &descriptor);
+
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.c) != 13);
 
-	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &r);
-	return r ? r[13] : 0;
+	return descriptor ? descriptor->data.other_data.data.range.formula.gtf2.c : 0;
 }
 
 static int
 drm_gtf2_m(struct edid *edid)
 {
-	u8 *r = NULL;
+	struct detailed_timing *descriptor = NULL;
 
-	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &r);
-	return r ? (r[15] << 8) + r[14] : 0;
+	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &descriptor);
+
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.m) != 14);
+
+	return descriptor ? le16_to_cpu(descriptor->data.other_data.data.range.formula.gtf2.m) : 0;
 }
 
 static int
 drm_gtf2_k(struct edid *edid)
 {
-	u8 *r = NULL;
+	struct detailed_timing *descriptor = NULL;
+
+	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &descriptor);
 
-	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &r);
-	return r ? r[16] : 0;
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.k) != 16);
+
+	return descriptor ? descriptor->data.other_data.data.range.formula.gtf2.k : 0;
 }
 
 static int
 drm_gtf2_2j(struct edid *edid)
 {
-	u8 *r = NULL;
+	struct detailed_timing *descriptor = NULL;
+
+	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &descriptor);
+
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.j) != 17);
 
-	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &r);
-	return r ? r[17] : 0;
+	return descriptor ? descriptor->data.other_data.data.range.formula.gtf2.j : 0;
 }
 
 /**
-- 
2.30.2

