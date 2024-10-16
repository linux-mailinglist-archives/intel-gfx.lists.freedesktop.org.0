Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A35E59A0B5C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:24:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9045E10E701;
	Wed, 16 Oct 2024 13:24:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nH51NaWB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E1AD10E6F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 13:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729085040; x=1760621040;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0kjAFNcDqZSlypfnb4G/JLIHRMEsgeA5kRMK6alZuww=;
 b=nH51NaWB+CcdspzGLpsjCxh1mUTCqKuVc+J2SzU58/2AEAHGjE8kERpV
 /O/PY87ET6Bt5kJg1/1k6qDhL78d5u0koI5rzg/8aEeQ6A5A+5Q42CtYO
 dH6BqnVY2WsAQGFMUFcauChjgHsiGJLzZapqk4f82U2WoK1RFYOFTP7CB
 +ABwZQkSw8iHlDm9uTK5wg75xPy2dzGenPDOO5oH4auhDfsS1FWe5P6vO
 RHYaNEXKtarmsTjviyTHr9gJrrDclPdXgWvEAjfaD4yYxEYZ7pFn1jLmK
 TCQjlZ7qGQK90+jHD1y/iWjig6IkcM2KHNE/FbNp/fmTW4lBkUhi2ON58 A==;
X-CSE-ConnectionGUID: wDhY85kLRESgRBhUZT7RFQ==
X-CSE-MsgGUID: ob39JPR7SaS64ZS1D7f+8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46005981"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46005981"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:42 -0700
X-CSE-ConnectionGUID: mm+VG4dNTra8KISvyntXZA==
X-CSE-MsgGUID: pmoN0IUYQPirdPvAW1VdZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78384457"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 5/8] drm/i915/dp: Reuse intel_dp_detect_dsc_caps() for eDP
Date: Wed, 16 Oct 2024 16:24:02 +0300
Message-ID: <20241016132405.2231744-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241016132405.2231744-1-imre.deak@intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
MIME-Version: 1.0
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

Reuse intel_dp_detect_dsc_caps() which already checks for the source's
DSC cap and retrieves the DPCD version from the DPRX caps.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 38 ++++++++++++-------------
 1 file changed, 18 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9ed4e5f8d798a..e2c37680caa91 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4018,6 +4018,23 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
 	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
 }
 
+static void
+intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
+	if (!HAS_DSC(i915))
+		return;
+
+	if (intel_dp_is_edp(intel_dp))
+		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
+					   connector);
+	else
+		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
+					  connector);
+}
+
 static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
 				     struct drm_display_mode *mode)
 {
@@ -4193,9 +4210,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	intel_dp_set_max_sink_lane_count(intel_dp);
 
 	/* Read the eDP DSC DPCD registers */
-	if (HAS_DSC(dev_priv))
-		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
-					   connector);
+	intel_dp_detect_dsc_caps(intel_dp, connector);
 
 	/*
 	 * If needed, program our source OUI so we can make various Intel-specific AUX services
@@ -5583,23 +5598,6 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
 					       false);
 }
 
-static void
-intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *connector)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-
-	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
-	if (!HAS_DSC(i915))
-		return;
-
-	if (intel_dp_is_edp(intel_dp))
-		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
-					   connector);
-	else
-		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
-					  connector);
-}
-
 static void
 intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
 {
-- 
2.44.2

