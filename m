Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CF612ADEF
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 19:41:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518D189C6B;
	Thu, 26 Dec 2019 18:41:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA43789C6B
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 18:40:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Dec 2019 10:40:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,360,1571727600"; d="scan'208";a="250436253"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 26 Dec 2019 10:40:58 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Dec 2019 10:40:56 -0800
Message-Id: <20191226184056.266739-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <5e4b8127-61a6-4f3d-1b85-8c81b96ac543@intel.com>
References: <5e4b8127-61a6-4f3d-1b85-8c81b96ac543@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Add Wa_1407352427:icl,ehl
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The workaround database now indicates we need to disable psdunit clock
gating as well.

Bspec: 32354
Bspec: 33450
Bspec: 33451
Suggested-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: stable@vger.kernel.org
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 3 +++
 drivers/gpu/drm/i915/intel_pm.c | 4 ++++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index bbfedeb00b7f..b98734378c9a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4179,6 +4179,9 @@ enum {
 #define UNSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9434)
 #define  VFUNIT_CLKGATE_DIS		(1 << 20)
 
+#define UNSLICE_UNIT_LEVEL_CLKGATE2	_MMIO(0x94e4)
+#define   PSDUNIT_CLKGATE_DIS		REG_BIT(5)
+
 #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
 #define   CGPSF_CLKGATE_DIS		(1 << 3)
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 31ec82337e4f..8bc8f0836368 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6590,6 +6590,10 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
 	/* WaEnable32PlaneMode:icl */
 	I915_WRITE(GEN9_CSFE_CHICKEN1_RCS,
 		   _MASKED_BIT_ENABLE(GEN11_ENABLE_32_PLANE_MODE));
+
+	/* Wa_1407352427:icl,ehl */
+	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE2,
+			 0, PSDUNIT_CLKGATE_DIS);
 }
 
 static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
