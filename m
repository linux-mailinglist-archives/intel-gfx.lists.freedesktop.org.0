Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EE25EEEA5
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 09:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A37A10E989;
	Thu, 29 Sep 2022 07:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CAA410E919
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 07:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664435727; x=1695971727;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OqN38nJ8S7XFm9rQssQ2kMyJByh7ahLfUjqzoM6RfxM=;
 b=ZwOdmRgn+KBSHnLeG/fdKkIDsNr2ZLpBtLIalqojLcJhhYHX1h9B/epj
 tEtPOphoZf/At/1AlGti11pqbi83JkdduKWX+uCC9RAFk+hGmGs+oQh8l
 pDLvDX7U1SSWM+4ICdp/6SGKAywnJ3X60h75koMP2xlgciJaEYRn22Lvy
 0rZgUPZPlsxYFtGrmHaixi65+U9Ag7cA/79DcGKc3nSYtVbk2jFr2Ndvs
 vTk7bIkDh1RtYyjorokQ/X1YmH7m8HuOpK/+/0GIdoNpoqHd1OgcCZTBJ
 UCkzs8cD2iYrzR/qeyp5hhTkwws7iww8Vhy8zssuGlRA7uuWjHFCrTRae g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="303302687"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="303302687"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 00:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="867274398"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="867274398"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga006.fm.intel.com with SMTP; 29 Sep 2022 00:15:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Sep 2022 10:15:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 10:15:12 +0300
Message-Id: <20220929071521.26612-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/10] drm/i915: Remove PLL asserts from
 .load_luts()
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

.load_luts() potentially runs from the vblank worker, and is
under a deadline to complete within the vblank. Thus we can't
do expesive stuff like talk to the Punit, etc.

To that end get rid of the assert_dsi_pll_enabled() call for
vlv/chv. We'll just have to trust that the PLL is already enabled
here.

And I don't think the normal assert_pll_enabled() really buys us
anything useful on gmch platforms either, so nuke that one too.
We don't have corresponding asserts in the ilk+ codepaths anyway
despite the hardware (IIRC) still requiring the clock to be
enabled when we access the LUT.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 6bda4274eae9..bbc56affb3ec 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -25,9 +25,7 @@
 #include "intel_color.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
-#include "intel_dpll.h"
 #include "intel_dsb.h"
-#include "vlv_dsi_pll.h"
 
 struct intel_color_funcs {
 	int (*color_check)(struct intel_crtc_state *crtc_state);
@@ -580,11 +578,8 @@ static void i9xx_load_lut_8(struct intel_crtc *crtc,
 static void i9xx_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
 
-	assert_pll_enabled(dev_priv, crtc->pipe);
-
 	i9xx_load_lut_8(crtc, gamma_lut);
 }
 
@@ -611,14 +606,8 @@ static void i965_load_lut_10p6(struct intel_crtc *crtc,
 static void i965_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
 
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
-		assert_dsi_pll_enabled(dev_priv);
-	else
-		assert_pll_enabled(dev_priv, crtc->pipe);
-
 	if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
 		i9xx_load_lut_8(crtc, gamma_lut);
 	else
-- 
2.35.1

