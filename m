Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2099643D9A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 08:23:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F3310E2FF;
	Tue,  6 Dec 2022 07:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C1DA10E0F7
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 07:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670311380; x=1701847380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2fsOoet2VVCdXT41Z9eBERxIE6ibcNPTUEsPP/LPv5Q=;
 b=YQL0WEgIOuHZuhUKBt6CWfKXNAkAWhQDN79uL68b0PfUMlYA9tdCWQAc
 yp3rUuBTfMBuOwnuTcZgcq8olcAyqUBbXRkmvOJykECUPeP0rTLfEpipP
 kiW38laidovWNoja+cJu14A8qLSMJ+JaOOn/HPos0tIl+DQaE+7xNn5CQ
 xebUu0xW62svoA5T/5iwBgC0kAPuqJGRsrudR7oY32WAZNu4yrXVbuyO+
 o8umxh9nTNn39yuee9Q7aWTuz7UO8CqskQFA4w5c9arzdcOo2YsuH8NEW
 TkxfgGSA4JBZ7D255SYRWCyncN44M73xeVA3RoWfU65KT+wQwcPJBBx4M g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296247451"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="296247451"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 23:23:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="788379401"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="788379401"
Received: from aravind-dev.iind.intel.com ([10.145.162.80])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 23:22:57 -0800
From: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 13:07:29 +0530
Message-Id: <f8cfaaab25f700b1826eedeba55d68334396e92a.1670311877.git.aravind.iddamsetty@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/mtl/UAPI: Disable GET/SET_CACHING
 IOCTL for MTL+
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Pallavi Mishra <pallavi.mishra@intel.com>

It's a noop on all new platforms starting from MTL.
Refer: (e7737b67ab46) drm/i915/uapi: reject caching ioctls for discrete

v2:
1. block get caching ioctl
2. return ENODEV similar to DGFX
3. update the doc in i915_drm.h

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 4 ++--
 include/uapi/drm/i915_drm.h                | 3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index d44a152ce680..cf817ee0aa01 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -291,7 +291,7 @@ int i915_gem_get_caching_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_object *obj;
 	int err = 0;
 
-	if (IS_DGFX(to_i915(dev)))
+	if (IS_DGFX(to_i915(dev)) || GRAPHICS_VER_FULL(to_i915(dev)) >= IP_VER(12, 70))
 		return -ENODEV;
 
 	rcu_read_lock();
@@ -329,7 +329,7 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
 	enum i915_cache_level level;
 	int ret = 0;
 
-	if (IS_DGFX(i915))
+	if (IS_DGFX(i915) || GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
 		return -ENODEV;
 
 	switch (args->caching) {
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 8df261c5ab9b..3467fd879427 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1626,6 +1626,9 @@ struct drm_i915_gem_busy {
  *     - Everything else is always allocated and mapped as write-back, with the
  *       guarantee that everything is also coherent with the GPU.
  *
+ * Starting from MTL even on integrated platforms set/get caching is no longer
+ * supported and object will be mapped as write-combined only.
+ *
  * Note that this is likely to change in the future again, where we might need
  * more flexibility on future devices, so making this all explicit as part of a
  * new &drm_i915_gem_create_ext extension is probable.
-- 
2.25.1

