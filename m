Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AF54C9194
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:32:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 451FC10E728;
	Tue,  1 Mar 2022 17:32:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D746A10E784
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646155929; x=1677691929;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=shI3bnZtMGBgGK6xrv5KfwPx67fi7Q6LRovJ/5zDFxs=;
 b=Pk2hFt4ZRkd7Z153oeKvKHCjDy/f1E8HDdPDr0zjaiX8aC2qohEOtqws
 EbqvZBcSgEhrKvkoTIRfiB3wxGtBe4TYLcfPTsR1ZkvFMzRYidnmZRo3c
 lHjFKZ2j9uEydSoER6QUIvqhpBSU4IKCE79BrzhFGPBYw7XFiPMlF5FB8
 B7fq2mt42JVdLSZPrtYWqTAULOQ54VZmAXjjRCSCj0kVRYfpU31Aquzjk
 2p1vlJ6vAirG0oaHpQKq0NSWGTyJO+Y6CnsoJRh958F5VVtHLFqgsP7cH
 SdgTsCMmy07o1P6u1udOVKwG4JUI4frbtdx2UHtVZEWaP4IJZrzQGpUmz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="313911717"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="313911717"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:32:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="510599935"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 01 Mar 2022 09:32:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:32:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:31:28 +0200
Message-Id: <20220301173128.6988-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915: Remove struct dp_link_dpll
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

struct dp_link_dpll is a pointless wrapper around struct dpll.
Just store the desired link rate into struct dpll::dot and
we're done.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c | 47 ++++++++++-----------------
 1 file changed, 18 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index f67bbaaad8e0..559ce0fefaed 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -22,58 +22,47 @@
 #include "intel_pps.h"
 #include "vlv_sideband.h"
 
-struct dp_link_dpll {
-	int clock;
-	struct dpll dpll;
+static const struct dpll g4x_dpll[] = {
+	{ .dot = 162000, .p1 = 2, .p2 = 10, .n = 2, .m1 = 23, .m2 = 8, },
+	{ .dot = 270000, .p1 = 1, .p2 = 10, .n = 1, .m1 = 14, .m2 = 2, },
 };
 
-static const struct dp_link_dpll g4x_dpll[] = {
-	{ 162000,
-		{ .p1 = 2, .p2 = 10, .n = 2, .m1 = 23, .m2 = 8 } },
-	{ 270000,
-		{ .p1 = 1, .p2 = 10, .n = 1, .m1 = 14, .m2 = 2 } }
+static const struct dpll pch_dpll[] = {
+	{ .dot = 162000, .p1 = 2, .p2 = 10, .n = 1, .m1 = 12, .m2 = 9, },
+	{ .dot = 270000, .p1 = 1, .p2 = 10, .n = 2, .m1 = 14, .m2 = 8, },
 };
 
-static const struct dp_link_dpll pch_dpll[] = {
-	{ 162000,
-		{ .p1 = 2, .p2 = 10, .n = 1, .m1 = 12, .m2 = 9 } },
-	{ 270000,
-		{ .p1 = 1, .p2 = 10, .n = 2, .m1 = 14, .m2 = 8 } }
-};
-
-static const struct dp_link_dpll vlv_dpll[] = {
-	{ 162000,
-		{ .p1 = 3, .p2 = 2, .n = 5, .m1 = 3, .m2 = 81 } },
-	{ 270000,
-		{ .p1 = 2, .p2 = 2, .n = 1, .m1 = 2, .m2 = 27 } }
+static const struct dpll vlv_dpll[] = {
+	{ .dot = 162000, .p1 = 3, .p2 = 2, .n = 5, .m1 = 3, .m2 = 81, },
+	{ .dot = 270000, .p1 = 2, .p2 = 2, .n = 1, .m1 = 2, .m2 = 27, },
 };
 
 /*
  * CHV supports eDP 1.4 that have  more link rates.
  * Below only provides the fixed rate but exclude variable rate.
  */
-static const struct dp_link_dpll chv_dpll[] = {
+static const struct dpll chv_dpll[] = {
 	/*
 	 * CHV requires to program fractional division for m2.
 	 * m2 is stored in fixed point format using formula below
 	 * (m2_int << 22) | m2_fraction
 	 */
-	{ 162000,	/* m2_int = 32, m2_fraction = 1677722 */
-		{ .p1 = 4, .p2 = 2, .n = 1, .m1 = 2, .m2 = 0x819999a } },
-	{ 270000,	/* m2_int = 27, m2_fraction = 0 */
-		{ .p1 = 4, .p2 = 1, .n = 1, .m1 = 2, .m2 = 0x6c00000 } },
+	{ .dot = 162000, .p1 = 4, .p2 = 2, .n = 1, .m1 = 2,
+	  .m2 = 0x819999a /* m2_int = 32, m2_frac = 1677722 */ },
+	{ .dot = 270000, .p1 = 4, .p2 = 1, .n = 1, .m1 = 2,
+	  .m2 = 0x6c00000 /* m2_int = 27, m2_frac =       0 */ },
 };
 
 const struct dpll *vlv_get_dpll(struct drm_i915_private *i915)
 {
-	return IS_CHERRYVIEW(i915) ? &chv_dpll[0].dpll : &vlv_dpll[0].dpll;
+	return IS_CHERRYVIEW(i915) ? &chv_dpll[0] : &vlv_dpll[0];
 }
 
 void g4x_dp_set_clock(struct intel_encoder *encoder,
 		      struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	const struct dp_link_dpll *divisor = NULL;
+	const struct dpll *divisor = NULL;
 	int i, count = 0;
 
 	if (IS_G4X(dev_priv)) {
@@ -92,8 +81,8 @@ void g4x_dp_set_clock(struct intel_encoder *encoder,
 
 	if (divisor && count) {
 		for (i = 0; i < count; i++) {
-			if (pipe_config->port_clock == divisor[i].clock) {
-				pipe_config->dpll = divisor[i].dpll;
+			if (pipe_config->port_clock == divisor[i].dot) {
+				pipe_config->dpll = divisor[i];
 				pipe_config->clock_set = true;
 				break;
 			}
-- 
2.34.1

