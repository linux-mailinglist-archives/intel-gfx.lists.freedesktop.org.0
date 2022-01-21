Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A56ED4965F7
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 20:51:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BDA10E266;
	Fri, 21 Jan 2022 19:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A04F210E266;
 Fri, 21 Jan 2022 19:51:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id 027A31F46562
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1642794706;
 bh=Fut1EPFyHtKExAKjhP5T7L+Q36Hqy+5BGq/LNpKSQ60=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Gu4uJEuCZlLUb6pJdC7RhWK76Xvzua26HeEOa9XR5Bm8I0mPWD2dNrHJipGBCoZH9
 WQtKsgVqHrqLbFmR4zP633AdfmuiPUYLAU+rBJ9c6XCl7gqZTvYuoO6zKsbO24s3KM
 odvh3FZVcOWAPutYUroagdI9cTqxOC3Ss5t9DeRSwSEg9fVukEas43a+MmwU2b/guP
 tEXc1K2cuHUFZXZrtaP832D3Wsx6IzTLZKbyQOs9K8mtWsrNl4gb365sRj1UKjyuVH
 mfD700sn9rlZxVff+KomizCVgQ45c6znhU9hp+hg36Bml7VbhP6vcSruLS9JrYoB8m
 c7bpDB9tvJLrA==
From: Robert Beckett <bob.beckett@collabora.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 21 Jan 2022 19:50:35 +0000
Message-Id: <20220121195040.2145227-2-bob.beckett@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220121195040.2145227-1-bob.beckett@collabora.com>
References: <20220121195040.2145227-1-bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/5] drm/i915: add needs_compact_pt flag
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ramalingam C <ramalingam.c@intel.com>

Add a new platform flag, needs_compact_pt, to mark the requirement of
compact pt layout support for the ppGTT when using 64K GTT pages.

With this flag has_64k_pages will only indicate requirement of 64K
GTT page sizes or larger for device local memory access.

Suggested-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 10 +++++++---
 drivers/gpu/drm/i915/i915_pci.c          |  2 ++
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 3 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 44c1f98144b4..1258b7779705 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1512,12 +1512,16 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /*
  * Set this flag, when platform requires 64K GTT page sizes or larger for
- * device local memory access. Also this flag implies that we require or
- * at least support the compact PT layout for the ppGTT when using the 64K
- * GTT pages.
+ * device local memory access.
  */
 #define HAS_64K_PAGES(dev_priv) (INTEL_INFO(dev_priv)->has_64k_pages)
 
+/* Set this flag when platform doesn't allow both 64k pages and 4k pages in
+ * the same PT. this flag means we need to support compact PT layout for the
+ * ppGTT when using the 64K GTT pages.
+ */
+#define NEEDS_COMPACT_PT(dev_priv) (INTEL_INFO(dev_priv)->needs_compact_pt)
+
 #define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
 
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 4081fd50ba9d..799b56569ef5 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1028,6 +1028,7 @@ static const struct intel_device_info xehpsdv_info = {
 	PLATFORM(INTEL_XEHPSDV),
 	.display = { },
 	.has_64k_pages = 1,
+	.needs_compact_pt = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
@@ -1045,6 +1046,7 @@ static const struct intel_device_info dg2_info = {
 	.media.rel = 55,
 	PLATFORM(INTEL_DG2),
 	.has_64k_pages = 1,
+	.needs_compact_pt = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) |
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 3699b1c539ea..c8aaf646430c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -130,6 +130,7 @@ enum intel_ppgtt_type {
 	/* Keep has_* in alphabetical order */ \
 	func(has_64bit_reloc); \
 	func(has_64k_pages); \
+	func(needs_compact_pt); \
 	func(gpu_reset_clobbers_display); \
 	func(has_reset_engine); \
 	func(has_global_mocs); \
-- 
2.25.1

