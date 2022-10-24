Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C535D60B101
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 18:15:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2860910E450;
	Mon, 24 Oct 2022 16:15:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E7D510E443
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 16:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666628120; x=1698164120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3kWQGiPbWCk9Fuy9p4u9QIRBJEOqiGjit5zyPfMCKWI=;
 b=GPChMqvCyCXJCXzbLZz8fJsT9J/rKkWm9VUqktPIGbvVVawT7PUx2l0d
 PNixG65YHdc4AyNVVHLvBZsVZ8qG7FUPfXPgj78maOhgbP9F2U/SC9Frr
 JCTiQ0tofyPar8ADfJx2Tx2wvqH0oqm0MbS7Al2eESUsCr9gu+3NACaaN
 3FfMeYeYPM4SNPSCehPrynexP/LqpwVZiznjoVZPLxiCvKUDWT8oxankh
 ZqPKSexKcgxL9AcQwEdlTIsfpAUXsdYGaMdJO9vrAFNU/SeElgbwQ6T44
 9rriYX0kzCS6QXWJztwQRDEO+jZjeBy+0wA++1QDm8XdsKWXgeykazTi5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="305073163"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="305073163"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 09:15:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="756625211"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="756625211"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga004.jf.intel.com with SMTP; 24 Oct 2022 09:15:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Oct 2022 19:15:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 19:15:10 +0300
Message-Id: <20221024161514.5340-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221024161514.5340-1-ville.syrjala@linux.intel.com>
References: <20221024161514.5340-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915: Make ilk_load_luts() deal with
 degamma
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

Make ilk_load_luts() ready for a degamma lut. Currently we never
have one, but soon we may get one from readout, and I think we
may want to change the state computation such that we may end up
with one even when userspace has simply supplied a gamma lut.

At least the code now follows the path laid out by the ivb/bdw
counterpars.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 123c57ceeb73..ff5f462b1c49 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -649,13 +649,15 @@ static void ilk_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_property_blob *gamma_lut = crtc_state->hw.gamma_lut;
+	const struct drm_property_blob *degamma_lut = crtc_state->hw.degamma_lut;
+	const struct drm_property_blob *blob = gamma_lut ?: degamma_lut;
 
 	switch (crtc_state->gamma_mode) {
 	case GAMMA_MODE_MODE_8BIT:
-		ilk_load_lut_8(crtc, gamma_lut);
+		ilk_load_lut_8(crtc, blob);
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-		ilk_load_lut_10(crtc, gamma_lut);
+		ilk_load_lut_10(crtc, blob);
 		break;
 	default:
 		MISSING_CASE(crtc_state->gamma_mode);
-- 
2.37.4

