Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E12A38F2B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 23:37:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A257110E5F8;
	Mon, 17 Feb 2025 22:37:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ewEpHls4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B73710E5F4;
 Mon, 17 Feb 2025 22:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739831852; x=1771367852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+qqf4MokL2mM+hbu2u2ztwqSa9ICZE7XMBOg4nJ+6Jw=;
 b=ewEpHls4TLUHNhqhjjxbJeZhXB4N9a4LN517xrkXtj6thA6Ehm7U/Onf
 Dn1pFMvCJ9XeYkZBv9RDwLZ9JNSLZw+Vk8dvvIIFcgVINma5PuHzq6e+i
 4mhjG3A/p84kkYf0ONdLiNjaSoB3jqI4ZMWjvT9m1UvzYe8DZTdWp/Msx
 7EuF/jgsHJ7ZXaqHT9v8nAeAkv6oMAl/RQhYvdzysd/lmR79FmJYeqHs9
 fA+QlKRTwyDSPfbj2h4XBOtZvOp4HguCr2M+I6BFplG23/fnKgy8SI5dk
 5NEZZbxqPcALtQIubz/kurVXAlOGZSj4SjaNy8cwI3kLWwjnOaT6ntgL+ Q==;
X-CSE-ConnectionGUID: KfxQ6lTRQ7WsOKEupY6uWA==
X-CSE-MsgGUID: VU0N5YOSQpSLFoefnQE6Ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="44171149"
X-IronPort-AV: E=Sophos;i="6.13,294,1732608000"; d="scan'208";a="44171149"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 14:37:31 -0800
X-CSE-ConnectionGUID: 9JEQedLGRbKjfupuHwMZ6g==
X-CSE-MsgGUID: 73tOt+z4S0ydvLh6uDe3Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,294,1732608000"; d="scan'208";a="114872588"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 14:37:30 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 2/2] drm/i915/dp: Fix disabling the transcoder function in
 128b/132b mode
Date: Tue, 18 Feb 2025 00:38:28 +0200
Message-ID: <20250217223828.1166093-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250217223828.1166093-1-imre.deak@intel.com>
References: <20250217223828.1166093-1-imre.deak@intel.com>
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

During disabling the transcoder in DP 128b/132b mode (both in case of an
MST master transcoder and in case of SST) the transcoder function must
be first disabled without changing any other field in the register (in
particular leaving the DDI port and mode select fields unchanged) and
clearing the DDI port and mode select fields separately, later during
the disabling sequences. Fix the sequence accordingly.

Bspec: 54128, 65448, 68849
Cc: Jani Nikula <jani.nikula@intel.com>
Fixes: 79a6734cd56e ("drm/i915/ddi: disable trancoder port select for 128b/132b SST")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5082f38b0a02e..7937f4de66cb4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -681,7 +681,6 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	u32 ctl;
 
 	if (DISPLAY_VER(dev_priv) >= 11)
@@ -701,8 +700,7 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 			 TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		if (!intel_dp_mst_is_master_trans(crtc_state) ||
-		    (!is_mst && intel_dp_is_uhbr(crtc_state))) {
+		if (!intel_dp_mst_is_master_trans(crtc_state)) {
 			ctl &= ~(TGL_TRANS_DDI_PORT_MASK |
 				 TRANS_DDI_MODE_SELECT_MASK);
 		}
@@ -3138,7 +3136,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	intel_dp_set_power(intel_dp, DP_SET_POWER_D3);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		if (is_mst) {
+		if (is_mst || intel_dp_is_uhbr(old_crtc_state)) {
 			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
 			intel_de_rmw(dev_priv,
-- 
2.44.2

