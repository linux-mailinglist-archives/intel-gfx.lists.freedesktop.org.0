Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 934C89C4DEF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 05:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA3D10E301;
	Tue, 12 Nov 2024 04:54:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a3OTsQw1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2606C10E233;
 Tue, 12 Nov 2024 04:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731387291; x=1762923291;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JVc84VmJ7xPplE7bL4ZBDwb47Ft45bdE2pYA9hoi/OY=;
 b=a3OTsQw1dp7JQ7wva0WIrJO4x6s6QQHNzSGFUL9+5w0sN+AKsGq70ETs
 U9LrM4R8pIKmcY3T/wGzVpSGn5MemKtK8L/WhlD65yZe9flgNmLOgjDb6
 raYWxScP6AT/J8yDWYrCsXWGM+H5B0Oo7KFk3oBCQEMXsjVURNw1BDArL
 z3DygAXYGWnfENTJplmI3a0HR2ieYXzIwjCn8MuQqzmpHap7mJGSH9HY/
 GBZemV1GG1LgkeuMLuo1C/ja9nHftBU2fiwVQgkFQwo9m9U03iFbD+mCi
 /m42HIpAMPLtq3s3PLVM546EBCsfg3Rlluzhn4Y+WpbQuY+8nsMW1eshn A==;
X-CSE-ConnectionGUID: HMj5kY6ATiyfd0nxPlmbig==
X-CSE-MsgGUID: eG8prx4CROSm/8EyGVycLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="42585888"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="42585888"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 20:54:51 -0800
X-CSE-ConnectionGUID: ccacHcPmQEybfvE/mimZCw==
X-CSE-MsgGUID: B4kKRmxYQjm+zHudqnb7UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87673113"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa009.fm.intel.com with ESMTP; 11 Nov 2024 20:54:49 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/5] drm/i915/watermark: Rename enable_dpkgc variable
Date: Tue, 12 Nov 2024 10:24:32 +0530
Message-Id: <20241112045435.1189586-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112045435.1189586-1-suraj.kandpal@intel.com>
References: <20241112045435.1189586-1-suraj.kandpal@intel.com>
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

Rename the enable_dpkgc variable to make it more clear what it
represents which is that if we are in fixed refresh rate or not.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a97e90ac643f..3fa463159b0b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2848,7 +2848,7 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
  * Program PKG_C_LATENCY Added Wake Time = 0
  */
 static void
-skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
+skl_program_dpkgc_latency(struct drm_i915_private *i915, bool fixed_refresh_rate)
 {
 	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear = 0, val = 0;
@@ -2857,7 +2857,7 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 	if (DISPLAY_VER(i915) < 20)
 		return;
 
-	if (enable_dpkgc) {
+	if (fixed_refresh_rate) {
 		max_latency = skl_watermark_max_latency(i915, 1);
 		if (max_latency == 0)
 			max_latency = LNL_PKG_C_LATENCY_MASK;
@@ -2878,7 +2878,7 @@ skl_compute_wm(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
-	bool enable_dpkgc = false;
+	bool fixed_refresh_rate = false;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2907,10 +2907,10 @@ skl_compute_wm(struct intel_atomic_state *state)
 		if ((new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
 		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
 		    !new_crtc_state->vrr.enable)
-			enable_dpkgc = true;
+			fixed_refresh_rate = true;
 	}
 
-	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc);
+	skl_program_dpkgc_latency(to_i915(state->base.dev), fixed_refresh_rate);
 
 	skl_print_wm_changes(state);
 
-- 
2.34.1

