Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 432AF495F59
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:01:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 676FA10E9DB;
	Fri, 21 Jan 2022 13:01:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C16010E9DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770064; x=1674306064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HiUrUlCe7zJHUb6fylKveSM2FZXR40DtiHT0FuMKx2o=;
 b=IE2u9FlwkhL3163ubeC0HNVkLUmZ3EzMhgEZfzcGaXjuEKuwALeKpz9g
 Zmw5uQoPwTCEA+s/JKCjoCCL2zImADORnprhZ0vUhbAPPbORBTmecwat5
 /gKn692GfRa/q3q1YnAZ0t6RiXE3O0xIaYNpgb2vgTEfJHc6BOQoM5OS2
 awRjfwkDi5v4Y/iDRRJZ3uZk3q3uZBjVCwdO/t/XFCIuEfnAuDB2EJG1o
 kM1GFQE1oqldaNDUX9FPn6FMGUutFYUkPzdsvDhiaPqNRTT3tYweASSoF
 vfK5XsqFOJ5dnZMutaHj0sd3CNCgoSpNbZ6BEpjVZnXtWkx8PIJyFTPFD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="233005229"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="233005229"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="519064614"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:00:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:00:31 +0200
Message-Id: <3caf86f20680478763321e8e3a5fbfa30ab06ec3.1642769982.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
References: <cover.1642769982.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/pps: convert to drm device based
 logging
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

Prefer drm device based logging.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index e9c679bb1b2e..9c986e8932f8 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1131,16 +1131,20 @@ intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_seq *seq)
 }
 
 static void
-intel_pps_dump_state(const char *state_name, const struct edp_power_seq *seq)
+intel_pps_dump_state(struct intel_dp *intel_dp, const char *state_name,
+		     const struct edp_power_seq *seq)
 {
-	DRM_DEBUG_KMS("%s t1_t3 %d t8 %d t9 %d t10 %d t11_t12 %d\n",
-		      state_name,
-		      seq->t1_t3, seq->t8, seq->t9, seq->t10, seq->t11_t12);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	drm_dbg_kms(&i915->drm, "%s t1_t3 %d t8 %d t9 %d t10 %d t11_t12 %d\n",
+		    state_name,
+		    seq->t1_t3, seq->t8, seq->t9, seq->t10, seq->t11_t12);
 }
 
 static void
 intel_pps_verify_state(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct edp_power_seq hw;
 	struct edp_power_seq *sw = &intel_dp->pps.pps_delays;
 
@@ -1148,9 +1152,9 @@ intel_pps_verify_state(struct intel_dp *intel_dp)
 
 	if (hw.t1_t3 != sw->t1_t3 || hw.t8 != sw->t8 || hw.t9 != sw->t9 ||
 	    hw.t10 != sw->t10 || hw.t11_t12 != sw->t11_t12) {
-		DRM_ERROR("PPS state mismatch\n");
-		intel_pps_dump_state("sw", sw);
-		intel_pps_dump_state("hw", &hw);
+		drm_err(&i915->drm, "PPS state mismatch\n");
+		intel_pps_dump_state(intel_dp, "sw", sw);
+		intel_pps_dump_state(intel_dp, "hw", &hw);
 	}
 }
 
@@ -1168,7 +1172,7 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 
 	intel_pps_readout_hw_state(intel_dp, &cur);
 
-	intel_pps_dump_state("cur", &cur);
+	intel_pps_dump_state(intel_dp, "cur", &cur);
 
 	vbt = dev_priv->vbt.edp.pps;
 	/* On Toshiba Satellite P50-C-18C system the VBT T12 delay
@@ -1200,7 +1204,7 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 	 * too. */
 	spec.t11_t12 = (510 + 100) * 10;
 
-	intel_pps_dump_state("vbt", &vbt);
+	intel_pps_dump_state(intel_dp, "vbt", &vbt);
 
 	/* Use the max of the register settings and vbt. If both are
 	 * unset, fall back to the spec limits. */
-- 
2.30.2

