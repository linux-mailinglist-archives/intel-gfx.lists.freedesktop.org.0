Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 938BC74D303
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 12:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA8F10E25F;
	Mon, 10 Jul 2023 10:11:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BB4010E25F
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 10:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688983864; x=1720519864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0hrNnBtvo7y/x0gCirrYwjIlg9IJW/8IXPgr2K1QZpg=;
 b=W+ahPfwNN7B2Ov/vI2x9FyeMQKl6ES4cuk4zgbthQJktbWehLEF3t1zp
 1YtD2bylj8NWWDiyKT5kNOV5+bY3ow9Kf24z4bbGqq/AhnVJACPAOAltn
 3LaMX47i7eMSf7HQV6iGjfM7ezUFk4izfYhe/En+Z4Z4fgyTUaDZpOVOo
 QqVnY0gsyz8b0FScRrXMCEbrnrOLQSu0T/xwptCM7yUtIZILnm/nmNHUt
 jexbZS2AWY6+gj0QZutIacCh+eNjHywS8r5l/Bdzntsj9uzGET6HX+fSv
 RHFDB2xmp0cvSwAstO89K43SGj40TfhW87yaHCohJR12Z4QwHbpXXWCcM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="343897163"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="343897163"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 03:11:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="723955112"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="723955112"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jul 2023 03:11:02 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jul 2023 15:39:11 +0530
Message-Id: <20230710100911.2736389-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230710100911.2736389-1-suraj.kandpal@intel.com>
References: <20230710100911.2736389-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/display: Compare the readout dsc
 pps params
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 55 ++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eed01957bdb9..5c1596d7cd92 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5007,6 +5007,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 {
 	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	const struct drm_dsc_config *dsc_current_config = &current_config->dsc.config;
+	const struct drm_dsc_config *dsc_pipe_config = &pipe_config->dsc.config;
 	bool ret = true;
 	bool fixup_inherited = fastset &&
 		current_config->inherited && !pipe_config->inherited;
@@ -5202,6 +5204,26 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #define PIPE_CONF_QUIRK(quirk) \
 	((current_config->quirks | pipe_config->quirks) & (quirk))
 
+#define PIPE_DSC_CONF_CHECK_I(name) do { \
+	if (dsc_current_config->name != dsc_pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %i, found %i)", \
+				     dsc_current_config->name, \
+				     dsc_pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)
+
+#define PIPE_DSC_CONF_CHECK_BOOL(name) do { \
+	if (dsc_current_config->name != dsc_pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
+				     "(expected %s, found %s)", \
+				     str_yes_no(dsc_current_config->name), \
+				     str_yes_no(dsc_pipe_config->name)); \
+		ret = false; \
+	} \
+} while (0)
+
 	PIPE_CONF_CHECK_I(hw.enable);
 	PIPE_CONF_CHECK_I(hw.active);
 
@@ -5378,6 +5400,39 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(master_transcoder);
 	PIPE_CONF_CHECK_X(bigjoiner_pipes);
 
+	PIPE_DSC_CONF_CHECK_BOOL(block_pred_enable);
+	PIPE_DSC_CONF_CHECK_BOOL(convert_rgb);
+	PIPE_DSC_CONF_CHECK_BOOL(simple_422);
+	PIPE_DSC_CONF_CHECK_BOOL(native_422);
+	PIPE_DSC_CONF_CHECK_BOOL(native_420);
+	PIPE_DSC_CONF_CHECK_BOOL(vbr_enable);
+	PIPE_DSC_CONF_CHECK_I(line_buf_depth);
+	PIPE_DSC_CONF_CHECK_I(bits_per_component);
+	PIPE_DSC_CONF_CHECK_I(pic_width);
+	PIPE_DSC_CONF_CHECK_I(pic_height);
+	PIPE_DSC_CONF_CHECK_I(slice_width);
+	PIPE_DSC_CONF_CHECK_I(slice_height);
+	PIPE_DSC_CONF_CHECK_I(initial_dec_delay);
+	PIPE_DSC_CONF_CHECK_I(initial_xmit_delay);
+	PIPE_DSC_CONF_CHECK_I(scale_decrement_interval);
+	PIPE_DSC_CONF_CHECK_I(scale_increment_interval);
+	PIPE_DSC_CONF_CHECK_I(initial_scale_value);
+	PIPE_DSC_CONF_CHECK_I(first_line_bpg_offset);
+	PIPE_DSC_CONF_CHECK_I(flatness_min_qp);
+	PIPE_DSC_CONF_CHECK_I(flatness_max_qp);
+	PIPE_DSC_CONF_CHECK_I(slice_bpg_offset);
+	PIPE_DSC_CONF_CHECK_I(nfl_bpg_offset);
+	PIPE_DSC_CONF_CHECK_I(initial_offset);
+	PIPE_DSC_CONF_CHECK_I(final_offset);
+	PIPE_DSC_CONF_CHECK_I(rc_model_size);
+	PIPE_DSC_CONF_CHECK_I(rc_quant_incr_limit0);
+	PIPE_DSC_CONF_CHECK_I(rc_quant_incr_limit1);
+	PIPE_DSC_CONF_CHECK_I(slice_chunk_size);
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		PIPE_DSC_CONF_CHECK_I(second_line_bpg_offset);
+		PIPE_DSC_CONF_CHECK_I(nsl_bpg_offset);
+	}
+
 	PIPE_CONF_CHECK_I(dsc.compression_enable);
 	PIPE_CONF_CHECK_I(dsc.dsc_split);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
-- 
2.25.1

