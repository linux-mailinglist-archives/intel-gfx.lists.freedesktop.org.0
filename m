Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF267440BD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 19:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A15F010E4CB;
	Fri, 30 Jun 2023 17:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E735C10E4C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 17:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688144553; x=1719680553;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+Kj8wDPjICZ0x3wLUp0FEXsXINLfaBE5bp1/oZl/hnw=;
 b=gNiTHssS4eI2wRZSDQ3UNnxxN+oduu4TY531VSbakYfQsDC9SPqaI1Eu
 xaipCzOB7BMQOgQ68MUllBRKr1fxjXuCa9iImal9jwFSyM/4wSLHLaKtR
 odj5sGq42Is9oLQQ7hOlmXI2AzOom0sHKTmnGu/OQUTekXkc/gjApuLEt
 d7rJ9ae/KGpYJoHxfenH1djS/jjJyM8CEbaSysk/MsK+1LRBTztyshmmL
 U4MkQ+dLa5Ws1F8BcA5fg+WkHXMmw+rORhn/jNx9m0mDT5Xm64P9uGryT
 CDSJ62HgADFtwrLZ5I9M+Vr9KaEFEyJHc/ZtqYeSusZB4ykKYrXipEt91 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="342026904"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="342026904"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 10:01:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="841916176"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="841916176"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 10:01:48 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jun 2023 19:01:39 +0200
Message-Id: <20230630170140.17319-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use smem on MTL due to a HW bug in MTL that prevents
reading from stolen memory using LMEM BAR.

Cc: Oak Zeng <oak.zeng@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 33a61046ba58..9f64d61dd5fc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -466,7 +466,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
 	obj = i915_gem_object_create_lmem(i915, size,
 					  I915_BO_ALLOC_VOLATILE |
 					  I915_BO_ALLOC_GPU_ONLY);
-	if (IS_ERR(obj))
+	if (IS_ERR(obj) && !IS_METEORLAKE(i915)) /* Wa_22018444074 */
 		obj = i915_gem_object_create_stolen(i915, size);
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, size);
-- 
2.39.0

