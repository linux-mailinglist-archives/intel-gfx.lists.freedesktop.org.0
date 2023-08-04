Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8C776FC0F
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 10:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32FD010E6B7;
	Fri,  4 Aug 2023 08:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4934310E250
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 08:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691137833; x=1722673833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dUNjmUduThfd+BiwPBKNdtSVwrJJ0i8nn6PDESMqrDI=;
 b=nJrjOw2IH3PGbcBpahWhaNOLORi42olm97DFUX+siLv7zrTsCQxoyNWo
 3+n2jL9saNfB/YiaCHAWSQ3Yh/2XJehR5AVYGzmXQSjqCIuKRytwyWiEn
 j4eqcM1bAMV4zme4WgV5v/iMWIT70ahWbHofCIbqFCHFHfEsm4bX27/ro
 6I0FuvoDGrt27+dG/Xb8Is/k4buuP6pYJxuHF6IVRhvYYeNmOWl24iUA/
 Ur9gUDB8tEEh4clEHjki38SEhEnQKAFxA3SHUjGIrQ2G7hQs/j4t+7+F7
 MvxlwKbMNPt2M+gAN5x9APrbNiK+g3i0RM7amkTfvqpjXOkNiDg+vTilv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="456473967"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="456473967"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 01:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="853650283"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="853650283"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga004.jf.intel.com with ESMTP; 04 Aug 2023 01:30:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Aug 2023 13:58:53 +0530
Message-Id: <20230804082852.3842668-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230803160207.3837263-1-suraj.kandpal@intel.com>
References: <20230803160207.3837263-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/vdsc: Fix first_line_bpg_offset
 calculation
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
Cc: juha-pekka.heikkila@intel.com, william.tseng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On checking DSC1.1 Errata and DSC 1.2 spec the current formula
we were using was incorrect to calculate first_line_bpg_offset.
The new fixed formula is derived from C model.

--v2
-Use clamp function in linux/minmax.h [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 9d76c2756784..e3df57857665 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -6,6 +6,7 @@
  *         Manasi Navare <manasi.d.navare@intel.com>
  */
 #include <linux/limits.h>
+#include <linux/minmax.h>
 
 #include <drm/display/drm_dsc_helper.h>
 
@@ -80,13 +81,19 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 	int bpc = vdsc_cfg->bits_per_component;
 	int bpp = vdsc_cfg->bits_per_pixel >> 4;
 	int qp_bpc_modifier = (bpc - 8) * 2;
+	int uncompressed_bpg_rate;
+	int first_line_bpg_offset;
 	u32 res, buf_i, bpp_i;
 
 	if (vdsc_cfg->slice_height >= 8)
-		vdsc_cfg->first_line_bpg_offset =
-			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
+		first_line_bpg_offset =
+			12 + (9 * min(34, vdsc_cfg->slice_height - 8)) / 100;
 	else
-		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
+		first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
+
+	uncompressed_bpg_rate = (3 * bpc + (vdsc_cfg->convert_rgb ? 0 : 2)) * 3;
+	vdsc_cfg->first_line_bpg_offset = clamp(first_line_bpg_offset, 0,
+						uncompressed_bpg_rate - 3 * bpp);
 
 	/*
 	 * According to DSC 1.2 spec in Section 4.1 if native_420 is set:
-- 
2.25.1

