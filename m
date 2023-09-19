Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8BD7A69A1
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 19:27:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C22AF10E287;
	Tue, 19 Sep 2023 17:27:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD6FB10E13A
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 17:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695144462; x=1726680462;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pHZQGW6io1vBMwx8rPg5abbyidFJ7oBYITpLMBoJH7I=;
 b=nO/ZzFiBaQNdTg/bw/HFXD8lRUISznEdLCxGHiKk19OzD1Zua8+WVwY/
 uRljUg7ulHo+SnR7NXmnH1c4tU09PUGk3dx+vuNYI6Lnj1gGvfnocnkAY
 QPWSi5nK7lGpbSOaWN+TOoCmgI4+uOxcaFLxabqzfthTlF4s3D3uSRWOZ
 nntiIOLPs8yeICV2KWe4ZXmUGBJpMeEQz5zoyBcT+p0ZElz++MslpegcW
 jFNmVk74PlYJUOUIc66emgLGD0dqnfXesXIwOTLZsFGoAIZK3pCt0L3ZZ
 KsswOpOWNKY14z0rJ6yj8+iGuu7cptD9Ynb/FRlLo4dVPAwSSG9jcOkXt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="360266462"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="360266462"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 10:27:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="993247481"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="993247481"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 10:27:42 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 10:16:55 -0700
Message-Id: <20230919171655.3308090-4-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230919171655.3308090-1-jonathan.cavitt@intel.com>
References: <20230919171655.3308090-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 3/3] drm/i915: Set copy engine arbitration
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 tomasz.mistat@intel.com, jonathan.cavitt@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Set copy engine arbitration into round robin mode
for part of Wa_16018031267 / Wa_16018063123 mitigation.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index 2e06bea73297a..823c6c40213f5 100644
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
index 660d4f358eab7..b8f3b991e4202 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2781,6 +2781,11 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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

