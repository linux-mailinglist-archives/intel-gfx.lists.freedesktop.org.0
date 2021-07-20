Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA33A3CF4C0
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 08:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A3BA6E122;
	Tue, 20 Jul 2021 06:49:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D7B06E122
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 06:49:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="232965324"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="232965324"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 23:49:09 -0700
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="657368709"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 23:49:08 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jul 2021 12:19:07 +0530
Message-Id: <20210720064907.9771-4-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210720064907.9771-1-vandita.kulkarni@intel.com>
References: <20210720064907.9771-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v7 3/3] drm/i915/display/dsc: Force dsc BPP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Set DSC BPP to the value forced through
debugfs. It can go from bpc to bpp-1.

v2: Use default dsc bpp when we are just
    doing force_dsc_en, use default dsc bpp
    for invalid force_dsc_bpp values. (Jani)

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Reviewed-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5b52beaddada..c386ef8eb200 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1274,6 +1274,23 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 							       pipe_config->pipe_bpp);
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
+
+	/* As of today we support DSC for only RGB */
+	if (intel_dp->force_dsc_bpp) {
+		if (intel_dp->force_dsc_bpp >= 8 &&
+		    intel_dp->force_dsc_bpp < pipe_bpp) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "DSC BPP forced to %d",
+				    intel_dp->force_dsc_bpp);
+			pipe_config->dsc.compressed_bpp =
+						intel_dp->force_dsc_bpp;
+		} else {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Invalid DSC BPP %d",
+				    intel_dp->force_dsc_bpp);
+		}
+	}
+
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
 	 * is greater than the maximum Cdclock and if slice count is even
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
