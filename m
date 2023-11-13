Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EDE7EA179
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 17:47:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CD3210E3C9;
	Mon, 13 Nov 2023 16:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B36510E3C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 16:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699894041; x=1731430041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xPu0g/mttxaIAh9OhQ3zFoKiOijnCMS0v8iSPxv54KA=;
 b=mmfijQCr1vRdup1U3no0kYq5tSW/rWmVNgvRFU/AGM9+0/uaBRw0zkDC
 7e/QdH6Xxxo5a4W5+ZnucBEA6v2f1YmjmKljw5UJqL3iZnndX/ouqOGZw
 dZu42k3WBx94PIdC3OtcW0L831UuuUZWKEd0xH4/kSzZRRPcR15hCp424
 MWwN3YKEcK6hQA0VD9ORyE0Zvvwrz2QYnkrKrCOCApht5rQOIT6rx56Y5
 Vy2OzDYQ2e0HBH5j5M8UrBsZee+T8w0Cbd2Tn34HZSsgp+rBWXX3+YC1p
 lONJCvo9UU4Fbr+k/XeL7MDI17rhgx8ng3kXGnlMwPF7qbfG27OS6W0ub A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="389330105"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="389330105"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 08:47:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="764376206"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="764376206"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 08:47:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Nov 2023 18:47:09 +0200
Message-Id: <20231113164711.4100548-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231113164711.4100548-1-jani.nikula@intel.com>
References: <20231113164711.4100548-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: add vlv_pipe_to_phy() helper to
 replace DPIO_PHY()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a helper with better typing and handing for bogus input, and better
in line with vlv_dig_port_to_channel(), vlv_dig_port_to_phy(), and
vlv_pipe_to_channel().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |  5 +++++
 drivers/gpu/drm/i915/display/intel_pps.c      |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  2 --
 drivers/gpu/drm/i915/vlv_sideband.c           |  6 ++++--
 5 files changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 62b93d097e44..d6af46e33424 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -666,6 +666,20 @@ enum dpio_phy vlv_dig_port_to_phy(struct intel_digital_port *dig_port)
 	}
 }
 
+enum dpio_phy vlv_pipe_to_phy(enum pipe pipe)
+{
+	switch (pipe) {
+	default:
+		MISSING_CASE(pipe);
+		fallthrough;
+	case PIPE_A:
+	case PIPE_B:
+		return DPIO_PHY0;
+	case PIPE_C:
+		return DPIO_PHY1;
+	}
+}
+
 enum dpio_channel vlv_pipe_to_channel(enum pipe pipe)
 {
 	switch (pipe) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
index 4d43dbbdf81c..9adc4e8c1738 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
@@ -44,6 +44,7 @@ u8 bxt_ddi_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder);
 
 enum dpio_channel vlv_dig_port_to_channel(struct intel_digital_port *dig_port);
 enum dpio_phy vlv_dig_port_to_phy(struct intel_digital_port *dig_port);
+enum dpio_phy vlv_pipe_to_phy(enum pipe pipe);
 enum dpio_channel vlv_pipe_to_channel(enum pipe pipe);
 
 void chv_set_phy_signal_level(struct intel_encoder *encoder,
@@ -116,6 +117,10 @@ static inline enum dpio_phy vlv_dig_port_to_phy(struct intel_digital_port *dig_p
 {
 	return DPIO_PHY0;
 }
+static inline enum dpio_phy vlv_pipe_to_phy(enum pipe pipe)
+{
+	return DPIO_PHY0;
+}
 static inline enum dpio_channel vlv_pipe_to_channel(enum pipe pipe)
 {
 	return DPIO_CH0;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 73f0f1714b37..a8fa3a20990e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -90,7 +90,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	enum pipe pipe = intel_dp->pps.pps_pipe;
 	bool pll_enabled, release_cl_override = false;
-	enum dpio_phy phy = DPIO_PHY(pipe);
+	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
 	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
 	u32 DP;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 135e8d8dbdf0..27dc903f0553 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -195,8 +195,6 @@
 #define  DPIO_SFR_BYPASS		(1 << 1)
 #define  DPIO_CMNRST			(1 << 0)
 
-#define DPIO_PHY(pipe)			((pipe) >> 1)
-
 /*
  * Per pipe/PLL DPIO regs
  */
diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
index b98dec3ad817..f7df55217845 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/vlv_sideband.c
@@ -229,7 +229,8 @@ static u32 vlv_dpio_phy_iosf_port(struct drm_i915_private *i915, enum dpio_phy p
 
 u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg)
 {
-	u32 port = vlv_dpio_phy_iosf_port(i915, DPIO_PHY(pipe));
+	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
+	u32 port = vlv_dpio_phy_iosf_port(i915, phy);
 	u32 val = 0;
 
 	vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MRD_NP, reg, &val);
@@ -248,7 +249,8 @@ u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg)
 void vlv_dpio_write(struct drm_i915_private *i915,
 		    enum pipe pipe, int reg, u32 val)
 {
-	u32 port = vlv_dpio_phy_iosf_port(i915, DPIO_PHY(pipe));
+	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
+	u32 port = vlv_dpio_phy_iosf_port(i915, phy);
 
 	vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MWR_NP, reg, &val);
 }
-- 
2.39.2

