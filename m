Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A61A60763
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 03:13:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D3010E279;
	Fri, 14 Mar 2025 02:12:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WboljFim";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DEC210E268
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 02:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741918377; x=1773454377;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ky7O6+FyvXiZZ+OB1hnLpEzKIO7WyvCGRm6JG0g1Wdo=;
 b=WboljFima2LjZI19XJYSNfc7T1YKMqS4LFn9EvglV+2TlUkLvGZvInKz
 Ov4qpi0HfY11JF4xCAAhbLTakEMCW+LFnDTlQtU9FyL1JS2N7sGhLhAQM
 0n4QHzW2ERp0PsL115VzBqr76Ek55H2cZwfnVc0sxmC/B5aNVSVop9oVT
 itQ6XEKdPid4ByNkZxu20N9rhmZ1G1HI9924aoPxaApiGMAMnGZetCRsD
 IeDuPAsfmNtYhTN0NqSjsZt63z08K5ww/vqtjem757CPUKu+DUQMLl0Nf
 xIv9SU8GwexACanavKvxXHi4QU5glAnNEtUz28Ls2KEnVAIcc5BvbonjO A==;
X-CSE-ConnectionGUID: eJL5PVlNRsS6vXqN1Geocg==
X-CSE-MsgGUID: pZnWRSnRSAqp+WLdfunUMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="65520036"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="65520036"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:12:49 -0700
X-CSE-ConnectionGUID: BwFkdLK8QHaj4uqfob0MwQ==
X-CSE-MsgGUID: wIUL7dVMSuOHRY58PhacCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126009286"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:12:47 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH 3/4] drm/i915/gt: Remove trailing blank lines
Date: Fri, 14 Mar 2025 03:12:23 +0100
Message-ID: <20250314021225.11813-4-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250314021225.11813-1-andi.shyti@linux.intel.com>
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
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

Remove useless blank lines before and after the brackets.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c  | 1 -
 drivers/gpu/drm/i915/gt/intel_lrc.c  | 1 -
 drivers/gpu/drm/i915/gt/intel_mocs.c | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 30b128b1fde7..afbc5c769308 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -176,7 +176,6 @@ static void clear_vm_list(struct list_head *list)
 			i915_vma_destroy_locked(vma);
 			i915_gem_object_put(obj);
 		}
-
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 51847a846002..c481b56fa67d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -751,7 +751,6 @@ static int lrc_ring_indirect_offset(const struct intel_engine_cs *engine)
 
 static int lrc_ring_cmd_buf_cctl(const struct intel_engine_cs *engine)
 {
-
 	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
 		/*
 		 * Note that the CSFE context has a dummy slot for CMD_BUF_CCTL
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index cf41d325712e..5dd8121f4b15 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -314,7 +314,6 @@ static const struct drm_i915_mocs_entry icl_mocs_table[] = {
 };
 
 static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
-
 	/* UC */
 	MOCS_ENTRY(1, 0, L3_1_UC),
 	/* WB - L3 */
-- 
2.47.2

