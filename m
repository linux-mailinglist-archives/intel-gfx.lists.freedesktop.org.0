Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1281B48A708
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 06:16:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200DA1121DF;
	Tue, 11 Jan 2022 05:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2759C10FFF0
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 05:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641878166; x=1673414166;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BscsC2E2JR7ZrWSKL4RV0ZvoAwIrbC24Xeisa+X6//4=;
 b=ntnkqPymO1uya/MXkJXb9fZEJfjgXLNCsMmc0CDcslo/mgaPHPiAnT8Z
 g+g4xRtLuUCMwMEci7ID3+XnDwEn3IebLuOMqGK55MI9RPTOEWj53dEtM
 C3JzqRe5EXXTq9KS20J6moxwLLOzghCOIHIBUk/F7gyAgzO5VCcQSWIPy
 h0rPusPjH8H2HpZ8IqnqsmQvWGJHXFQkX50AQunkC9G6cOGfNzSkpeDOb
 kyxpFPe+6IC29ETJjIGDDdfO5HXoEG5SJinQTIK9MtOl7txuphA20glFG
 cmVq/VbzX5RMzyc6FDEp0AbE0m49Oo1ZOM26MCXvJ29LIVnmZ7L7x5kiD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="243358341"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="243358341"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="474399157"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 21:15:54 -0800
Message-Id: <20220111051600.3429104-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220111051600.3429104-1-matthew.d.roper@intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/11] drm/i915: Replace GFX_MODE_GEN7 with
 RING_MODE_GEN7
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's preferable to use parameterized register macros where possible.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c     | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h             | 1 -
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 977619ea839a..895939a941d6 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2423,7 +2423,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	if (GRAPHICS_VER(i915) == 7) {
 		/* WaBCSVCSTlbInvalidationMode:ivb,vlv,hsw */
 		wa_masked_en(wal,
-			     GFX_MODE_GEN7,
+			     RING_MODE_GEN7(RENDER_RING_BASE),
 			     GFX_TLB_INVALIDATE_EXPLICIT | GFX_REPLAY_MODE);
 
 		/* WaDisable_RenderCache_OperationalFlush:ivb,vlv,hsw */
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
index f776c470914d..abc81cdc9e5d 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.c
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
@@ -44,7 +44,7 @@
 
 /* Raw offset is appened to each line for convenience. */
 static struct engine_mmio gen8_engine_mmio_list[] __cacheline_aligned = {
-	{RCS0, GFX_MODE_GEN7, 0xffff, false}, /* 0x229c */
+	{RCS0, RING_MODE_GEN7(RENDER_RING_BASE), 0xffff, false}, /* 0x229c */
 	{RCS0, GEN9_CTX_PREEMPT_REG, 0x0, false}, /* 0x2248 */
 	{RCS0, HWSTAM, 0x0, false}, /* 0x2098 */
 	{RCS0, INSTPM, 0xffff, true}, /* 0x20c0 */
@@ -76,7 +76,7 @@ static struct engine_mmio gen8_engine_mmio_list[] __cacheline_aligned = {
 };
 
 static struct engine_mmio gen9_engine_mmio_list[] __cacheline_aligned = {
-	{RCS0, GFX_MODE_GEN7, 0xffff, false}, /* 0x229c */
+	{RCS0, RING_MODE_GEN7(RENDER_RING_BASE), 0xffff, false}, /* 0x229c */
 	{RCS0, GEN9_CTX_PREEMPT_REG, 0x0, false}, /* 0x2248 */
 	{RCS0, HWSTAM, 0x0, false}, /* 0x2098 */
 	{RCS0, INSTPM, 0xffff, true}, /* 0x20c0 */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0be2397fc61e..25f6bde36add 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2669,7 +2669,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 	 GEN9_STATE_ACK_TDL1 | GEN9_STATE_ACK_TDL0)
 
 #define GFX_MODE	_MMIO(0x2520)
-#define GFX_MODE_GEN7	_MMIO(0x229c)
 #define RING_MODE_GEN7(base)	_MMIO((base) + 0x29c)
 #define   GFX_RUN_LIST_ENABLE		(1 << 15)
 #define   GFX_INTERRUPT_STEERING	(1 << 14)
-- 
2.34.1

