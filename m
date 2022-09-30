Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 646F05F0942
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 12:43:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6737710EC74;
	Fri, 30 Sep 2022 10:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E7C510EC68
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 10:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664534588; x=1696070588;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I5ej4fg5EBwapuDy/s4y/gIoy5tVJJA5jaykooHOgdE=;
 b=aWFWzfUYgFv6xNFYeuXzoyPKPyyOtPprar6jomSpZG4MSHkpdovDTlAc
 q50ggvfiaa74dllYiDhdljrsL/Ye8oHg6sPSGjzU72XC5bx/GLM33FqJw
 5McdcAoW6bigfDNaU60AwyKKQeUJrn5Ub01R7MzAGcqWAxjHC17oi8t74
 bI4vXol3l/Ccm52Qpot8wQa8oGOidORqr76E2vLcbPKGxyuoq/nBQcRpH
 H2kp5O56fP5qgvlO74KiJ0AOkxeav904elyhtjIvTJeFaprudHLqWUiVx
 9LGVeKVTEmDN8zyJz+H4MUOQ6Qb2Qv0GtB1+QS7ujYDbwgVPWUmLY+bu3 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="303073595"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="303073595"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 03:43:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="765092009"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="765092009"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 30 Sep 2022 03:43:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Sep 2022 13:43:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 13:42:58 +0300
Message-Id: <20220930104302.25836-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930104302.25836-1-ville.syrjala@linux.intel.com>
References: <20220930104302.25836-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Fix watermark calculations for
 gen12+ CCS modifiers
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Take the gen12+ CCS modifiers into account when calculating the
watermarks. Othwerwise we'll calculate the watermarks thinking these
Y-tiled modifiers are linear.

The rc_surface part is actually a nop since that is not used
for any glk+ platform.

Cc: stable@vger.kernel.org
Fixes: 2dfbf9d2873a ("drm/i915/tgl: Gen-12 display can decompress surfaces compressed by the media engine")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 01b0932757ed..49fc5e2b56fd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1710,10 +1710,14 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		      modifier == I915_FORMAT_MOD_4_TILED ||
 		      modifier == I915_FORMAT_MOD_Yf_TILED ||
 		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
+		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
+		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
+		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
 	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
 	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
+			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
+			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
+			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
 	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
 	wp->width = width;
-- 
2.35.1

