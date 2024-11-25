Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA21C9D7BBC
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 07:51:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B01DF10E151;
	Mon, 25 Nov 2024 06:51:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m8acpmNl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21CD510E1B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2024 06:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732517514; x=1764053514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZVHENTadvdn+iwLwsl5NmYIFecXfe1pNJK3UAMPlf4U=;
 b=m8acpmNlnadV+k5nD0CD8wWuZAs3bKAp/X0y/wV/SqBKl0/G4YKNBpkr
 +PCg3JWNWMNSjHcpA1B6uUpWSY3oedRLYh72YW+fKeB1TdjjP68A89e3/
 aKlgnulCKfxRGn0aT99TmiznN+xkGKFBs9KlpziSnlrwrDd4tJkjfKt/M
 aHEFgMnenfJPJQcKwZ+aYSbV0kyq8eB1dN97yFpgM0S3s7r2qUEZFgPNK
 8a+eY9FZcsZCltqCsffWkJIQBKzVN1gak5HfhVLi32szeVIT8Qo8FAqZ2
 d/oALJ4IZmAurg11UAWsYCb7s9U+d3iH6IbHzy8fFh89OHd/PlIiwmfru g==;
X-CSE-ConnectionGUID: RgykCcg2R8GUzbsFEGHcBQ==
X-CSE-MsgGUID: IMxgqmQLQB2yevgdFPHGRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11266"; a="43105895"
X-IronPort-AV: E=Sophos;i="6.12,182,1728975600"; d="scan'208";a="43105895"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2024 22:51:53 -0800
X-CSE-ConnectionGUID: OeuDkaG4SOWzhATE0m4UQA==
X-CSE-MsgGUID: uKcSlO2CSj+rLXnlAh3VFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,182,1728975600"; d="scan'208";a="90802683"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.99.123.50])
 by fmviesa006.fm.intel.com with ESMTP; 24 Nov 2024 22:51:51 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@intel.com, ville.syrjala@linux.intel.com, bgeffon@google.com,
 shawn.c.lee@intel.com, Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 2/2] [RFC] drm/i915: Unbind the vma in suspend if it was bound
Date: Mon, 25 Nov 2024 11:58:04 +0530
Message-Id: <20241125062804.412536-2-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241125062804.412536-1-vidya.srinivas@intel.com>
References: <20241125062804.412536-1-vidya.srinivas@intel.com>
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

In i915_ggtt_suspend_vm, if the vma was bound, the path
to unbind/evict is not hitting during suspend. This is
causing issues with DPT where DPT gets shrunk but the
framebuffer is still on the DPT's bound list. This
causes system reboot in some scenarios of suspend/resume
where it tries to rewrite the PTEs via a stale mapping.

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index d60a6ca0cae5..8499aa12a787 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -157,13 +157,11 @@ void i915_ggtt_suspend_vm(struct i915_address_space *vm)
 			goto retry;
 		}
 
-		if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) {
+		if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
 			i915_vma_wait_for_bind(vma);
 
-			__i915_vma_evict(vma, false);
-			drm_mm_remove_node(&vma->node);
-		}
-
+		__i915_vma_evict(vma, false);
+		drm_mm_remove_node(&vma->node);
 		i915_gem_object_unlock(obj);
 	}
 
-- 
2.34.1

