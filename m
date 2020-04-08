Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D02D1A27B2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 19:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0291F6EA9F;
	Wed,  8 Apr 2020 17:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97EAF6EAA1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 17:08:02 +0000 (UTC)
IronPort-SDR: F6iNZuDYmL8BwWDiqH/A6tyhLF0fzS317H3O6Ypl8x7S7o70Ld4Li3Hcbj1njtW82DgU9muawa
 xRvAG6R8qVRA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 10:04:58 -0700
IronPort-SDR: dgNrLcIJAt0m8fjE+ZCeWNnBw99XOKDFo98o2DAw1lRs4o1RhSPtZEeeufWrYFZc8MtS6Psk2N
 l1eLVw3AGJtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,359,1580803200"; d="scan'208";a="275509464"
Received: from yhalpert-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.193.165])
 by fmsmga004.fm.intel.com with ESMTP; 08 Apr 2020 10:04:57 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 18:04:56 +0100
Message-Id: <20200408170456.399604-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/evict: watch out for unevictable nodes
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

In an address space there can be sprinkling of I915_COLOR_UNEVICTABLE
nodes, which lack a parent vma. For platforms with cache coloring we
might be very unlucky and abut with such a node thinking we can simply
unbind the vma.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_gem_evict.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
index 4518b9b35c3d..9e462c6a4c6a 100644
--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -227,6 +227,10 @@ i915_gem_evict_something(struct i915_address_space *vm,
 	}
 
 	while (ret == 0 && (node = drm_mm_scan_color_evict(&scan))) {
+		/* If we find any non-objects (!vma), we cannot evict them */
+		if (node->color == I915_COLOR_UNEVICTABLE)
+			return -ENOSPC;
+
 		vma = container_of(node, struct i915_vma, node);
 		ret = __i915_vma_unbind(vma);
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
