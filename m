Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A57DA3659C9
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 15:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C916E81D;
	Tue, 20 Apr 2021 13:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC086E81C;
 Tue, 20 Apr 2021 13:19:48 +0000 (UTC)
IronPort-SDR: qPF6pvP6rpBxab087OLpuzW5pxvpV2OyKce1qLzme7ok+0H4Lr6oQWtztXrPyJ6T2BWyutYrau
 PNLTJAyD6SlA==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="192315857"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="192315857"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 06:19:45 -0700
IronPort-SDR: M4j/qwYn/e25F9qbmvuUDps1gmGgE9y2+MTNxiTHydsoHBrgZEaITApXkRIHD4Da8cm43MwFjq
 GsLUthPEL2/g==
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="534484885"
Received: from adrianwa-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.9.139])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 06:19:44 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Apr 2021 14:18:39 +0100
Message-Id: <20210420131842.164163-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210420131842.164163-1-matthew.auld@intel.com>
References: <20210420131842.164163-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/stolen: treat stolen local as
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
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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
