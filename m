Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA80F28E735
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 21:21:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F236EB3C;
	Wed, 14 Oct 2020 19:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A7106EB3A
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 19:20:51 +0000 (UTC)
IronPort-SDR: s+EGm84FYgyDaW0xTJ7oD5JKZBZ9V8CiHG83qcebuHmL3WeM6AhRChFi7AlI2Z1lTHZISdLFxn
 nh7OtwRGXlvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="183703023"
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="183703023"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:44 -0700
IronPort-SDR: OCqtuh4hjTc4xAg0/x97xaWlakII+r6L3gu/L35oY5nAymzVXlZLkhEPU4OOdH7K9kTy4MIqWN
 kj6LIOEUkqlw==
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="345781265"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 12:19:36 -0700
Message-Id: <20201014191937.1266226-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014191937.1266226-1-lucas.demarchi@intel.com>
References: <20201014191937.1266226-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 10/11] drm/i915/dg1: Update DMC_DEBUG register
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

From: Anshuman Gupta <anshuman.gupta@intel.com>

Update the DMC_DEBUG_DC5 register to its new location and do not try
reading the DC6 counter since DG1 doesn't support DC6.

v2: Use IS_DGFX() instead of IS_DG1(). Even if not having DC6 is not
directly related to DGFX, the register move to a new location is. So in
future, if there is one supporting DC6, it would just need to add the
other register rather than fixing the case of a wrong register being
read (Matt)

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 9 +++++++--
 drivers/gpu/drm/i915/i915_reg.h                      | 1 +
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 0bf31f9a8af5..cfb4c1474982 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -518,8 +518,13 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 		   CSR_VERSION_MINOR(csr->version));
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
-		dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
+		if (IS_DGFX(dev_priv)) {
+			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
+		} else {
+			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
+			dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
+		}
+
 		/*
 		 * NOTE: DMC_DEBUG3 is a general purpose reg.
 		 * According to B.Specs:49196 DMC f/w reuses DC5/6 counter
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d33d0057aef4..6d97e6286c2d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7536,6 +7536,7 @@ enum {
 #define BXT_CSR_DC3_DC5_COUNT	_MMIO(0x80038)
 #define TGL_DMC_DEBUG_DC5_COUNT	_MMIO(0x101084)
 #define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
+#define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
 
 #define DMC_DEBUG3		_MMIO(0x101090)
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
