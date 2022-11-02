Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FDA615BB3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 06:14:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0384B10E008;
	Wed,  2 Nov 2022 05:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B80E910E008
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 05:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667366064; x=1698902064;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H9ga8/86Xn7nKo70Qcl8PUp8TK2ZIMqyT/pTng5QlEw=;
 b=IR79/+rdC+v0Z32veaiTkcC5WWhoy3r1VDwS0aqy7hooMgg5ZBJIIjqI
 UdDJMvp64BrDlciHIskTgLy0YofZp/9luqUJ+E9eI7lnz8qhwFDbCdods
 DtxjVslYIG2HniSTZhazwZPsdjnbh8fXL9/FAgSCC+uBIOgHisXjb3U3b
 A1ipuhVGHkXeoGdSeOQQddh7RABEGdsAfLKxMRbz3KNBdoVwRXfTDJZ9c
 Oxfwan0BCVby8/zFtg2yh8gEqu5V8lJMrUblNrje8U2bOS/0VvQvcq0sG
 hRO1WoN9RjjrfTDpyv1z/IaKgvsdB4JjOxqITbbP7e6nQ2/F+LQjh9ETB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="306930936"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="306930936"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 22:14:24 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="697665495"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="697665495"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 22:14:23 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Nov 2022 22:14:16 -0700
Message-Id: <20221102051416.27327-1-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Do not set cache_dirty for DGFX
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently on DG1, which do not have LLC, we hit the below
warning while rebinding an userptr invalidated object.

WARNING: CPU: 4 PID: 13008 at drivers/gpu/drm/i915/gem/i915_gem_pages.c:34 __i915_gem_object_set_pages+0x296/0x2d0 [i915]
...
RIP: 0010:__i915_gem_object_set_pages+0x296/0x2d0 [i915]
...
Call Trace:
 <TASK>
 i915_gem_userptr_get_pages+0x175/0x1a0 [i915]
 ____i915_gem_object_get_pages+0x32/0xb0 [i915]
 i915_gem_object_userptr_submit_init+0x286/0x470 [i915]
 eb_lookup_vmas+0x2ff/0xcf0 [i915]
 ? __intel_wakeref_get_first+0x55/0xb0 [i915]
 i915_gem_do_execbuffer+0x785/0x21d0 [i915]
 i915_gem_execbuffer2_ioctl+0xe7/0x3d0 [i915]

We shouldn't be setting the obj->cache_dirty for DGFX,
fix it.

Suggested-by: Matthew Auld <matthew.auld@intel.com>
Reported-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 11125c32dd35..2f7804492cd5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -369,14 +369,14 @@ __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
 
 	__start_cpu_write(obj);
 	/*
-	 * On non-LLC platforms, force the flush-on-acquire if this is ever
+	 * On non-LLC igfx platforms, force the flush-on-acquire if this is ever
 	 * swapped-in. Our async flush path is not trust worthy enough yet(and
 	 * happens in the wrong order), and with some tricks it's conceivable
 	 * for userspace to change the cache-level to I915_CACHE_NONE after the
 	 * pages are swapped-in, and since execbuf binds the object before doing
 	 * the async flush, we have a race window.
 	 */
-	if (!HAS_LLC(i915))
+	if (!HAS_LLC(i915) && !IS_DGFX(i915))
 		obj->cache_dirty = true;
 }
 
-- 
2.21.0.rc0.32.g243a4c7e27

