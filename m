Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3A66BD254
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 15:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDACC10E22F;
	Thu, 16 Mar 2023 14:27:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC3A610E22F;
 Thu, 16 Mar 2023 14:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678976858; x=1710512858;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xwhg1JIzBUZg/gGP8L22oiOdAsouTlYpiMUgeAawU6I=;
 b=JTta88fXeVHfcT1MN1Dr72zBMI8r4K7aJ7IroiMGoxAiK/sDCbRdAdTb
 6RefxKmo/3lC8ltWG+yrnZG774PR4YTnZ/OMqNguROiEnvybgrwfahBuG
 tClhBmEHKs6DrvYriFHHk6aZhHnGjXeKcwAjDw7zagFQn78WST/rGf0ON
 IdqYXfBi/sVmjKqfXZ5tSPHtyRwLvXQMrCCgKlyMHaq15gPE3wiY3JsbA
 Pyq34c4+93sWFoUfW9CJpBRMywiT7HHBubBqPYfr9nsKEjvqHHsGcntGO
 SJbhH2OKHEYdgjUtinb4qjY2C3rIMw2Od3ySNYXX8xsccUvyV3EN5A510 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="400590766"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="400590766"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 07:27:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="629896434"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="629896434"
Received: from kflynn1-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.236.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 07:27:36 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 16 Mar 2023 14:27:28 +0000
Message-Id: <20230316142728.1335239-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Simplify vcs/bsc engine selection
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

No need to look at the mask of present engines when we already have a
count stored ever since e2d0ff3525b9 ("drm/i915: Count engine instances
per uabi class").

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 9dce2957b4e5..3aeede6aee4d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2449,11 +2449,6 @@ static int eb_submit(struct i915_execbuffer *eb)
 	return err;
 }
 
-static int num_vcs_engines(struct drm_i915_private *i915)
-{
-	return hweight_long(VDBOX_MASK(to_gt(i915)));
-}
-
 /*
  * Find one BSD ring to dispatch the corresponding BSD command.
  * The engine index is returned.
@@ -2467,7 +2462,7 @@ gen8_dispatch_bsd_engine(struct drm_i915_private *dev_priv,
 	/* Check whether the file_priv has already selected one ring. */
 	if ((int)file_priv->bsd_engine < 0)
 		file_priv->bsd_engine =
-			get_random_u32_below(num_vcs_engines(dev_priv));
+			get_random_u32_below(dev_priv->engine_uabi_class_count[I915_ENGINE_CLASS_VIDEO]);
 
 	return file_priv->bsd_engine;
 }
@@ -2655,7 +2650,8 @@ eb_select_legacy_ring(struct i915_execbuffer *eb)
 		return -1;
 	}
 
-	if (user_ring_id == I915_EXEC_BSD && num_vcs_engines(i915) > 1) {
+	if (user_ring_id == I915_EXEC_BSD &&
+	    i915->engine_uabi_class_count[I915_ENGINE_CLASS_VIDEO] > 1) {
 		unsigned int bsd_idx = args->flags & I915_EXEC_BSD_MASK;
 
 		if (bsd_idx == I915_EXEC_BSD_DEFAULT) {
-- 
2.37.2

