Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C56F87D0F69
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 14:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E0010E5B6;
	Fri, 20 Oct 2023 12:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF16010E5B5
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 12:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697803780; x=1729339780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T3XZri9DboNDsIzeUsYcLckyeFADLnxbp657sa8/fQI=;
 b=aUfgRaSXDr59bcOBJepWnqT1QSOQlZbwlTFizPt9UFiHPzBI54xIninX
 42QNeHyJpUyDKbEhBsAUi7VeigQngzDErgvn+m+WGuklpdqVpcMu2X5Js
 IJSJWX1nO2QuPmCzldoYIv7pCMeSEu2tS0r4zUlAgCuuQcQ2BWMBTC2gY
 xuA1cxiu3KKBJ2AyizqMDAOmpFuuOfoNSD0PrMRHtIRnfU7oC8t1X7WYk
 cdRfAJUkQJGi1xzvvRHk+98Vwd1y5YKwcy62RuwBZVXTRwA64exaeRhPh
 SxjfxhLe20ndkqoZ3B8dwDGa9hcUDKCT3ENoCOoQgXjS2sNH9nFP3Usu0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="383699514"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="383699514"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 05:09:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="881058688"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="881058688"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 05:09:38 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Oct 2023 14:09:12 +0200
Message-Id: <20231020120912.1888023-5-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231020120912.1888023-1-andrzej.hajda@intel.com>
References: <20231020120912.1888023-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Set copy engine arbitration
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
Cc: andi.shyti@intel.com, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jonathan Cavitt <jonathan.cavitt@intel.com>

Set copy engine arbitration into round robin mode
for part of Wa_16018031267 / Wa_16018063123 mitigation.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
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

