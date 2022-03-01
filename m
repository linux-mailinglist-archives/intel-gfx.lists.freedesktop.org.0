Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7494C918D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F48710E67D;
	Tue,  1 Mar 2022 17:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7759910E67D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646155904; x=1677691904;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vwtgMlu6KNry6u40XTggK0IBZmyHVL8KLS1j7FEuIzU=;
 b=GQMziz6ukEPcaaVQU8DOG82yBkUhzRxbflO4/TQSzcvG1LIvg3jlwyuJ
 /l4fMeb+fwDvFyUQiSKhRnfaQLmbPJg/3KufDuZ5jyVM2z1YibTMb3Jhp
 /JedBYLBdM1Kq5DdVW1LqKC+7MUImtrsu2y2qv74UYfVWvRpWY04ZX+J5
 YUT4kmBdWAcocJsEgpAvOHTg9IoiMKe/rBNy7WizV7GOryJhKxwWpnANh
 0niq/YiRDLrCkIkAL6sVKDs5xVY2PaQ0y9Z79UCPNlmQ5xzwQnXgrUMu+
 ktH2MvO926SyNqr3si/Up+Yt2vtjx0nk/eaA0EW9OxD6H7esAVMBngm4B g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="277860410"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="277860410"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:31:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="630095842"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 01 Mar 2022 09:31:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:31:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:31:21 +0200
Message-Id: <20220301173128.6988-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/11] drm/i915: Store the /5 target clock in
 sturct dpll on vlv/chv
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

Unify vlv/chv with earlier platforms so that the sturct dpll::dot
represents the /5 clock frequency (ie. DP symbol rate or HDMI
TMDS rate) rather than the *5 fast clock (/2 of the bitrate).
Makes life a little less confusing to get the same number back
in .dot which we fed into the DPLL algorithm.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 14f5ffe27d05..693e07a6db80 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -253,12 +253,12 @@ static const struct intel_limit ilk_limits_dual_lvds_100m = {
 
 static const struct intel_limit intel_limits_vlv = {
 	 /*
-	  * These are the data rate limits (measured in fast clocks)
+	  * These are based on the data rate limits (measured in fast clocks)
 	  * since those are the strictest limits we have. The fast
 	  * clock and actual rate limits are more relaxed, so checking
 	  * them would make no difference.
 	  */
-	.dot = { .min = 25000 * 5, .max = 270000 * 5 },
+	.dot = { .min = 25000, .max = 270000 },
 	.vco = { .min = 4000000, .max = 6000000 },
 	.n = { .min = 1, .max = 7 },
 	.m1 = { .min = 2, .max = 3 },
@@ -269,12 +269,12 @@ static const struct intel_limit intel_limits_vlv = {
 
 static const struct intel_limit intel_limits_chv = {
 	/*
-	 * These are the data rate limits (measured in fast clocks)
+	 * These are based on the data rate limits (measured in fast clocks)
 	 * since those are the strictest limits we have.  The fast
 	 * clock and actual rate limits are more relaxed, so checking
 	 * them would make no difference.
 	 */
-	.dot = { .min = 25000 * 5, .max = 540000 * 5},
+	.dot = { .min = 25000, .max = 540000 },
 	.vco = { .min = 4800000, .max = 6480000 },
 	.n = { .min = 1, .max = 1 },
 	.m1 = { .min = 2, .max = 2 },
@@ -340,9 +340,9 @@ int vlv_calc_dpll_params(int refclk, struct dpll *clock)
 	if (WARN_ON(clock->n == 0 || clock->p == 0))
 		return 0;
 	clock->vco = DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
-	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
+	clock->dot = DIV_ROUND_CLOSEST(clock->vco, 5 * clock->p);
 
-	return clock->dot / 5;
+	return clock->dot;
 }
 
 int chv_calc_dpll_params(int refclk, struct dpll *clock)
@@ -353,9 +353,9 @@ int chv_calc_dpll_params(int refclk, struct dpll *clock)
 		return 0;
 	clock->vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock->m),
 					   clock->n << 22);
-	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
+	clock->dot = DIV_ROUND_CLOSEST(clock->vco, 5 * clock->p);
 
-	return clock->dot / 5;
+	return clock->dot;
 }
 
 /*
@@ -658,8 +658,6 @@ vlv_find_best_dpll(const struct intel_limit *limit,
 	int max_n = min(limit->n.max, refclk / 19200);
 	bool found = false;
 
-	target *= 5; /* fast clock */
-
 	memset(best_clock, 0, sizeof(*best_clock));
 
 	/* based on hardware requirement, prefer smaller n to precision */
@@ -672,7 +670,7 @@ vlv_find_best_dpll(const struct intel_limit *limit,
 				for (clock.m1 = limit->m1.min; clock.m1 <= limit->m1.max; clock.m1++) {
 					unsigned int ppm;
 
-					clock.m2 = DIV_ROUND_CLOSEST(target * clock.p * clock.n,
+					clock.m2 = DIV_ROUND_CLOSEST(target * 5 * clock.p * clock.n,
 								     refclk * clock.m1);
 
 					vlv_calc_dpll_params(refclk, &clock);
@@ -728,7 +726,6 @@ chv_find_best_dpll(const struct intel_limit *limit,
 	 */
 	clock.n = 1;
 	clock.m1 = 2;
-	target *= 5;	/* fast clock */
 
 	for (clock.p1 = limit->p1.max; clock.p1 >= limit->p1.min; clock.p1--) {
 		for (clock.p2 = limit->p2.p2_fast;
@@ -738,7 +735,7 @@ chv_find_best_dpll(const struct intel_limit *limit,
 
 			clock.p = clock.p1 * clock.p2;
 
-			m2 = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(target, clock.p * clock.n) << 22,
+			m2 = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(target, 5 * clock.p * clock.n) << 22,
 						   refclk * clock.m1);
 
 			if (m2 > INT_MAX/clock.m1)
-- 
2.34.1

