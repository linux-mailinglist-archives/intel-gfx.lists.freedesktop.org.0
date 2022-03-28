Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 127764E90FA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 11:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3076B10EB11;
	Mon, 28 Mar 2022 09:18:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CFB510EB11;
 Mon, 28 Mar 2022 09:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648459084; x=1679995084;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n3JsYZScArEq08WopnENbKxcwn3bsFE//XKDBq8vwS4=;
 b=WZ4VKJp64DJE2TtlqnfVa7G5BlwvDIntRdBTakGAnbqv5mlBMtILB1GR
 Y39XL5T8wWSKQxusj//r95xVzjnfrX0Eb76d7Zh1ir+e0BfCo6oFe8GsB
 3H4H9hG7neEo/FpCwqssdfCIXd5HofgZ744MhCKvw3gHyExO01sReiGdT
 2yoCbNlVJ6qf86JPIQ+R9R5EILDluUUJoITREi0NpZb2C47d1PpGSyFDQ
 TMrUsjY9CPYzx+4V5+kw4H4KToCWdhcIMCpRmFE3Q1xbDYGLLqLpbZUsw
 g1wsGsrbU/T/yIoyIjQRWxQ/84SJGtlhAh9AmCiFWPsuRtRuMQcmYZho+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="258924209"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="258924209"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 02:18:03 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="648992641"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 02:18:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 28 Mar 2022 12:17:20 +0300
Message-Id: <b7f332e3e76b922f7912c1acabb94decf14e3cbf.1648458971.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1648458971.git.jani.nikula@intel.com>
References: <cover.1648458971.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/11] drm/edid: use struct
 detailed_data_monitor_range member access in gtf2 functions
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

Use struct struct detailed_data_monitor_range member access instead of
direct offsets to avoid casting.

Use BUILD_BUG_ON() for sanity check.

v2:
- Rename timing to descriptor (Ville)
- Return and use struct detailed_data_monitor_range

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 63 ++++++++++++++++++++++++++------------
 1 file changed, 43 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 242f074f60d9..4d63f3412672 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2438,61 +2438,84 @@ drm_monitor_supports_rb(struct edid *edid)
 }
 
 static void
-find_gtf2(struct detailed_timing *t, void *data)
+find_gtf2(struct detailed_timing *descriptor, void *data)
 {
-	u8 *r = (u8 *)t;
+	struct detailed_data_monitor_range **res = data;
 
-	if (!is_display_descriptor(t, EDID_DETAIL_MONITOR_RANGE))
+	if (!is_display_descriptor(descriptor, EDID_DETAIL_MONITOR_RANGE))
 		return;
 
-	if (r[10] == 0x02)
-		*(u8 **)data = r;
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.descriptor.data.range.flags) != 10);
+
+	if (descriptor->data.descriptor.data.range.flags ==
+	    DRM_EDID_SECONDARY_GTF_SUPPORT_FLAG)
+		*res = &descriptor->data.descriptor.data.range;
 }
 
 /* Secondary GTF curve kicks in above some break frequency */
 static int
 drm_gtf2_hbreak(struct edid *edid)
 {
-	u8 *r = NULL;
+	struct detailed_data_monitor_range *range = NULL;
+
+	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &range);
 
-	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &r);
-	return r ? (r[12] * 2) : 0;
+	BUILD_BUG_ON(offsetof(struct detailed_timing, data.descriptor.data.range) +
+		     offsetof(typeof(*range), formula.gtf2.hfreq_start_khz) != 12);
+
+	return range ? range->formula.gtf2.hfreq_start_khz * 2 : 0;
 }
 
 static int
 drm_gtf2_2c(struct edid *edid)
 {
-	u8 *r = NULL;
+	struct detailed_data_monitor_range *range = NULL;
+
+	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &range);
+
+	BUILD_BUG_ON(offsetof(struct detailed_timing, data.descriptor.data.range) +
+		     offsetof(typeof(*range), formula.gtf2.c) != 13);
 
-	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &r);
-	return r ? r[13] : 0;
+	return range ? range->formula.gtf2.c : 0;
 }
 
 static int
 drm_gtf2_m(struct edid *edid)
 {
-	u8 *r = NULL;
+	struct detailed_data_monitor_range *range = NULL;
 
-	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &r);
-	return r ? (r[15] << 8) + r[14] : 0;
+	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &range);
+
+	BUILD_BUG_ON(offsetof(struct detailed_timing, data.descriptor.data.range) +
+		     offsetof(typeof(*range), formula.gtf2.m) != 14);
+
+	return range ? le16_to_cpu(range->formula.gtf2.m) : 0;
 }
 
 static int
 drm_gtf2_k(struct edid *edid)
 {
-	u8 *r = NULL;
+	struct detailed_data_monitor_range *range = NULL;
+
+	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &range);
 
-	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &r);
-	return r ? r[16] : 0;
+	BUILD_BUG_ON(offsetof(struct detailed_timing, data.descriptor.data.range) +
+		     offsetof(typeof(*range), formula.gtf2.k) != 16);
+
+	return range ? range->formula.gtf2.k : 0;
 }
 
 static int
 drm_gtf2_2j(struct edid *edid)
 {
-	u8 *r = NULL;
+	struct detailed_data_monitor_range *range = NULL;
+
+	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &range);
+
+	BUILD_BUG_ON(offsetof(struct detailed_timing, data.descriptor.data.range) +
+		     offsetof(typeof(*range), formula.gtf2.j) != 17);
 
-	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &r);
-	return r ? r[17] : 0;
+	return range ? range->formula.gtf2.j : 0;
 }
 
 /**
-- 
2.30.2

