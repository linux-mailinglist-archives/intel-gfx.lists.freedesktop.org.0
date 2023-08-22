Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6287839B2
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 08:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527E310E2E2;
	Tue, 22 Aug 2023 06:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB9810E2E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692684273; x=1724220273;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tuP3phajoIw0KelSTzyjcW4/HGWjR3w+iR9XsNVIcmM=;
 b=kVDKDtZ6nBK5VSXeSB5qvqPBJjdGIQNgcpasFG/CWcYp4I8Tco0DYhU2
 pF5m+KwEvEYxOri+6AmxxUBpU8Urk6ptbiV69swsE368aydNgFAhL8Kkc
 FV1RCnSt7KAb1uhQke0FQPYYQKYifMzLLceFU6ajD0fC+NoccpCEsF/D5
 zA5qG+yqTXNe1TmIffIqS2aA4JfpB3E1jrvc8wvX8F6hnAZrcnXSHMbba
 0xjLi/l4LrrX0Gzhk0hk7Tzq5E7ps0FUr4JdrzDJRNiSwtTr/nGREu4xx
 /cs43jwKRSiq2GY4UVNF1I7fD7z6ptCAWKIb1pVA7MQXm7/cilbivSAQO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="354119392"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="354119392"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 23:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="806163152"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="806163152"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 21 Aug 2023 23:04:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 11:32:41 +0530
Message-Id: <20230822060240.413101-9-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230822060240.413101-1-suraj.kandpal@intel.com>
References: <20230822060240.413101-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 8/8] drm/i915/display: Compare the readout
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
index db3c26e013e3..309a4c94b7ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5377,6 +5377,37 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
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

