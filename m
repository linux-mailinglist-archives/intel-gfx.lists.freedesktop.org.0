Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 489B470684B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 14:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB8F10E414;
	Wed, 17 May 2023 12:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF01610E414
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 12:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684327119; x=1715863119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ok9aVXOad/qEfWSYl4spjmJkYCUwY1Z/aeZIFptR6/0=;
 b=EMsSvwBtq5orWBW0JC+3TWyGcF2+C+mA+vBDvJW+aCo3xCk1E+9fCxhf
 L8mcPolFa92DMvPlFrzAIKvRVAIjhfmjfTeRu7JknP6gmZIpxtUlrly53
 eAwad/KrQxCBheagcg7NCabDGVflyeU0j0EA+V4WmtzX0yPmVJsPrYkyc
 IOZIabLUT4SCpRIZc9sTgIs3uq4LYKHZdV4TEfR4cRQMa+Qbnd3hzJXmp
 atOZjDYABCkQMKOJqjVfjQW89ZS4wabWGi/8Z8PwOn/AU3Q9ER5MsYyNY
 X7QVgyRn7LbOI+t560rCc88afRONjwi3MeBMR8+5rFJOZfv/KFNZnkR+W Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="354040342"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="354040342"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="876030810"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="876030810"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 15:38:18 +0300
Message-Id: <dc75d6c60100bc6f1e3daf33c5aa32f90ed23a68.1684327004.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1684327004.git.jani.nikula@intel.com>
References: <cover.1684327004.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: move HSW+ gamma mode read to
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

Abstract the platform specific register access better. The separate
hsw_read_gamma_mode() will make more sense with the following changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c |  3 ---
 2 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 0a6d5ff494eb..25730697fa8a 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -902,6 +902,20 @@ static void hsw_color_commit_arm(const struct intel_crtc_state *crtc_state)
 			  crtc_state->csc_mode);
 }
 
+static u32 hsw_read_gamma_mode(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	return intel_de_read(i915, GAMMA_MODE(crtc->pipe));
+}
+
+static void hsw_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
+}
+
 static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -3407,6 +3421,7 @@ static const struct intel_color_funcs tgl_color_funcs = {
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
 	.read_csc = icl_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs icl_color_funcs = {
@@ -3418,6 +3433,7 @@ static const struct intel_color_funcs icl_color_funcs = {
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
 	.read_csc = icl_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs glk_color_funcs = {
@@ -3428,6 +3444,7 @@ static const struct intel_color_funcs glk_color_funcs = {
 	.read_luts = glk_read_luts,
 	.lut_equal = glk_lut_equal,
 	.read_csc = skl_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs skl_color_funcs = {
@@ -3438,6 +3455,7 @@ static const struct intel_color_funcs skl_color_funcs = {
 	.read_luts = bdw_read_luts,
 	.lut_equal = ivb_lut_equal,
 	.read_csc = skl_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs bdw_color_funcs = {
@@ -3448,6 +3466,7 @@ static const struct intel_color_funcs bdw_color_funcs = {
 	.read_luts = bdw_read_luts,
 	.lut_equal = ivb_lut_equal,
 	.read_csc = ilk_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs hsw_color_funcs = {
@@ -3458,6 +3477,7 @@ static const struct intel_color_funcs hsw_color_funcs = {
 	.read_luts = ivb_read_luts,
 	.lut_equal = ivb_lut_equal,
 	.read_csc = ilk_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs ivb_color_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9b9b885db8d4..3c93f1676e14 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3723,9 +3723,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->sink_format = pipe_config->output_format;
 
-	pipe_config->gamma_mode = intel_de_read(dev_priv,
-						GAMMA_MODE(crtc->pipe));
-
 	pipe_config->csc_mode = intel_de_read(dev_priv,
 					      PIPE_CSC_MODE(crtc->pipe));
 
-- 
2.39.2

