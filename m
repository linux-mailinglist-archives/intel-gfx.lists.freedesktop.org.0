Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAFA143565
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 02:53:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E31206EB6D;
	Tue, 21 Jan 2020 01:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDCF16EB6C
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 01:53:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 17:53:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,344,1574150400"; d="scan'208";a="426904367"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jan 2020 17:53:12 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 07:23:05 +0530
Message-Id: <20200121015305.10597-3-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200121015305.10597-1-ramalingam.c@intel.com>
References: <20200121015305.10597-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/2] drm/i915: implement dumb_size_available
 callback
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dumb_size_available callback for drm_driver is implemented at I915.

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c |  1 +
 drivers/gpu/drm/i915/i915_drv.h |  3 +++
 drivers/gpu/drm/i915/i915_gem.c | 17 +++++++++++++++++
 3 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index f7385abdd74b..8889e635d17d 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -2773,6 +2773,7 @@ static struct drm_driver driver = {
 	.get_scanout_position = i915_get_crtc_scanoutpos,
 
 	.dumb_create = i915_gem_dumb_create,
+	.dumb_size_available = i915_gem_dumb_size_available,
 	.dumb_map_offset = i915_gem_dumb_mmap_offset,
 
 	.ioctls = i915_ioctls,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e7be4c3e43c6..c6912453be67 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1865,6 +1865,9 @@ i915_mutex_lock_interruptible(struct drm_device *dev)
 int i915_gem_dumb_create(struct drm_file *file_priv,
 			 struct drm_device *dev,
 			 struct drm_mode_create_dumb *args);
+int i915_gem_dumb_size_available(struct drm_file *file_priv,
+				 struct drm_device *dev,
+				 uint64_t *avail_size);
 
 int __must_check i915_gem_set_global_seqno(struct drm_device *dev, u32 seqno);
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 94f993e4c12f..b8fbc4af7e6d 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -277,6 +277,23 @@ i915_gem_dumb_create(struct drm_file *file,
 			       &args->size, &args->handle);
 }
 
+int i915_gem_dumb_size_available(struct drm_file *file,
+				 struct drm_device *dev, uint64_t *avail_size)
+{
+	enum intel_memory_type mem_type = HAS_LMEM(to_i915(dev)) ?
+						INTEL_MEMORY_LOCAL :
+						INTEL_MEMORY_SYSTEM;
+	struct intel_memory_region *mr;
+
+	mr = intel_memory_region_by_type(to_i915(dev), mem_type);
+	if (!mr)
+		return -EINVAL;
+
+	*avail_size = mr->avail;
+
+	return 0;
+}
+
 /**
  * Creates a new mm object and returns a handle to it.
  * @dev: drm device pointer
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
