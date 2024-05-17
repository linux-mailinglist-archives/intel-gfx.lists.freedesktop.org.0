Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB278C888B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 16:54:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34FD10EEFA;
	Fri, 17 May 2024 14:54:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hT/jGmMG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5477910EEF5
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 14:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715957651; x=1747493651;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=C7m2SPoImBnbL9nLWJhvCuXl/6ZIW7+ECDZOVaBPt7o=;
 b=hT/jGmMGcxWEUdI+vwpNzD8LLn7PCrwuoa5VcWDvU4T2u3VE458gZYQS
 Csoc9zxE6NysB7jStMxKAbf5BFZoOlOQNNZGXIDu9qXdEqWctWxtuBB/I
 vrrKHCDRosQpiRZxCt7AFgkT9GakmcNMYeWlHm9ky6yZFu3v2JHN0ZNRG
 1Pae8k8P32++dvOGmHdh8ADeal31DYcOFpi5Esic/uyulRACTf0yIFr+o
 BWZasLwWSa/loHxXNipYq9cg15HZZ33IenNkraiQuANN68SMWE8SU1vMQ
 nf5x2LJgSqO370GurS8kC4Q3hafQyx4gNUosQ4X/mwkMTPWTds2BRfFdi g==;
X-CSE-ConnectionGUID: L3Y4PnNKTVOGMgpfUcIZRQ==
X-CSE-MsgGUID: xwasytcMS9KrpeCCXKyX2A==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="12008037"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="12008037"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 07:54:11 -0700
X-CSE-ConnectionGUID: hAD+LlDDRsa075b1BOr0kQ==
X-CSE-MsgGUID: m3acIvaaSUmCkUTpgcMFyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="31800973"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 May 2024 07:54:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2024 17:54:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/7] drm/i915: Use intel_dp_has_dsc() during .compute_config()
Date: Fri, 17 May 2024 17:53:53 +0300
Message-ID: <20240517145356.26103-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reuse intel_dp_has_dsc() during .compute_config() instead of
repeating some of the checks again by hand. We'll be adding
more checks to intel_dp_has_dsc() and this will make sure
we cover both .mode_valid() and .compute_config() with them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a4703b71c498..6dfde22e5f9d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1459,14 +1459,16 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 		drm_dp_sink_supports_fec(connector->dp.fec_capability);
 }
 
-static bool intel_dp_supports_dsc(const struct intel_connector *connector,
+static bool intel_dp_supports_dsc(struct intel_connector *connector,
 				  const struct intel_crtc_state *crtc_state)
 {
+	if (!intel_dp_has_dsc(connector))
+		return false;
+
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state->fec_enable)
 		return false;
 
-	return intel_dsc_source_support(crtc_state) &&
-		drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd);
+	return intel_dsc_source_support(crtc_state);
 }
 
 static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
@@ -2213,7 +2215,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	const struct intel_connector *connector =
+	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
-- 
2.44.1

