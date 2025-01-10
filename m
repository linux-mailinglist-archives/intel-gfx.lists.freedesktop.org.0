Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2132EA0864F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 05:53:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B871E10EFB2;
	Fri, 10 Jan 2025 04:52:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HOVIbgob";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 689CC10EFA2;
 Fri, 10 Jan 2025 04:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736484777; x=1768020777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oFls5X9MnxN2PCPMNuDN1CjITtJSSMOC16DV4bHlLnw=;
 b=HOVIbgob4xkJCwi6Z5iHdEQ6Zq7WQLyc0Hfbu15Amh/nJCqedoiIDRL+
 SWm+yPGrnaUuLDM8z+G4ipzHc+5ZRnx72AWQ56WYJJbdW//ePF5qKOJ1z
 5m9kxBbMBQB3z70G3sRuZCid/ErFhY+x2M0iFChfIKWfg50MsO8pt9Jf7
 F+QgjJJ+eHZ3Jky92hcjke1FMlgrzAk6mPAWPYuPlv3V2EWh69nF9Cdhc
 L86ocOjbFgBnNF5e3qIOvgY9DdZBwk//iYXhlBa+VSrLPCT9kBNPKihJd
 sJQlTLTMgoPQfC5PQfARiAkWi/qRM9JYG5dkOK1YnCWnNJ+Zr7Qovs4rF A==;
X-CSE-ConnectionGUID: S8+aWYx4TxmC6wr3Yz846A==
X-CSE-MsgGUID: AxTgj2MkQxe7LeMEKn6ITg==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36930868"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36930868"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 20:52:57 -0800
X-CSE-ConnectionGUID: 8D9YQvVaTLqWC5HPVtYRSw==
X-CSE-MsgGUID: VL+NFWXQT1a+7KjgDdRulA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="108619993"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 20:52:55 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [RESEND 1/2] drm/i915/dsc: Use helper to calculate range_bpg_offset
Date: Fri, 10 Jan 2025 10:11:30 +0530
Message-ID: <20250110044131.3162682-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110044131.3162682-1-ankit.k.nautiyal@intel.com>
References: <20250110044131.3162682-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 59 ++++++++++++-----------
 1 file changed, 30 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index b355c479eda3..df07090c84eb 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -66,6 +66,13 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config *vdsc_cfg, int buf,
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
@@ -83,7 +90,7 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 	int qp_bpc_modifier = (bpc - 8) * 2;
 	int uncompressed_bpg_rate;
 	int first_line_bpg_offset;
-	u32 res, buf_i, bpp_i;
+	u32 buf_i, bpp_i;
 
 	if (vdsc_cfg->slice_height >= 8)
 		first_line_bpg_offset =
@@ -163,23 +170,19 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
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
@@ -215,21 +218,19 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
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
2.45.2

