Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9668B5B7441
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 17:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB3AD10E76C;
	Tue, 13 Sep 2022 15:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD10A10E76D
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 15:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663082544; x=1694618544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JsFTFggezjsNnv0Sfayr6B0R1QsN0SCsalUFue3ukaQ=;
 b=C/9XZqCbP2nwC/89q7X/lhMQ4R59tpUSa5DStycrPdN64lC2RpIUWXZz
 3/TS94l2cvXKQJ0J+JVVeaLhvN+Vv2JCEmeIwgUNwB8T5J3wvBmUOIAi8
 adBtD2OalaSc1F4PIvG9IJiM2M0eE/u5EtOYLgqtxk3MrSEwdZ3ylxAPj
 hXA0sHwt4O+rtJkiJWH8FSyUOc5TBd2e8rEXD8Y+hxl38AeG8M7ibxNko
 vpMiFO41u8J7Kxa6bWLwmHqjxjkKON5K7T6LGeQtKYUtV1VBbTSCXaPme
 ZhNB4KjmRhrOARU0gMcbwU1cKJYOzr0y9zI47xoel/YqCHtkklnieyQVG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="298963942"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="298963942"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:22:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="593977813"
Received: from abaczek-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.8.5])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:22:16 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Sep 2022 17:21:48 +0200
Message-Id: <37c67abb3303852f06a570a4360addf52bf941c1.1663081418.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1663081418.git.karolina.drobnik@intel.com>
References: <cover.1663081418.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/4] drm/i915/gt: Explicitly clear BB_OFFSET
 for new contexts
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
Cc: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Ramalingam C <ramalingampc2008@gmail.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Ramalingam C <ramalingam.c@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

Even though the initial protocontext we load onto HW has the register
cleared, by the time we save it into the default image, BB_OFFSET has
had the enable bit set. Reclear BB_OFFSET for each new context.

Testcase: igt/i915_selftests/gt_lrc

v2:
  Extend it for gen8.
v3:
  BB_OFFSET is recorded per engine from Gen9 onwards

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |  1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c         | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_lrc.c      |  5 +++++
 3 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index 889f0df3940b..fe1a0d5fd4b1 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -110,6 +110,7 @@
 #define RING_SBBSTATE(base)			_MMIO((base) + 0x118) /* hsw+ */
 #define RING_SBBADDR_UDW(base)			_MMIO((base) + 0x11c) /* gen8+ */
 #define RING_BBADDR(base)			_MMIO((base) + 0x140)
+#define RING_BB_OFFSET(base)			_MMIO((base) + 0x158)
 #define RING_BBADDR_UDW(base)			_MMIO((base) + 0x168) /* gen8+ */
 #define CCID(base)				_MMIO((base) + 0x180)
 #define   CCID_EN				BIT(0)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 08214683e130..3955292483a6 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -662,6 +662,21 @@ static int lrc_ring_mi_mode(const struct intel_engine_cs *engine)
 		return -1;
 }
 
+static int lrc_ring_bb_offset(const struct intel_engine_cs *engine)
+{
+	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
+		return 0x80;
+	else if (GRAPHICS_VER(engine->i915) >= 12)
+		return 0x70;
+	else if (GRAPHICS_VER(engine->i915) >= 9)
+		return 0x64;
+	else if (GRAPHICS_VER(engine->i915) >= 8 &&
+		 engine->class == RENDER_CLASS)
+		return 0xc4;
+	else
+		return -1;
+}
+
 static int lrc_ring_gpr0(const struct intel_engine_cs *engine)
 {
 	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 50))
@@ -768,6 +783,7 @@ static void init_common_regs(u32 * const regs,
 			     bool inhibit)
 {
 	u32 ctl;
+	int loc;
 
 	ctl = _MASKED_BIT_ENABLE(CTX_CTRL_INHIBIT_SYN_CTX_SWITCH);
 	ctl |= _MASKED_BIT_DISABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
@@ -779,6 +795,10 @@ static void init_common_regs(u32 * const regs,
 	regs[CTX_CONTEXT_CONTROL] = ctl;
 
 	regs[CTX_TIMESTAMP] = ce->stats.runtime.last;
+
+	loc = lrc_ring_bb_offset(engine);
+	if (loc != -1)
+		regs[loc + 1] = 0;
 }
 
 static void init_wa_bb_regs(u32 * const regs,
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 1109088fe8f6..9fc031267e0f 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -357,6 +357,11 @@ static int live_lrc_fixed(void *arg)
 				lrc_ring_cmd_buf_cctl(engine),
 				"RING_CMD_BUF_CCTL"
 			},
+			{
+				i915_mmio_reg_offset(RING_BB_OFFSET(engine->mmio_base)),
+				lrc_ring_bb_offset(engine),
+				"RING_BB_OFFSET"
+			},
 			{ },
 		}, *t;
 		u32 *hw;
-- 
2.25.1

