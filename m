Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 273657C9EB0
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 07:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1166110E116;
	Mon, 16 Oct 2023 05:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4944610E113
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 05:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697434006; x=1728970006;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hk44WpbdyvbCgHYPEao/8NnVOEn6HYyQfxhUVzQPnWs=;
 b=PD6409rsgAPaNblWG1DCJhJPXx4SWNNdx+C44V6pNDOLzWAZcrrMzL1I
 yk9YWSoCLmvYx59vJI6tIBGSpTKXzwae0Z5O/4uc/IzWlWK0YedGbUIHb
 HbUtNGued4NDo5YNYLzWFDDweX5bWoawoYkfOT0yAvOZTT7IezS7wtW/e
 STcxVagAedXVmnIn0xzZ5qXMW27YN8fUECwvkyMYaeJpiWqzMmdhmR9Ao
 EIygQN54rZIYtssJrUCkqynmmIOVA/0JgPAdp9c24W2NC9/ak1h7ZzGnI
 c41V+Ap+Y01zFelog5y3yLBc4PaNyanZM1ltWSC0aYhK6QTT5bXXBmwtx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="382673613"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="382673613"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2023 22:26:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="759262705"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="759262705"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2023 22:26:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 10:50:37 +0530
Message-Id: <20231016052038.1905913-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231016052038.1905913-1-ankit.k.nautiyal@intel.com>
References: <20231016052038.1905913-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dsc: Use helper to calculate
 range_bpg_offset
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

We get range_bpg_offset for different bpps based on
linear-interpolation from values given for nearby bpps.
Use a helper to get these values.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 59 ++++++++++++-----------
 1 file changed, 30 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 6757dbae9ee5..708c6d4da0a2 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -65,6 +65,13 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config *vdsc_cfg, int buf,
 		intel_lookup_range_max_qp(bpc, buf, bpp, vdsc_cfg->native_420);
 }
 
+static int
+get_range_bpg_offset(int bpp_low, int offset_low, int bpp_high, int offset_high, int bpp)
+{
+	return offset_low + DIV_ROUND_UP((offset_high - offset_low) * (bpp - bpp_low),
+					 (bpp_low - bpp_high));
+}
+
 /*
  * We are using the method provided in DSC 1.2a C-Model in codec_main.c
  * Above method use a common formula to derive values for any combination of DSC
@@ -82,7 +89,7 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 	int qp_bpc_modifier = (bpc - 8) * 2;
 	int uncompressed_bpg_rate;
 	int first_line_bpg_offset;
-	u32 res, buf_i, bpp_i;
+	u32 buf_i, bpp_i;
 
 	if (vdsc_cfg->slice_height >= 8)
 		first_line_bpg_offset =
@@ -156,23 +163,19 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 			intel_vdsc_set_min_max_qp(vdsc_cfg, buf_i, bpp_i);
 
 			/* Calculate range_bpg_offset */
-			if (bpp <= 8) {
+			if (bpp <= 8)
 				range_bpg_offset = ofs_und4[buf_i];
-			} else if (bpp <= 10) {
-				res = DIV_ROUND_UP(((bpp - 8) *
-						    (ofs_und5[buf_i] - ofs_und4[buf_i])), 2);
-				range_bpg_offset = ofs_und4[buf_i] + res;
-			} else if (bpp <= 12) {
-				res = DIV_ROUND_UP(((bpp - 10) *
-						    (ofs_und6[buf_i] - ofs_und5[buf_i])), 2);
-				range_bpg_offset = ofs_und5[buf_i] + res;
-			} else if (bpp <= 16) {
-				res = DIV_ROUND_UP(((bpp - 12) *
-						    (ofs_und8[buf_i] - ofs_und6[buf_i])), 4);
-				range_bpg_offset = ofs_und6[buf_i] + res;
-			} else {
+			else if (bpp <= 10)
+				range_bpg_offset = get_range_bpg_offset(8, ofs_und4[buf_i],
+									10, ofs_und5[buf_i], bpp);
+			else if (bpp <= 12)
+				range_bpg_offset = get_range_bpg_offset(10, ofs_und5[buf_i],
+									12, ofs_und6[buf_i], bpp);
+			else if (bpp <= 16)
+				range_bpg_offset = get_range_bpg_offset(12, ofs_und6[buf_i],
+									16, ofs_und8[buf_i], bpp);
+			else
 				range_bpg_offset = ofs_und8[buf_i];
-			}
 
 			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
 				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
@@ -198,21 +201,19 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 			intel_vdsc_set_min_max_qp(vdsc_cfg, buf_i, bpp_i);
 
 			/* Calculate range_bpg_offset */
-			if (bpp <= 6) {
+			if (bpp <= 6)
 				range_bpg_offset = ofs_und6[buf_i];
-			} else if (bpp <= 8) {
-				res = DIV_ROUND_UP(((bpp - 6) *
-						    (ofs_und8[buf_i] - ofs_und6[buf_i])), 2);
-				range_bpg_offset = ofs_und6[buf_i] + res;
-			} else if (bpp <= 12) {
-				range_bpg_offset = ofs_und8[buf_i];
-			} else if (bpp <= 15) {
-				res = DIV_ROUND_UP(((bpp - 12) *
-						    (ofs_und15[buf_i] - ofs_und12[buf_i])), 3);
-				range_bpg_offset = ofs_und12[buf_i] + res;
-			} else {
+			else if (bpp <= 8)
+				range_bpg_offset = get_range_bpg_offset(6, ofs_und6[buf_i],
+									8, ofs_und8[buf_i], bpp);
+			else if (bpp <= 12)
+				range_bpg_offset = get_range_bpg_offset(8, ofs_und8[buf_i],
+									12, ofs_und12[buf_i], bpp);
+			else if (bpp <= 15)
+				range_bpg_offset = get_range_bpg_offset(12, ofs_und12[buf_i],
+									15, ofs_und15[buf_i], bpp);
+			else
 				range_bpg_offset = ofs_und15[buf_i];
-			}
 
 			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
 				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
-- 
2.40.1

