Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 030D964C486
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 08:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76D910E051;
	Wed, 14 Dec 2022 07:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98BB810E051
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 07:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671004494; x=1702540494;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/tAw52yeV5XKTdbIZLJ65zAhimS2ysljpM948sp9flc=;
 b=Z4brxp5NIho1DCBIWieEUJIDKRteikGjagdfcd0Yo7sJ38kus+c/9RjT
 KTCOJEkLBiofHTn3g58HjYf/HOt2c8O27rVegIBO6FC712gunXejcYco0
 NAdgoAfMcXIVrimLfA6x5T+oTRz1uVMfkK/l7ZzENugdbNts/01mukJRk
 6Z2I61bElj4x45jnLAJvYf9obsyF9GCW9zh8VdxR1DPj+F9b9NPJOspFa
 pztW9Pz2URHQL24yaupE0GPRQmpQSJm808bR+plKrfc7Xpo5UFSWC8vBq
 gE8D8eARf+ua01/4m9li5W5dlMY90dP3/kEoUyVqwNC1UYzUIMpmf/YfD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="404609161"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="404609161"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 23:54:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="650990233"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="650990233"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 23:54:51 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Dec 2022 08:54:39 +0100
Message-Id: <20221214075439.402485-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: fix TLB invalidation for Gen12.50
 video and compute engines
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of Gen12.50 video and compute engines, TLB_INV registers are
masked - to modify one bit, corresponding bit in upper half of the register
must be enabled, otherwise nothing happens.

Fixes: 77fa9efc16a9 ("drm/i915/xehp: Create separate reg definitions for new MCR registers")
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
Hi,

This patch was sent already to ML, but together with refactoring patch.
Since it contains fix and should be merged ASAP it is sent separately
to get CI test results.

Regards
Andrzej
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 63f95c5f36146b..7eeee5a7cb33cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1100,9 +1100,15 @@ static void mmio_invalidate_full(struct intel_gt *gt)
 			continue;
 
 		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
+			u32 val = BIT(engine->instance);
+
+			if (engine->class == VIDEO_DECODE_CLASS ||
+			    engine->class == VIDEO_ENHANCEMENT_CLASS ||
+			    engine->class == COMPUTE_CLASS)
+				val = _MASKED_BIT_ENABLE(val);
 			intel_gt_mcr_multicast_write_fw(gt,
 							xehp_regs[engine->class],
-							BIT(engine->instance));
+							val);
 		} else {
 			rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
 			if (!i915_mmio_reg_offset(rb.reg))
-- 
2.34.1

