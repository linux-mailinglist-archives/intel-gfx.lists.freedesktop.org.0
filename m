Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4D6797171
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 12:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8B810E220;
	Thu,  7 Sep 2023 10:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85BBB10E220
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 10:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694081508; x=1725617508;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E3PZ0rQf5kABQMVuicSFGWSJnrVawcZxQA25WKUwDcg=;
 b=j9ZGeSkJ06kyhtEozGOSl0ASCWiOvzS1Dl3Br7nWveFwV+UUZpqVv8l1
 CK1ErJGxUAKSPi4ympzl5FUNEbNOcgqNQotjMidbqoMNtHVbOFB25UGYv
 DTR4+EOn6dQGs8ihIpalUUJNGRGcIRXfqcpY/9y3yv6uGZdgdevouEjnt
 j71HUIvfl6EuVu6RlVjyFxnGoi566aOwmvmzAVLV6hbWF+ZzXQj1/CgBE
 mzAybG3rYGmVbl/p1IpqbzpCORv6l8HinTjK0KtOpyMq3FkW0huE0QJkn
 kqotinrgLQClebZMn9Zbf6sGCCnLWfbGNq5mKzdMRdxvh5/06FFjudlZS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="357629096"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="357629096"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 03:11:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="832101836"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="832101836"
Received: from mmalyshx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.13])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 03:11:45 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Date: Thu,  7 Sep 2023 12:11:35 +0200
Message-Id: <20230907101135.176326-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Run relevant bits of debugfs
 drop_caches per GT
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Walk all GTs when doing the respective bits of drop_caches work.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
Hi,

I'm proposing this new version of the series I sent here[*].
Patch 1 from that series is not necessary so taht I'm going to
propose the original version proposed by Tvrtko when we were
young.

Andi

Changelog
=========
v1 -> v2:
 - drop the gt idling and the cache flushing decoupling and stick
   to the original version.

[*] https://patchwork.freedesktop.org/series/123301/

 drivers/gpu/drm/i915/i915_debugfs.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 7a90a2e32c9f1..21373f7fec30c 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -740,15 +740,19 @@ static int
 i915_drop_caches_set(void *data, u64 val)
 {
 	struct drm_i915_private *i915 = data;
+	struct intel_gt *gt;
 	unsigned int flags;
+	unsigned int i;
 	int ret;
 
 	drm_dbg(&i915->drm, "Dropping caches: 0x%08llx [0x%08llx]\n",
 		val, val & DROP_ALL);
 
-	ret = gt_drop_caches(to_gt(i915), val);
-	if (ret)
-		return ret;
+	for_each_gt(i915, i, gt) {
+		ret = gt_drop_caches(gt, val);
+		if (ret)
+			return ret;
+	}
 
 	fs_reclaim_acquire(GFP_KERNEL);
 	flags = memalloc_noreclaim_save();
-- 
2.40.1

