Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A96465A15F3
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 17:43:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD68910E723;
	Thu, 25 Aug 2022 15:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCD5210E724
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 15:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661442169; x=1692978169;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oGyfPUiWc2XO9/Xt//C4/oejYTD1g9103CDu707P4lw=;
 b=DjZmqYjlYdznbgIqYLRD0E/pApJZwwUrMSMBp0QoDwph0Y7KtG1AO/Eb
 tm56ADtr8j1zGhq5W+TkjdJT7uj8DBSjt3DlxEAY5fqgkkVcYC3roCaHm
 n0MklEaik+LXA6umvsXuDGrp6ScrukF6zU83he26JF1TY+5sqmVLeokNs
 4AwYkdmHvnSmVqFwMSyHusyD4D4H8kD66y7rWJJ1dWh2uqpZH8CbOpGAy
 3XzPp5MiBtGZ1xNZ8oaZrty636XVJ7zZEMpA2DRXNwj9RNtlLxu2dT6yl
 2VrAG4CZzCyBKEIkKLdgJxSkx9GvB6HIaPDfGI49pV6N1Zr/9sPzzpEH2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="291849305"
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="291849305"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 08:42:49 -0700
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="671039600"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 08:42:47 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Aug 2022 17:42:39 +0200
Message-Id: <20220825154239.52343-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: allow misaligned_pin test
 work with unmappable memory
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of Small BAR configurations stolen local memory can be unmappable.
Since the test does not touch the memory, passing I915_BO_ALLOC_GPU_ONLY
flag to i915_gem_object_create_region, will prevent -ENOSPC error from
_i915_gem_object_stolen_init.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6565
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index fb5e6196347925..e050a2de5fd1df 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1080,7 +1080,7 @@ static int misaligned_case(struct i915_address_space *vm, struct intel_memory_re
 	bool is_stolen = mr->type == INTEL_MEMORY_STOLEN_SYSTEM ||
 			 mr->type == INTEL_MEMORY_STOLEN_LOCAL;
 
-	obj = i915_gem_object_create_region(mr, size, 0, 0);
+	obj = i915_gem_object_create_region(mr, size, 0, I915_BO_ALLOC_GPU_ONLY);
 	if (IS_ERR(obj)) {
 		/* if iGVT-g or DMAR is active, stolen mem will be uninitialized */
 		if (PTR_ERR(obj) == -ENODEV && is_stolen)
-- 
2.25.1

