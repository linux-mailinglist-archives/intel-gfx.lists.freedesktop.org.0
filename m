Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 830B59ECCA1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 13:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D352910EB2A;
	Wed, 11 Dec 2024 12:55:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hcq6/fOl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5505F10EB2A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 12:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733921740; x=1765457740;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eXfR2IKbGdgPmhpzNE1sakE5bUuTNCDyGAV0XmHF4kk=;
 b=hcq6/fOlXvlJtmtqDJ410nZPhVd+xmZDesEiwzlB4aYThTFB71cnV/Az
 02gP0Deng8SAiBehJIILbXpjfgYCem0U4p87ojsY3WrlGfTtRjDYuYoXR
 TOBbSAs/Wprqj3pnfQhdVEaexv9bS1qKFYEhb9ShyaxapqwZjM6LpDuL3
 sAaimz9QgKDnSgtQP9BE+gJLVlQZXzFpaJPOYffhQbdTKncsdZE5BKriB
 9xqx97EI6CemIwp/uUDzh35BRjTyOoOliDE5ColyAI8LMn5rXWhCCVOho
 GrWwOiFuDpaLGKdKgHnZyEDGZWULfaAphf8H3WrllGO0C6EoAg0LfYOlY Q==;
X-CSE-ConnectionGUID: Iuq8qDM0S72TOb9azvp3vA==
X-CSE-MsgGUID: acakQ9ZuRCmAvqjeNIVkNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="51714723"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="51714723"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:54:38 -0800
X-CSE-ConnectionGUID: oBJRry+PRPGIBKs2dD0mmQ==
X-CSE-MsgGUID: DPgKknzCSeeB+yuA5dznCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96239729"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.44])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:54:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH 1/2] drm/i915/dp: add g4x_dp_compute_config()
Date: Wed, 11 Dec 2024 14:54:30 +0200
Message-Id: <20241211125431.680227-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Add g4x_dp_compute_config() instead of using intel_dp_compute_config()
directly, in order to slightly reduce the clutter in the latter wrt
->has_pch_encoder.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c   | 14 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.c |  3 ---
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 4fbec065d53e..9ac894a7411f 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1223,6 +1223,18 @@ static bool ilk_digital_port_connected(struct intel_encoder *encoder)
 	return intel_de_read(display, DEISR) & bit;
 }
 
+static int g4x_dp_compute_config(struct intel_encoder *encoder,
+				 struct intel_crtc_state *crtc_state,
+				 struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (HAS_PCH_SPLIT(i915) && encoder->port != PORT_A)
+		crtc_state->has_pch_encoder = true;
+
+	return intel_dp_compute_config(encoder, crtc_state, conn_state);
+}
+
 static void g4x_dp_suspend_complete(struct intel_encoder *encoder)
 {
 	/*
@@ -1307,7 +1319,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	intel_encoder_link_check_init(intel_encoder, intel_dp_link_check);
 
 	intel_encoder->hotplug = intel_dp_hotplug;
-	intel_encoder->compute_config = intel_dp_compute_config;
+	intel_encoder->compute_config = g4x_dp_compute_config;
 	intel_encoder->get_hw_state = intel_dp_get_hw_state;
 	intel_encoder->get_config = intel_dp_get_config;
 	intel_encoder->sync_state = intel_dp_sync_state;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fbe6b77d642e..adc51567ec17 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3090,9 +3090,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_connector *connector = intel_dp->attached_connector;
 	int ret = 0, link_bpp_x16;
 
-	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
-		pipe_config->has_pch_encoder = true;
-
 	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		ret = intel_panel_compute_config(connector, adjusted_mode);
-- 
2.39.5

