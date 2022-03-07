Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA6E4D0C28
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 00:40:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C54B10E1E3;
	Mon,  7 Mar 2022 23:40:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D161510E1E3
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 23:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646696407; x=1678232407;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3Q7v2S+dP/6648tNOW9Je7TiD5I0xqXu22xuz7Bj+cs=;
 b=S4OGa0j8IkWUkQBtYuMN1I5RuTr/KqLyKLDbI/10lHR6fM8JyJ1/M1GS
 CtZ69hh1oowLqi63DDVukQ0k9cILk8Gly3U6I5Qmph9KSyfRwoFsDUSDh
 OqNtwZEo2xEdvfN+uLG2TTXdtmNlwRrdK/uxZi9eQOsSQzwybbsmqQf+y
 uQdMsfUGtDrwfFPoYmCOwdpcvwNI1p/rieW8zBLuCgqhDhs8YHRgGAzGf
 Qub4/mOWrTFcPgaxATtHegxBYpl9imOcBrXV95YOA7PbvEzYDBmRtDAh9
 ZuO5s5thFR5YXTAmkbU7TksRzXV8HroHPuvEMGosIfZPe+5vtIDTLLldS w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="317767446"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="317767446"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 15:40:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="641526257"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 07 Mar 2022 15:40:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 01:40:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 01:39:40 +0200
Message-Id: <20220307233940.4161-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/8] drm/i915: Remove struct dp_link_dpll
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

v2: Document the full divider as a proper decimal number on chv
    Nuke bogus eDP 1.4 comments for chv while at it

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c | 55 +++++++++------------------
 1 file changed, 17 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 22345051e667..8e1338678d91 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -24,58 +24,37 @@
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
+static const struct dpll vlv_dpll[] = {
+	{ .dot = 162000, .p1 = 3, .p2 = 2, .n = 5, .m1 = 3, .m2 = 81, },
+	{ .dot = 270000, .p1 = 2, .p2 = 2, .n = 1, .m1 = 2, .m2 = 27, },
 };
 
-static const struct dp_link_dpll vlv_dpll[] = {
-	{ 162000,
-		{ .p1 = 3, .p2 = 2, .n = 5, .m1 = 3, .m2 = 81 } },
-	{ 270000,
-		{ .p1 = 2, .p2 = 2, .n = 1, .m1 = 2, .m2 = 27 } }
-};
-
-/*
- * CHV supports eDP 1.4 that have  more link rates.
- * Below only provides the fixed rate but exclude variable rate.
- */
-static const struct dp_link_dpll chv_dpll[] = {
-	/*
-	 * CHV requires to program fractional division for m2.
-	 * m2 is stored in fixed point format using formula below
-	 * (m2_int << 22) | m2_fraction
-	 */
-	{ 162000,	/* m2_int = 32, m2_fraction = 1677722 */
-		{ .p1 = 4, .p2 = 2, .n = 1, .m1 = 2, .m2 = 0x819999a } },
-	{ 270000,	/* m2_int = 27, m2_fraction = 0 */
-		{ .p1 = 4, .p2 = 1, .n = 1, .m1 = 2, .m2 = 0x6c00000 } },
+static const struct dpll chv_dpll[] = {
+	/* m2 is .22 binary fixed point  */
+	{ .dot = 162000, .p1 = 4, .p2 = 2, .n = 1, .m1 = 2, .m2 = 0x819999a /* 32.4 */ },
+	{ .dot = 270000, .p1 = 4, .p2 = 1, .n = 1, .m1 = 2, .m2 = 0x6c00000 /* 27.0 */ },
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
@@ -94,8 +73,8 @@ void g4x_dp_set_clock(struct intel_encoder *encoder,
 
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

