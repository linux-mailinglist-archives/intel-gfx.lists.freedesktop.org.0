Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E296570CE78
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 01:08:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4986210E3B0;
	Mon, 22 May 2023 23:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD1BE10E3B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 23:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684796907; x=1716332907;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/rA3vFg6J51kA64/KZyhJ9dMY4K4GO8g/rPt8gPx7QA=;
 b=ijYbWir9lKCC/BXuZaSB1wJLK8almRYEsKjPIWwy74WF976gU+E1uBKA
 7XSBHqsXrWhzSxr75ZQtTlLGdhD1S8CdLjpvwi5WOfEMo9l0KZewqVETt
 u+O3HApY3mYAmrOMZ9eZSzUGGnsChppw+mu+onIiSOnHO1XK6sxc/ijvt
 nItThX5p6aHGKtLEvqRfJJTb4yHvsGLK7mU9JtsiVCZkFqbvIPH/mpRSk
 03LBjzmNiceUWmNJraAJHPd7fgFwsj424xY13LoRWpr6PnFI0nWBCQnKd
 eU12zJQVtPjLPK/tixj+8l6r9ojEhgfZFVSxc24atqJJxsEV3zAeSmPuz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="353093836"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="353093836"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 16:08:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="773542629"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="773542629"
Received: from cavram-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.251.220.199])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 16:08:23 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 02:07:55 +0300
Message-Id: <20230522230759.153112-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230522230759.153112-1-vinod.govindapillai@intel.com>
References: <20230522230759.153112-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 3/7] drm/i915: store the peak bw per QGV point
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

v2: use DIV_ROUND_CLOSEST() for the peakBW calculation

Bspec: 64636

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c           | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_display_core.h | 2 ++
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index c8075a37c3ab..db117638d23b 100644
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

