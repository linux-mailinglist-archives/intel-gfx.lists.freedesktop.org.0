Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC913C7739
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 21:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE5376E125;
	Tue, 13 Jul 2021 19:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 785F36E11C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 19:36:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="190609866"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="190609866"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 12:36:43 -0700
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="487456139"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 12:36:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 12:36:25 -0700
Message-Id: <20210713193635.3390052-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210713193635.3390052-1-matthew.d.roper@intel.com>
References: <20210713193635.3390052-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v4 02/12] drm/i915: Make pre-production detection
 use direct revid comparison
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

Although we're converting our workarounds to use a revid->stepping
lookup table, the function that detects pre-production hardware should
continue to compare against PCI revision ID values directly.  These are
listed in the bspec as integers, so it's easier to confirm their
correctness if we just use an integer literal rather than a symbolic
name anyway.

Bspec: 13620, 19131, 13626, 18329
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 30d8cd8c69b1..90136995f5eb 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -271,10 +271,10 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	bool pre = false;
 
 	pre |= IS_HSW_EARLY_SDV(dev_priv);
-	pre |= IS_SKL_REVID(dev_priv, 0, SKL_REVID_F0);
-	pre |= IS_BXT_REVID(dev_priv, 0, BXT_REVID_B_LAST);
-	pre |= IS_KBL_GT_STEP(dev_priv, 0, STEP_A0);
-	pre |= IS_GLK_REVID(dev_priv, 0, GLK_REVID_A2);
+	pre |= IS_SKYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x6;
+	pre |= IS_BROXTON(dev_priv) && INTEL_REVID(dev_priv) < 0xA;
+	pre |= IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
+	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
 
 	if (pre) {
 		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
