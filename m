Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C145BF826
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 09:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117E710E3D0;
	Wed, 21 Sep 2022 07:47:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0AEF10E3D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 07:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663746441; x=1695282441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iZjFQtbtEwS212KZVTm4CYVhAyXl8RyC/A1IYh7s2ek=;
 b=d3TRssrk/+8zLnVRKsCgZeihMYCpkNJT0w5m1ZVdPMJjh9HWu8u/m+up
 PGAC6lTKOTlHdMmbow0noIjs96I2BIfISuSgcHnX0Rh/IeQ5IpeyBvatZ
 hEDWGCHKf0VwWOPqB9d4MBARSim7PkxX7LspwYfAhYW/yuEOqGyIzX8TT
 dxBAPqv/3rwHIf+H37+T6GYuu8deCrU8GC6p3wshbOBhYJguseZ/vyZLK
 KkgorOhLZVV0YHilXZ7am6ylMi6uAW/XQPhH1MPc4oFVdj+N0fbofThDC
 p/DQiygmH2gyJRAPeHRZHG1RGmPwbprRkujKjFYTxrRvWcI/4apMCBALr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="298649970"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="298649970"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:47:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="708336988"
Received: from fyang16-desk.jf.intel.com ([10.24.96.243])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:47:21 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 00:49:00 -0700
Message-Id: <20220921074901.3651252-3-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220921074901.3651252-1-fei.yang@intel.com>
References: <20220921074901.3651252-1-fei.yang@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Add support for GuC tlb
 invalidation
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

When GuC is enabled the tlb invalidations use guc ct otherwise use
mmio interface.

Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Reviewed-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Reviewed-by: Fei Yang <fei.yang@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 5ddae95d4886..402eec8ba596 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -9,6 +9,7 @@
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
 #include "pxp/intel_pxp.h"
+#include "uc/intel_guc.h"
 
 #include "i915_drv.h"
 #include "i915_perf_oa_regs.h"
@@ -1092,11 +1093,16 @@ void intel_gt_invalidate_tlb(struct intel_gt *gt, u32 seqno)
 		return;
 
 	with_intel_gt_pm_if_awake(gt, wakeref) {
+		struct intel_guc *guc = &gt->uc.guc;
+
 		mutex_lock(&gt->tlb.invalidate_lock);
 		if (tlb_seqno_passed(gt, seqno))
 			goto unlock;
 
-		mmio_invalidate_full(gt);
+		if (INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc))
+			intel_guc_invalidate_tlb_full(guc, INTEL_GUC_TLB_INVAL_MODE_HEAVY);
+		else
+			mmio_invalidate_full(gt);
 
 		write_seqcount_invalidate(&gt->tlb.seqno);
 unlock:
-- 
2.25.1

