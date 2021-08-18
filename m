Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C0D3F074B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 16:59:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A73B6E820;
	Wed, 18 Aug 2021 14:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 739356E81E;
 Wed, 18 Aug 2021 14:59:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216372973"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="216372973"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 07:59:40 -0700
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="488747412"
Received: from moloings-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.10.29])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 07:59:39 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 18 Aug 2021 15:58:50 +0100
Message-Id: <20210818145850.225387-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210818145850.225387-1-matthew.auld@intel.com>
References: <20210818145850.225387-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/debugfs: hook up
 ttm_resource_manager_debug
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

This should give a more complete view of the various bits of internal
resource manager state, for device local-memory.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index eec0d349ea6a..109e6feed6be 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -238,6 +238,7 @@ i915_debugfs_describe_obj(struct seq_file *m, struct drm_i915_gem_object *obj)
 static int i915_gem_object_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct drm_printer p = drm_seq_file_printer(m);
 	struct intel_memory_region *mr;
 	enum intel_region_id id;
 
@@ -245,9 +246,14 @@ static int i915_gem_object_info(struct seq_file *m, void *data)
 		   i915->mm.shrink_count,
 		   atomic_read(&i915->mm.free_count),
 		   i915->mm.shrink_memory);
-	for_each_memory_region(mr, i915, id)
-		seq_printf(m, "%s: total:%pa, available:%pa bytes\n",
-			   mr->name, &mr->total, &mr->avail);
+	for_each_memory_region(mr, i915, id) {
+		seq_printf(m, "%s: ", mr->name);
+		if (mr->region_private)
+			ttm_resource_manager_debug(mr->region_private, &p);
+		else
+			seq_printf(m, "total:%pa, available:%pa bytes\n",
+				   &mr->total, &mr->avail);
+	}
 
 	return 0;
 }
-- 
2.26.3

