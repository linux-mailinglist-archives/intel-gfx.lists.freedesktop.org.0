Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF656EF8C5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:53:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622BA10E8E4;
	Wed, 26 Apr 2023 16:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F90F10E252
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682527991; x=1714063991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=heXmQKVgzX9GDWw1jKsFM/haOt+CjvgoGfQIf48FUb0=;
 b=F3P6Z5h5HjFjNaANzgj4KRJxIjuyfUgO5nxoC4DX0YqX3n98sLs06Bo6
 O+u24pIQmOMZ3Prw0BX/rvcaLxgiSf0+I6fWu1oY4gFjrb/pbIBAjWdN3
 pQ0eKGHC0whlGquchm+i0a0+p4HO362gJ3141GSNzSBIbmeInQYYur1DK
 4NAnNcfC5l+kVcO+Wkp6LxbhnJIF+LLPe+bBDwrwskhEwbshlylMmy4wS
 OqfjzdvORXmf8y552pX01WbHUC99ArLqyrZXf5plURoFdO+H1UYjjM87b
 qznnpmggw/TjL1Ee2nSs/vxkkuPc1KrcPj7R5VeU1nEsdfayAMApRl4S3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327493463"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327493463"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671402715"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671402715"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:10 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 19:52:55 +0300
Message-Id: <20230426165305.2049341-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230426165305.2049341-1-imre.deak@intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/11] drm/i915: Fix PIPEDMC disabling for a
 bigjoiner configuration
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For a bigjoiner configuration display->crtc_disable() will be called
first for the slave CRTCs and then for the master CRTC. However slave
CRTCs will be actually disabled only after the master CRTC is disabled
(from the encoder disable hooks called with the master CRTC state).
Hence the slave PIPEDMCs can be disabled only after the master CRTC is
disabled, make this so.

intel_encoders_post_pll_disable() must be called only for the master
CRTC, as for the other two encoder disable hooks. While at it fix this
up as well. This didn't cause a problem, since
intel_encoders_post_pll_disable() will call the corresponding hook only
for an encoder/connector connected to the given CRTC, however slave
CRTCs will have no associated encoder/connector.

Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its corresponding pipe is enabled")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bf391a6cd8d68..722b4c47379d5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1700,9 +1700,17 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 
 	intel_disable_shared_dpll(old_crtc_state);
 
-	intel_encoders_post_pll_disable(state, crtc);
+	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
+		struct intel_crtc *slave_crtc;
+
+		intel_encoders_post_pll_disable(state, crtc);
 
-	intel_dmc_disable_pipe(i915, crtc->pipe);
+		intel_dmc_disable_pipe(i915, crtc->pipe);
+
+		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
+						 intel_crtc_bigjoiner_slave_pipes(old_crtc_state))
+			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
+	}
 }
 
 static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
-- 
2.37.2

