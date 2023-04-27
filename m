Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4916F074E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 16:26:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35D910E375;
	Thu, 27 Apr 2023 14:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1910C10E375
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682605593; x=1714141593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CDek1FFnK4azGneYijy5ZP4feHCRAPrblddD1jGIsfU=;
 b=PC+ML0jHaIDHGKO4/3j4eeqTz5L5XNLZ3LFX8Z5XrmWMxxse/bAP3V7l
 pgiTshJhH2AOxSvs84zMorDGpvWDvTO3XKzQdoq/kE4NUdx1DQGsnMgqq
 yWVo0QFPUT2MhN+wOyb1qWiq4egcwmqK3gtJQETe5/X2MP5Nh8JkmY0RH
 I3wTeQny13EBqV9zBCnXQTKM4CO5x9plRTEQ7QTvwvhC3iJYWGq+YNzJT
 Qn+pjYvx0BOe++Mn+tXOoYLks1LvsU7CdpI7dn3ZH8uF4IOIm2UeGO3S4
 b2QwG9trTWDB8DztbIZW+v7pRXCsQ4LT0JtkbL2EzWGQyNegLgCDIxjMM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375438647"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="375438647"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 07:26:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="838403737"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="838403737"
Received: from jfedorov-mobl2.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.216.111])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 07:26:30 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 17:26:01 +0300
Message-Id: <20230427142604.1565580-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230427142604.1565580-1-vinod.govindapillai@intel.com>
References: <20230427142604.1565580-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/8] drm/i915: modify max_bw to return index
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

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index a3b8512ebe8a..a7f501131bb6 100644
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

