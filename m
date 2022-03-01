Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 570054C911E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:09:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8575D8855B;
	Tue,  1 Mar 2022 17:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E44910E2DA
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646154543; x=1677690543;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VZ9c7oJB7UTvdR8T82Ar9b9xICXZNCbJqUUUDbIXGRg=;
 b=lPXaUYhaBahWdcsIwGASivH4OBvzJxuvPnnOZXPuZcJQuTqxgHQH3jqK
 Yisz0GB9tMh7LDjceFoOhA7GY/YfM/N+vi3WN0+Y9mQpyWhD0n3Vf6/1Z
 lwvj+9nD8yKsgjEst8DobEZXzaF4OgLEOkISHKsqZux5UGsDnY4K55nKV
 QOYaDib775/KfqvZtu8+ex3tKD+NCIF3jAXLnFkvBTjQTNZd1UZLorw9y
 tBHalhNsTkS+yy6FflB0b0Q+Q7wS7m/Uq4NY/sQywEPAF36gro9SJ8Yu0
 pXla3L/WheTXbPAmGvqim9lKSjqcHhaW+nMQ6XQwYejixkkdClajjFa0m g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="313904418"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="313904418"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:09:02 -0800
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="493185392"
Received: from daithiby-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.82])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:09:01 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 17:08:33 +0000
Message-Id: <20220301170835.682715-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/3] drm/i915/gtt: reduce overzealous alignment
 constraints for GGTT
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The 2M alignment should only be needed for the ppGTT, when dealing with
platforms like DG2. When dealing with the GGTT we can safely limit to
64K.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Robert Beckett <bob.beckett@collabora.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 4bcdfcab3642..a5f5b2dda332 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -234,7 +234,8 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	memset64(vm->min_alignment, I915_GTT_MIN_ALIGNMENT,
 		 ARRAY_SIZE(vm->min_alignment));
 
-	if (HAS_64K_PAGES(vm->i915) && NEEDS_COMPACT_PT(vm->i915)) {
+	if (HAS_64K_PAGES(vm->i915) && NEEDS_COMPACT_PT(vm->i915) &&
+	    subclass == VM_CLASS_PPGTT) {
 		vm->min_alignment[INTEL_MEMORY_LOCAL] = I915_GTT_PAGE_SIZE_2M;
 		vm->min_alignment[INTEL_MEMORY_STOLEN_LOCAL] = I915_GTT_PAGE_SIZE_2M;
 	} else if (HAS_64K_PAGES(vm->i915)) {
-- 
2.34.1

