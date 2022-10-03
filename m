Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 455725F2F67
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA48D10E30D;
	Mon,  3 Oct 2022 11:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E9C10E30A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795761; x=1696331761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o8wqvhEUX6dIb0uaLCNYiKYj3jlpFgrSo7AsPhW4I/w=;
 b=HWZOr7yYjSEPbgOOYcSsDjKhsurNIiULVtfRY2l3U2Czi1QSC+TBQmlf
 fTqikdG1SoofKakOXN7RC7A/2/lm8udPZixKJe8ODs6m5rAE90/l8NOOR
 E9GyXSU317ar/pYF9rVs5qoxYbeuVlXZIPRvULzq/tXn5036HYt63bqbm
 KjUd3lPccDDP+JgDrKVLRGKcMnDqxyn6Ebh6nZesu9Vs+nCFleDz63TzX
 3sI0djDmxd2d1a9Z9A5HU03yojkXKOw7721+8W/Hc51sW0ZnDA0QB///Z
 O0p5KOjELVUIC/fVIhsvcK0nN0aZZ3AMTjsq/9Msepe9ItQXHHyJ9jpY1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="366650661"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="366650661"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:16:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618696706"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618696706"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Oct 2022 04:15:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 14:15:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 14:15:42 +0300
Message-Id: <20221003111544.8007-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221003111544.8007-1-ville.syrjala@linux.intel.com>
References: <20221003111544.8007-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915: Fix watermark calculations for
 DG2 CCS modifiers
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

Take the DG2 CCS modifiers into account when calculating the
watermarks. Othwerwise we'll calculate the watermarks thinking these
tile-4 modifiers are linear.

The rc_surface part is actually a nop since that is not used
for any glk+ platform.

Cc: stable@vger.kernel.org
Fixes: 4c3afa72138c ("drm/i915/dg2: Add support for DG2 render and media compression")
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 0ff3ece166fe..070357da40e4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1713,13 +1713,17 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
 		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
 		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
-		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC;
+		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
+		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
+		      modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
 	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
 	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
 			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
 			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
 			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
-			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC;
+			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
+			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
+			 modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
 	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
 	wp->width = width;
-- 
2.35.1

