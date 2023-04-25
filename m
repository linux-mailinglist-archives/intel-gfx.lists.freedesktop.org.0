Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 941AE6EE8EE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 22:21:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D6110E61D;
	Tue, 25 Apr 2023 20:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E33910E61D
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 20:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682454073; x=1713990073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sWpK/PcXrHQnLMWkeGWt6YkMkv7Fu4Mmu9aXVj9mVFI=;
 b=HjCSByYR/m+jfzRf7BtPq3OZyh2xfMCVZVxn3gyTnFaf3KOq8YCGpkW0
 VxVSkQx7VNdrk4wPlS/HMbaIZOOwFX76+XTxHo335DUh7y2tdv1Nvp/Br
 g7JdWynjgiI2jNTWbWkWvhKrZ321gT44yOgYFddL3ACr0mn1tXI0Pm9l+
 7e6+B0ZWjmJNAX0ZVUg/QU4jokTU6K3/jzxYicq0VWtaIxD4qaTRgOTUm
 ddfmxz62MpDOM1HrP/vF3VWla2PhnSfXBvEDU9CSgtskmhNLLPQ1XtzEX
 1DE39XBiov3NyKNIWRrwAbL6BSHWoqYGznNStbTpXEhpxtco6dUoRsTu4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="409854216"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="409854216"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:21:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="693663049"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="693663049"
Received: from aazuev-mobl.ccr.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.59.124])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:21:10 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 23:20:51 +0300
Message-Id: <20230425202056.1143994-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230425202056.1143994-1-vinod.govindapillai@intel.com>
References: <20230425202056.1143994-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 2/7] drm/i915: store the peak bw per QGV point
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

