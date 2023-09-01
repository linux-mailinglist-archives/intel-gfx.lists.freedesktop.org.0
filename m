Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F023F78FFB0
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 17:11:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7E8910E062;
	Fri,  1 Sep 2023 15:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25CBF10E023
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 15:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693581067; x=1725117067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5URLieotgcIsIBUoi2GeChcHceEdlGL9RSNAtuZshi8=;
 b=OJGhcMsa70MISSfEsHGq+eBJF90K9uqNKAwOSLjSiI9RbfGxyewYp0TY
 g0HLMaYP308dQaHOZhnnSUjeLSyK88yD9IRCN2dOwrIwP08icKM+xcnzX
 povDFReZZqz0aAw3hpJqzANoOaMrXkm5NM1UnIAXR1J7qBwpQS3VrAfe0
 euwTsLEMlv3bAGtpW2wS0XVK5TTjyaHdc1u1j2i4V/DhvYEYOqq9JJmZG
 n2FXmNfdaIVOird2hPHOgzdpJyqFFyRdtHNmTKOL1K+q+dlt1MQDADwb4
 6gsEEVCbdeVccxHkcc9ka1Bl7E1oAnOAFPwh7M29882HzPmCDClGVZ2gZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="440212154"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="440212154"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 08:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="733560049"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="733560049"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 08:11:06 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 08:00:26 -0700
Message-Id: <20230901150026.284883-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230901150026.284883-1-jonathan.cavitt@intel.com>
References: <20230901150026.284883-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/2] drm/i915: Set copy engine arbitration
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
index 864d41bcf6bbe..e891e7c8c0787 100644
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

