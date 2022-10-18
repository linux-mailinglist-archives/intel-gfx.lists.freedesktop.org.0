Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADE4602756
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 10:44:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2569510EB80;
	Tue, 18 Oct 2022 08:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09EC710E98D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 08:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666082631; x=1697618631;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KYhFdtMbUn+nPDPaeiRFP9Jgac5hVtLeybouO/qnqQU=;
 b=VSYBqLlujYyPPVJd/DHymyLFVJmb6Nd6mtHlso3hqNA4ZEUpIIL7KWPw
 0hIdIVfjUhjJvRJe38/fHC5WVuT58eQzVkcjlTSOrWdpn5QSZE4lkRgTq
 29BGtIqHSlfXt9KfLlyEUu7/ZLL1iNEe3CLvsD/dTbBjg2PdqkHUSsAj1
 5+KjwGt7s88Cvj1bBJJbsdVAlnKV336pe9raX6rxxkKRvaEVS4rROEucp
 x/3YQsjjBMFAW2oftgECZ9Tx8b8tiWYKb0AQK5VmVAk/TMWI4EJVzbrvC
 CLQuEiiHUyHCb1k8sUY2WE9mDU/oONMmT9Kyk5stzFRPwVKgQWwodqZCT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="304779379"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="304779379"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 01:43:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="873802431"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="873802431"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga006.fm.intel.com with ESMTP; 18 Oct 2022 01:43:45 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Oct 2022 14:09:20 +0530
Message-Id: <20221018083921.23239-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/pps: Add get_pps_idx() hook as
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
index e2b853e9e51d..44ab296c1f04 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1694,6 +1694,7 @@ struct intel_dp {
 	u8 (*preemph_max)(struct intel_dp *intel_dp);
 	u8 (*voltage_max)(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
+	int (*get_pps_idx)(struct intel_dp *intel_dp);
 
 	/* Displayport compliance testing */
 	struct intel_dp_compliance compliance;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 21944f5bf3a8..9ed62c891b8c 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -365,11 +365,8 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
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
@@ -1432,6 +1429,13 @@ void intel_pps_init(struct intel_dp *intel_dp)
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

