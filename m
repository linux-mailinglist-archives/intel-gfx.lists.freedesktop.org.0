Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F93C63ABC
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A8FF10E390;
	Mon, 17 Nov 2025 10:59:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="go2YB8k1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF48110E38C;
 Mon, 17 Nov 2025 10:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377170; x=1794913170;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8osycrFc5tIUiIDGKWqxqte2xrIQOw3GeylOohhQIq4=;
 b=go2YB8k1BuVfr275NdmFSlHxTqAf7tX9ur3JhU99B4ul2jTjp9WsY8ci
 mjOCYMNFC6scVcDKb7s537qAzlH5bNP/Av6bbh8sarJ5SUgyhZX2wLGAb
 3ysSc0C+25mecS5ga2MwmeTXCNBi0OO5Opd1TVEwxCaHXMi+u2VVSfNPy
 xEqmYVw+hRyv5SqXVRvliyTsG2x4egOkB1Ef2kGMz5TZFoa4r3kXDXljb
 7qgZXwg7RJ6XP5aOKQdBwpEC11aHrngZXLuUoo3ZZ7TudwIdQtsLsg5ay
 gaxfqAuNYho+bZ9zSA8Wadrbr3GR9t/aJXcHW73/exhRcU/MeXklSRJKv g==;
X-CSE-ConnectionGUID: 2evQlnI2QAKvqT2qMvXbWQ==
X-CSE-MsgGUID: cKiO6mpYR3OgseWd7gntJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475407"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475407"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:29 -0800
X-CSE-ConnectionGUID: V3su8Y/iQRm6HE9b9bf86Q==
X-CSE-MsgGUID: nz8iDC5CQ8GAL2zsZTTFMw==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:28 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 21/32] drm/i915/cx0: Add MTL+ .update_active_dpll hook
Date: Mon, 17 Nov 2025 12:45:51 +0200
Message-Id: <20251117104602.2363671-22-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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

Add .update_active_dpll function pointer to support
dpll framework. Reuse ICL function pointer.

v2: Add check for !HAS_LT_PHY (Suraj)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 3 +++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 002ccd47856d..6b43d326e50c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3671,6 +3671,9 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 	if (DISPLAY_VER(display) >= 14 || !intel_encoder_is_tc(encoder))
 		return;
 
+	if (!HAS_LT_PHY(display))
+		return;
+
 	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
 					 intel_crtc_joined_pipe_mask(crtc_state))
 		intel_dpll_update_active(state, pipe_crtc, encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c45f18201ee8..e6dd6f1123d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4449,6 +4449,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr = {
 	.compute_dplls = mtl_compute_dplls,
 	.get_dplls = mtl_get_dplls,
 	.put_dplls = icl_put_dplls,
+	.update_active_dpll = icl_update_active_dpll,
 };
 
 /**
-- 
2.34.1

