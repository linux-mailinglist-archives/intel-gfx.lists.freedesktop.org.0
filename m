Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAB79B090F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2694B10EB0D;
	Fri, 25 Oct 2024 16:02:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XbtmMmiw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A6910EB0D
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 16:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729872154; x=1761408154;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GhaeMS27fVWQ9431q1nbUhQ7iZ6R53Yoa56bqEwtgh4=;
 b=XbtmMmiwnQkHWVjHFpZdXjm7PrKKoH6+xL3jYD5uAgc3u0bob3tNPa0e
 /ALH7o3ZE3ABEF2k+P3OPmkYV7czHnGSbXPRK65TWtkDIGPHyRnhpRrSP
 YkK7IyoMYm4DMZtChDyMkmYE+un0S72IXMZ4fkYesGJKsdO7uw4PexDX9
 +LqtSpjvYZ9Gx65GMFnqmLMWdHYZtwDd8EQNdch3jvlpqQHvEiAy4kAIO
 ix6Z5NLZO3gz6wWB4MdwCL5Ea8x8wdc2D1MtJgSubHspF1mOAIWyUq7qj
 MLRTLWtRxugGzpbPq1p8NMmyAsnWirN4S8dWxRH6vj3I5YqJMRnpnOuJ6 w==;
X-CSE-ConnectionGUID: jGglfOnsRcK5QKQwpWcJOQ==
X-CSE-MsgGUID: 6XlB79AcRyK79yEY34EggA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33242391"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33242391"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:34 -0700
X-CSE-ConnectionGUID: J1EiTFGMSxqVkng/7fTnOg==
X-CSE-MsgGUID: Tu7WnWmASOWl3K8NC/FCrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81783704"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v5 5/8] drm/i915/dp: Reuse intel_dp_detect_dsc_caps() for eDP
Date: Fri, 25 Oct 2024 19:02:56 +0300
Message-ID: <20241025160259.3088727-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241025160259.3088727-1-imre.deak@intel.com>
References: <20241025160259.3088727-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 38 ++++++++++++-------------
 1 file changed, 18 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ca5912f8057b6..a3bc631d64095 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4014,6 +4014,23 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
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
@@ -4189,9 +4206,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	intel_dp_set_max_sink_lane_count(intel_dp);
 
 	/* Read the eDP DSC DPCD registers */
-	if (HAS_DSC(dev_priv))
-		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
-					   connector);
+	intel_dp_detect_dsc_caps(intel_dp, connector);
 
 	/*
 	 * If needed, program our source OUI so we can make various Intel-specific AUX services
@@ -5578,23 +5593,6 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
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

