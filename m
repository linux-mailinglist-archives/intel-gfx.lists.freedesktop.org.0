Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC77464417D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:46:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D157E10E321;
	Tue,  6 Dec 2022 10:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9653E10E31E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670323554; x=1701859554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/xhq6Kx6i5/ffy7/EUZ6R6ljspo03tL/Esl3WvwFHdY=;
 b=MkNh6B+gOQm3blCgU9454d8nj3qaHiyV263gl7LGENXu3rGmS4YI6m5U
 kT2Rm/tGBNUEr7HPfgXT864M0yZ+deWd2YnTgKtzqBQKFKzRuBotbN4BH
 wJNDh2dh3yvrgIGsQIspxxA5T5LT6fQbfVNYzYYEEHq9fLtF4MNuruBR0
 i9Q/g7R3Bz1v+EGfo7qHvirPYz1SfeJkme3eKNfXQrM6Db4eVsfPrH1zm
 /1FH8UwnbU5XtHrKxpkooodukLeEaHZgWPTXVmkrRnrCn9QOOuPW2IOd3
 N6AacwCH4s9/fMc+wV8EFQQ2/nHlqb6Xk5dMdjbT2fKgcebtmQZitCLu5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317735430"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="317735430"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714758021"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="714758021"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:50 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 16:16:27 +0530
Message-Id: <20221206104630.1263525-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
References: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 09/12] drm/i915/dsc/mtl: Add support for
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
index ed5c85229414..3e39f682b19f 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -378,6 +378,7 @@ calculate_rc_params(struct rc_parameters *rc,
 {
 	int bpc = vdsc_cfg->bits_per_component;
 	int bpp = vdsc_cfg->bits_per_pixel >> 4;
+	int fractional_bits = vdsc_cfg->bits_per_pixel & 0xf;
 	static const s8 ofs_und6[] = {
 		0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
 	};
@@ -418,7 +419,13 @@ calculate_rc_params(struct rc_parameters *rc,
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
@@ -466,8 +473,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	/* Gen 11 does not support VBR */
 	vdsc_cfg->vbr_enable = false;
 
-	/* Gen 11 only supports integral values of bpp */
-	vdsc_cfg->bits_per_pixel = compressed_bpp << 4;
+	vdsc_cfg->bits_per_pixel = pipe_config->dsc.compressed_bpp;
 	vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
 
 	for (i = 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
-- 
2.25.1

