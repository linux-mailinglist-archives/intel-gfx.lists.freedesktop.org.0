Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F8D78407E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 14:14:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A50910E345;
	Tue, 22 Aug 2023 12:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A140310E343
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 12:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692706436; x=1724242436;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z64SLLOk0U3grG4XTTPfbZvlmDR4WQUAAeNCgkCqcgQ=;
 b=AaRhAilObbQcI9sVY7SmWOBp0kzEWcDNFS6LOE7wyFjvZmbLmTk1sqnv
 +hqUYJH55CrzpfrZflS7+W7at68KyA+PDn/D4/6Uu1xbCzgjZUdcEDYwR
 tqIseJ91PLhDj4QqF9MDWzBNjDbnnJhwICoV3o7kcp23ixHt+EeZqlvQd
 UUvmy0+cyFF5y9TvTNkBKiG4CQvALqTt42ud1foEUmSZWnBPkBCUk3ufy
 5+aQ4YvL/vL+DE1EVhfFgfyLIH5YcsB6KzEmEsqfGi7y1177eeOnAcY2B
 9EkxYDjS6I6DaLrDw0JtSDMsAA9pP+WBM+y/c+IAwcqWqzV6pwv78P5MK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="440230323"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="440230323"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771335287"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="771335287"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 17:40:30 +0530
Message-Id: <20230822121033.597447-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/dsc/mtl: Add support for
 fractional bpp
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
Cc: manasi.d.navare@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

Consider the fractional bpp while reading the qp values.

v2: Use helpers for fractional, integral bits of bits_per_pixel.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_qp_tables.c    |  3 ---
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 23 +++++++++++++++----
 2 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c b/drivers/gpu/drm/i915/display/intel_qp_tables.c
index 543cdc46aa1d..600c815e37e4 100644
--- a/drivers/gpu/drm/i915/display/intel_qp_tables.c
+++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
@@ -34,9 +34,6 @@
  * These qp tables are as per the C model
  * and it has the rows pointing to bpps which increment
  * in steps of 0.5
- * We do not support fractional bpps as of today,
- * hence we would skip the fractional bpps during
- * our references for qp calclulations.
  */
 static const u8 rc_range_minqp444_8bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP444_8BPC_MAX_NUM_BPP] = {
 	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 2dc6ea82c024..4bd570fb0ab2 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -77,8 +77,9 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config *vdsc_cfg, int buf,
 static void
 calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 {
+	int fractional_bits = dsc_fractional_compressed_bpp(vdsc_cfg->bits_per_pixel);
+	int bpp = dsc_integral_compressed_bpp(vdsc_cfg->bits_per_pixel);
 	int bpc = vdsc_cfg->bits_per_component;
-	int bpp = vdsc_cfg->bits_per_pixel >> 4;
 	int qp_bpc_modifier = (bpc - 8) * 2;
 	int uncompressed_bpg_rate;
 	int first_line_bpg_offset;
@@ -148,7 +149,13 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 		static const s8 ofs_und8[] = {
 			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
 		};
-
+	/*
+	 * For 420 format since bits_per_pixel (bpp) is set to target bpp * 2,
+	 * QP table values for target bpp 4.0 to 4.4375 (rounded to 4.0) are
+	 * actually for bpp 8 to 8.875 (rounded to 4.0 * 2 i.e 8).
+	 * Similarly values for target bpp 4.5 to 4.8375 (rounded to 4.5)
+	 * are for bpp 9 to 9.875 (rounded to 4.5 * 2 i.e 9), and so on.
+	 */
 		bpp_i  = bpp - 8;
 		for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
 			u8 range_bpg_offset;
@@ -191,7 +198,14 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
 			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
 		};
 
-		bpp_i  = (2 * (bpp - 6));
+		/*
+		 * QP table rows have values in increment of 0.5.
+		 * So 6.0 bpp to 6.4375 will have index 0, 6.5 to 6.9375 will have index 1,
+		 * and so on.
+		 * 0.5 represented as 0x8 in U6.4 format.
+		 */
+		bpp_i  = ((bpp - 6) + (fractional_bits < 0x8 ? 0 : 1));
+
 		for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
 			u8 range_bpg_offset;
 
@@ -279,8 +293,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	/* Gen 11 does not support VBR */
 	vdsc_cfg->vbr_enable = false;
 
-	/* Gen 11 only supports integral values of bpp */
-	vdsc_cfg->bits_per_pixel = compressed_bpp << 4;
+	vdsc_cfg->bits_per_pixel = pipe_config->dsc.compressed_bpp;
 
 	/*
 	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set
-- 
2.40.1

