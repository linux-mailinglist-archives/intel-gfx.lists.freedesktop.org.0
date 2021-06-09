Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA843A2081
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 01:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0876EB5A;
	Wed,  9 Jun 2021 23:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 142026EB5A
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 23:08:00 +0000 (UTC)
IronPort-SDR: qg5Hvo84EWQbgKvunynSTCQJYZbIbk5pmq2ctrpGOpliGznTN26M4PXwgDEF+m+DpSdAC+KRvP
 p8QN1tgsu6HQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="203338521"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="203338521"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 16:07:59 -0700
IronPort-SDR: QJT8pY+40kf1of7e+hTsmUMTQTZWp53I3gcAQvgkThJvdzs+ZIN3+V1x1ewEHnmUxl2TlxIcKI
 R74dcSK3VCXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="635573907"
Received: from kialmah1-desk.jf.intel.com ([10.23.15.164])
 by fmsmga006.fm.intel.com with ESMTP; 09 Jun 2021 16:07:58 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 16:11:33 -0700
Message-Id: <20210609231133.1471989-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add enable_lttpr param to select
 between different LTTPR modes
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

As LTTPR usage increases in newer platforms, and because not all LTTPRs (located
on board, Docking, active cables, or Monitors) are created equal. We face
challenges in debugging issues because of it. So we need an easy way to switch
between different LTTPR modes (at least non-LTTPR and non-transparent modes) to
debug. This patch allows us to do that by just setting driver parameters instead
of sending patches to ODMs to switch between LTTPR modes.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 7 +++++++
 drivers/gpu/drm/i915/i915_params.c                    | 4 ++++
 drivers/gpu/drm/i915/i915_params.h                    | 1 +
 3 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 08bceae40aa8..c29c1e005c6f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -92,6 +92,9 @@ static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp)
 	if (intel_dp_is_edp(intel_dp))
 		return false;
 
+	if (!i915->params.enable_lttpr)
+		return 0;
+
 	/*
 	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
 	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
@@ -132,6 +135,7 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp)
 {
 	int lttpr_count;
 	int i;
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (!intel_dp_read_lttpr_common_caps(intel_dp))
 		return 0;
@@ -152,6 +156,9 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp)
 	 */
 	intel_dp_set_lttpr_transparent_mode(intel_dp, true);
 
+	if (i915->params.enable_lttpr > 0)
+		return 0;
+
 	/*
 	 * In case of unsupported number of LTTPRs or failing to switch to
 	 * non-transparent mode fall-back to transparent link training mode,
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index e07f4cfea63a..67d030774ced 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -178,6 +178,10 @@ i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
 i915_param_named_unsafe(enable_dp_mst, bool, 0400,
 	"Enable multi-stream transport (MST) for new DisplayPort sinks. (default: true)");
 
+i915_param_named_unsafe(enable_lttpr, int, 0400,
+	"Enable LTTPR "
+	"(-1= non-transparent mode [default], 0=Non-LTTPR, 1=transparent-mode)");
+
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
 i915_param_named_unsafe(inject_probe_failure, uint, 0400,
 	"Force an error after a number of failure check points (0:disabled (default), N:force failure at the Nth failure check point)");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index f27eceb82c0f..40f15a6db153 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -61,6 +61,7 @@ struct drm_printer;
 	param(int, invert_brightness, 0, 0600) \
 	param(int, enable_guc, -1, 0400) \
 	param(int, guc_log_level, -1, 0400) \
+	param(int, enable_lttpr, -1, 0600) \
 	param(char *, guc_firmware_path, NULL, 0400) \
 	param(char *, huc_firmware_path, NULL, 0400) \
 	param(char *, dmc_firmware_path, NULL, 0400) \
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
