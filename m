Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF1C78791A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:09:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07DAB10E12B;
	Thu, 24 Aug 2023 20:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F29FB10E12B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692907736; x=1724443736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zFn0LAyQfhVGASg+G0yOOFzLB0ZZusGLDvKvQOJu6Bc=;
 b=K6SEHLCX/DrZeM2Z4764foX95g2BOwfX7syWXcXyKo4bXveKZhysS2Ad
 CXiAUSMEr0uMe/RYHJK/hg3xgaYaMeHn8ebmA2/f1sLGKUagaswKgxMgt
 c8gIl1CVz1FqmI2RJ9BPd6xIjtmZHWy8e0wozE/xL9+9hCribxmA+6HT5
 EPiC2KqCpnibUgNBKzgVN2miAX8l78xS7wN9sJUEtY+ADapWzt3MODeUQ
 xebDfln0ClQ057kw0RCUGv9pgNtmAfqRNA2W2ZVP8B8XSjs379h031JHH
 iFAYz2xwjOGH/4wKzr4G0hGJRNd8CoC58TyXep4iBIq/AEiy6DigjP0wV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364736160"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364736160"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:08:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="687020848"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="687020848"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:08:54 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 12:58:16 -0700
Message-Id: <20230824195816.2127026-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230824195816.2127026-1-jonathan.cavitt@intel.com>
References: <20230824195816.2127026-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915: Set copy engine arbitration
 for Wa_16018031267 / Wa_16018063123
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
Cc: tomasz.mistat@intel.com, jonathan.cavitt@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nirmoy Das <nirmoy.das@intel.com>

Set copy engine arbitration into round robin mode
for part of Wa_16018031267 / Wa_16018063123 mitigation.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index 2e06bea73297..823c6c40213f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -124,6 +124,9 @@
 #define RING_INDIRECT_CTX(base)			_MMIO((base) + 0x1c4) /* gen8+ */
 #define RING_INDIRECT_CTX_OFFSET(base)		_MMIO((base) + 0x1c8) /* gen8+ */
 #define ECOSKPD(base)				_MMIO((base) + 0x1d0)
+#define   XEHP_BLITTER_SCHEDULING_MODE_MASK	REG_GENMASK(12, 11)
+#define   XEHP_BLITTER_ROUND_ROBIN_MODE		\
+		REG_FIELD_PREP(XEHP_BLITTER_SCHEDULING_MODE_MASK, 1)
 #define   ECO_CONSTANT_BUFFER_SR_DISABLE	REG_BIT(4)
 #define   ECO_GATING_CX_ONLY			REG_BIT(3)
 #define   GEN6_BLITTER_FBC_NOTIFY		REG_BIT(3)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 864d41bcf6bb..e891e7c8c078 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2769,6 +2769,11 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			 RING_SEMA_WAIT_POLL(engine->mmio_base),
 			 1);
 	}
+	/* Wa_16018031267, Wa_16018063123 */
+	if (NEEDS_FASTCOLOR_BLT_WABB(engine))
+		wa_masked_field_set(wal, ECOSKPD(engine->mmio_base),
+				    XEHP_BLITTER_SCHEDULING_MODE_MASK,
+				    XEHP_BLITTER_ROUND_ROBIN_MODE);
 }
 
 static void
-- 
2.25.1

