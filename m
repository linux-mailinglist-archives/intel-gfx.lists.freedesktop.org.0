Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC665BF822
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 09:47:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6863A10E350;
	Wed, 21 Sep 2022 07:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE4810E3BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 07:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663746441; x=1695282441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NoIEHGfzgC3blRRDU4FatuCogOrj2/ggU6q7UI7u2sU=;
 b=ils33BoqD851A/rm7k5QFHIKcPTf3aNTgftP7Sx/Ku8odd9pDGdMT4Ff
 yoMlg89XKmu/Q24ZWOdB4XeFIetwR4rAY5nXYfpc97z4n1lzFDTCRD/1a
 rT2DYT1RlLKtUOyurkDZQalX6QiVxdtqFD9sGfk2vzVH6dTnfXewFMKpY
 R/tB/03OpaDnHNR1nbm99GPLDo2yV111vt1UTXTVfmtqQoglt6jhWEbza
 AXJ+jPyz+ta6m15PFsymUT8VMEf+t9hFdDmiJE96smrgZ7eQNRercmm8w
 EnHDA7x66Vm4EvECRBss4ZLmaO6zUl5ySGT3DqZv3IDvv/SS8p55oBcpK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="298649966"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="298649966"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:47:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="708336983"
Received: from fyang16-desk.jf.intel.com ([10.24.96.243])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:47:21 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 00:48:59 -0700
Message-Id: <20220921074901.3651252-2-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220921074901.3651252-1-fei.yang@intel.com>
References: <20220921074901.3651252-1-fei.yang@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/xehpsdv: Define GuC Based full TLB
 invalidation routine
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

From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>

The GuC firmware has defined the interface for TLB invalidation, This
patch makes use of the interface.

Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Acked-by: Matthew Brost <matthew.brost@intel.com>
Singed-off-by: Fei Yang <fei.yang@intel.com>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 20 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 ++
 3 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index 111e740105ee..a45e8225a17d 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -188,6 +188,7 @@ enum intel_guc_state_capture_event_status {
 #define INTEL_GUC_TLB_INVAL_FLUSH_CACHE (1 << 31)
 
 enum intel_guc_tlb_invalidation_type {
+	INTEL_GUC_TLB_INVAL_FULL = 0x0,
 	INTEL_GUC_TLB_INVAL_GUC = 0x3,
 };
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 6bef7adf933d..925b6c9af491 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -937,6 +937,26 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 *action, u32 size)
 	return err;
 }
 
+ /* Full TLB invalidation */
+int intel_guc_invalidate_tlb_full(struct intel_guc *guc,
+				  enum intel_guc_tlb_inval_mode mode)
+{
+	u32 action[] = {
+		INTEL_GUC_ACTION_TLB_INVALIDATION,
+		0,
+		INTEL_GUC_TLB_INVAL_FULL << INTEL_GUC_TLB_INVAL_TYPE_SHIFT |
+			mode << INTEL_GUC_TLB_INVAL_MODE_SHIFT |
+			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
+	};
+
+	if (!INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc)) {
+		DRM_ERROR("Tlb invalidation: Operation not supported in this platform!\n");
+		return 0;
+	}
+
+	return guc_send_invalidate_tlb(guc, action, ARRAY_SIZE(action));
+}
+
 /*
  * Guc TLB Invalidation: Invalidate the TLB's of GuC itself.
  */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index ed802ae24368..421cf33168d2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -377,6 +377,8 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
 int intel_guc_self_cfg32(struct intel_guc *guc, u16 key, u32 value);
 int intel_guc_self_cfg64(struct intel_guc *guc, u16 key, u64 value);
 
+int intel_guc_invalidate_tlb_full(struct intel_guc *guc,
+				  enum intel_guc_tlb_inval_mode mode);
 int intel_guc_invalidate_tlb_guc(struct intel_guc *guc,
 				 enum intel_guc_tlb_inval_mode mode);
 
-- 
2.25.1

