Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 189E0621E7A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 22:23:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0DA410E51E;
	Tue,  8 Nov 2022 21:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94AF10E51B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 21:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667942592; x=1699478592;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wsVFKpE5z+PcGlAdSM+pnjqwj3ECEUy30/TSnrFgz0M=;
 b=a2DAnlOzCxP5WruTi2fBc2EeaKdGpoYMlJp8+KG7fNAO3vuDQ4HM//7/
 oZ7QN9iY6SUVwz+ypRXqS+qsjLS9CuwJ58glxuFCaJA1vwxE0FOK6ehn4
 22mcru3+QbS81iUH1SeAFCpnevX+Li1jq3tWmHnd3kwGwHNZZH1m0Wonu
 OTlVnDZwn0s61P8DEB97tZHvJATMwBzrlf6IumweqMbxgVteHZTTIub8I
 dYCIdLWTUgAp14X4xmUVEhftzmB5PVcrxeupymgXdaAzhZdQVj4lMKu+u
 eQ2RuUk+O0cGzekxvEOWgkslVLyXF/zy7YmE2D3+YjXNu5M4OsrXqwvrm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="298330711"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="298330711"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 13:23:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="761638504"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="761638504"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga004.jf.intel.com with ESMTP; 08 Nov 2022 13:23:10 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 02:48:20 +0530
Message-Id: <20221108211822.28048-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/pps: Add get_pps_idx() hook as
 part of pps_get_register() cleanup
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

Simplified pps_get_register() which use get_pps_idx() hook to derive the
pps instance and get_pps_idx() will be initialized at pps_init().

v1: Initial version. Got r-b from Jani.
v2: Corrected unintentional change around memset() call. [Jani]

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c           | 14 +++++++++-----
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c6abaaa46e17..87163ef32983 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1698,6 +1698,7 @@ struct intel_dp {
 	u8 (*preemph_max)(struct intel_dp *intel_dp);
 	u8 (*voltage_max)(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
+	int (*get_pps_idx)(struct intel_dp *intel_dp);
 
 	/* Displayport compliance testing */
 	struct intel_dp_compliance compliance;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 22f5e08d396b..3949fb449353 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -366,11 +366,8 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 	int pps_idx = 0;
 
 	memset(regs, 0, sizeof(*regs));
-
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		pps_idx = bxt_power_sequencer_idx(intel_dp);
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		pps_idx = vlv_power_sequencer_pipe(intel_dp);
+	if (intel_dp->get_pps_idx)
+		pps_idx = intel_dp->get_pps_idx(intel_dp);
 
 	regs->pp_ctrl = PP_CONTROL(pps_idx);
 	regs->pp_stat = PP_STATUS(pps_idx);
@@ -1433,6 +1430,13 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	intel_dp->pps.initializing = true;
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
 
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
+	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
+	else
+		intel_dp->get_pps_idx = NULL;
+
 	pps_init_timestamps(intel_dp);
 
 	with_intel_pps_lock(intel_dp, wakeref) {
-- 
2.29.0

