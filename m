Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E4F2E1FCF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 18:19:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64EDD6E09E;
	Wed, 23 Dec 2020 17:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6355C6E09E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 17:19:55 +0000 (UTC)
IronPort-SDR: bxdbyQCE3dZGrjfQg1nKcUDFqA/N6dkU5VH/3nIFbX/Jf+EuFCXDqByAtAMnI3RmEPbhU+3sYK
 8ZBY1NWwI+Hw==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="155835955"
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; d="scan'208";a="155835955"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 09:19:50 -0800
IronPort-SDR: JG/PRgXtQ85RYHRYXjLnDRdx4l/Z3IIS8cqU6wcngaTWfTtbWJXePPrh1HobtnlCTilksR3Nrt
 cwO1C6JvGbPg==
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; d="scan'208";a="374064196"
Received: from sjpotts-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.92.119])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 09:19:49 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Dec 2020 17:19:41 +0000
Message-Id: <20201223171941.308038-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: clear the end of the shadow batch if
 needed
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

The shadow batch is an internal object, which doesn't have any page
clearing, and since the batch_len might be within a page, we should take
care to clear any unused dwords before making it visible in the ppGTT.

Testcase: igt/gen9_exec_parse/shadow-peek
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 8d88402387bd..6506ed30b444 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1139,6 +1139,7 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		       struct drm_i915_gem_object *src_obj,
 		       unsigned long offset, unsigned long length)
 {
+	unsigned long orig_length = length;
 	bool needs_clflush;
 	void *dst, *src;
 	int ret;
@@ -1199,6 +1200,12 @@ static u32 *copy_batch(struct drm_i915_gem_object *dst_obj,
 		}
 	}
 
+	if (offset_in_page(orig_length)) {
+		memset(dst + orig_length, 0,
+		       PAGE_SIZE - offset_in_page(orig_length));
+		i915_gem_object_flush_map(dst_obj);
+	}
+
 	i915_gem_object_unpin_pages(src_obj);
 
 	/* dst_obj is returned with vmap pinned */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
