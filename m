Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46E97D40D3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 22:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE0110E24B;
	Mon, 23 Oct 2023 20:22:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB67810E24B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 20:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698092525; x=1729628525;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=a8dhYNib41lXDgcVFkweQNqAZTcg7pwhGP5KdQD2Wfc=;
 b=fIdrHOMUPGygLXs2P2OBsjTNqe4k14hW5cr7ll8qY+XBiMlgVAowLRpr
 NATRRZSjZySKmWf/9FNT4rF0t6x4DdWA/re8fnq4Rf8WTd++34qMeJ5P9
 PxMg1L5+JSQ8zulfYI0F9AB2y5eM7viPuq8TTa5mjnolXbOTEZ/oDoMO8
 TphPBd5BHQ7C+KhgwjDoWZ0NNBobEykoWybcNu0DNkwKLyaA/aoj9gWB0
 kgYVX2l+9XL/IYnWq1DWz1RRNhIyBhREe0IHr/xav/2hu4rrnLllWpHgO
 UNm9mNs3NRySYgtn1V2dtJpM99nGtLXR0VssH4aosf0UIAaXOnfArPo6f Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="371989474"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="371989474"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 13:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="734796524"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="734796524"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 13:22:03 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Mon, 23 Oct 2023 22:21:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-wabb-v4-4-f75dec962b7d@intel.com>
References: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
In-Reply-To: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1881;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=nDRbyhSJhTAjBI8lxwyQRTPCFf4uI6ppQz63RvljIaQ=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlNtXk37WqJ/waAGpmd1Q12GXVBPGtMjpSoPpjG29W
 XOnOoTKJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZTbV5AAKCRAjYrKT3hD9144MDA
 CtCGn0FLxFV8ypV3WnViSka3jTJL351rO7pTxUALU4shdiB6A4BZFPBTHo7Hv4qnwwjXKvOE7WctIK
 6h3gJJFUMGbb6q/UCgnHtsubnX/8WKKXvhKaPzPYMnzW4OEOEFBwstOCYdApTXwf7RNCLEui0remOv
 e2i0UP9pBn9DK+WjwmRNbQEhYDN00NM72wyoej7yzKUeRwm0DYOW49ccvWe7MD1POamsTyhwRB7Qdw
 JvhIjaGdPS9wAnn4oK6nhbqptV1c7Zwse0YUuWzWnfjwKLYcoZL9CYnH7BMO6ulWTpigP6eYCSNguR
 tXfX71BPFJGceMZcOMXIUG4nq2y8o0XRuoE4wUT6Lzz++6jFqTy2eDU1xZC/4N4ADYXKPcd+m8Z98P
 sVG08A6nK6/u0TISI099BvlEbNu4XZn1IItb6g1aN4mECv3IfFC6x8nDXnT2iFeeeAjd9u2ZhfS35U
 uf2yF1ljpX+GmjqZG6kOLuM5S88sx4MkDSY2w2JN/bZwg=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH v4 4/4] drm/i915: Set copy engine arbitration
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jonathan Cavitt <jonathan.cavitt@intel.com>

Set copy engine arbitration into round robin mode
for part of Wa_16018031267 / Wa_16018063123 mitigation.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index b8618ee3e3041a..c0c8c12edea104 100644
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
index 192ac0e59afa13..108d9326735910 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2782,6 +2782,11 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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
2.34.1

