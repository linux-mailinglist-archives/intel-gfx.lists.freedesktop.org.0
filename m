Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D02C355230F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:52:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0581E10EDA2;
	Mon, 20 Jun 2022 17:52:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09BA010ED89
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747543; x=1687283543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PiPri2LU058GACJ3zKW9VI65LXUgduNr/Ds06rfPevE=;
 b=akQ39ppjz17eWGmpashLbUnjwbmZ0j+bkbGCAA8n8ZL261XvxoZOpXvx
 V1dEjzuXhY/RCnQ6fDyHVrGBc0kxgZTv84E9v9Af3YmoWOhvhvuND8dJm
 NohbO4Aib8dW1qgPbeMIQVYpSGwwU7iKL9cXMa2I7VyY+gkMGQ1Fsd103
 MHi0NBhxVb94GxNXMjijmA6xqk89GZPIRdgCL16ZBCe5PzeqWwLbG+3ft
 bDj9ZErCjQ+0BmqR7MMP8P+z/rUIg+sXLRRavEbYK99sY1q8HZmMrxRtv
 BhJPdMM2GYbK9Oy+WgOUAE+B7AYdvDoD80bjX0wZwhLMMMx1ucK3H66CN g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="259770493"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="259770493"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="584976961"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga007.jf.intel.com with SMTP; 20 Jun 2022 10:52:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:51:56 +0300
Message-Id: <20220620175210.28788-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/17] drm/i915: Extract
 HAS_DOUBLE_BUFFERED_M_N()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have a couple of places that want to make distinction between
double buffered M/N registers vs. the split M1/N1+M2/N2 registers.
Add a helper for that.

v2: Turn into a HAS_ macro (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 3 +--
 drivers/gpu/drm/i915/i915_drv.h              | 2 ++
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6b549aadca13..0384af821ee5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5760,7 +5760,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(lane_count);
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
 
-	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv)) {
+	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
 		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
 	} else {
 		PIPE_CONF_CHECK_M_N(dp_m_n);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e0891b31f089..cf7e4e105891 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1868,8 +1868,7 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 static bool cpu_transcoder_has_drrs(struct drm_i915_private *i915,
 				    enum transcoder cpu_transcoder)
 {
-	/* M1/N1 is double buffered */
-	if (DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
+	if (HAS_DOUBLE_BUFFERED_M_N(i915))
 		return true;
 
 	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c22f29c3faa0..805ae6ca7486 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1252,6 +1252,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
 #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
 
+#define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
+
 #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
 #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
-- 
2.35.1

