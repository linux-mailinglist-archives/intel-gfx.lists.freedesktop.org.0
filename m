Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F9770684C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 14:38:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0E510E411;
	Wed, 17 May 2023 12:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A011B10E411
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 12:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684327124; x=1715863124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0WDBTi5heyHa3s2SPEY0/j07e+lAqZoHnqt4Mdgz2Qk=;
 b=KFa5cEKomZNH4/hS0fkNWtyCv046TX+Y3rTaH0YzB0vuweKOySEJ50Fn
 Iz34y7I/dd2A+JlkWh2J6uQL1weq1WS0YJoHkXC8huLXeAzjkWIUYbp3i
 qomJLldxHsszUgy7bPVV20vVflSIonuM7k8sXqTxeIBynQ8EGJPWB89xL
 gLxzaLXOQSVssO//UXGqCILd/5EfhiHsN/ccRMGQLoCW5XINh0BMb6XJZ
 C5RTkAaehP4jxql6mg7fNcHEZQYiNMqdzmbkNG6/p2wA2GcmsC/9BEmv/
 /qbfNttmUL5Wk6pFcqOhIBVwITekTZxq+LPV7315VH9uFZVHdqXlEA15L g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="417402127"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="417402127"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="695850379"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="695850379"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 15:38:19 +0300
Message-Id: <21b294115c72e2b632992773f37c46bcde54cbe6.1684327004.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1684327004.git.jani.nikula@intel.com>
References: <cover.1684327004.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: move ILK+ CSC mode read to
 intel_color
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Abstract the platform specific register access better.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c |  6 ------
 2 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 25730697fa8a..c99941472cb2 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -909,11 +909,19 @@ static u32 hsw_read_gamma_mode(struct intel_crtc *crtc)
 	return intel_de_read(i915, GAMMA_MODE(crtc->pipe));
 }
 
+static u32 ilk_read_csc_mode(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	return intel_de_read(i915, PIPE_CSC_MODE(crtc->pipe));
+}
+
 static void hsw_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
+	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
 }
 
 static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
@@ -3096,6 +3104,13 @@ static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
 	return blob;
 }
 
+static void ilk_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
+}
+
 static void ilk_read_luts(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -3488,6 +3503,7 @@ static const struct intel_color_funcs ivb_color_funcs = {
 	.read_luts = ivb_read_luts,
 	.lut_equal = ivb_lut_equal,
 	.read_csc = ilk_read_csc,
+	.get_config = ilk_get_config,
 };
 
 static const struct intel_color_funcs ilk_color_funcs = {
@@ -3498,6 +3514,7 @@ static const struct intel_color_funcs ilk_color_funcs = {
 	.read_luts = ilk_read_luts,
 	.lut_equal = ilk_lut_equal,
 	.read_csc = ilk_read_csc,
+	.get_config = ilk_get_config,
 };
 
 void intel_color_crtc_init(struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3c93f1676e14..a24466efe0ae 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3329,9 +3329,6 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->msa_timing_delay = REG_FIELD_GET(TRANSCONF_MSA_TIMING_DELAY_MASK, tmp);
 
-	pipe_config->csc_mode = intel_de_read(dev_priv,
-					      PIPE_CSC_MODE(crtc->pipe));
-
 	i9xx_get_pipe_color_config(pipe_config);
 	intel_color_get_config(pipe_config);
 
@@ -3723,9 +3720,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->sink_format = pipe_config->output_format;
 
-	pipe_config->csc_mode = intel_de_read(dev_priv,
-					      PIPE_CSC_MODE(crtc->pipe));
-
 	if (DISPLAY_VER(dev_priv) >= 9) {
 		tmp = intel_de_read(dev_priv, SKL_BOTTOM_COLOR(crtc->pipe));
 
-- 
2.39.2

