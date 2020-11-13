Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1DE2B1BD1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 14:25:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86F356E4C9;
	Fri, 13 Nov 2020 13:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 596806E4C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 13:25:08 +0000 (UTC)
IronPort-SDR: jISHL2ha1/v7Btw9NcIo1Rv2P31ClDYXooM2JGNqhHv2NF2xjxz9O/qhPSUPCfJxjGl8GFA2wc
 VhfxWS+v7cQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="157490497"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="157490497"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 05:25:07 -0800
IronPort-SDR: Vpt8xlpLeXLdXGbvd0ClXuIskHA/QKraHIPxQbbufskarwP3zlRXG36fAsK7asGr5YWU5Ez/qL
 w+inroqw6ZMg==
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="474659304"
Received: from rbrenna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.81.159])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 05:25:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 15:24:34 +0200
Message-Id: <d8d5c4d64eaef32e6c8c0b066faa594fbc37919c.1605273766.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1605273766.git.jani.nikula@intel.com>
References: <cover.1605273766.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915/debugfs: remove the
 i915_cache_sharing debugfs file
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
Cc: jani.nikula@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The i915_cache_sharing file is a debugfs interface for gen 6-7 with no
validation or user. Remove it.

This also removes the last I915_WRITE() use in i915_debugfs.c.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 50 -----------------------------
 1 file changed, 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 1ae6e022ddd5..694eb2705cd3 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1492,55 +1492,6 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_drop_caches_fops,
 			i915_drop_caches_get, i915_drop_caches_set,
 			"0x%08llx\n");
 
-static int
-i915_cache_sharing_get(void *data, u64 *val)
-{
-	struct drm_i915_private *dev_priv = data;
-	intel_wakeref_t wakeref;
-	u32 snpcr = 0;
-
-	if (!(IS_GEN_RANGE(dev_priv, 6, 7)))
-		return -ENODEV;
-
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
-		snpcr = I915_READ(GEN6_MBCUNIT_SNPCR);
-
-	*val = (snpcr & GEN6_MBC_SNPCR_MASK) >> GEN6_MBC_SNPCR_SHIFT;
-
-	return 0;
-}
-
-static int
-i915_cache_sharing_set(void *data, u64 val)
-{
-	struct drm_i915_private *dev_priv = data;
-	intel_wakeref_t wakeref;
-
-	if (!(IS_GEN_RANGE(dev_priv, 6, 7)))
-		return -ENODEV;
-
-	if (val > 3)
-		return -EINVAL;
-
-	drm_dbg(&dev_priv->drm,
-		"Manually setting uncore sharing to %llu\n", val);
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
-		u32 snpcr;
-
-		/* Update the cache sharing policy here as well */
-		snpcr = I915_READ(GEN6_MBCUNIT_SNPCR);
-		snpcr &= ~GEN6_MBC_SNPCR_MASK;
-		snpcr |= val << GEN6_MBC_SNPCR_SHIFT;
-		I915_WRITE(GEN6_MBCUNIT_SNPCR, snpcr);
-	}
-
-	return 0;
-}
-
-DEFINE_SIMPLE_ATTRIBUTE(i915_cache_sharing_fops,
-			i915_cache_sharing_get, i915_cache_sharing_set,
-			"%llu\n");
-
 static int i915_sseu_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
@@ -1606,7 +1557,6 @@ static const struct i915_debugfs_files {
 } i915_debugfs_files[] = {
 	{"i915_perf_noa_delay", &i915_perf_noa_delay_fops},
 	{"i915_wedged", &i915_wedged_fops},
-	{"i915_cache_sharing", &i915_cache_sharing_fops},
 	{"i915_gem_drop_caches", &i915_drop_caches_fops},
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 	{"i915_error_state", &i915_error_state_fops},
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
