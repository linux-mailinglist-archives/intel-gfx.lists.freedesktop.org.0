Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E33A6516E8B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 13:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C515B10E2D1;
	Mon,  2 May 2022 11:09:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35DBB10E2A9;
 Mon,  2 May 2022 11:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651489761; x=1683025761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SqYdYvQ9PXmKKAg5uwYMAm7aufDejnyynAqy/Y2m4eE=;
 b=fYsBggGBSO/XG/ASAMkQF3By9armjGDwT9TBY+GUHw7MaFeiUurWKV/V
 thVtZdE/bYTLVukwYqb9ZbRtPA//8iDTTMctt6t+Iw09mWw8vaPHcA+sP
 LlvqCIn2ozhgVZIAMvszLyHacFvVO9nj4BJrQW9CbsezM/sQOtm/X7YH1
 RuZ0Ny7neMlgBk5NG+nqlpb4yhdxWjNAvdZDwdlqQPJq89IaIDz/Viipy
 pk3qpXIuCyiNxjfnvPdc35IJs+BTDIrOhiAuX/ClBlSeRjd9ZP8stxoEu
 ZjVygVvmCCqCeIq8TjWkUz7+lRmGQDANgc2pyT4I/l0hUawdJ9/SA8Msi w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10334"; a="254632163"
X-IronPort-AV: E=Sophos;i="5.91,190,1647327600"; d="scan'208";a="254632163"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 04:09:04 -0700
X-IronPort-AV: E=Sophos;i="5.91,190,1647327600"; d="scan'208";a="535800056"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 04:09:02 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Mon,  2 May 2022 16:40:00 +0530
Message-Id: <20220502111003.32397-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220502111003.32397-1-ramalingam.c@intel.com>
References: <20220502111003.32397-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/4] drm/i915/gt: Explicitly clear BB_OFFSET
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
 Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
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
index 75a0c55c5aa5..8c65f3a7acfb 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -109,6 +109,7 @@
 #define RING_SBBSTATE(base)			_MMIO((base) + 0x118) /* hsw+ */
 #define RING_SBBADDR_UDW(base)			_MMIO((base) + 0x11c) /* gen8+ */
 #define RING_BBADDR(base)			_MMIO((base) + 0x140)
+#define RING_BB_OFFSET(base)			_MMIO((base) + 0x158)
 #define RING_BBADDR_UDW(base)			_MMIO((base) + 0x168) /* gen8+ */
 #define CCID(base)				_MMIO((base) + 0x180)
 #define   CCID_EN				BIT(0)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index eec73c66406c..ee8ab7470a62 100644
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
index 8b2c11dbe354..c4bd4e1ac5ef 100644
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
2.20.1

