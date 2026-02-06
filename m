Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLrsMh7bhWnfHQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:14:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E00FD83B
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:14:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7C210E797;
	Fri,  6 Feb 2026 12:14:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mL+/UglF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1590E10E797;
 Fri,  6 Feb 2026 12:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770380059; x=1801916059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mzRWkNEO6HOXFv01SGjY0mYAQ7ojD1+ZoT3TsVsUoTE=;
 b=mL+/UglFseooH9xJCq3BbgeQrL9Lp9kl71/VV+9HYKY6E1MsQWtLl7Df
 7McwLQ8jPFFSEWSNbWY+fiWw9Ucz9ry3f78rfviYaKNLJez/5L0XYEOc/
 Z98iTBvlcn/j1nWpVgnimgjpms/uOSIrVxaL3zQueC+cJbvkF7FchZ/C1
 nNQhqkq71Hos0xdN56PInUj+uuxOnNB3yAs2QcUXsWXLOYHwyqOSqca27
 AOyzppxNfkom5Wh/xJdHh4hzNwwm6WRsqcipRN18U3QO6iTU/vMpA97cG
 SCziX//JXudE0iaH9653k+B6M+d32IumPtECvHc/Xg33ll0Wh+cnyjTwN w==;
X-CSE-ConnectionGUID: J9fwgJu0SyKbyy+1sMcmpQ==
X-CSE-MsgGUID: mtI69gU5SKqtnlMNLGNPDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82220490"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="82220490"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:14:19 -0800
X-CSE-ConnectionGUID: UJFlahe3S22s01dLpb5wRg==
X-CSE-MsgGUID: OBa1LZ1CQr61ZQHTpJXvhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="215027828"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.129])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:14:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/10] drm/i915/dpt: rename struct i915_dpt to intel_dpt
Date: Fri,  6 Feb 2026 14:13:30 +0200
Message-ID: <27487a23d8c4037d580dc63d98470ee21a20e23a.1770379986.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1770379986.git.jani.nikula@intel.com>
References: <cover.1770379986.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 46E00FD83B
X-Rspamd-Action: no action

Rename struct i915_dpt to intel_dpt. This may seem rather inconsistent
considering we just renamed the functions the other way round, but the
intent here is to lift struct intel_dpt to the display parent interface
as the generic opaque type for DPT instead of the very specific struct
i915_address_space.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_dpt.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_dpt.c b/drivers/gpu/drm/i915/i915_dpt.c
index 916b91be8f5d..4fff6ecb5ede 100644
--- a/drivers/gpu/drm/i915/i915_dpt.c
+++ b/drivers/gpu/drm/i915/i915_dpt.c
@@ -15,7 +15,7 @@
 #include "i915_dpt.h"
 #include "i915_drv.h"
 
-struct i915_dpt {
+struct intel_dpt {
 	struct i915_address_space vm;
 
 	struct drm_i915_gem_object *obj;
@@ -25,12 +25,12 @@ struct i915_dpt {
 
 #define i915_is_dpt(vm) ((vm)->is_dpt)
 
-static inline struct i915_dpt *
+static inline struct intel_dpt *
 i915_vm_to_dpt(struct i915_address_space *vm)
 {
-	BUILD_BUG_ON(offsetof(struct i915_dpt, vm));
+	BUILD_BUG_ON(offsetof(struct intel_dpt, vm));
 	drm_WARN_ON(&vm->i915->drm, !i915_is_dpt(vm));
-	return container_of(vm, struct i915_dpt, vm);
+	return container_of(vm, struct intel_dpt, vm);
 }
 
 static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
@@ -44,7 +44,7 @@ static void dpt_insert_page(struct i915_address_space *vm,
 			    unsigned int pat_index,
 			    u32 flags)
 {
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+	struct intel_dpt *dpt = i915_vm_to_dpt(vm);
 	gen8_pte_t __iomem *base = dpt->iomem;
 
 	gen8_set_pte(base + offset / I915_GTT_PAGE_SIZE,
@@ -56,7 +56,7 @@ static void dpt_insert_entries(struct i915_address_space *vm,
 			       unsigned int pat_index,
 			       u32 flags)
 {
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+	struct intel_dpt *dpt = i915_vm_to_dpt(vm);
 	gen8_pte_t __iomem *base = dpt->iomem;
 	const gen8_pte_t pte_encode = vm->pte_encode(0, pat_index, flags);
 	struct sgt_iter sgt_iter;
@@ -116,7 +116,7 @@ static void dpt_unbind_vma(struct i915_address_space *vm,
 
 static void dpt_cleanup(struct i915_address_space *vm)
 {
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+	struct intel_dpt *dpt = i915_vm_to_dpt(vm);
 
 	i915_gem_object_put(dpt->obj);
 }
@@ -125,7 +125,7 @@ struct i915_vma *i915_dpt_pin_to_ggtt(struct i915_address_space *vm, unsigned in
 {
 	struct drm_i915_private *i915 = vm->i915;
 	struct intel_display *display = i915->display;
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+	struct intel_dpt *dpt = i915_vm_to_dpt(vm);
 	struct ref_tracker *wakeref;
 	struct i915_vma *vma;
 	void __iomem *iomem;
@@ -175,7 +175,7 @@ struct i915_vma *i915_dpt_pin_to_ggtt(struct i915_address_space *vm, unsigned in
 
 void i915_dpt_unpin_from_ggtt(struct i915_address_space *vm)
 {
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+	struct intel_dpt *dpt = i915_vm_to_dpt(vm);
 
 	i915_vma_unpin_iomap(dpt->vma);
 	i915_vma_put(dpt->vma);
@@ -186,7 +186,7 @@ static struct i915_address_space *i915_dpt_create(struct drm_gem_object *obj, si
 	struct drm_i915_private *i915 = to_i915(obj->dev);
 	struct drm_i915_gem_object *dpt_obj;
 	struct i915_address_space *vm;
-	struct i915_dpt *dpt;
+	struct intel_dpt *dpt;
 	int ret;
 
 	if (!size)
@@ -248,7 +248,7 @@ static struct i915_address_space *i915_dpt_create(struct drm_gem_object *obj, si
 
 static void i915_dpt_destroy(struct i915_address_space *vm)
 {
-	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
+	struct intel_dpt *dpt = i915_vm_to_dpt(vm);
 
 	dpt->obj->is_dpt = false;
 	i915_vm_put(&dpt->vm);
-- 
2.47.3

