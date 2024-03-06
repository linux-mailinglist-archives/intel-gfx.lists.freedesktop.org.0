Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA66872DE0
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 05:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A70112E8D;
	Wed,  6 Mar 2024 04:08:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DZXmiWoO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8D87112E8D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709698097; x=1741234097;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V/rGHrKIPvGHaqPazua1v+UrW50FZwNh/U2I93EPdX8=;
 b=DZXmiWoOJ/jq7wf/GAlAf+nLxZT+XXVd2ca4IjaQuWNC5UynPBnQlbg0
 LgmZnlP0uBJ/GaStnjK4MRR9yxylDaoicW6Qej1f2+044UxbkySgFCF7J
 KPFR6L2e39CjEHQshWvIdpE1GHBwU+M6peET3WsgU+4oZSlMvzDhdQRU2
 4XLgTTksJctErsffhH+YE2yGf/Ngm5Kpa/VexHwQeDsoayUjdois0LVow
 VHgNsZIwsiuSyDdO5hMjU76x/cQrlNroLDMGj+KV6unI+vkGsD3XEy2zX
 Bweo0e5SBZo5V7y3Pt3PdqMw66DJkck6HEVw2QplscXfEwaFSgCQoyTdu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="21817365"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="21817365"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 20:08:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="827774098"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; d="scan'208";a="827774098"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2024 20:08:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Mar 2024 06:08:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: [PATCH 1/3] drm/i915/vrr: Generate VRR "safe window" for DSB
Date: Wed,  6 Mar 2024 06:08:04 +0200
Message-ID: <20240306040806.21697-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240306040806.21697-1-ville.syrjala@linux.intel.com>
References: <20240306040806.21697-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Looks like TRANS_CHICKEN bit 31 means something totally different
depending on the platform:
TGL: generate VRR "safe window" for DSB
ADL/DG2: make TRANS_SET_CONTEXT_LATENCY effective with VRR

So far we've only set this on ADL/DG2, but when using DSB+VRR
we also need to set it on TGL.

And a quick test on MTL says it doesn't need this bit for either
of those purposes, even though it's still documented as valid
in bspec.

Cc: stable@vger.kernel.org
Fixes: 34d8311f4a1c ("drm/i915/dsb: Re-instate DSB for LUT updates")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9927
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 7 ++++---
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5d905f932cb4..eb5bd0743902 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -187,10 +187,11 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	/*
-	 * TRANS_SET_CONTEXT_LATENCY with VRR enabled
-	 * requires this chicken bit on ADL/DG2.
+	 * This bit seems to have two meanings depending on the platform:
+	 * TGL: generate VRR "safe window" for DSB vblank waits
+	 * ADL/DG2: make TRANS_SET_CONTEXT_LATENCY effective with VRR
 	 */
-	if (DISPLAY_VER(dev_priv) == 13)
+	if (IS_DISPLAY_VER(dev_priv, 12, 13))
 		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder),
 			     0, PIPE_VBLANK_WITH_DELAY);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e00557e1a57f..3b2e49ce29ba 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4599,7 +4599,7 @@
 #define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
 						    _MTL_CHICKEN_TRANS_A, \
 						    _MTL_CHICKEN_TRANS_B)
-#define   PIPE_VBLANK_WITH_DELAY	REG_BIT(31) /* ADL/DG2 */
+#define   PIPE_VBLANK_WITH_DELAY	REG_BIT(31) /* tgl+ */
 #define   SKL_UNMASK_VBL_TO_PIPE_IN_SRD	REG_BIT(30) /* skl+ */
 #define   HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
 #define   HSW_FRAME_START_DELAY(x)	REG_FIELD_PREP(HSW_FRAME_START_DELAY_MASK, x)
-- 
2.43.0

