Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C906D301022
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 23:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FD486EA6C;
	Fri, 22 Jan 2021 22:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E2A76EA79
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 22:40:39 +0000 (UTC)
IronPort-SDR: wWudlA5eqI/9D/poJtZwN32rHDeNnIqmYUnGh34z3Ft0/StL9fbgUfcTvHBDA6DqAGanPGJUgm
 m4iXaswWLbQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="179600348"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="179600348"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 14:40:31 -0800
IronPort-SDR: fLYPLZHo/HiK638BfXi0/Wecb7FDXRB6NRyjTBpS+6NVnHHKEYq0JUpXjFWu3tM7oE7CxdPpqq
 wUB5SG27XnoQ==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="408054423"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 14:40:31 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 14:40:26 -0800
Message-Id: <c66f9d344da63daf7530f29b442dc2e5ee1eb2b2.1611354210.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611354210.git.ashutosh.dixit@intel.com>
References: <cover.1611354210.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Start disabling pread/pwrite
 ioctl's for future platforms
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

The guidance for i915 at this time is to start phasing out pread/pwrite
ioctl's, the rationale being (a) the functionality can be done entirely in
userspace with a combination of mmap + memcpy, and (b) no existing user
mode clients actually use the pread/pwrite interface.

In this patch we disable these ioctls for dGfx platforms with the
expectation that this will be done for all future platforms (both discrete
and integrated). IGT changes which handle this kernel change have also been
submitted [1].

[1] https://patchwork.freedesktop.org/series/81384/

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 1 +
 drivers/gpu/drm/i915/i915_gem.c          | 6 ++++++
 drivers/gpu/drm/i915/i915_pci.c          | 3 ++-
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 4 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7efb501e22d2..66edffadf4a0 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1674,6 +1674,7 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
 #define HAS_SECURE_BATCHES(dev_priv) (INTEL_GEN(dev_priv) < 6)
 #define HAS_WT(dev_priv)	HAS_EDRAM(dev_priv)
 
+#define HAS_PREAD_PWRITE(dev_priv)	(!INTEL_INFO(dev_priv)->no_pread_pwrite)
 #define HWS_NEEDS_PHYSICAL(dev_priv)	(INTEL_INFO(dev_priv)->hws_needs_physical)
 
 #define HAS_LOGICAL_RING_CONTEXTS(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 9b04dff5eb32..9f3ef68fadf3 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -382,6 +382,9 @@ i915_gem_pread_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_object *obj;
 	int ret;
 
+	if (!HAS_PREAD_PWRITE(to_i915(dev)))
+		return -EOPNOTSUPP;
+
 	if (args->size == 0)
 		return 0;
 
@@ -687,6 +690,9 @@ i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_object *obj;
 	int ret;
 
+	if (!HAS_PREAD_PWRITE(to_i915(dev)))
+		return -EOPNOTSUPP;
+
 	if (args->size == 0)
 		return 0;
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 6cff7cf0f17b..3231d989275c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -910,7 +910,8 @@ static const struct intel_device_info rkl_info = {
 	.has_master_unit_irq = 1, \
 	.has_llc = 0, \
 	.has_snoop = 1, \
-	.is_dgfx = 1
+	.is_dgfx = 1, \
+	.no_pread_pwrite = 1
 
 static const struct intel_device_info dg1_info __maybe_unused = {
 	GEN12_DGFX_FEATURES,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e6ca1023ffcf..8edd2cfb0bab 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -114,6 +114,7 @@ enum intel_ppgtt_type {
 	func(is_lp); \
 	func(require_force_probe); \
 	func(is_dgfx); \
+	func(no_pread_pwrite); \
 	/* Keep has_* in alphabetical order */ \
 	func(has_64bit_reloc); \
 	func(gpu_reset_clobbers_display); \
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
