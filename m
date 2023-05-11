Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A58606FFD2D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 01:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB9210E61D;
	Thu, 11 May 2023 23:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC7A110E62A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 23:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683847105; x=1715383105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j0jED/o3/mNIQcBDuWSczHi87/wPuq0HBPdPevl9zEY=;
 b=FGyAcO6suS1XiZEEZrPc9pWm/IbIheY0xNOeTfoQk5mx/ub7LcQ4u5KR
 G43s3t0fVUn1HOjuWILL0JS+kNA4qEsqQlFpbA6V9aA1D319nuHpNFwBL
 PlsN5XE/zm04QlCJDpWynD/lPxDFouUdJvl0vGUEnirk7iUINbPbAw3KO
 LBroS/Ril+6IkF0mIdjDkV2L2CZUVhDNimXIVaU5PkX+KghB+LLZP0xgh
 i4WUJRhDfA42WcIUB/L4vLfjasFRyXXQzxDgqFMNGg6hIa+bOpL427Lnz
 7zpg7+NtPkdMhqN1edTnBgw+SvI3d9Jlldzcmqe2bks7XiQ6rkuK24I3u w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="352897313"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="352897313"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:18:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="694012936"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="694012936"
Received: from ptorre-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.61.205])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 16:18:22 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 02:17:47 +0300
Message-Id: <20230511231750.313467-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230511231750.313467-1-vinod.govindapillai@intel.com>
References: <20230511231750.313467-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 5/8] drm/i915: modify max_bw to return index
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
---
 drivers/gpu/drm/i915/display/intel_bw.c | 27 ++++++++++++++++---------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index d83aafd0cc2b..f466b4e087bb 100644
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

