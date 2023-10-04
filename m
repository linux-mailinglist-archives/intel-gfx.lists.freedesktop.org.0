Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BC87B844F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2159A10E38E;
	Wed,  4 Oct 2023 15:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD14610E38E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696434991; x=1727970991;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pf1L1MZCCP1gCw+WY/TA3niuxJNSaQdsQvrS8pcA5b8=;
 b=RlrSmJDbDdHXX+at7cwULv9h1SQDRn/fj8lDkrOqzPVJjvMdqf0xo7NA
 XoExExhIH3I414G2nar1Wmuu4AGKinFwBr9NTRM51kaIGHCg4tGgQXuEv
 Qhe1onipYAf2U8BjV3IszEau84PjQCRfnJGDqtroNp2CiiBN+6XcakNLV
 PFpGRBRGjfeiLgK/ca9aGN5TSs3MGWddYLhcH2yRHbpY3I+J25NTUb2hd
 9ROMenUhB4Dvs1tSUSurql3wx6wAth5vFVSY2rIpx5Oi1w0fgArJZxlCw
 69VYekKKIt5l2gqQov6w0RKzMqo60krBRTSygmsUATUP32ztjYC93szGH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483804"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483804"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867441157"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867441157"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:56:02 +0300
Message-ID: <20231004155607.7719-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/12] drm/i915: Constify the snps/c10x PLL
 state checkers
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

State checkers should never modify the crtc states, so make
them const.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 4 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  | 2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_snps_phy.h | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index abd607b564f1..1aba265afe41 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3005,11 +3005,11 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 }
 
 void intel_c10pll_state_verify(struct intel_atomic_state *state,
-			       struct intel_crtc_state *new_crtc_state)
+			       const struct intel_crtc_state *new_crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_c10pll_state mpllb_hw_state = { 0 };
-	struct intel_c10pll_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10;
+	const struct intel_c10pll_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10;
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct intel_encoder *encoder;
 	enum phy phy;
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 912e0eeb0be3..43f2fdb662c5 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -34,7 +34,7 @@ void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
 int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_c10pll_state *pll_state);
 void intel_c10pll_state_verify(struct intel_atomic_state *state,
-			       struct intel_crtc_state *new_crtc_state);
+			       const struct intel_crtc_state *new_crtc_state);
 void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_c20pll_state *pll_state);
 void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 88ef56b6e0fd..bdceb6bd474c 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -1993,11 +1993,11 @@ int intel_snps_phy_check_hdmi_link_rate(int clock)
 }
 
 void intel_mpllb_state_verify(struct intel_atomic_state *state,
-			      struct intel_crtc_state *new_crtc_state)
+			      const struct intel_crtc_state *new_crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_mpllb_state mpllb_hw_state = { 0 };
-	struct intel_mpllb_state *mpllb_sw_state = &new_crtc_state->mpllb_state;
+	const struct intel_mpllb_state *mpllb_sw_state = &new_crtc_state->mpllb_state;
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct intel_encoder *encoder;
 
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
index 557ef820bc0b..9d1d0c6a9cfe 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
@@ -33,6 +33,6 @@ int intel_snps_phy_check_hdmi_link_rate(int clock);
 void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state);
 void intel_mpllb_state_verify(struct intel_atomic_state *state,
-			      struct intel_crtc_state *new_crtc_state);
+			      const struct intel_crtc_state *new_crtc_state);
 
 #endif /* __INTEL_SNPS_PHY_H__ */
-- 
2.41.0

