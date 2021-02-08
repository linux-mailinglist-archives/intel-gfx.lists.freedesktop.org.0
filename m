Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEFF31394E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 17:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9C96E946;
	Mon,  8 Feb 2021 16:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA076E944
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 16:25:15 +0000 (UTC)
IronPort-SDR: x9zbIIFP9q4r4JNNKcNn/yTpb6ghqFtR3wpUnZf59hnRdKAbQ18MwJAjl9lv51t2o+8MTyLatp
 TOfXyEG1O5aw==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="266571482"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="266571482"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 08:25:14 -0800
IronPort-SDR: arvgYYgHWwgx4p6jMv9MGnEOcaDgfk0kvrR4MIfATZRP+Cu2u0Itu6SKTzZRqnYXVPJOu9gCc+
 MzseB++ommRg==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="395544452"
Received: from jjcunnix-mobl2.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.0.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 08:25:14 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 16:24:48 +0000
Message-Id: <20210208162450.108067-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210208162450.108067-1-matthew.auld@intel.com>
References: <20210208162450.108067-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/stolen: treat stolen local as
 normal local memory
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

Underneath it's the same stuff, so things like the PTE_LM bits for the
GTT should just keep working as-is.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 194f35342710..078484d5e3f5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -19,7 +19,10 @@ const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
 
 bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
 {
-	return obj->ops == &i915_gem_lmem_obj_ops;
+	struct intel_memory_region *mr = obj->mm.region;
+
+	return mr && (mr->type == INTEL_MEMORY_LOCAL ||
+		      mr->type == INTEL_MEMORY_STOLEN_LOCAL);
 }
 
 struct drm_i915_gem_object *
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
