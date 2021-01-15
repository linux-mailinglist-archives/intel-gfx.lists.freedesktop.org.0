Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8132F765C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 11:13:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 103906E1B2;
	Fri, 15 Jan 2021 10:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A8916E1B2
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 10:13:42 +0000 (UTC)
IronPort-SDR: PGWTesLSAUy7amIEmPVcY8im8QXZ18okxOS5cimUBgH4nDj7PwNI5LAGR8WKX5rhuP/IR7yMMr
 kv7Z7XQgRv1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="178615429"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="178615429"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 02:13:39 -0800
IronPort-SDR: 5os5Q4CQls+d5TGv8cuPkLMhE3ERADpp0PzT2XZyNvkJdNQ6zTuQnKdF4M2Qd0J+yyA5++MXhQ
 WZdCnoBuallw==
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="382610084"
Received: from jroznova-mobl1.ccr.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.6.252])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 02:13:38 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 10:13:29 +0000
Message-Id: <20210115101329.880667-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: add back static declaration
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

warning: symbol '__i915_gem_object_create_stolen' was not declared. Should it be static?
warning: symbol '_i915_gem_object_stolen_init' was not declared. Should it be static?

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 27d95bddbf4d..b221492531ef 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -621,9 +621,9 @@ static const struct drm_i915_gem_object_ops i915_gem_object_stolen_ops = {
 	.release = i915_gem_object_release_stolen,
 };
 
-int __i915_gem_object_create_stolen(struct intel_memory_region *mem,
-				    struct drm_i915_gem_object *obj,
-				    struct drm_mm_node *stolen)
+static int __i915_gem_object_create_stolen(struct intel_memory_region *mem,
+					   struct drm_i915_gem_object *obj,
+					   struct drm_mm_node *stolen)
 {
 	static struct lock_class_key lock_class;
 	unsigned int cache_level;
@@ -646,10 +646,10 @@ int __i915_gem_object_create_stolen(struct intel_memory_region *mem,
 	return 0;
 }
 
-int _i915_gem_object_stolen_init(struct intel_memory_region *mem,
-				 struct drm_i915_gem_object *obj,
-				 resource_size_t size,
-				 unsigned int flags)
+static int _i915_gem_object_stolen_init(struct intel_memory_region *mem,
+					struct drm_i915_gem_object *obj,
+					resource_size_t size,
+					unsigned int flags)
 {
 	struct drm_i915_private *i915 = mem->i915;
 	struct drm_mm_node *stolen;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
