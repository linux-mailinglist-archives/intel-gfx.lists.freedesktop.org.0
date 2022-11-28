Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5593163A5FA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 11:19:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C6910E2D5;
	Mon, 28 Nov 2022 10:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E76210E2CC
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 10:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669630724; x=1701166724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5+qqqm/IXAeyxi/uaKE+FexHYQCr9aKUZDgfC8kmGqk=;
 b=XNYnNq9uu7jh0nrx4t0gv4B73UaEtIhCrO8rr6wrR0nWDeEi7z9LVwLw
 4dPCsAV7hS0R3zNtwSUk80ai4PB5f3EBvZ3z89DY+LHOei50KwnWV/uJ9
 bKBAkYa0ctoDW1G9tqLfoYDhnoWFUzCSmjqmFc/2h0Fd9Ytpyg9V8754s
 vy8ExcaLA3ZO69YHA47vgEzUg2gFBCNJ6WTuEMsRfaCy2s2EyIOOFHdZt
 bdOQ+DVaWVlLnxqby8yq892AoKBKsjDPPs6dn9Z0zLR4gLMPsSOFEnSha
 5Pl46DiHGoL7axdWPYwZbudR7S/u+ibfi6arjnQKeLNLKBERLl6U/gW8l A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="294500148"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="294500148"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:18:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="749319809"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="749319809"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:18:41 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 15:49:19 +0530
Message-Id: <20221128101922.217217-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
References: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/11] drm/i915/dsc/mtl: Add support for
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

Consider the fractional bpp while reading the qp values.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_qp_tables.c |  3 ---
 drivers/gpu/drm/i915/display/intel_vdsc.c      | 12 +++++++++---
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c b/drivers/gpu/drm/i915/display/intel_qp_tables.c
index 6f8e4ec5c0fb..a0094287dc81 100644
--- a/drivers/gpu/drm/i915/display/intel_qp_tables.c
+++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
@@ -21,9 +21,6 @@
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
index 73f9ea266533..d24ca8828a1d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -381,6 +381,7 @@ calculate_rc_params(struct rc_parameters *rc,
 {
 	int bpc = vdsc_cfg->bits_per_component;
 	int bpp = vdsc_cfg->bits_per_pixel >> 4;
+	int fractional_bits = vdsc_cfg->bits_per_pixel & 0xf;
 	static const s8 ofs_und6[] = {
 		0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
 	};
@@ -421,7 +422,13 @@ calculate_rc_params(struct rc_parameters *rc,
 	rc->rc_quant_incr_limit0 = 11 + qp_bpc_modifier;
 	rc->rc_quant_incr_limit1 = 11 + qp_bpc_modifier;
 
-	bpp_i  = (2 * (bpp - 6));
+	/*
+	 * QP table rows have values in increment of 0.5.
+	 * So 6.0 bpp to 6.4375 will have index 0, 6.5 to 6.9375 will have index 1,
+	 * and so on.
+	 * 0.5 represented as 0x8 in U6.4 format.
+	 */
+	bpp_i  = ((bpp - 6) + (fractional_bits < 0x8 ? 0 : 1));
 	for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
 		/* Read range_minqp and range_max_qp from qp tables */
 		rc->rc_range_params[buf_i].range_min_qp =
@@ -469,8 +476,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	/* Gen 11 does not support VBR */
 	vdsc_cfg->vbr_enable = false;
 
-	/* Gen 11 only supports integral values of bpp */
-	vdsc_cfg->bits_per_pixel = compressed_bpp << 4;
+	vdsc_cfg->bits_per_pixel = pipe_config->dsc.compressed_bpp;
 	vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
 
 	for (i = 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
-- 
2.25.1

