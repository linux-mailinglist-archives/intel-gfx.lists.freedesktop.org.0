Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CE27518CD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 08:31:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B785610E191;
	Thu, 13 Jul 2023 06:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DFE110E5A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 06:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689229872; x=1720765872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ekshvkrcL/eHvKwMQh+tISaq5nudK8LILs/NczX6dbM=;
 b=lriqOgAgmQJy8mCEO/+vYixSLqZ72AgGYmvuvf6rF7Y2TcxJg7kfCNgZ
 +e1IDeoo3R2NK21o6XIafecunDwxp3k9ROj8eN4lQOf/w3cpi/kZeSW3R
 q9dXB90gBbHTCOKYqS8Q42G/NlXD2KHrBqo1jzKFfGu5r3QDXP36ytvya
 DIx1giIV+SH276jjRBxNLW67fx0XeMvv3wLYuFxZv7LEg9UKBRS2dtBdp
 iaxPYelY3lZf0k+L0ZfPuhKZzU/7rpPYmxxBFRFMYaPnnD+TKwgMuhyM7
 Fz++jdZRvDLU22L/qGVJ5SThD4h4zbmRNjlA4gE6JT/PQKtMrn8722C/3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="365133779"
X-IronPort-AV: E=Sophos;i="6.01,201,1684825200"; d="scan'208";a="365133779"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 23:31:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="699135448"
X-IronPort-AV: E=Sophos;i="6.01,201,1684825200"; d="scan'208";a="699135448"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 12 Jul 2023 23:31:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jul 2023 11:59:24 +0530
Message-Id: <20230713062924.2894736-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713062924.2894736-1-suraj.kandpal@intel.com>
References: <20230713062924.2894736-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915/display: Compare the readout
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
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 ++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 43cba98f7753..9c407ceb082e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5376,6 +5376,37 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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

