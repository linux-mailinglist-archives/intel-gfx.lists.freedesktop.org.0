Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2194E3DFA
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:00:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E41C10E562;
	Tue, 22 Mar 2022 12:00:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C79F10E562
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950439; x=1679486439;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=25FEhOqDDEeI2dqGGAOPpJh/bxDHloZuPqaPW5fFmYY=;
 b=Xhx8gQzOds8xU3VxFo6EH8TTr2TkK1saAgkKx/jZXmRoZ7A/OpuCbIiU
 MskBZZtCtkuiPOpeTdpeaV7qfhkBwEmB/nTQ9gMf7Db2NeSlvGcBnlRgc
 xVHCPpA5Ohb8+D0UASeI69kU5Zjb+sjYdwECOOQzQgLNaT8sjNDxZuR4m
 u80F/dtQQxXHu1mU2j3TdXK2eo6PfzC+YplY5/1vu+yfLGLtcEFJuILfQ
 XQqhYwet02kvG6ND2MxoWD7S1pAj0O/eDskR0d5J3HyebOZWtwZCkumLw
 twtmAOyhDuYG1U9EF0LcYlB8M/tEa08tg8Fj+Y5xEJraMxezy2yHBVkxI A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="238403835"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="238403835"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="600854520"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga008.fm.intel.com with SMTP; 22 Mar 2022 05:00:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:10 +0200
Message-Id: <20220322120015.28074-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/12] drm/i915/dp: Make
 intel_dp_output_format() usable for "4:2:0 also" modes
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hoist the drm_mode_is_420_only() from intel_dp_output_format()
into the caller. This will allow intel_dp_output_format() to be
reused for "4:2:0 also" modes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 94faf3c28d2d..a78522dc9b3c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -787,13 +787,11 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 
 static enum intel_output_format
 intel_dp_output_format(struct intel_connector *connector,
-		       const struct drm_display_mode *mode)
+		       bool ycbcr_420_output)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	const struct drm_display_info *info = &connector->base.display_info;
 
-	if (!connector->base.ycbcr_420_allowed ||
-	    !drm_mode_is_420_only(info, mode))
+	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
 		return INTEL_OUTPUT_FORMAT_RGB;
 
 	if (intel_dp->dfp.rgb_to_ycbcr &&
@@ -831,8 +829,9 @@ static int
 intel_dp_mode_min_output_bpp(struct intel_connector *connector,
 			     const struct drm_display_mode *mode)
 {
+	const struct drm_display_info *info = &connector->base.display_info;
 	enum intel_output_format output_format =
-		intel_dp_output_format(connector, mode);
+		intel_dp_output_format(connector, drm_mode_is_420_only(info, mode));
 
 	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
 }
@@ -1825,6 +1824,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
 	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_info *info = &connector->base.display_info;
 	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int ret = 0, output_bpp;
 
@@ -1853,7 +1853,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (intel_dp_hdisplay_bad(dev_priv, adjusted_mode->crtc_hdisplay))
 		return -EINVAL;
 
-	pipe_config->output_format = intel_dp_output_format(connector, adjusted_mode);
+	pipe_config->output_format =
+		intel_dp_output_format(connector, drm_mode_is_420_only(info, adjusted_mode));
 
 	ret = intel_dp_compute_link_config(encoder, pipe_config, conn_state);
 	if (ret < 0)
-- 
2.34.1

