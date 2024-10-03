Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFE498EC0A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 11:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5670B10E1F5;
	Thu,  3 Oct 2024 09:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OoG/P27i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F0A510E1F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 09:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727946488; x=1759482488;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I1jHKVs1bQP4S5QtXh/mLkK524vT1JmdNiXYJ8N9oT8=;
 b=OoG/P27iK/mlfL4r9NIHjW8nIPO9uLg5WNffn4v5kwyzpktjDtBmVDRv
 wLDcglkxS2K6z6vblbGMUw4WVTx/CWuUOEODjg7CbpP99ireDf7efy+KS
 QuYePkplM6B40FQBZzoMDDNa7DPqrz2Tk3XE3+fzN0P1yz3XZf4cIEmNy
 Ac07jNvyx87DrTyyUqJVIezajncuO8qBAagOYl9y6NZSHXM23thcIjeMI
 qoXvfbfb4McqvtPPFz9nRVjvFdgbrRThSk+kkbn2swRxlC5GmcB5rZonk
 gMYkkF/gzEsK9IcGbRsQKqov+SngUBxJCZ1c6jUaMFHi7Hywj3MwhWL3+ A==;
X-CSE-ConnectionGUID: QlLeY7StQzGlnwOfVVBTcw==
X-CSE-MsgGUID: 5btWN7r7R8uYXnTAudX7wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="31013181"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="31013181"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 02:08:08 -0700
X-CSE-ConnectionGUID: Q6glezT5QKa4J4L9dggi1g==
X-CSE-MsgGUID: Qemjhy6QSfKgFh+WnMr/YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="73966452"
Received: from spottumu-desk.iind.intel.com ([10.145.152.200])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 02:08:06 -0700
From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, ville.syrjala@intel.com,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH] drm/i915/icl: Update csc and gamma enable checks
Date: Thu,  3 Oct 2024 14:33:41 +0530
Message-Id: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
X-Mailer: git-send-email 2.34.1
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

With ICL, we have a way to check if gamma and csc are enabled on
a pipe using bits in GAMMA_MODE and CSC_MODE. So, use them as well
along with the existing BOTTOM_COLOR checks.

BSpec: 7463, 7466
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 24 ++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 50f41aeb3c28..1bf36898dc7e 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1076,6 +1076,26 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->csc_enable = true;
 }
 
+static void icl_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	u32 bottom_color;
+
+	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
+	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
+
+	bottom_color = intel_de_read(i915, SKL_BOTTOM_COLOR(crtc->pipe));
+
+	if ((bottom_color & SKL_BOTTOM_COLOR_GAMMA_ENABLE) ||
+	    (crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE))
+		crtc_state->gamma_enable = true;
+
+	if ((bottom_color & SKL_BOTTOM_COLOR_CSC_ENABLE) ||
+	    (crtc_state->csc_mode & ICL_CSC_ENABLE))
+		crtc_state->csc_enable = true;
+}
+
 static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -3811,7 +3831,7 @@ static const struct intel_color_funcs tgl_color_funcs = {
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
 	.read_csc = icl_read_csc,
-	.get_config = skl_get_config,
+	.get_config = icl_get_config,
 };
 
 static const struct intel_color_funcs icl_color_funcs = {
@@ -3823,7 +3843,7 @@ static const struct intel_color_funcs icl_color_funcs = {
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
 	.read_csc = icl_read_csc,
-	.get_config = skl_get_config,
+	.get_config = icl_get_config,
 };
 
 static const struct intel_color_funcs glk_color_funcs = {
-- 
2.34.1

