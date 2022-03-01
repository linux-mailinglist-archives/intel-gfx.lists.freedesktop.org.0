Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DCD4C918E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2130210E6AE;
	Tue,  1 Mar 2022 17:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE37B10E6AE
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646155908; x=1677691908;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WAVO60jVA/s5R7eSw8TG/8cOrVjOmjwyzlKiaKtR/g4=;
 b=lsEr3It7BRsRPFZjjVcxSZSQUFbAFdPJdwmXn/C2ceSWyQddZ2qA1VI8
 jf/Q27tpIpBx+3e0EFFdsFt/C72ssREvN3sEjpPiS1AjP/5KH/mmdp7r7
 mlC5T9JNIAEiAzW6tC66A2BkWSbrRHwmilrawJMSNpxv6yHDRuZ6DnFlm
 aONN7jgLRecDdj4KHESvvMdJXEVUjobVM/km1Ql8msfPEy/JruTF6abEr
 VjFc+pHD6QXUcWzdhDmc27HXR1ZdWABVikiLgqonfgatPGwTxQTBZIfd2
 ySpL3+zH8BkWpd/bsps610YznWcPTq0Ap+t6T3e435NoCcqElEJIy/yVR Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="253383440"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="253383440"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:31:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="575782844"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2022 09:31:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:31:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:31:19 +0200
Message-Id: <20220301173128.6988-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/11] drm/i915: Move a bunch of stuff into
 rodata from the stack
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

Toss a bunch if constants into .rodata drom the stack. Also
shrink the types of some of the arrays to reduce the size.

bloat-o-meter -c intel_dpll_mgr.o:
add/remove: 0/0 grow/shrink: 0/2 up/down: 0/-86 (-86)
Function                                     old     new   delta
icl_get_dplls                               3393    3372     -21
skl_get_dpll                                2069    2004     -65
Total: Before=28029, After=27943, chg -0.31%
add/remove: 0/0 grow/shrink: 0/0 up/down: 0/0 (0)
Data                                         old     new   delta
Total: Before=17, After=17, chg +0.00%
add/remove: 2/0 grow/shrink: 0/2 up/down: 28/-129 (-101)
RO Data                                      old     new   delta
dco_central_freq                               -      24     +24
div1_vals                                      -       4      +4
odd_dividers                                  28       7     -21
even_dividers                                144      36    -108
Total: Before=3600, After=3499, chg -2.81%

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 1b1b70f0ff93..4e06c8203aca 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1495,18 +1495,17 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 			int ref_clock,
 			struct skl_wrpll_params *wrpll_params)
 {
-	u64 afe_clock = clock * 5; /* AFE Clock is 5x Pixel clock */
-	u64 dco_central_freq[3] = { 8400000000ULL,
-				    9000000000ULL,
-				    9600000000ULL };
-	static const int even_dividers[] = {  4,  6,  8, 10, 12, 14, 16, 18, 20,
-					     24, 28, 30, 32, 36, 40, 42, 44,
-					     48, 52, 54, 56, 60, 64, 66, 68,
-					     70, 72, 76, 78, 80, 84, 88, 90,
-					     92, 96, 98 };
-	static const int odd_dividers[] = { 3, 5, 7, 9, 15, 21, 35 };
+	static const u64 dco_central_freq[3] = { 8400000000ULL,
+						 9000000000ULL,
+						 9600000000ULL };
+	static const u8 even_dividers[] = {  4,  6,  8, 10, 12, 14, 16, 18, 20,
+					    24, 28, 30, 32, 36, 40, 42, 44,
+					    48, 52, 54, 56, 60, 64, 66, 68,
+					    70, 72, 76, 78, 80, 84, 88, 90,
+					    92, 96, 98 };
+	static const u8 odd_dividers[] = { 3, 5, 7, 9, 15, 21, 35 };
 	static const struct {
-		const int *list;
+		const u8 *list;
 		int n_dividers;
 	} dividers[] = {
 		{ even_dividers, ARRAY_SIZE(even_dividers) },
@@ -1517,6 +1516,7 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 	};
 	unsigned int dco, d, i;
 	unsigned int p0, p1, p2;
+	u64 afe_clock = clock * 5; /* AFE Clock is 5x Pixel clock */
 
 	for (d = 0; d < ARRAY_SIZE(dividers); d++) {
 		for (dco = 0; dco < ARRAY_SIZE(dco_central_freq); dco++) {
@@ -2751,8 +2751,8 @@ static bool icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
 				     struct intel_dpll_hw_state *state,
 				     bool is_dkl)
 {
+	static const u8 div1_vals[] = { 7, 5, 3, 2 };
 	u32 dco_min_freq, dco_max_freq;
-	int div1_vals[] = {7, 5, 3, 2};
 	unsigned int i;
 	int div2;
 
-- 
2.34.1

