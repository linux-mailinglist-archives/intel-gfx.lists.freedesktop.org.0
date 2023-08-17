Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF32E77FB36
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 17:53:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5614710E4F7;
	Thu, 17 Aug 2023 15:53:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ACF910E4F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 15:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692287632; x=1723823632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UF8w/wP9JfKVoFK3uWXY0Td3StHBj1QuxczLNs/dv5U=;
 b=aPi9TbBZlBNR5DI6K96NOOPZbGgG3ND0SHlogshlx88OHLvO9tlCbI1e
 8YSD9WFfHtHrPQoMlJYvDD0nRlxGU7L7TILUzCyzNPshRIcQd6i42j+Ly
 8zmHrAjGViLA5L9uvdFNabMj+GXXxPAPH1+FEO3KuhDqBDJOqAw1Bmgbc
 BYNO/Xy6r6+ohdJL8gR4nuWdWmW+9uujhP9gJVDVEXedo626Y4f3MR3bD
 q7K5S+ZYwS8Dr3g4uQIZFtC4TPkfeNcbyxxhqurJLZymxRWw+4JOWVd4R
 RfnzEUKx2hGw1VVZSKT4Slfm1DKCiYWX4EKVnX7CKIJK3Gvxd7f7fGrAC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="439227407"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="439227407"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:53:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="764150365"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="764150365"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:53:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 18:53:06 +0300
Message-Id: <8f34c577c663839020405e96cdb464319c2881d4.1692287501.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1692287501.git.jani.nikula@intel.com>
References: <cover.1692287501.git.jani.nikula@intel.com>
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
index c96ad135efd6..27331bd47781 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1025,11 +1025,19 @@ static u32 hsw_read_gamma_mode(struct intel_crtc *crtc)
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
@@ -3297,6 +3305,13 @@ static struct drm_property_blob *ilk_read_lut_10(struct intel_crtc *crtc)
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
@@ -3706,6 +3721,7 @@ static const struct intel_color_funcs ivb_color_funcs = {
 	.read_luts = ivb_read_luts,
 	.lut_equal = ivb_lut_equal,
 	.read_csc = ilk_read_csc,
+	.get_config = ilk_get_config,
 };
 
 static const struct intel_color_funcs ilk_color_funcs = {
@@ -3716,6 +3732,7 @@ static const struct intel_color_funcs ilk_color_funcs = {
 	.read_luts = ilk_read_luts,
 	.lut_equal = ilk_lut_equal,
 	.read_csc = ilk_read_csc,
+	.get_config = ilk_get_config,
 };
 
 void intel_color_crtc_init(struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3f3fbb82a99b..f2632e010643 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3341,9 +3341,6 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->msa_timing_delay = REG_FIELD_GET(TRANSCONF_MSA_TIMING_DELAY_MASK, tmp);
 
-	pipe_config->csc_mode = intel_de_read(dev_priv,
-					      PIPE_CSC_MODE(crtc->pipe));
-
 	i9xx_get_pipe_color_config(pipe_config);
 	intel_color_get_config(pipe_config);
 
@@ -3735,9 +3732,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->sink_format = pipe_config->output_format;
 
-	pipe_config->csc_mode = intel_de_read(dev_priv,
-					      PIPE_CSC_MODE(crtc->pipe));
-
 	if (DISPLAY_VER(dev_priv) >= 9) {
 		tmp = intel_de_read(dev_priv, SKL_BOTTOM_COLOR(crtc->pipe));
 
-- 
2.39.2

