Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 186D61AB383
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 23:51:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672C36EA93;
	Wed, 15 Apr 2020 21:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01E9B6EA93
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 21:51:00 +0000 (UTC)
IronPort-SDR: vCLCXXBGsD4pmq1MFFmoFu3w7a15ciq5boUNVEhhDHTloGaO7LKCigWT3YK2f87SIGH41p4FYD
 Mq1OMiuS96Qg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 14:51:00 -0700
IronPort-SDR: z+ezSLBw9fnHGCBjUBC5+V12KqapU9xWKIsC9RqM8LwPHkeheQEx6zhXwP0erGNl2y5qvboVzf
 /imjez5GmSdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,388,1580803200"; d="scan'208";a="427585950"
Received: from acuamba-mobl1.amr.corp.intel.com (HELO msatwood-mobl.intel.com)
 ([10.251.0.148])
 by orsmga005.jf.intel.com with ESMTP; 15 Apr 2020 14:50:59 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 14:51:50 -0400
Message-Id: <20200415185150.21016-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Wa_14011059788
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

Reflect recent Bspec changes

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index b632b6bb9c3e..30b45c0de6fb 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6854,6 +6854,10 @@ static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
 	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
 		I915_WRITE(GEN9_CLKGATE_DIS_3, I915_READ(GEN9_CLKGATE_DIS_3) |
 			   TGL_VRH_GATING_DIS);
+
+	/* Wa_14011059788:tgl */
+	intel_uncore_rmw(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
+		         0, DFR_DISABLE)
 }
 
 static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
