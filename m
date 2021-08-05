Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7653E19AF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 18:37:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49D186EB0B;
	Thu,  5 Aug 2021 16:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D29166E39B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 16:36:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="194470760"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="194470760"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 09:36:57 -0700
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="419886365"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 09:36:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Date: Thu,  5 Aug 2021 09:36:44 -0700
Message-Id: <20210805163647.801064-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210805163647.801064-1-matthew.d.roper@intel.com>
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 6/9] drm/i915/xehpsdv: Read correct
 RP_STATE_CAP register
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

The RP_STATE_CAP register is no longer part of the MCHBAR on XEHPSDV; this
register is now a per-tile register at GTTMMADDR offset 0x250014.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 4 +++-
 drivers/gpu/drm/i915/i915_reg.h     | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index a3e69eba376f..3489f5f0cac1 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2141,7 +2141,9 @@ u32 intel_rps_read_state_cap(struct intel_rps *rps)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 
-	if (IS_GEN9_LP(i915))
+	if (IS_XEHPSDV(i915))
+		return intel_uncore_read(uncore, XEHPSDV_RP_STATE_CAP);
+	else if (IS_GEN9_LP(i915))
 		return intel_uncore_read(uncore, BXT_RP_STATE_CAP);
 	else
 		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f8d3cd11eced..77f6dcaba2b9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4115,6 +4115,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define   RPN_CAP_MASK		REG_GENMASK(23, 16)
 #define BXT_RP_STATE_CAP        _MMIO(0x138170)
 #define GEN9_RP_STATE_LIMITS	_MMIO(0x138148)
+#define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)
 
 /*
  * Logical Context regs
-- 
2.25.4

