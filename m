Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE793C7C8A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55E86E158;
	Wed, 14 Jul 2021 03:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90ED56E158
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210256244"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="210256244"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031447"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:50 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:14:54 -0700
Message-Id: <20210714031540.3539704-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/50] drm/i915/gen12: Use fuse info to
 enable SFC
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>

In Gen12 there are various fuse combinations and in each configuration
vdbox engine may be connected to SFC depending on which engines are
available, so we need to set the SFC capability based on fuse value from
the hardware. Even numbered physical instance always have SFC, odd
numbered physical instances have SFC only if previous even instance is
fused off.

v2:
 - Minor style & typo fixes (Tvrtko)
 - Drop an unwanted 'inline' (Tvrtko)

Bspec: 48028
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 30 ++++++++++++++++++-----
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 5cfeb91d1b7b..3f8013612a08 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -442,6 +442,28 @@ void intel_engines_free(struct intel_gt *gt)
 	}
 }
 
+static
+bool gen11_vdbox_has_sfc(struct drm_i915_private *i915,
+			 unsigned int physical_vdbox,
+			 unsigned int logical_vdbox, u16 vdbox_mask)
+{
+	/*
+	 * In Gen11, only even numbered logical VDBOXes are hooked
+	 * up to an SFC (Scaler & Format Converter) unit.
+	 * In Gen12, Even numbered physical instance always are connected
+	 * to an SFC. Odd numbered physical instances have SFC only if
+	 * previous even instance is fused off.
+	 */
+	if (GRAPHICS_VER(i915) == 12)
+		return (physical_vdbox % 2 == 0) ||
+			!(BIT(physical_vdbox - 1) & vdbox_mask);
+	else if (GRAPHICS_VER(i915) == 11)
+		return logical_vdbox % 2 == 0;
+
+	MISSING_CASE(GRAPHICS_VER(i915));
+	return false;
+}
+
 /*
  * Determine which engines are fused off in our particular hardware.
  * Note that we have a catch-22 situation where we need to be able to access
@@ -493,13 +515,9 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 			continue;
 		}
 
-		/*
-		 * In Gen11, only even numbered logical VDBOXes are
-		 * hooked up to an SFC (Scaler & Format Converter) unit.
-		 * In TGL each VDBOX has access to an SFC.
-		 */
-		if (GRAPHICS_VER(i915) >= 12 || logical_vdbox++ % 2 == 0)
+		if (gen11_vdbox_has_sfc(i915, i, logical_vdbox, vdbox_mask))
 			gt->info.vdbox_sfc_access |= BIT(i);
+		logical_vdbox++;
 	}
 	drm_dbg(&i915->drm, "vdbox enable: %04x, instances: %04lx\n",
 		vdbox_mask, VDBOX_MASK(gt));
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
