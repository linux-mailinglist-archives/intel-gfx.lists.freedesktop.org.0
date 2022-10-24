Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA43B60B3F1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 19:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B71C010E571;
	Mon, 24 Oct 2022 17:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 514DE10E571
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 17:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666632133; x=1698168133;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a6vMOmubp3apFrSN+1upSxl7BYnUAf4rp7uNKM9SRoE=;
 b=HZdI3HHs/75T5bP8AsFC4zZo9rBLLxeO4aMdS34IpJM2Xk+lbdw4Kl7R
 4G6MpAGTRGfKQIX2npkI58VvO9AUZFZeTDw4Ui+laDHhvQ/j8XJi0f1ax
 V7xCECDcEnR+vlOODWhc/YbwlZIlZWZOH6PYZgO22vAKJp4yC5nODawpU
 3Hq6Tcf1LpQASgrwPonk2DPQMa65a1hV2Am2/Cc9dPhghNLh/bZGfT0vf
 7l9R1Dg6LUEOqh0KtfjjsyIx/pJr1kRMq3DURxk9omrIilSn4q0IW2N4x
 gA4+a7pCoRF3wEkEiHPUQ/GIIw5tvAJkpLwoOxH+PCYtmvpbCW4PXhTvh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="369547668"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="369547668"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 10:22:12 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="631337279"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="631337279"
Received: from cwilso3-mobl.fi.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.13.22])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 10:22:10 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 18:21:39 +0100
Message-Id: <20221024172139.80435-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/userptr: restore probe_range behaviour
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
Cc: kernel test robot <oliver.sang@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Matthew Wilcox <willy@infradead.org>, Yu Zhao <yuzhao@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The conversion looks harmless, however the addr value is updated inside
the loop with the previous vm_end, which then incorrectly leads to
for_each_vma_range() iterating over stuff outside the range we care
about. Fix this by storing the end value separately.

Testcase: igt@gem_userptr_blits@probe
Fixes: f683b9d61319 ("i915: use the VMA iterator")
Reported-by: kernel test robot <oliver.sang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Yu Zhao <yuzhao@google.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index b7e24476a0fd..dadb3e3fa9c8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -427,9 +427,10 @@ probe_range(struct mm_struct *mm, unsigned long addr, unsigned long len)
 {
 	VMA_ITERATOR(vmi, mm, addr);
 	struct vm_area_struct *vma;
+	unsigned long end = addr + len;
 
 	mmap_read_lock(mm);
-	for_each_vma_range(vmi, vma, addr + len) {
+	for_each_vma_range(vmi, vma, end) {
 		/* Check for holes, note that we also update the addr below */
 		if (vma->vm_start > addr)
 			break;
-- 
2.37.3

