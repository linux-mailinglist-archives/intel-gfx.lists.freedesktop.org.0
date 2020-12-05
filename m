Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 301022CFACD
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 10:25:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F5266E418;
	Sat,  5 Dec 2020 09:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D355B6E41A
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Dec 2020 09:25:48 +0000 (UTC)
IronPort-SDR: cB3X4PIMRoe2+f0SjFDaxuISgCBm34nfT9bQeq0Fy/T4iWSgziMOssAF1+wFHIdHFQrJX6R+MZ
 BlMBAZkgfpfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="169991259"
X-IronPort-AV: E=Sophos;i="5.78,395,1599548400"; d="scan'208";a="169991259"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2020 01:25:48 -0800
IronPort-SDR: fwGe4Q7a3+4sRwdlJ0AokwHROnOAExgYcolMOEkM0uo8wDg54paNoSJLo1izyWwXWOkAK3eMb4
 2NKEBkpblZEw==
X-IronPort-AV: E=Sophos;i="5.78,395,1599548400"; d="scan'208";a="362441889"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2020 01:25:48 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  5 Dec 2020 01:25:42 -0800
Message-Id: <20201205092542.2325477-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201205092542.2325477-1-lucas.demarchi@intel.com>
References: <20201205092542.2325477-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: remove WA_SET_FIELD_MASKED()
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the last macro and implement it as a function like the rest of
the operations that don't assume there is a `wal` list, but rather
receive it as argument.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 0d8ae0096e8c..2db1e68d7464 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -229,8 +229,12 @@ wa_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 	wa_add(wal, reg, 0, _MASKED_BIT_DISABLE(val), val);
 }
 
-#define WA_SET_FIELD_MASKED(addr, mask, value) \
-	wa_write_masked_or(wal, (addr), 0, _MASKED_FIELD((mask), (value)))
+static void
+wa_masked_field_set(struct i915_wa_list *wal, i915_reg_t reg,
+		    u32 mask, u32 val)
+{
+	wa_write_masked_or(wal, reg, 0, _MASKED_FIELD(mask, val));
+}
 
 static void gen6_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
@@ -287,7 +291,7 @@ static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 * disable bit, which we don't touch here, but it's good
 	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
 	 */
-	WA_SET_FIELD_MASKED(GEN7_GT_MODE,
+	wa_masked_field_set(wal, GEN7_GT_MODE,
 			    GEN6_WIZ_HASHING_MASK,
 			    GEN6_WIZ_HASHING_16x4);
 }
@@ -419,7 +423,7 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_masked_dis(wal, GEN8_CS_CHICKEN1, GEN9_PREEMPT_3D_OBJECT_LEVEL);
 
 	/* WaDisableGPGPUMidCmdPreemption:skl,bxt,blk,cfl,[cnl] */
-	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
+	wa_masked_field_set(wal, GEN8_CS_CHICKEN1,
 			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
 			    GEN9_PREEMPT_GPGPU_COMMAND_LEVEL);
 
@@ -459,7 +463,7 @@ static void skl_tune_iz_hashing(struct intel_engine_cs *engine,
 		return;
 
 	/* Tune IZ hashing. See intel_device_info_runtime_init() */
-	WA_SET_FIELD_MASKED(GEN7_GT_MODE,
+	wa_masked_field_set(wal, GEN7_GT_MODE,
 			    GEN9_IZ_HASHING_MASK(2) |
 			    GEN9_IZ_HASHING_MASK(1) |
 			    GEN9_IZ_HASHING_MASK(0),
@@ -551,7 +555,7 @@ static void cnl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_masked_dis(wal, GEN8_CS_CHICKEN1, GEN9_PREEMPT_3D_OBJECT_LEVEL);
 
 	/* WaDisableGPGPUMidCmdPreemption:cnl */
-	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
+	wa_masked_field_set(wal, GEN8_CS_CHICKEN1,
 			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
 			    GEN9_PREEMPT_GPGPU_COMMAND_LEVEL);
 
@@ -605,7 +609,7 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 			   _MASKED_BIT_ENABLE(FLOAT_BLEND_OPTIMIZATION_ENABLE));
 
 	/* WaDisableGPGPUMidThreadPreemption:icl */
-	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
+	wa_masked_field_set(wal, GEN8_CS_CHICKEN1,
 			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
 			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
 
@@ -641,7 +645,7 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 		     GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
 
 	/* WaDisableGPGPUMidThreadPreemption:gen12 */
-	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
+	wa_masked_field_set(wal, GEN8_CS_CHICKEN1,
 			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
 			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
 }
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
