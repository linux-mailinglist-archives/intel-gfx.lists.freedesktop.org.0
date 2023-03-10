Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C9C6B4629
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 15:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC3A910E8E9;
	Fri, 10 Mar 2023 14:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA40110E03C
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 14:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678459238; x=1709995238;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UP1efgxhHT+v0YYCVjDOsiZRSIh9jFRAJzkTQ2fotgQ=;
 b=TZenMcCyErYCAJXWHkpqYV5+hc3TAGNSX7dcwWjXlRxjqffIunVlSGJl
 sXNulwJ37y7Gqs+qInWJO+VwVzNIa2tqkLF296se94ZeNi1l74f+4X+5i
 rRCo4XFxZ8RblMhaZIuorS3WvphMYXFJ70TrTwFNxSrXBkMvSHZWdMOip
 PXELgAMkxeqxX6Mz3S1tdRRxPn/yUlbRHclvISmNw5gg/fGH3IxI5D6Ix
 lHsjF8RKKkPV07YmRhWvN6b5bPXF6w4VkbYCvKcsvqh7oMQ9bcMH2npnH
 tGVMePv/TbOsli1eYkRg3NGHd7yWX4n5nxnPLGeMIXeXRVQ8N+l6isq97 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="325089255"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="325089255"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 06:40:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="680228482"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="680228482"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga007.fm.intel.com with ESMTP; 10 Mar 2023 06:40:36 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Mar 2023 16:40:35 +0200
Message-Id: <20230310144035.30754-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Power management SAGV/QGV calculation
 rounding fix
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently in our bandwidth calculations for QGV
points we round up the calculations.
Recently there was an update to BSpec, recommending
to floor those calculations.
The reasoning behind this was that, overestimating
BW demand with that rounding can cause SAGV to use
next QGV point, even though the less demanding could
be used, thus resulting in waste of power.

BSpec: 64636

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 202321ffbe2a..8723ddd4d568 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -50,7 +50,7 @@ static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_priv,
 		dclk_reference = 6; /* 6 * 16.666 MHz = 100 MHz */
 	else
 		dclk_reference = 8; /* 8 * 16.666 MHz = 133 MHz */
-	sp->dclk = DIV_ROUND_UP((16667 * dclk_ratio * dclk_reference) + 500, 1000);
+	sp->dclk = ((16667 * dclk_ratio * dclk_reference) + 500) / 1000;
 
 	val = intel_uncore_read(&dev_priv->uncore, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
 	if (val & DG1_GEAR_TYPE)
@@ -87,7 +87,7 @@ static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_priv,
 		return ret;
 
 	dclk = val & 0xffff;
-	sp->dclk = DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv) > 11 ? 500 : 0), 1000);
+	sp->dclk = ((16667 * dclk) + (DISPLAY_VER(dev_priv) > 11 ? 500 : 0)) / 1000;
 	sp->t_rp = (val & 0xff0000) >> 16;
 	sp->t_rcd = (val & 0xff000000) >> 24;
 
@@ -179,7 +179,7 @@ static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
 	val2 = intel_uncore_read(&dev_priv->uncore,
 				 MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
 	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
-	sp->dclk = DIV_ROUND_UP((16667 * dclk), 1000);
+	sp->dclk = (16667 * dclk) / 1000;
 	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
 	sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
 
@@ -425,7 +425,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 			 */
 			ct = max_t(int, sp->t_rc, sp->t_rp + sp->t_rcd +
 				   (clpchgroup - 1) * qi.t_bl + sp->t_rdpre);
-			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
+			bw = (sp->dclk * clpchgroup * 32 * num_channels) / ct;
 
 			bi->deratedbw[j] = min(maxdebw,
 					       bw * (100 - sa->derating) / 100);
@@ -527,7 +527,7 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 			 */
 			ct = max_t(int, sp->t_rc, sp->t_rp + sp->t_rcd +
 				   (clpchgroup - 1) * qi.t_bl + sp->t_rdpre);
-			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
+			bw = (sp->dclk * clpchgroup * 32 * num_channels) / ct;
 
 			bi->deratedbw[j] = min(maxdebw,
 					       bw * (100 - sa->derating) / 100);
-- 
2.37.3

