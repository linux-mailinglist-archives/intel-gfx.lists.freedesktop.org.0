Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1226B98D9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 16:19:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF79910E81B;
	Tue, 14 Mar 2023 15:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C99510E81B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 15:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678807188; x=1710343188;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2LlE4dlm11KElEWoJK04recZyFUdgyEqKwhf+1JWIzc=;
 b=fluceEDlJo0XWowhmAgd05UuHvh34HyOD1ipMfHUowXcmLBGTzcW8HBj
 nNUBrDsdqCX3eYmWK1hripA+w6+8VKLK4n7VikBbV7jHBe0Qq9XkLbu+W
 Jhiiivbrj/VpVvOIccuOpkm4JkcBRGuRyUxi9uZrRNM5itxT2mR4ENt6z
 0M7rYrhcXMUjx4Xuv5z+PclRqjlM98Eo/IlPcKzefikeCvo0cC+VFzlZU
 IuMYiuobPJH51D651UMVoKuWBh7GAws+TFo6a2nonthGT7ce6Jiz1FVmz
 KHv0FBkaPYyLCcHl0BSfqwsLFnYAI+OoqFU/obAwpb3P/YoLE1iJACU32 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="321303867"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="321303867"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 08:19:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="672382099"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="672382099"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 08:19:36 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 16:19:20 +0100
Message-Id: <20230314151920.1065847-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: perform uc late init after probe
 error injection
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
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 chris.p.wilson@linux.intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Probe pseudo errors should be injected only in places where real errors
can be encountered, otherwise unwinding code can be broken.
Placing intel_uc_init_late before i915_inject_probe_error violated
this rule, resulting in following bug:
__intel_gt_disable:655 GEM_BUG_ON(intel_gt_pm_is_awake(gt))

Fixes: 481d458caede ("drm/i915/guc: Add golden context to GuC ADS")
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 6ca944d01eb677..38c62e4ad3eba2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -736,12 +736,12 @@ int intel_gt_init(struct intel_gt *gt)
 	if (err)
 		goto err_gt;
 
-	intel_uc_init_late(&gt->uc);
-
 	err = i915_inject_probe_error(gt->i915, -EIO);
 	if (err)
 		goto err_gt;
 
+	intel_uc_init_late(&gt->uc);
+
 	intel_migrate_init(&gt->migrate, gt);
 
 	goto out_fw;
-- 
2.34.1

