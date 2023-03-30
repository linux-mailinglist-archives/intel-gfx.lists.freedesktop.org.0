Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 667FD6D0D13
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 19:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EEE410E19E;
	Thu, 30 Mar 2023 17:48:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1378510E053
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 17:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680198482; x=1711734482;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hb8F+c337avIDEuowr8PUDC8/cGZyEOtKtsItbSqNnY=;
 b=OVExrD+8bKbqD8W4chgbGiMqtLI3FkLZ9vj1PcF8fYONWrvLtjHtqkIr
 QeVRsaQFcfDAPiJ4kVThfE1J5Kjli9qoOxaU9oJc7cBCNEtLASNpVvtXj
 yA8Rpt9k+LeErZWiQc34mdKOAxxCpdKWePMUkemLbNmLYHpW62ghISQmk
 jXOEoX9w+cxx9vGr6haNNDCpT8CeleaDwlTOs8Nc6iUiVel6Vp3/fZzok
 XYGi7Bb2Ibx4BjCup774BNqTKct1MO0U7m74Splx3aMBFVjaKaZm40S+j
 HUBN3pOL/ITzR36DVefyWBAuM2ZQs6kPor2H9y8VrLHV3qn13JEXAlYKV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="342886796"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="342886796"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 10:48:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="678279906"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="678279906"
Received: from mschmidt-mobl.ger.corp.intel.com (HELO uxy.intel.com)
 ([10.252.41.135])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 10:47:59 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Mar 2023 20:47:40 +0300
Message-Id: <20230330174740.2775776-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230309152611.1788656-1-lionel.g.landwerlin@intel.com>
References: <20230309152611.1788656-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2] drm/i915: disable sampler indirect state in
 bindless heap
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

By default the indirect state sampler data (border colors) are stored
in the same heap as the SAMPLER_STATE structure. For userspace drivers
that can be 2 different heaps (dynamic state heap & bindless sampler
state heap). This means that border colors have to copied in 2
different places so that the same SAMPLER_STATE structure find the
right data.

This change is forcing the indirect state sampler data to only be in
the dynamic state pool (more convinient for userspace drivers, they
only have to have one copy of the border colors). This is reproducing
the behavior of the Windows drivers.

BSpec: 46052

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: stable@vger.kernel.org
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 4aecb5a7b6318..f298dc461a72f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1144,6 +1144,7 @@
 #define   ENABLE_SMALLPL			REG_BIT(15)
 #define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
 #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
+#define   GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE	REG_BIT(0)
 
 #define GEN9_HALF_SLICE_CHICKEN7		MCR_REG(0xe194)
 #define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e7ee24bcad893..0ce1c8c23c631 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2535,6 +2535,25 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 				 ENABLE_SMALLPL);
 	}
 
+	if (GRAPHICS_VER(i915) >= 11) {
+		/* This is not a Wa (although referred to as
+		 * WaSetInidrectStateOverride in places), this allows
+		 * applications that reference sampler states through
+		 * the BindlessSamplerStateBaseAddress to have their
+		 * border color relative to DynamicStateBaseAddress
+		 * rather than BindlessSamplerStateBaseAddress.
+		 *
+		 * Otherwise SAMPLER_STATE border colors have to be
+		 * copied in multiple heaps (DynamicStateBaseAddress &
+		 * BindlessSamplerStateBaseAddress)
+		 *
+		 * BSpec: 46052
+		 */
+		wa_mcr_masked_en(wal,
+				 GEN10_SAMPLER_MODE,
+				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
+	}
+
 	if (GRAPHICS_VER(i915) == 11) {
 		/* This is not an Wa. Enable for better image quality */
 		wa_masked_en(wal,
-- 
2.34.1

