Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9030335BF81
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 11:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF366E08A;
	Mon, 12 Apr 2021 09:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D79689F5F;
 Mon, 12 Apr 2021 09:09:24 +0000 (UTC)
IronPort-SDR: OnGC8yS4Ty1C9ccWeJvFMAyBTxEOwJOx8RtfkkOzmhHpfgS+TWWYCZGhImCwYc1XgJ96mOWy8L
 GCW2mG1fyI9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="193709706"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="193709706"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 02:09:23 -0700
IronPort-SDR: 36hYZdT+i+3jvHPkN2beSgrnToU80AUjwE/00tg3yJ7iNnk4X5wSpYmDdVGKFHX8WBm2CO4p1Q
 ofY/0sSst6IA==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="423712612"
Received: from tarynrox-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.5.30])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 02:09:22 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 10:05:11 +0100
Message-Id: <20210412090526.30547-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210412090526.30547-1-matthew.auld@intel.com>
References: <20210412090526.30547-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/19] drm/i915/stolen: treat stolen local as
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
Cc: dri-devel@lists.freedesktop.org
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
index ce1c83c13d05..017db8f71130 100644
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
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
