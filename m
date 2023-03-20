Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 092CA6C0CBB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:05:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4DF10E294;
	Mon, 20 Mar 2023 09:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEC5A10E294
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679303128; x=1710839128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NZb3VNRVJpnNW2wJQ3sN6NAzhz13oTcKeDZDHxnUwd8=;
 b=Y7GIdJ5HnIF/9LEwTM1RTrGdB5jOHzOds/7SUxNUiHSb2NVbNBOE/GKA
 eGYo/MVUwjbL3Sx11REeaczikN0vjeWZMoCp4IFDa5SQadzeYxz9o4/47
 w/QhOrMV9kuCaXrtj6/5MFEN7lgmus4wwwOX4CP2BBZRJZSIDfcWq5l9J
 lD+CfR9ydktzd55swFsIaMkJ0i3N+mJpBa7Za2/dMLRITD1rIiJdwDbMy
 qtVl0HvWCz54YxTwr4WO+7w+lq3OVpRIi9h6orltr8697wbphIBXl/hU0
 8SP7+ftpRoppCqqeTpUEFoSji+0+shd49AYEG5zgBjoaBMmu8pWS+aTUg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="338637069"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="338637069"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:05:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="745289409"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="745289409"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 20 Mar 2023 02:05:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:05:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:05:17 +0200
Message-Id: <20230320090522.9909-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
References: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/dpt: Treat the DPT BO as a
 framebuffer
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
Cc: Matthew Auld <matthew.auld@intel.com>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently i915_gem_object_is_framebuffer() doesn't treat the
BO containing the framebuffer's DPT as a framebuffer itself.
This means eg. that the shrinker can evict the DPT BO while
leaving the actual FB BO bound, when the DPT is allocated
from regular shmem.

That causes an immediate oops during hibernate as we
try to rewrite the PTEs inside the already evicted
DPT obj.

TODO: presumably this might also be the reason for the
DPT related display faults under heavy memory pressure,
but I'm still not sure how that would happen as the object
should be pinned by intel_dpt_pin() while in active use by
the display engine...

Cc: stable@vger.kernel.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for dpt")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c         | 2 ++
 drivers/gpu/drm/i915/gem/i915_gem_object.h       | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 3 +++
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index ad1a37b515fb..2a9f40a2b3ed 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -301,6 +301,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
 	vm->pte_encode = gen8_ggtt_pte_encode;
 
 	dpt->obj = dpt_obj;
+	dpt->obj->is_dpt = true;
 
 	return &dpt->vm;
 }
@@ -309,5 +310,6 @@ void intel_dpt_destroy(struct i915_address_space *vm)
 {
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
 
+	dpt->obj->is_dpt = false;
 	i915_vm_put(&dpt->vm);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index f9a8acbba715..885ccde9dc3c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -303,7 +303,7 @@ i915_gem_object_never_mmap(const struct drm_i915_gem_object *obj)
 static inline bool
 i915_gem_object_is_framebuffer(const struct drm_i915_gem_object *obj)
 {
-	return READ_ONCE(obj->frontbuffer);
+	return READ_ONCE(obj->frontbuffer) || obj->is_dpt;
 }
 
 static inline unsigned int
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 19c9bdd8f905..5dcbbef31d44 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -491,6 +491,9 @@ struct drm_i915_gem_object {
 	 */
 	unsigned int cache_dirty:1;
 
+	/* @is_dpt: Object houses a display page table (DPT) */
+	unsigned int is_dpt:1;
+
 	/**
 	 * @read_domains: Read memory domains.
 	 *
-- 
2.39.2

