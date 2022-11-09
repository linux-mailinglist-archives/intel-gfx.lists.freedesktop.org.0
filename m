Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E44622A15
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:17:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4DF410E5A5;
	Wed,  9 Nov 2022 11:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3C6C10E5A7
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667992629; x=1699528629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i5kxUsCLJdV8m5iS4SJnplLIxYLb/1asmYQRkirS2Xc=;
 b=Q5qkiNH7mfIbCN5NmrrPcNJFK58BjMo+KBbeq9rRe1GJb2+WHI9TC6lc
 Gv2JvQ852/gRgtsro8uklgxyzUa9iShsmzlWPRpMXOoe+DHCnuHiYRGRg
 rXWjOms63iiab/lyxfSUOo2WuNO301NIjacO4eenQypU3WZX0mzgxQT/k
 6A2V7D0J2kP8RlJamOYP9b8Ft0ONmFOZ7PJ1QOMPlae55QlhK30iCATmk
 wmUWo+5sNSQz9HcmzhkOGW7ezPO4DugxUOiqzWGtxujs7t8+rNm27i5gT
 BU89HFtZBODLaLwBj5JbJjSvQ/aREYpR+O8uQnsbIOB4uM+tnIqN2CU4u g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="312113430"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="312113430"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:17:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="636707086"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="636707086"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 09 Nov 2022 03:17:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Nov 2022 13:17:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 13:16:48 +0200
Message-Id: <20221109111649.23062-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
References: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/915: Extend dual PPS handlind for ICP+
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

On the PCH side the second PPS was introduced in ICP. Let's
make sure we examine both power sequencer on ICP+ as well.

Note that DG1/2 south block only has the single PPS, so need
to exclude the fake DG1/2 PCHs.

Cc: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index ff4f1def59d2..f3ac4eee4d39 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -401,6 +401,15 @@ struct pps_registers {
 	i915_reg_t pp_div;
 };
 
+static bool has_dual_bxt_pps(struct drm_i915_private *i915)
+{
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+		return true;
+
+	return INTEL_PCH_TYPE(i915) >= PCH_ICP &&
+		INTEL_PCH_TYPE(i915) < PCH_DG1;
+}
+
 static void intel_pps_get_registers(struct intel_dp *intel_dp,
 				    struct pps_registers *regs)
 {
@@ -409,7 +418,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 
 	memset(regs, 0, sizeof(*regs));
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (has_dual_bxt_pps(dev_priv))
 		pps_idx = bxt_power_sequencer_idx(intel_dp);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		pps_idx = vlv_power_sequencer_pipe(intel_dp);
@@ -1478,7 +1487,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	pps_init_timestamps(intel_dp);
 
 	with_intel_pps_lock(intel_dp, wakeref) {
-		if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+		if (has_dual_bxt_pps(i915))
 			bxt_initial_power_sequencer_setup(intel_dp);
 		else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 			vlv_initial_power_sequencer_setup(intel_dp);
@@ -1512,7 +1521,7 @@ void intel_pps_init_late(struct intel_dp *intel_dp)
 
 	with_intel_pps_lock(intel_dp, wakeref) {
 		/* Reinit delays after per-panel info has been parsed from VBT */
-		if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+		if (has_dual_bxt_pps(i915))
 			bxt_pps_init_late(intel_dp);
 		memset(&intel_dp->pps.pps_delays, 0, sizeof(intel_dp->pps.pps_delays));
 		pps_init_delays(intel_dp);
-- 
2.37.4

