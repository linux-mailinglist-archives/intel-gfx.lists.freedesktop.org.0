Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0581A3F4E41
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 18:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 609086E07F;
	Mon, 23 Aug 2021 16:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D6036E07F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 16:19:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="215292571"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="215292571"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:19:33 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="514971567"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 09:19:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 manasi.d.navare@intel.com
Date: Mon, 23 Aug 2021 19:18:13 +0300
Message-Id: <0b8fe589d5e656f308fd2c8e6369e6c9fffcfe38.1629735412.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629735412.git.jani.nikula@intel.com>
References: <cover.1629735412.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/19] drm/i915/dp: add helper for checking
 for UHBR link rate
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

Helpful abstraction to avoid duplication.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dp.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e5d9b959c1d..907c10a0cdef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -111,6 +111,12 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
 
+/* Is link rate UHBR and thus 128b/132b? */
+bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->port_clock >= 1000000;
+}
+
 /* update sink rates from dpcd */
 static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ae0f776bffab..443a8628bfcf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -58,6 +58,7 @@ int intel_dp_compute_config(struct intel_encoder *encoder,
 			    struct intel_crtc_state *pipe_config,
 			    struct drm_connector_state *conn_state);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
+bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
 bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
 enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_port,
 				  bool long_hpd);
-- 
2.20.1

