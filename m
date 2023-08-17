Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7222277FB35
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 17:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C1910E4F5;
	Thu, 17 Aug 2023 15:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F91F10E4F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 15:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692287630; x=1723823630;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+1vePkWF1fAC6MFiPdGz2D6fxDR2eW/2FKzvlROvDes=;
 b=Wf4JPay+WCF+yZBBaKvlD0yG70dMf6BvtkiFu6DdBIPwBS8Z2mVFEQbc
 YrrUrGN5hlavbWrHW/SK/8EEYgv9OBTGjMumdOAtxacRUIwXq6rpdC+wc
 9sDR01TkdiEYLtFsQM1p5D/0viBJErVnvRLf+mkxAPuajcuzJlw3cTYyd
 901Efowx+0V9wlpOu1q3AAJD0jJ7VkLYH1wTFkoNm14WGZKkUtiTzj4/e
 hU/nHDcZ54ftods/SWKKLDtZcHRO4ehFTMudM4j2LHMqArPd4Lneuj4Jo
 jk2zEw2pZtBxT55VcHfdXFJ2oqEShyuFM4o5JJTdSiinhR9SYevufYYPa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="439227377"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="439227377"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:53:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="764150336"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="764150336"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:53:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 18:53:05 +0300
Message-Id: <b7ddcc8b0fb783eb149864070821bdb695c40366.1692287501.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1692287501.git.jani.nikula@intel.com>
References: <cover.1692287501.git.jani.nikula@intel.com>
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
index 73110bf1dbc2..c96ad135efd6 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1018,6 +1018,20 @@ static void hsw_color_commit_arm(const struct intel_crtc_state *crtc_state)
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
@@ -3625,6 +3639,7 @@ static const struct intel_color_funcs tgl_color_funcs = {
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
 	.read_csc = icl_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs icl_color_funcs = {
@@ -3636,6 +3651,7 @@ static const struct intel_color_funcs icl_color_funcs = {
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
 	.read_csc = icl_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs glk_color_funcs = {
@@ -3646,6 +3662,7 @@ static const struct intel_color_funcs glk_color_funcs = {
 	.read_luts = glk_read_luts,
 	.lut_equal = glk_lut_equal,
 	.read_csc = skl_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs skl_color_funcs = {
@@ -3656,6 +3673,7 @@ static const struct intel_color_funcs skl_color_funcs = {
 	.read_luts = bdw_read_luts,
 	.lut_equal = ivb_lut_equal,
 	.read_csc = skl_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs bdw_color_funcs = {
@@ -3666,6 +3684,7 @@ static const struct intel_color_funcs bdw_color_funcs = {
 	.read_luts = bdw_read_luts,
 	.lut_equal = ivb_lut_equal,
 	.read_csc = ilk_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs hsw_color_funcs = {
@@ -3676,6 +3695,7 @@ static const struct intel_color_funcs hsw_color_funcs = {
 	.read_luts = ivb_read_luts,
 	.lut_equal = ivb_lut_equal,
 	.read_csc = ilk_read_csc,
+	.get_config = hsw_get_config,
 };
 
 static const struct intel_color_funcs ivb_color_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fd74f4d33f8c..3f3fbb82a99b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3735,9 +3735,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	pipe_config->sink_format = pipe_config->output_format;
 
-	pipe_config->gamma_mode = intel_de_read(dev_priv,
-						GAMMA_MODE(crtc->pipe));
-
 	pipe_config->csc_mode = intel_de_read(dev_priv,
 					      PIPE_CSC_MODE(crtc->pipe));
 
-- 
2.39.2

