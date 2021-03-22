Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E81C0343990
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 07:38:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854646E2ED;
	Mon, 22 Mar 2021 06:38:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83FD56E0BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 06:38:23 +0000 (UTC)
IronPort-SDR: gvqnTd9TPTIkmAzMyCoctYk8Q8MjBXpL9zD4Qch0L+jWTZ5g5STamPqtInfp3wDr3J20fyNBob
 Bu0uhru6BoFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="190238725"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="190238725"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:23 -0700
IronPort-SDR: t4/yCEDD0mcAFvkQrP0j6WcjDum3unhjvZZrb7s/hrlo9+vSXKuhEnMKnFBl8iJOI30/IMKkxE
 iS9w7VDQ9qlg==
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="451627115"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:21 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 20:00:04 +0530
Message-Id: <20210322143008.29250-4-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
References: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/display: Add macro to compare
 hw/sw CSC matrix
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add macro to compare hw/sw CSC coeff values. First need to
check whether hw/sw csc enable and csc mode matches or not.
If not no need to compare coeff values, if matches then only
compare.

Cc: Swati Sharma <swati2.sharma@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 ++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7b38b9a38b85..c4b9d4a238b9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8925,6 +8925,29 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
+#define PIPE_CONF_CHECK_CSC(name1, name2, name3) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %s, found %s, won't compare csc coeffs)", \
+				yesno(current_config->name1), \
+				yesno(pipe_config->name1)); \
+		ret = false;\
+	} else if (current_config->name2 != pipe_config->name2) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+				"(expected %i, found %i, won't compare csc coeffs)", \
+				current_config->name2, \
+				pipe_config->name2); \
+		ret = false;\
+	} else { \
+		if (!intel_csc_equal(current_config, current_config->name3, \
+				pipe_config->name3)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name3), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)
+
 #define PIPE_CONF_QUIRK(quirk) \
 	((current_config->quirks | pipe_config->quirks) & (quirk))
 
@@ -9052,6 +9075,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		bp_gamma = intel_color_get_gamma_bit_precision(pipe_config);
 		if (bp_gamma)
 			PIPE_CONF_CHECK_COLOR_LUT(gamma_mode, hw.gamma_lut, bp_gamma);
+
+		if (HAS_GMCH(dev_priv)) {
+			if (IS_CHERRYVIEW(dev_priv))
+				PIPE_CONF_CHECK_CSC(csc_enable, cgm_mode, hw.ctm);
+		} else {
+			PIPE_CONF_CHECK_CSC(csc_enable, csc_mode, hw.ctm);
+		}
 	}
 
 	PIPE_CONF_CHECK_BOOL(double_wide);
@@ -9143,6 +9173,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #undef PIPE_CONF_CHECK_FLAGS
 #undef PIPE_CONF_CHECK_CLOCK_FUZZY
 #undef PIPE_CONF_CHECK_COLOR_LUT
+#undef PIPE_CONF_CHECK_CSC
 #undef PIPE_CONF_QUIRK
 
 	return ret;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
