Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC431A55856
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 22:08:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BE0310E2E2;
	Thu,  6 Mar 2025 21:08:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cNikLhJ4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61A7F10E2E2
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 21:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741295319; x=1772831319;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vhX0boo8z/y4kmjHUG23/WmnjHJ+Vp0K86Vyzr2qdiw=;
 b=cNikLhJ4xITh9Js1HfmR1PpxsIfDzzMdujhQzqm7c+IP59V4JmPwZIT2
 3aHRoN8hGJxGd18Qdte1h03qFWRLMac0oxg+7hqb9A57O5QoA5ucwhEaf
 jTiK02YTSKehjcV3oPGM/89B4LE/oi8rKesQ3eWUK2NC2WyCs5sDvrRH9
 4vthvDvg5hrQKD9QwmUPRcgAqAtGmK4NxH4ys+VupmWhjuVWGxLivpalS
 mLu+yMJ/E/MOVAFo3dBA0pKYZMl5f6TrZRPM64A6VlGL9f3oZQ4KXRi31
 XI7uWyQjbh8HK4Gd67IJ0upnN3nBdHZH2eHPhHza9T4PT4n2BvY8wLURJ A==;
X-CSE-ConnectionGUID: dl/UhEvDSzaDnGbQlrk2mw==
X-CSE-MsgGUID: AWD9IDvtTWiVmaf9SkNKTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="64775835"
X-IronPort-AV: E=Sophos;i="6.14,227,1736841600"; d="scan'208";a="64775835"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 13:08:39 -0800
X-CSE-ConnectionGUID: QawzxuzcRC60p9P7fzA33g==
X-CSE-MsgGUID: 7ZLGxOrlQwa+npA238OjgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,227,1736841600"; d="scan'208";a="124166960"
Received: from josouza-mobl2.bz.intel.com ([10.87.243.88])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 13:08:38 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Subject: [PATCH] drm/i915: Increase I915_PARAM_MMAP_GTT_VERSION version to
 indicate support for partial mmaps
Date: Thu,  6 Mar 2025 13:08:27 -0800
Message-ID: <20250306210827.171147-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for partial memory mapping")
was the last patch of several patches fixing multiple partial mmaps.
But without a bump in I915_PARAM_MMAP_GTT_VERSION there is no clean
way for UMD to know if it can do multiple partial mmaps.

Fixes: 255fc1703e42 ("drm/i915/gem: Calculate object page offset for partial memory mapping")
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 21274aa9bdddc..c3dabb8579605 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -164,6 +164,9 @@ static unsigned int tile_row_pages(const struct drm_i915_gem_object *obj)
  * 4 - Support multiple fault handlers per object depending on object's
  *     backing storage (a.k.a. MMAP_OFFSET).
  *
+ * 5 - Support multiple partial mmaps(mmap part of BO + unmap a offset, multiple
+ *     times with different size and offset).
+ *
  * Restrictions:
  *
  *  * snoopable objects cannot be accessed via the GTT. It can cause machine
@@ -191,7 +194,7 @@ static unsigned int tile_row_pages(const struct drm_i915_gem_object *obj)
  */
 int i915_gem_mmap_gtt_version(void)
 {
-	return 4;
+	return 5;
 }
 
 static inline struct i915_gtt_view
-- 
2.48.1

