Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9AF4DD2D9
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 03:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4496810E1D0;
	Fri, 18 Mar 2022 02:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A372210E1D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 02:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647569476; x=1679105476;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Yym6BZYipAmDJYH00+bI56umcpBgA5HhcU36JFfxX8w=;
 b=QLXSeMulR0QBnn6O9Bp2dy74IHCRuOPjO6cxJxbxiHmAg8We88sReTrb
 4vnrkFjqSQ5Doj/bK/J+6hIEDNp1k+0N868mGJXDvUth53+aTEZ5KhPr6
 +Vi5yq4ekmh4VIGonZ+ZEEO1jcOTtT+USZdA9BKrNichSgtx8AapgsmKm
 CKkoQ5wTmpfRsOzLBM0qkF4JouBmSYB6z2FEvkTQ4KuThxx3jRXHkfM9G
 QarUEaQqayKLPVyuGvH/SQ/BN5lS65MBYPCLICQCT3KD2+bJ9yLNFTIXz
 Sl3MJqGHwOVhAO2BoZElv0vD42Q7/A15H6x6PUHzJpi5G4eq5TwSsfUQZ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="281831982"
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="281831982"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 19:11:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="517006339"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 19:11:15 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 19:10:51 -0700
Message-Id: <20220318021051.2073847-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI] drm/i915/dg2: Add preemption changes for
 Wa_14015141709
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

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

Starting with DG2, preemption can no longer be controlled using userspace
on a per-context basis. Instead, the hardware only allows us to enable or
disable preemption in a global, system-wide basis.  Also, we lose the
ability to specify the preemption granularity (such as batch-level vs
command-level vs object-level).

v2 (MattR):
 - Move debugfs interface to a separate patch.  (Jani)
v3 (MattR):
 - Drop the debugfs support completely for now.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h             | 3 +++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index c328d46f8095..dc0ffff6f655 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2316,7 +2316,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     FF_DOP_CLOCK_GATE_DISABLE);
 	}
 
-	if (IS_GRAPHICS_VER(i915, 9, 12)) {
+	if (HAS_PERCTX_PREEMPT_CTRL(i915)) {
 		/* FtrPerCtxtPreemptionGranularityControl:skl,bxt,kbl,cfl,cnl,icl,tgl */
 		wa_masked_en(wal,
 			     GEN7_FF_SLICE_CS_CHICKEN1,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a9aceb08fcd1..97622d3ccfc2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1376,6 +1376,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_GUC_DEPRIVILEGE(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_guc_deprivilege)
 
+#define HAS_PERCTX_PREEMPT_CTRL(i915) \
+	((GRAPHICS_VER(i915) >= 9) &&  GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
+
 static inline bool run_as_guest(void)
 {
 	return !hypervisor_is_type(X86_HYPER_NATIVE);
-- 
2.34.1

