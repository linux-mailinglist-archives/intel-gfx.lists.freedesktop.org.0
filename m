Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FFE222EF4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 01:27:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D46B6ED1E;
	Thu, 16 Jul 2020 23:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B71396ED1E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 23:27:00 +0000 (UTC)
IronPort-SDR: 55gUop/YOzKH+b/DUC63NvI5eKvELqVrDc21+KnFzTpXcveX5x1XbqMqqbYAaE2H9Dy6wLWCLz
 jI5RODWffrvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="149494641"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="149494641"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 16:27:00 -0700
IronPort-SDR: iUzbt/X1oN49dmYbWjrxAKaKruEvAI6Z1Q9cIbI1PtuceYaUpDZsdL89VwrbvKp0wFsyOcRFXZ
 mKEdL/EqROeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="300394180"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga002.jf.intel.com with ESMTP; 16 Jul 2020 16:27:00 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 16:28:58 -0700
Message-Id: <20200716232900.28414-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dp: HAX Try the bspec value for
 CLKTOP2_CORECLKCTL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 4 ++++
 drivers/gpu/drm/i915/i915_reg.h               | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index aeb6ee395cce..229c942aa7d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -3142,6 +3142,10 @@ static bool icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
 			state->mg_clktop2_coreclkctl1 =
 				MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO(a_divratio);
 
+			if (is_dkl && !(a_divratio & 1))
+				state->mg_clktop2_coreclkctl1 |=
+					MG_CLKTOP2_CORECLKCTL1_A_DIVRETIMER_EN;
+
 			state->mg_clktop2_hsclkctl =
 				MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL(tlinedrv) |
 				MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL(inputsel) |
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b9607ac3620d..c11aa7c4d708 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10323,6 +10323,7 @@ enum skl_power_gate {
 #define   MG_CLKTOP2_CORECLKCTL1_B_DIVRATIO_MASK	(0xff << 16)
 #define   MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO(x)		((x) << 8)
 #define   MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK	(0xff << 8)
+#define   MG_CLKTOP2_CORECLKCTL1_A_DIVRETIMER_EN	(1 << 1)
 #define MG_CLKTOP2_CORECLKCTL1(tc_port) _MMIO_PORT((tc_port), \
 						   _MG_CLKTOP2_CORECLKCTL1_PORT1, \
 						   _MG_CLKTOP2_CORECLKCTL1_PORT2)
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
