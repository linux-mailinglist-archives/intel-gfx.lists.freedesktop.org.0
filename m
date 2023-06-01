Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7388E71A3A7
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 18:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4294710E581;
	Thu,  1 Jun 2023 16:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 240BB10E580
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 16:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685635512; x=1717171512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p8Diu7wJvA1Zw8sv4HsHEvjH8ejD5ov2eUbJduRJN4A=;
 b=WhjMlXA3NQto7YKUVfWTUzWSfjWrURrYdioCBe47GmU8gGFm81g4mdph
 k5wxl160WxvpdYWGwlQ/8KHIfj2SH6zI6iz2vXIHURNirFZhDyFNhhDfP
 sGguTL45JtxAlzojFDRumd7HSrGb9slgt9LWGHUFAILP5F0bncpnHL1MO
 w0UTujkuK27yjFFer0MVWAKkm3OQ50+zp+++CV8Vi2FPpf/os9xmz4A7g
 FmpvUZJnr1NPyBeC8Njk3AEeaD0H6eIjOXHoFXlEnyrLQZnDKP2+uAOZ1
 SHB8Ub6+nrDSXdhuZEC7T7DvvDTZpXYu3yHlp3IlwmS0jrFGML2p4Y+/4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="358024912"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="358024912"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 09:04:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="701608530"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="701608530"
Received: from unknown (HELO vgovind2-mobl3.fi.intel.com) ([10.237.66.43])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 09:04:14 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 19:03:46 +0300
Message-Id: <20230601160350.43888-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230601160350.43888-1-vinod.govindapillai@intel.com>
References: <20230601160350.43888-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 3/7] drm/i915: store the peak bw per QGV
 point
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In MTL onwards, pcode locks the GV point based on the peak BW
of a QGV point. So store the peak BW of all the QGV points.

v2: use DIV_ROUND_CLOSEST() for the peakBW calculation

Bspec: 64636

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c           | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_display_core.h | 2 ++
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 61b3babf2d83..b792d307e9d5 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -534,10 +534,14 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 
 			bi->deratedbw[j] = min(maxdebw,
 					       bw * (100 - sa->derating) / 100);
+			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
+							  num_channels *
+							  qi.channel_width, 8);
 
 			drm_dbg_kms(&dev_priv->drm,
-				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
-				    i, j, bi->num_planes, bi->deratedbw[j]);
+				    "BW%d / QGV %d: num_planes=%d deratedbw=%u peakbw: %u\n",
+				    i, j, bi->num_planes, bi->deratedbw[j],
+				    bi->peakbw[j]);
 		}
 
 		for (j = 0; j < qi.num_psf_points; j++) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 2209811eb29e..dd8e08c8598f 100644
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

