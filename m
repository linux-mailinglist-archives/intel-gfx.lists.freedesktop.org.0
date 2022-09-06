Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CD15AE0CC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 09:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E76EF10E58B;
	Tue,  6 Sep 2022 07:18:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FEFF10E58B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 07:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662448714; x=1693984714;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=95watSbNk3tqr5mP1+k5g2dCZQgjiHcy8y65hjIF9bI=;
 b=iKydKzj39gYKVSMRlXU5HVDnSALrYy8NTlDmMUZFxJiypsLtU/znMA5J
 nEdzSLP2knAgkhQIBQxHvglwT+AjFTWX/1/XxJae0mLOE+dl0z0NMZMEY
 LbPhKbnKqvMPDUAQMWnCneQ7hQfDKWWYAi+OPl3DB3AjkLYfNL+eDRjda
 4ZPSJJAbgVJ+eZgVkd3gX1JMMMYcSDcljx5KU+uhQ6nuMy7GvQ0Q2LKQS
 i8yG+Q8ZG33qNXgH+VdQekHfZM+NnX5ovh02KLjpOi5QLFDfIjKBpZ2X5
 HZHIbU85M89rVxwlcskZyczb8arpHt2ysCrXln7sNieWX32LbjFs6NGtj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="297836450"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="297836450"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 00:18:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="591159993"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga006.jf.intel.com with ESMTP; 06 Sep 2022 00:18:32 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 12:44:56 +0530
Message-Id: <20220906071457.28881-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/pps: added get_pps_idx() hook as
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Simplified pps_get_register() which use get_pps_idx() hook to derive the
pps instance and get_pps_idx() will be initialized at pps_init().

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c           | 12 ++++++------
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0da9b208d56e..b78b29951241 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1693,6 +1693,7 @@ struct intel_dp {
 	u8 (*preemph_max)(struct intel_dp *intel_dp);
 	u8 (*voltage_max)(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
+	int (*get_pps_idx)(struct intel_dp *intel_dp);
 
 	/* Displayport compliance testing */
 	struct intel_dp_compliance compliance;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 21944f5bf3a8..4e770218e29f 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -362,15 +362,10 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 				    struct pps_registers *regs)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	int pps_idx = 0;
+	int pps_idx = intel_dp->get_pps_idx(intel_dp);
 
 	memset(regs, 0, sizeof(*regs));
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		pps_idx = bxt_power_sequencer_idx(intel_dp);
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		pps_idx = vlv_power_sequencer_pipe(intel_dp);
-
 	regs->pp_ctrl = PP_CONTROL(pps_idx);
 	regs->pp_stat = PP_STATUS(pps_idx);
 	regs->pp_on = PP_ON_DELAYS(pps_idx);
@@ -1432,6 +1427,11 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	intel_dp->pps.initializing = true;
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
 
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
+	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
+
 	pps_init_timestamps(intel_dp);
 
 	with_intel_pps_lock(intel_dp, wakeref) {
-- 
2.29.0

