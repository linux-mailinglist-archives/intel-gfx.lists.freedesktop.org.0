Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDB33F0AE2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 20:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 727C86E8B4;
	Wed, 18 Aug 2021 18:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4F56E8B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 18:12:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="214547454"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="214547454"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:12:34 -0700
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="462806600"
Received: from jcarwana-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.192])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:12:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, manasi.d.navare@intel.com,
 ville.syrjala@linux.intel.com
Date: Wed, 18 Aug 2021 21:10:49 +0300
Message-Id: <86f4016dc527c59a4a07ef06aa009d3d16865470.1629310010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629310010.git.jani.nikula@intel.com>
References: <cover.1629310010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/17] drm/i915/dg2: configure TRANS_DP2_CTL for
 DP 2.0
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

Set the DP 2.0 128b/132b channel encoding for UHBR rates.

Bspec: 54128
Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 203a54f905f6..8b8f5d679b72 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -407,6 +407,20 @@ static u32 bdw_trans_port_sync_master_select(enum transcoder master_transcoder)
 		return master_transcoder + 1;
 }
 
+static void
+intel_ddi_config_transcoder_dp2(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val = 0;
+
+	if (crtc_state->port_clock > 1000000)
+		val = TRANS_DP2_128B132B_CHANNEL_CODING;
+
+	intel_de_write(i915, TRANS_DP2_CTL(cpu_transcoder), val);
+}
+
 /*
  * Returns the TRANS_DDI_FUNC_CTL value based on CRTC state.
  *
@@ -2375,7 +2389,8 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 */
 	intel_ddi_enable_pipe_clock(encoder, crtc_state);
 
-	/* 5.b Not relevant to i915 for now */
+	/* 5.b Configure transcoder for DP 2.0 128b/132b */
+	intel_ddi_config_transcoder_dp2(encoder, crtc_state);
 
 	/*
 	 * 5.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
-- 
2.20.1

