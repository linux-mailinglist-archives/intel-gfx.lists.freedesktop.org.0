Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C15C559DEB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 18:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68D0E10E720;
	Fri, 24 Jun 2022 16:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7BF910E720
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 16:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656086405; x=1687622405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MXpdzfA8Uv1JoNrqh7R0Dm7lM2L3eI6mEi/BsgydtOY=;
 b=lzlK/CnYzYxrIfVpN3aBFRw5K4OqyqCobcKcV/acrWdohijyLbrJHYWa
 XVZ8WL5kF9SD8j19gEXxRqdD3wlWMzLi6w76zxnae0SCgs4kdKeYzKbtW
 SW1qxuUjRMLVikcSZLV+pvGWDBwP6iWH41qGDWHudOEqMSQTL/oPcmkfH
 afy1r0gNEPe89qJXrv2CAPU9Y2KnLWhpMv6sLbw/SNPMkX3PDBCCX4ApM
 glSQB3fYhiB4GKX///j1G9EhV64s7lKPK+rnXkhakNQZFWht/85YfmSWK
 auVe8IpaaiX0yckHuQvIn3DAvbVj6CUrA5iOhnuMa4Mqob5xPE8kNmIxw w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="281762339"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281762339"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 09:00:04 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="835170460"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 09:00:00 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 21:29:21 +0530
Message-Id: <20220624155922.7435-9-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220624155922.7435-1-anshuman.gupta@intel.com>
References: <20220624155922.7435-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 8/9] drm/i915/xehpsdv: Store lmem region in gt
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
Cc: Andi Shyti <andi.shyti@intel.com>, jani.nikula@intel.com,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Store a pointer to respective local memory region in intel_gt so it can be
used when memory local to a GT needs to be allocated.

v2:
- Use forward decalaration instead of heder file. [Jani]

Cc: Andi Shyti <andi.shyti@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c       | 1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 8da3314bb6bf..48f509810f66 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -93,6 +93,7 @@ static int intel_gt_probe_lmem(struct intel_gt *gt)
 	GEM_BUG_ON(!HAS_REGION(i915, id));
 	GEM_BUG_ON(i915->mm.regions[id]);
 	i915->mm.regions[id] = mem;
+	gt->lmem = mem;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index df708802889d..37e7716a76ca 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -34,6 +34,7 @@ struct drm_i915_private;
 struct i915_ggtt;
 struct intel_engine_cs;
 struct intel_uncore;
+struct intel_memory_region;
 
 struct intel_mmio_range {
 	u32 start;
@@ -202,6 +203,8 @@ struct intel_gt {
 	 */
 	phys_addr_t phys_addr;
 
+	struct intel_memory_region *lmem;
+
 	struct intel_gt_info {
 		unsigned int id;
 
-- 
2.26.2

