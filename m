Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D308C78A55B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 07:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4FED10E171;
	Mon, 28 Aug 2023 05:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B444D10E125
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 05:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693201498; x=1724737498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5jT4gr6w3M0DgCR3CKdbeFt/FLnPScNtuLDK26ezu0s=;
 b=JmbHVmWBJ+CB6RiLbLtbVgSllA3NpDl7DjyZox+zwnV4wGQ/5WNz73GC
 X7IXj7v7pFrubPK66NpxGa10CMg2Wyq3lD+QyqZTx4v1+Yf1d0d5VhqFr
 q8R3AMfkubCao4ApE0NECVu03rZMVJ1iukro1eqjV5U1dh68JjocEuRDk
 fPiqb2dgYNgb65jDuR2aKRufXrd/3fB4Dd6ad9+x4/XF15YjlMset7KXP
 k2XlC69HGF10A4cgHvHpXaRZraxIN3Ypui2MklX57mGw7STzIt4r6Bq11
 9dhTLkXoiliUSAij5ktOafrBbAap4qjiTOoil94TzcB+1XH7Gxi0x9re+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="373906652"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="373906652"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 22:44:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="738128629"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="738128629"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 27 Aug 2023 22:44:56 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 11:13:01 +0530
Message-Id: <20230828054300.560559-9-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230828054300.560559-1-suraj.kandpal@intel.com>
References: <20230828054300.560559-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 8/8] drm/i915/display: Compare the readout
 dsc pps params
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

With the dsc config being readout and filled in crtc_state add
macros and use them to compare current and previous PPS param in
DSC.

--v2
-Remove version check [Jani]
-Remove dupe macro for dsc pipe compare and use the existing ones
[Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 ++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f6397462e4c2..83e1bc858b9f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5332,6 +5332,37 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(master_transcoder);
 	PIPE_CONF_CHECK_X(bigjoiner_pipes);
 
+	PIPE_CONF_CHECK_BOOL(dsc.config.block_pred_enable);
+	PIPE_CONF_CHECK_BOOL(dsc.config.convert_rgb);
+	PIPE_CONF_CHECK_BOOL(dsc.config.simple_422);
+	PIPE_CONF_CHECK_BOOL(dsc.config.native_422);
+	PIPE_CONF_CHECK_BOOL(dsc.config.native_420);
+	PIPE_CONF_CHECK_BOOL(dsc.config.vbr_enable);
+	PIPE_CONF_CHECK_I(dsc.config.line_buf_depth);
+	PIPE_CONF_CHECK_I(dsc.config.bits_per_component);
+	PIPE_CONF_CHECK_I(dsc.config.pic_width);
+	PIPE_CONF_CHECK_I(dsc.config.pic_height);
+	PIPE_CONF_CHECK_I(dsc.config.slice_width);
+	PIPE_CONF_CHECK_I(dsc.config.slice_height);
+	PIPE_CONF_CHECK_I(dsc.config.initial_dec_delay);
+	PIPE_CONF_CHECK_I(dsc.config.initial_xmit_delay);
+	PIPE_CONF_CHECK_I(dsc.config.scale_decrement_interval);
+	PIPE_CONF_CHECK_I(dsc.config.scale_increment_interval);
+	PIPE_CONF_CHECK_I(dsc.config.initial_scale_value);
+	PIPE_CONF_CHECK_I(dsc.config.first_line_bpg_offset);
+	PIPE_CONF_CHECK_I(dsc.config.flatness_min_qp);
+	PIPE_CONF_CHECK_I(dsc.config.flatness_max_qp);
+	PIPE_CONF_CHECK_I(dsc.config.slice_bpg_offset);
+	PIPE_CONF_CHECK_I(dsc.config.nfl_bpg_offset);
+	PIPE_CONF_CHECK_I(dsc.config.initial_offset);
+	PIPE_CONF_CHECK_I(dsc.config.final_offset);
+	PIPE_CONF_CHECK_I(dsc.config.rc_model_size);
+	PIPE_CONF_CHECK_I(dsc.config.rc_quant_incr_limit0);
+	PIPE_CONF_CHECK_I(dsc.config.rc_quant_incr_limit1);
+	PIPE_CONF_CHECK_I(dsc.config.slice_chunk_size);
+	PIPE_CONF_CHECK_I(dsc.config.second_line_bpg_offset);
+	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
+
 	PIPE_CONF_CHECK_I(dsc.compression_enable);
 	PIPE_CONF_CHECK_I(dsc.dsc_split);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
-- 
2.25.1

