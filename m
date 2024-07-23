Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BDB939FB0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 13:21:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207A310E570;
	Tue, 23 Jul 2024 11:21:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eUWOHN46";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECFD510E575
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 11:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733708; x=1753269708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9YlkTmjXmS2ih1LWTRbuSVKX879XrjCADknwlyh6fYI=;
 b=eUWOHN460yyoZ63fgnDmxTx4gggp4nvbDKoHWx6ZqTGDW0pH6q2V1IYA
 Jqey5TdYpu85q0VMJWQ0UPSEuKWBPFAHjvKSD8BTut041ml+Y+0r3B0y4
 KLpkUV3095a8IVeGvSH2XpAGLKa8T2qPDNk0fjjPHyHd5Itedr7TNpm+1
 tj9X8pOXZWUssUjCuiwhtCOSAcEyPRcpOdK0dBI0BYLq1CLcD714Arel7
 btMPtprhdLJaE3rakzsJSiBw/t7Yb+ubXfT814iBRuYxWbm3JrTck6Rgq
 doOXWPu6Wtniok5q5vThSl9xL0CSK6aTSQJyYN3cFQZhoOF+2x+gSPVoT Q==;
X-CSE-ConnectionGUID: FEJfF8mDSym1MnSWierrvw==
X-CSE-MsgGUID: HxgIfMplQ1KKVzkuAFjNUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19225420"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19225420"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:47 -0700
X-CSE-ConnectionGUID: k+n9qgwCTCO0b3x65CFsNw==
X-CSE-MsgGUID: z1O7yDVbS3uAoOp9e7As5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52267473"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.52])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:46 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [RFC PATCH 6/9] drm/i915/gt: Add sysfs cleanup function for engines
Date: Tue, 23 Jul 2024 13:20:43 +0200
Message-ID: <20240723112046.123938-7-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240723112046.123938-1-andi.shyti@linux.intel.com>
References: <20240723112046.123938-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Engines and their properties are exposed in:

/sys/class/drm/cardX/engine/<engine_name>

These files are cleaned up when the driver is removed. However,
when the presence of engines starts changing dynamically, we need
a function to clean up the existing ones.

Store the engine-related objects (kobj and kobj_defaults) in the
'intel_engine_cs' structure, and store the main directory's
object (sysfs_engines) in the 'drm_i915_private' structure.

No functional changes intended at this point, as this function
does not have users yet.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 +++
 drivers/gpu/drm/i915/gt/sysfs_engines.c      | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/sysfs_engines.h      |  1 +
 drivers/gpu/drm/i915/i915_drv.h              |  1 +
 5 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 8011df30023e..92043ad19409 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -716,6 +716,8 @@ void intel_engines_free(struct intel_gt *gt)
 		kfree(engine);
 		gt->engine[id] = NULL;
 	}
+
+	memset(gt->engine_class, 0, sizeof(gt->engine_class));
 }
 
 static
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index ba55c059063d..a0f2f5c08388 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -388,6 +388,9 @@ struct intel_engine_cs {
 	u32 context_size;
 	u32 mmio_base;
 
+	struct kobject *kobj;
+	struct kobject *kobj_defaults;
+
 	struct intel_engine_tlb_inv tlb_inv;
 
 	/*
diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
index 021f51d9b456..a38c1732848e 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
@@ -479,6 +479,8 @@ static void add_defaults(struct kobj_engine *parent)
 	if (intel_engine_has_preempt_reset(ke->engine) &&
 	    sysfs_create_file(&ke->base, &preempt_timeout_def.attr))
 		return;
+
+	parent->engine->kobj_defaults = &ke->base;
 }
 
 void intel_engines_add_sysfs(struct drm_i915_private *i915)
@@ -506,6 +508,8 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
 	if (!dir)
 		return;
 
+	i915->sysfs_engine = dir;
+
 	for_each_uabi_engine(engine, i915) {
 		struct kobject *kobj;
 
@@ -526,6 +530,8 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
 
 		add_defaults(container_of(kobj, struct kobj_engine, base));
 
+		engine->kobj = kobj;
+
 		if (0) {
 err_object:
 			kobject_put(kobj);
@@ -536,3 +542,15 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
 		}
 	}
 }
+
+void intel_engines_remove_sysfs(struct drm_i915_private *i915)
+{
+	struct intel_engine_cs *engine;
+
+	for_each_uabi_engine(engine, i915) {
+		kobject_put(engine->kobj_defaults);
+		kobject_put(engine->kobj);
+	}
+
+	kobject_put(i915->sysfs_engine);
+}
diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.h b/drivers/gpu/drm/i915/gt/sysfs_engines.h
index 9546fffe03a7..09293a010025 100644
--- a/drivers/gpu/drm/i915/gt/sysfs_engines.h
+++ b/drivers/gpu/drm/i915/gt/sysfs_engines.h
@@ -9,5 +9,6 @@
 struct drm_i915_private;
 
 void intel_engines_add_sysfs(struct drm_i915_private *i915);
+void intel_engines_remove_sysfs(struct drm_i915_private *i915);
 
 #endif /* INTEL_ENGINE_SYSFS_H */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d7723dd11c80..1bdf9a0115c1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -320,6 +320,7 @@ struct drm_i915_private {
 	struct intel_gt *gt[I915_MAX_GT];
 
 	struct kobject *sysfs_gt;
+	struct kobject *sysfs_engine;
 
 	/* Quick lookup of media GT (current platforms only have one) */
 	struct intel_gt *media_gt;
-- 
2.45.2

