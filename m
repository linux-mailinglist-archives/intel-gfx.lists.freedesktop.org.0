Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9E7638F1C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 18:32:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FE3F10E77A;
	Fri, 25 Nov 2022 17:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EDBD10E77A
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Nov 2022 17:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669397535; x=1700933535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EwdKA7+07WIUuLx/02/obidDtcwdBXeWQGpCtZUV3W8=;
 b=anRJwtB9cVAOlGsVkFqq1wPoHurY/Y0TBl3304yL/NTkWeVzyT0aoUFV
 4vE3bTsjty9Q9CU+GlJNx+RTXKC4UsZQDMcv6w0bpVsCnxbqB4ZjiIaNA
 nGDNMwimytnGy+VykCDgWD38/T2+wVbojhURRPoIFSeo0//PoKhUne+vf
 tqly9H5E1c7n9TQzY1WW7gSfffzBDv+Il/geTc5/dI89KIFRrCW92m3uM
 nbHX4atTD0iT1564yjTX0UVXcaWwvpf/XsPSKBDP69+h9YOIUjaiqUUoY
 PaiuVvC15ZrwLGV5EIb+wbJNdRrrtudMISLmLtDhbemZBFCKE3XTfyXrg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="315674646"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="315674646"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 09:32:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="706124332"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="706124332"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 25 Nov 2022 09:32:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Nov 2022 19:32:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Nov 2022 19:31:52 +0200
Message-Id: <20221125173156.31689-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
References: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915: Extend dual PPS handlind for
 ICP+
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
 drivers/gpu/drm/i915/display/intel_pps.c | 44 +++++++++++++++++-------
 1 file changed, 32 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index d8d2f22f3e0c..77b0a4f27abc 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -310,10 +310,27 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 		    pipe_name(intel_dp->pps.pps_pipe));
 }
 
+static int intel_num_pps(struct drm_i915_private *i915)
+{
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		return 2;
+
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+		return 2;
+
+	if (INTEL_PCH_TYPE(i915) >= PCH_DG1)
+		return 1;
+
+	if (INTEL_PCH_TYPE(i915) >= PCH_ICP)
+		return 2;
+
+	return 1;
+}
+
 static int
 bxt_initial_pps_idx(struct drm_i915_private *i915, pps_check check)
 {
-	int pps_idx, pps_num = 2;
+	int pps_idx, pps_num = intel_num_pps(i915);
 
 	for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
 		if (check(i915, pps_idx))
@@ -337,12 +354,13 @@ pps_initial_setup(struct intel_dp *intel_dp)
 		return;
 	}
 
-	if (!IS_GEMINILAKE(i915) && !IS_BROXTON(i915))
-		return;
-
 	/* first ask the VBT */
-	intel_dp->pps.pps_idx = connector->panel.vbt.backlight.controller;
-	if (drm_WARN_ON(&i915->drm, intel_dp->pps.pps_idx >= 2))
+	if (intel_num_pps(i915) > 1)
+		intel_dp->pps.pps_idx = connector->panel.vbt.backlight.controller;
+	else
+		intel_dp->pps.pps_idx = 0;
+
+	if (drm_WARN_ON(&i915->drm, intel_dp->pps.pps_idx >= intel_num_pps(i915)))
 		intel_dp->pps.pps_idx = -1;
 
 	/* VBT wasn't parsed yet? pick one where the panel is on */
@@ -416,7 +434,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 				    struct pps_registers *regs)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	int pps_idx = 0;
+	int pps_idx;
 
 	memset(regs, 0, sizeof(*regs));
 
@@ -424,6 +442,8 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 		pps_idx = vlv_power_sequencer_pipe(intel_dp);
 	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		pps_idx = bxt_power_sequencer_idx(intel_dp);
+	else
+		pps_idx = intel_dp->pps.pps_idx;
 
 	regs->pp_ctrl = PP_CONTROL(pps_idx);
 	regs->pp_stat = PP_STATUS(pps_idx);
@@ -1508,7 +1528,10 @@ static void pps_init_late(struct intel_dp *intel_dp)
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct intel_connector *connector = intel_dp->attached_connector;
 
-	if (!IS_GEMINILAKE(i915) && !IS_BROXTON(i915))
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		return;
+
+	if (intel_num_pps(i915) < 2)
 		return;
 
 	drm_WARN(&i915->drm, connector->panel.vbt.backlight.controller >= 0 &&
@@ -1551,10 +1574,7 @@ void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
 	 * This w/a is needed at least on CPT/PPT, but to be sure apply it
 	 * everywhere where registers can be write protected.
 	 */
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		pps_num = 2;
-	else
-		pps_num = 1;
+	pps_num = intel_num_pps(dev_priv);
 
 	for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
 		u32 val = intel_de_read(dev_priv, PP_CONTROL(pps_idx));
-- 
2.37.4

