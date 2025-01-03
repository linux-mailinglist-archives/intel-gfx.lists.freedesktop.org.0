Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F01B6A00A1C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:54:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 925C610E8CE;
	Fri,  3 Jan 2025 13:54:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mBfxTP2O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FEF210E8BF;
 Fri,  3 Jan 2025 13:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912440; x=1767448440;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yL8wbYbPv7ESKEGu4mDwSBE/pyt9ElfAb0yvFax7/RA=;
 b=mBfxTP2OcHxvKS8nSMtWgaDZz1j7r2dUdGl+9gG+l2qQVqQQaxobvivm
 zLBisz3bLARkt9bucJR/gABkGqY7jvvycB1JSa7A/2DmqQBpRc4zMl5Ia
 pZmvEqVkjxM5dQK3TU/5v9OmqwXgG/RJX7ddxzB1MjYeXzcRYkG2JTrnl
 t/GwqtkJAC/C1yy47uK0EBy5L1xeNWzXy66WmdtN7HHUiIFLh+I2mBRFY
 ZMm5SAjrafxwb6jysUpEwkggZMaqfWqGTG4cEoTtJDj2c8YeRAYu+N1ti
 Ugk+zUG2gaYd7YGXKPl+eI2P51XwICng4iu19ogtaql00+Cmr/xEzBU+h w==;
X-CSE-ConnectionGUID: SQKdRHlFSDKAsZZJ0kIxAA==
X-CSE-MsgGUID: rfvora8oQZ23Kp4dE7lVAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="53704005"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="53704005"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:54:00 -0800
X-CSE-ConnectionGUID: HlNSYf4BTeu52Q9zVdBQZg==
X-CSE-MsgGUID: rQnKHXenSE29XxqAASNYSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="132651880"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 15/16] drm/i915/ddi: disable trancoder port select for
 128b/132b SST
Date: Fri,  3 Jan 2025 15:52:38 +0200
Message-Id: <eaf705b3490d828ba33e85f40a7794d58de7c5ad.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

128b/1232b SST will have mst_master_transcoder set and matching
cpu_transcoder. Ensure disable also for 128b/132b SST.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Co-developed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e114929d4d9c..c55453e377d8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -657,6 +657,7 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	u32 ctl;
 
 	if (DISPLAY_VER(dev_priv) >= 11)
@@ -676,7 +677,8 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 			 TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		if (!intel_dp_mst_is_master_trans(crtc_state)) {
+		if (!intel_dp_mst_is_master_trans(crtc_state) ||
+		    (!is_mst && intel_dp_is_uhbr(crtc_state))) {
 			ctl &= ~(TGL_TRANS_DDI_PORT_MASK |
 				 TRANS_DDI_MODE_SELECT_MASK);
 		}
-- 
2.39.5

