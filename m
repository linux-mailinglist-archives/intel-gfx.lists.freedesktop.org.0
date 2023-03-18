Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4816BF6D3
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 01:16:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F350810E071;
	Sat, 18 Mar 2023 00:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D70A610E071
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Mar 2023 00:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679098605; x=1710634605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+ONo8XIc0U1AZTiCJ9+NmtvbnONr4XN5ITIYV9FotKU=;
 b=EuJMgq3M3jByuthcTHi1IVEZDsdbK7JyPe8vEFNHQ+cFaAzd2jkRnRKo
 up/h+pn6wBUloztppkRY1dIoBBQiYjT/1zEC1DGtws5FF5ku0jomu1tbY
 qGVNJwjWnJ9fBZ46bbRFx6ShTgCAX4jLM9D8p3RT0ZVGi8w1wEj0FCRp4
 cHOU28PDh/J+RUeHWC3tjbwU54Ualr1kijj18rxQ+atsnLVFTkkHRICoj
 UshOVILLXHHRuLBPhvdEIq3sQtbJa3srRJD5/PSM4+KWVgcLKS/6OA5ew
 uZyWvfNYTtl1kp9e76VzmHnG3yAWc9eEgElCjaspt5NIn3v+RKeU0tGP8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="337095154"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="337095154"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 17:16:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="680470618"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="680470618"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga002.jf.intel.com with ESMTP; 17 Mar 2023 17:16:44 -0700
From: John.C.Harrison@Intel.com
To: stable@vger.kernel.org
Date: Fri, 17 Mar 2023 17:15:53 -0700
Message-Id: <20230318001553.564934-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <16782053932851@kroah.com>
References: <16782053932851@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4.19.y] drm/i915: Don't use stolen memory for
 ring buffers with LLC
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Direction from hardware is that stolen memory should never be used for
ring buffer allocations on platforms with LLC. There are too many
caching pitfalls due to the way stolen memory accesses are routed. So
it is safest to just not use it.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Fixes: c58b735fc762 ("drm/i915: Allocate rings from stolen")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v4.9+
Tested-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230216011101.1909009-2-John.C.Harrison@Intel.com
(cherry picked from commit f54c1f6c697c4297f7ed94283c184acc338a5cf8)
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
(cherry picked from commit 690e0ec8e63da9a29b39fedc6ed5da09c7c82651)
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/intel_ringbuffer.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_ringbuffer.c b/drivers/gpu/drm/i915/intel_ringbuffer.c
index 979d130b24c4..16eec72f0fed 100644
--- a/drivers/gpu/drm/i915/intel_ringbuffer.c
+++ b/drivers/gpu/drm/i915/intel_ringbuffer.c
@@ -1132,10 +1132,11 @@ static struct i915_vma *
 intel_ring_create_vma(struct drm_i915_private *dev_priv, int size)
 {
 	struct i915_address_space *vm = &dev_priv->ggtt.vm;
-	struct drm_i915_gem_object *obj;
+	struct drm_i915_gem_object *obj = NULL;
 	struct i915_vma *vma;
 
-	obj = i915_gem_object_create_stolen(dev_priv, size);
+	if (!HAS_LLC(dev_priv))
+		obj = i915_gem_object_create_stolen(dev_priv, size);
 	if (!obj)
 		obj = i915_gem_object_create_internal(dev_priv, size);
 	if (IS_ERR(obj))
-- 
2.39.1

