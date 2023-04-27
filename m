Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 504CC6F07CC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 17:01:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D11C010EB67;
	Thu, 27 Apr 2023 15:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF4010EB67
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 15:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682607697; x=1714143697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sWpK/PcXrHQnLMWkeGWt6YkMkv7Fu4Mmu9aXVj9mVFI=;
 b=fz/6H6x2+3CjkYObCWV0vBFjBd0D0qCWqIa7fMrVBqNEy8BHoqvGMOT8
 5r4DgLnsjxr2Y3lpls+vNfLN2ZLYrGUle5VgVwQVO0WIRf4E+WbhPddBG
 Lc7/KKpeVLoznJwh0LLGZa9c/ZdMxPZ+QjM99SfYzRJtnJGkQjz2deBSW
 p3XcwUJZonNJpveiuUrGL/VZtSEEKdw0ndeiWVAOo8VJZ2b+JGJxpdSUZ
 YEh7eDA6/e1FlCb81ZLT8K1EoSqMME7O4Atnkdx7oxiseVTbmVTXygIPg
 cEUE4VDShQ8MvaFQOwkOKVFvTAMWjQGaSoLj5alzuFn6LzSd59xbK563Z Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="410520889"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="410520889"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 08:01:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="838420133"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="838420133"
Received: from jfedorov-mobl2.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.216.111])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 08:01:01 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 18:00:11 +0300
Message-Id: <20230427150016.1566833-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
References: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/8] drm/i915: store the peak bw per QGV point
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

In MTL onwards, pcode locks the GV point based on the peak BW
of a QGV point. So store the peak BW of all the QGV points.

Bspec: 64636

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c           | 7 +++++--
 drivers/gpu/drm/i915/display/intel_display_core.h | 2 ++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 25ae4e5834d3..f5b6cd7f83b8 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -534,10 +534,13 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 
 			bi->deratedbw[j] = min(maxdebw,
 					       bw * (100 - sa->derating) / 100);
+			bi->peakbw[j] = sp->dclk * num_channels *
+					qi.channel_width / 8;
 
 			drm_dbg_kms(&dev_priv->drm,
-				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
-				    i, j, bi->num_planes, bi->deratedbw[j]);
+				    "BW%d / QGV %d: num_planes=%d deratedbw=%u peakbw: %u\n",
+				    i, j, bi->num_planes, bi->deratedbw[j],
+				    bi->peakbw[j]);
 		}
 
 		for (j = 0; j < qi.num_psf_points; j++) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index e36f88a39b86..9f66d734edf6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -314,6 +314,8 @@ struct intel_display {
 			unsigned int deratedbw[I915_NUM_QGV_POINTS];
 			/* for each PSF GV point */
 			unsigned int psf_bw[I915_NUM_PSF_GV_POINTS];
+			/* Peak BW for each QGV point */
+			unsigned int peakbw[I915_NUM_QGV_POINTS];
 			u8 num_qgv_points;
 			u8 num_psf_gv_points;
 			u8 num_planes;
-- 
2.34.1

