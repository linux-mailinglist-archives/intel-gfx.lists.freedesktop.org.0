Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D9D503050
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 00:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E675E10E611;
	Fri, 15 Apr 2022 22:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E491410E602
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 22:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650062429; x=1681598429;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ou4PpFZeJlHACTxQDujvw6zj+rPiKn9hufrOkdAwDwM=;
 b=GjrV/j3XrgiAJNgAGuWcm3QI0926VkuSwaz4Bcr5cpRhbI334+w/lH5I
 wRfQuwDmuFkhctGAoJD90/Q8+tnH6r5EgnlB76nuA3BGXA8r0jCgnHBjy
 wrWIqefCyPQ12SbRBO0DNeM7b9ugiZHo3rxNzQLbSx+O/sIIsSCmAYSnI
 TNHtDgyKlt/XBI9jvpiPZ8v/WIpP5QUgAZhk7r0VTkmcviFfz4NYD7yxJ
 oK3dIzkG0cxjwV8UhFa4RO6roYeNrRKSLHNxlBuL/hRexLborQ7LieWom
 O5frL4Cc5HVu9Ni+oVMT90YKG1/+IAw7CcJ6QwWZQJjRBcyycA5afXHs9 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="326144496"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="326144496"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="574563710"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:28 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 john.c.harrison@intel.com
Date: Fri, 15 Apr 2022 15:40:20 -0700
Message-Id: <20220415224025.3693037-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
References: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Add Wa_22011802037 force cs halt
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

From: Tilak Tangudu <tilak.tangudu@intel.com>

Prior to doing a reset, SW must ensure command streamer is stopped,
as a workaround, to eliminate a race condition in GPM flow.
Setting both the ring stop and prefetch disable bits, will cause the
command streamer to halt.

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 9 +++++++++
 drivers/gpu/drm/i915/gt/intel_engine_regs.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 98b61ff13c95..14c6ddbbfde8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1280,6 +1280,15 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
 	int err;
 
 	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
+
+	/*
+	 * Wa_22011802037 : gen12, Prior to doing a reset, ensure CS is
+	 * stopped, set ring stop bit and prefetch disable bit to halt CS
+	 */
+	if (GRAPHICS_VER(engine->i915) == 12)
+		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
+				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
+
 	err = __intel_wait_for_register_fw(engine->uncore, mode,
 					   MODE_IDLE, MODE_IDLE,
 					   fast_timeout_us,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index 0bf8b45c9319..594a629cb28f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -181,6 +181,7 @@
 #define   GFX_SURFACE_FAULT_ENABLE		(1 << 12)
 #define   GFX_REPLAY_MODE			(1 << 11)
 #define   GFX_PSMI_GRANULARITY			(1 << 10)
+#define   GEN12_GFX_PREFETCH_DISABLE		REG_BIT(10)
 #define   GFX_PPGTT_ENABLE			(1 << 9)
 #define   GEN8_GFX_PPGTT_48B			(1 << 7)
 #define   GFX_FORWARD_VBLANK_MASK		(3 << 5)
-- 
2.35.1

