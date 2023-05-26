Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 907A67126EF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 14:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FDED10E7FA;
	Fri, 26 May 2023 12:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 815C010E7FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 12:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685105509; x=1716641509;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g5l97Lt0twgB4LDHk2wrZk9/cvOOUqBmr9AonfSeH9s=;
 b=IImmiPqpc3nOS5S1Wt8roQrOBRRItn7fh1x8+p0jsFRtgXO/BupAH0MG
 BOzGtjRBzjNM8qyXzjLDFYpyLJrii9qqlaiMZ0jk6WKWMfFtqtc+jD50N
 QMqHDhEjK5MuPXgZaXhx/oJ238vWpq7JDT2KxumdTPPmkc9s57nFTeu2y
 MMP6w735hMEY11IMS7+pQMDM0Z2hRr4fMX1ZfRbi0nLsbC7ICLQ3tGva0
 NvMQDmkpBNhex05gEEagVPtK7l2QGn233QiKE47FBuy+ZHfiROjYofGrL
 z9lwyFF7civ/XLB4ry9z73yicpuIcdNQvD9yQhiCLMzbJHQXihlhSr9jr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="334545644"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="334545644"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 05:51:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="682708017"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="682708017"
Received: from vcouthon-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.208.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 05:51:45 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 15:50:53 +0300
Message-Id: <20230526125055.39886-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230526125055.39886-1-vinod.govindapillai@intel.com>
References: <20230526125055.39886-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 5/7] drm/i915: modify max_bw to return index
 to intel_bw_info
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL uses the peak BW of a QGV point to lock the required QGV
point instead of the QGV index. Instead of passing the deratedbw
of the selected bw_info, return the index to the selected
bw_info so that either deratedbw or peakbw can be used based on
the platform.

v2: use idx to store index returned by max_bw_index functions

v3: return UINT_MAX in icl_max_bw_index in case no match found

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 27 ++++++++++++++++---------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 56b3975f3ccb..c810c9f3f7d1 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -593,8 +593,8 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 	i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
 }
 
-static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
-			       int num_planes, int qgv_point)
+static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
+				     int num_planes, int qgv_point)
 {
 	int i;
 
@@ -615,14 +615,14 @@ static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
 			return UINT_MAX;
 
 		if (num_planes >= bi->num_planes)
-			return bi->deratedbw[qgv_point];
+			return i;
 	}
 
-	return 0;
+	return UINT_MAX;
 }
 
-static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
-			       int num_planes, int qgv_point)
+static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
+				     int num_planes, int qgv_point)
 {
 	int i;
 
@@ -643,10 +643,10 @@ static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
 			return UINT_MAX;
 
 		if (num_planes <= bi->num_planes)
-			return bi->deratedbw[qgv_point];
+			return i;
 	}
 
-	return dev_priv->display.bw.max[0].deratedbw[qgv_point];
+	return 0;
 }
 
 static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
@@ -823,12 +823,19 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 		return ret;
 
 	for (i = 0; i < num_qgv_points; i++) {
+		unsigned int idx;
 		unsigned int max_data_rate;
 
 		if (DISPLAY_VER(i915) > 11)
-			max_data_rate = tgl_max_bw(i915, num_active_planes, i);
+			idx = tgl_max_bw_index(i915, num_active_planes, i);
 		else
-			max_data_rate = icl_max_bw(i915, num_active_planes, i);
+			idx = icl_max_bw_index(i915, num_active_planes, i);
+
+		if (idx > ARRAY_SIZE(i915->display.bw.max))
+			continue;
+
+		max_data_rate = i915->display.bw.max[idx].deratedbw[i];
+
 		/*
 		 * We need to know which qgv point gives us
 		 * maximum bandwidth in order to disable SAGV
-- 
2.34.1

