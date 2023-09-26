Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 829CB7AE835
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 10:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7730F10E386;
	Tue, 26 Sep 2023 08:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA2210E38B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 08:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695717487; x=1727253487;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=13GiX4LuDRoq/o7N7h3qSyGvOlsEpG7XUnwuSAnHeV8=;
 b=iw4U/u3ZgD5vXfRfAbg1wEARNsKoBtkvqM6bX9xpV18jMrP+itTxnw+c
 W4WADSldbDSgxcuBXFe37qZpRTJ6uZSa2vrzqBd00KcjleeyJJO/h2xw6
 HM1W7UUW6aLJ+kH5Bjum9i5QbByRy7T3ipzGEGlD3AHnYY5ovgfyzgauX
 FGsbSCBpn+wZ6BCywxA0PVm8ojLn9NuJfWNKTNE2l88AJdN6cS8xCAkMR
 V/LBt4yOEEoSIOrhRYOAL5/lmmWsWp11Bz07kt7TQ8ITN/3Gh35LcSXQq
 PGH2zm6MxgAP7nC3d2d0sj58Rw8UtBcGosNai8pnjSms790RH3gMMwy6O Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="381419229"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="381419229"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:38:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="1079623546"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="1079623546"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:38:04 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Sep 2023 10:37:41 +0200
Message-ID: <20230926083742.14740-7-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230926083742.14740-1-nirmoy.das@intel.com>
References: <20230926083742.14740-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/7] drm/i915: Toggle binder context ready
 status
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
 matthew.d.roper@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Toggle binder context ready status when needed.

To issue gpu commands, the driver must be primed to receive
requests. Maintain binder-based GGTT update disablement until driver
probing completes. Moreover, implement a temporary disablement
of blitter prior to entering suspend, followed by re-enablement
post-resume. This is acceptable as those transition periods are
mostly single threaded.

v2: move changes to lower levels from i915_driver.c(Jani).
    use new function for setting context ready status.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Oak Zeng <oak.zeng@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 5a942af0a14e..5682f9faee07 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -280,6 +280,7 @@ int intel_gt_resume(struct intel_gt *gt)
 out_fw:
 	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 	intel_gt_pm_put(gt);
+	intel_gt_bind_context_set_ready(gt);
 	return err;
 
 err_wedged:
@@ -306,6 +307,7 @@ static void wait_for_suspend(struct intel_gt *gt)
 
 void intel_gt_suspend_prepare(struct intel_gt *gt)
 {
+	intel_gt_bind_context_set_unready(gt);
 	user_forcewake(gt, true);
 	wait_for_suspend(gt);
 }
@@ -359,6 +361,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 
 void intel_gt_runtime_suspend(struct intel_gt *gt)
 {
+	intel_gt_bind_context_set_unready(gt);
 	intel_uc_runtime_suspend(&gt->uc);
 
 	GT_TRACE(gt, "\n");
@@ -376,6 +379,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
 	if (ret)
 		return ret;
 
+	intel_gt_bind_context_set_ready(gt);
 	return 0;
 }
 
-- 
2.41.0

