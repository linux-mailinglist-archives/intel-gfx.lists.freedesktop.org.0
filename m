Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8087C18F3D4
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 12:38:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5D689FBC;
	Mon, 23 Mar 2020 11:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F94C89FBC
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 11:38:14 +0000 (UTC)
IronPort-SDR: JPqzBoWNKCESRhUQ0dyyd5TbqIMmNBC1q2jZFQYDLOFGnkFxzCdUQDO2XJdchXP4Q2Gfu7krx2
 JnAbLKxF5sqA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 04:38:12 -0700
IronPort-SDR: MWH/OJgE+N3gMRWNL5WvYvsZh1afB6n3QwAFmBL02R7QBLoRm+OYJY9xggpFj1ryXTII0QM6hQ
 axpOPc4n1UYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="249584041"
Received: from enamer-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.251.181.156])
 by orsmga006.jf.intel.com with ESMTP; 23 Mar 2020 04:38:10 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 11:38:09 +0000
Message-Id: <20200323113809.41452-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: add some vma_sync
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

The subtest shrink_boom was added as a regression test for some missing
refcounting on the paging structures, however since the binding is
potentially async, setting the vm->fault_attr might apply to the purge
vma, and not the intended explode vma. Also it looks like it might also
be possible to hit some weird shrinker deadlock where the unbinding of
one vma allocates memory by flushing and waiting for its
still-pending-bind operation while holding vm->mutex, which will always
lands back in the shrinker since we set vm->fault_attr for the selftest.

References: https://gitlab.freedesktop.org/drm/intel/issues/1493
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index b342bef5e7c9..029406a2a0b3 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -951,6 +951,8 @@ static int shrink_boom(struct i915_address_space *vm,
 		if (err)
 			goto err_purge;
 
+		i915_vma_sync(vma);
+
 		/* Should now be ripe for purging */
 		i915_vma_unpin(vma);
 
@@ -974,6 +976,8 @@ static int shrink_boom(struct i915_address_space *vm,
 		if (err)
 			goto err_explode;
 
+		i915_vma_sync(vma);
+
 		i915_vma_unpin(vma);
 
 		i915_gem_object_put(purge);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
