Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9618D560796
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 19:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 506A910EDD1;
	Wed, 29 Jun 2022 17:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BD4710E723
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 17:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656524653; x=1688060653;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=01cTeNSjGRd9yhKM+Z6/7kM/z41WldxmomsVEthQV+8=;
 b=WMd85vrl7ZpPfoq+of10D8rdoJTZJUGvKCUqNgXGE7aDv20m1ataE4vY
 82BqNP8Vmi4wv1N08o31+sGw9P72VbDp6J/IaAVpDwjdhVXgPojSZi8Ac
 ZC6O56vy4gAb9r1j/h5PF8YEyM99i9OghFAkkHDTiDYbwu30oNHejoCxR
 YnMvjWkOJWbHTDmC/z5c8y88oXDqm5Q2RG4tn8jTMDy1RANyqnmGjW+io
 Skp/mEOql0ihAAr/Wt9/45Is/D/kWrHmbFulM8otvXc+252h2QAEvS2ED
 5OVtCpRFY2+hOG0Yv3kkRL14rsK30T0jhPLHyQNZ1x+4sYqZjwgadUJFP A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="279643938"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="279643938"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:13 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="595331064"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:12 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jun 2022 18:43:45 +0100
Message-Id: <20220629174350.384910-8-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629174350.384910-1-matthew.auld@intel.com>
References: <20220629174350.384910-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v4 08/13] drm/i915/uapi: tweak error capture on
 recoverable contexts
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

A non-recoverable context must be used if the user wants proper error
capture on discrete platforms. In the future the kernel may want to blit
the contents of some objects when later doing the capture stage. Also
extend to newer integrated platforms.

v2(Thomas):
  - Also extend to newer integrated platforms, for capture buffer memory
    allocation purposes.
v3 (Reported-by: kernel test robot <lkp@intel.com>):
  - Fix build on !CONFIG_DRM_I915_CAPTURE_ERROR

Testcase: igt@gem_exec_capture@capture-recoverable
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Kenneth Graunke <kenneth@whitecape.org>
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 30fe847c6664..b7b2c14fd9e1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1951,7 +1951,7 @@ eb_find_first_request_added(struct i915_execbuffer *eb)
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 
 /* Stage with GFP_KERNEL allocations before we enter the signaling critical path */
-static void eb_capture_stage(struct i915_execbuffer *eb)
+static int eb_capture_stage(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
 	unsigned int i = count, j;
@@ -1964,6 +1964,10 @@ static void eb_capture_stage(struct i915_execbuffer *eb)
 		if (!(flags & EXEC_OBJECT_CAPTURE))
 			continue;
 
+		if (i915_gem_context_is_recoverable(eb->gem_context) &&
+		    (IS_DGFX(eb->i915) || GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 0)))
+			return -EINVAL;
+
 		for_each_batch_create_order(eb, j) {
 			struct i915_capture_list *capture;
 
@@ -1976,6 +1980,8 @@ static void eb_capture_stage(struct i915_execbuffer *eb)
 			eb->capture_lists[j] = capture;
 		}
 	}
+
+	return 0;
 }
 
 /* Commit once we're in the critical path */
@@ -2017,8 +2023,9 @@ static void eb_capture_list_clear(struct i915_execbuffer *eb)
 
 #else
 
-static void eb_capture_stage(struct i915_execbuffer *eb)
+static int eb_capture_stage(struct i915_execbuffer *eb)
 {
+	return 0;
 }
 
 static void eb_capture_commit(struct i915_execbuffer *eb)
@@ -3410,7 +3417,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	}
 
 	ww_acquire_done(&eb.ww.ctx);
-	eb_capture_stage(&eb);
+	err = eb_capture_stage(&eb);
+	if (err)
+		goto err_vma;
 
 	out_fence = eb_requests_create(&eb, in_fence, out_fence_fd);
 	if (IS_ERR(out_fence)) {
-- 
2.36.1

