Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 076BA488153
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jan 2022 05:41:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330AC11360F;
	Sat,  8 Jan 2022 04:41:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08152113609
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 04:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641616862; x=1673152862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nEeyVW7+fSFjvlGvkX0VMXmAZWtPlBMj/HW1MkqNOlQ=;
 b=MhRU3hm0VZYMliAWPNwkZ9ixOhalOT9phYTBOSR0ordP3Kbe7/yRAbcY
 Lwtf22BuPz+DAJDYXjeqjoKasxxfQTDiocEw0Ms/TtjDMgG7QtpS+PGdG
 BAyb90kehcmHr0Ip6gjD8XNeWk1yM1O14nkXYgYMZJu28XG65JLsFQt/A
 labxx2ZMzx2WHwpyB6uZ5tH96QjgVqxmU5SQkCk6kcYqvzpNc+QXOwzLV
 k44aGkp4qvx7C++jG05elv1EakiW+1ynBoYTzdDD0bJ/N2i0R1YmqGSNb
 sWIsBU0986nnzDx/YxbNWADOmCwUSjvaVWYZmTDlZVRz86iBVNXxyi4Qp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10220"; a="240533987"
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="240533987"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 20:41:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="668975722"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 20:41:00 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 20:40:53 -0800
Message-Id: <20220108044055.3123418-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220108044055.3123418-1-matthew.d.roper@intel.com>
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915: Replace GFX_MODE_GEN7 with
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's preferable to use parameterized register macros where possible.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
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
index b227a1e58f9b..7f0168ba55f2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2918,7 +2918,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 	 GEN9_STATE_ACK_TDL1 | GEN9_STATE_ACK_TDL0)
 
 #define GFX_MODE	_MMIO(0x2520)
-#define GFX_MODE_GEN7	_MMIO(0x229c)
 #define RING_MODE_GEN7(base)	_MMIO((base) + 0x29c)
 #define   GFX_RUN_LIST_ENABLE		(1 << 15)
 #define   GFX_INTERRUPT_STEERING	(1 << 14)
-- 
2.34.1

