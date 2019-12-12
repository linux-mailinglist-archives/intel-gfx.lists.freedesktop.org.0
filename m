Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 939DA11CF2D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 15:05:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A366ED6A;
	Thu, 12 Dec 2019 14:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E6406ED69
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 14:05:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19555656-1500050 
 for multiple; Thu, 12 Dec 2019 14:05:03 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:04:53 +0000
Message-Id: <20191212140459.1307617-27-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/33] drm/i915/gt: Expose engine->mmio_base via
 sysfs
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

Use the per-engine sysfs directory to let userspace discover the
mmio_base of each engine. Prior to recent generations, the user
accessible registers on each engine are at a fixed offset relative to
each engine -- but require absolute addressing. As the absolute address
depends on the actual physical engine, this is not always possible to
determine from userspace (for example icl may expose vcs1 or vcs2 as the
second vcs engine). Make this easy for userspace to discover by
providing the mmio_base in sysfs.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_sysfs.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
index df263af3a9ea..abddd8d0f9ae 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
@@ -48,6 +48,15 @@ inst_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
 static struct kobj_attribute inst_attr =
 __ATTR(instance, 0444, inst_show, NULL);
 
+static ssize_t
+mmio_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
+{
+	return sprintf(buf, "0x%x\n", kobj_to_engine(kobj)->mmio_base);
+}
+
+static struct kobj_attribute mmio_attr =
+__ATTR(mmio_base, 0444, mmio_show, NULL);
+
 static const char * const vcs_caps[] = {
 	[ilog2(I915_VIDEO_CLASS_CAPABILITY_HEVC)] = "hevc",
 	[ilog2(I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC)] = "sfc",
@@ -170,6 +179,7 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
 		&name_attr.attr,
 		&class_attr.attr,
 		&inst_attr.attr,
+		&mmio_attr.attr,
 		&caps_attr.attr,
 		&all_caps_attr.attr,
 		NULL
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
