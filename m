Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6686EE8F0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 22:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A90510E7E2;
	Tue, 25 Apr 2023 20:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CCE910E7E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 20:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682454079; x=1713990079;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KYPNkrUxT305Vzo3xS+iUxTh8JzXHVL3MFG6qVltZS0=;
 b=PkN9J+iX47h3nwA5p0HffPpQZAFDEGjlQmxI0KR6r+8jIR3EIrshQIgp
 TGtPE4lY8K+o8HNPZy2GmDny1L+F6dWSEoQ3j9ztVAueH/mlV0aRlHLwk
 9sI7jKA/ZXnWfI34Y+zCWDdMEDeTGLUE4yOIf9JgK/AVL8B/38KyrulyW
 7QBQ0XIUpVDagpFFZqdebi7ckf6S3wrbw+QQxvSn5o4yP+STQJDtygr36
 9B/K031kDeMUjBGtF71xw6mLcAWktOGD+/c0S4rU0dL74iBE8SV6upQlH
 04/KJFcY9s8FN1TGDE8XY87gggVp42tR6xN52BcwlknbmVpR2JL/7PovX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="409854228"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="409854228"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:21:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="693663071"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="693663071"
Received: from aazuev-mobl.ccr.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.59.124])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:21:17 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 23:20:53 +0300
Message-Id: <20230425202056.1143994-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230425202056.1143994-1-vinod.govindapillai@intel.com>
References: <20230425202056.1143994-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 4/7] drm/i915: modify max_bw to return index
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
Cc: ville.syrjala@intel.com, gustavo.souza@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL uses the peak BW of a QGV point to lock the required QGV
point instead of the QGV index. Instead of passing the deratedbw
of the selected bw_info, return the index to the selected
bw_info so that either deratedbw or peakbw can be used based on
the platform.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index a3b8512ebe8a..fd0b08fd6555 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -592,8 +592,8 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 	i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
 }
 
-static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
-			       int num_planes, int qgv_point)
+static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
+				     int num_planes, int qgv_point)
 {
 	int i;
 
@@ -614,14 +614,14 @@ static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
 			return UINT_MAX;
 
 		if (num_planes >= bi->num_planes)
-			return bi->deratedbw[qgv_point];
+			return i;
 	}
 
 	return 0;
 }
 
-static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
-			       int num_planes, int qgv_point)
+static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
+				     int num_planes, int qgv_point)
 {
 	int i;
 
@@ -642,10 +642,10 @@ static unsigned int tgl_max_bw(struct drm_i915_private *dev_priv,
 			return UINT_MAX;
 
 		if (num_planes <= bi->num_planes)
-			return bi->deratedbw[qgv_point];
+			return i;
 	}
 
-	return dev_priv->display.bw.max[0].deratedbw[qgv_point];
+	return 0;
 }
 
 static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
@@ -822,12 +822,19 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
 		return ret;
 
 	for (i = 0; i < num_qgv_points; i++) {
+		unsigned int idx;
 		unsigned int max_data_rate;
 
 		if (DISPLAY_VER(i915) > 11)
-			max_data_rate = tgl_max_bw(i915, num_active_planes, i);
+			tgl_max_bw_index(i915, num_active_planes, i);
 		else
-			max_data_rate = icl_max_bw(i915, num_active_planes, i);
+			icl_max_bw_index(i915, num_active_planes, i);
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

