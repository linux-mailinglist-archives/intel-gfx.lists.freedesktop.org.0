Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 449B5748EC4
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:21:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9723510E3C3;
	Wed,  5 Jul 2023 20:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3051A10E3C4
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588498; x=1720124498;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AWDzjIFYIlSR19jnSUKqzsu2Ef762x0/EHnFj+8TnKU=;
 b=JHmlnFAD7CD50lD1J1ffb45H66MjL8HSAcLHJa1lzEykAyq0ShsQYRpf
 pRMV08sOgig22RLoXijiI7/a8dbeuy4ZRhH0bNsP2OPyA48NU4C9TOMCi
 XZXmFJ4FE/1OyKl4s1dA2SLIvXq+Vodud7L/cmfEYHb/e4RYsu7NfyfFR
 x/GYAi00Eh2LcV4QA6IXD1zfWmkrr/+mkFo/A732Ka8W0iHFyqiVh+pmv
 +kqj1F3/G4vLYtSvfeRP/l3+tPO536r7Qqs36jfMgwVnaSnD+vkpY97tZ
 xObraSJ3zvJVXCDyW+X2MrBOxwYZFix/z1nKHzLr8Hyrvjo/Ht8wMMd6H g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353269043"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353269043"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:21:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491100"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491100"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:21:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:21:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:13 +0300
Message-Id: <20230705202122.17915-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/13] drm/i915: Don't warn about zero N/P in
 *_calc_dpll_params()
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

Allow *_calc_dpll_params() to be called even if the N/P dividers
are zero without warning. We'll want to call these to make sure the
derived values are fully computed, but not all users (VLV DSI in
particular) don't even enable the DPLL and thus the dividers will
be left at zero.

It could also be possible that the BIOS has misprogrammed the DPLL
(IIRC happened with some SNB machines with 4k+ displays) and thus
we'll currently generate a lot of dmesg spew. Better be silent and
just let the normal state checker/etc. deal with any driver bugs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 37 ++++++++++++-----------
 1 file changed, 20 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 999badfe2906..71bfeea4cef2 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -314,10 +314,11 @@ int pnv_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = clock->m2 + 2;
 	clock->p = clock->p1 * clock->p2;
-	if (WARN_ON(clock->n == 0 || clock->p == 0))
-		return 0;
-	clock->vco = DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
-	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
+
+	clock->vco = clock->n == 0 ? 0 :
+		DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
+	clock->dot = clock->p == 0 ? 0 :
+		DIV_ROUND_CLOSEST(clock->vco, clock->p);
 
 	return clock->dot;
 }
@@ -331,10 +332,11 @@ int i9xx_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = i9xx_dpll_compute_m(clock);
 	clock->p = clock->p1 * clock->p2;
-	if (WARN_ON(clock->n + 2 == 0 || clock->p == 0))
-		return 0;
-	clock->vco = DIV_ROUND_CLOSEST(refclk * clock->m, clock->n + 2);
-	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
+
+	clock->vco = clock->n + 2 == 0 ? 0 :
+		DIV_ROUND_CLOSEST(refclk * clock->m, clock->n + 2);
+	clock->dot = clock->p == 0 ? 0 :
+		DIV_ROUND_CLOSEST(clock->vco, clock->p);
 
 	return clock->dot;
 }
@@ -343,10 +345,11 @@ int vlv_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = clock->m1 * clock->m2;
 	clock->p = clock->p1 * clock->p2 * 5;
-	if (WARN_ON(clock->n == 0 || clock->p == 0))
-		return 0;
-	clock->vco = DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
-	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
+
+	clock->vco = clock->n == 0 ? 0 :
+		DIV_ROUND_CLOSEST(refclk * clock->m, clock->n);
+	clock->dot = clock->p == 0 ? 0 :
+		DIV_ROUND_CLOSEST(clock->vco, clock->p);
 
 	return clock->dot;
 }
@@ -355,11 +358,11 @@ int chv_calc_dpll_params(int refclk, struct dpll *clock)
 {
 	clock->m = clock->m1 * clock->m2;
 	clock->p = clock->p1 * clock->p2 * 5;
-	if (WARN_ON(clock->n == 0 || clock->p == 0))
-		return 0;
-	clock->vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock->m),
-					   clock->n << 22);
-	clock->dot = DIV_ROUND_CLOSEST(clock->vco, clock->p);
+
+	clock->vco = clock->n == 0 ? 0 :
+		DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock->m), clock->n << 22);
+	clock->dot = clock->p == 0 ? 0 :
+		DIV_ROUND_CLOSEST(clock->vco, clock->p);
 
 	return clock->dot;
 }
-- 
2.39.3

