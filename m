Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10F376EEF9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 18:04:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 391BA10E626;
	Thu,  3 Aug 2023 16:04:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B4B10E626
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 16:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691078666; x=1722614666;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hMZ2hcMvnXQmeNj3PjuYI5lHNFRN8y/iXZmc2mWFjhw=;
 b=B02XGGcmmqTPzxWqgXREY045JAErBcQOTN8ABDEA0nUJ8054RFw/XLj1
 pKgQn26Ke3+KCExa4Td93zQeqjXnIUExi7Wk3M2ir/CVegGaGS+AH69MT
 ZztfiJztCqyvu6UJwo4SfXxDMKJ7VVBq9D/ejyP0LTwpZeEqlpFVad433
 l5+MS4+XKwa2YCgBlZIc3aL3XtiJR7uSkY4BzKF1sFWTaL4Ja/jmP/OaI
 HhYaZaon8f6mLKLh9qF+VMigldFtjallCWPB32RCQ7yxZ4/gbz8Ei1wy4
 DnkbZ08gG+U1hAGIlKaztHLrroe1rRGMqLTYp/yBc1Du4ZC/GNC6k0XyM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="369913474"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="369913474"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 09:03:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="679525286"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="679525286"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga003.jf.intel.com with ESMTP; 03 Aug 2023 09:03:39 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Aug 2023 21:32:07 +0530
Message-Id: <20230803160207.3837263-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 9d76c2756784..a344c6ab8767 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -65,6 +65,9 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config *vdsc_cfg, int buf,
 		intel_lookup_range_max_qp(bpc, buf, bpp, vdsc_cfg->native_420);
 }
 
+#define CLAMP_TO(val, _min, _max) \
+	max(_min, min(val, _max))
+
 /*
  * We are using the method provided in DSC 1.2a C-Model in codec_main.c
  * Above method use a common formula to derive values for any combination of DSC
@@ -80,13 +83,19 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
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
+	vdsc_cfg->first_line_bpg_offset = CLAMP_TO(first_line_bpg_offset, 0,
+						   uncompressed_bpg_rate - 3 * bpp);
 
 	/*
 	 * According to DSC 1.2 spec in Section 4.1 if native_420 is set:
-- 
2.25.1

