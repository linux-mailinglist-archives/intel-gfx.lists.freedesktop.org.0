Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA3D61124D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 15:06:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69EC710E831;
	Fri, 28 Oct 2022 13:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F8410E1BE
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 13:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666962409; x=1698498409;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ew9F5vYIqaswfpcA1r5csYRfYqWUsKdgq7tTRjB4HLQ=;
 b=QuzHw3C6XP1eOXimNohZQkV29lESU2t26xMrUj717fbi2Bn3riXryaMo
 P62bN1F/0MB7k8ir4eUBPG6rs8fmoxR/bVKrNnL9cNVOpy1kiVk0Y2b37
 CjkVoJlETOoXXjY/kMonczJR3Xk57v8WvmT5y1f2bCnMh8WayRQZmtGBW
 OgZTu0wqaZ7zHa7mGLjHTcGRjOpz23LAvBAkkAGmjWDDl7XQC1j9btVbA
 jPxYILPKYR7ni11/wcaG8XI9tSvXBramwiWJgP3eNys3sODMgIgUAATPI
 bQ9q/EoZTNY3qxCFTvJjAd9wPaQe97lHOlmxTprY6qLc9F52tkCXTsaau Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="288879040"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="288879040"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 06:06:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="758073019"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="758073019"
Received: from ahamill-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.29.35])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 06:06:46 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 14:06:35 +0100
Message-Id: <20221028130635.465839-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/userptr: restore probe_range
 behaviour
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
Cc: Yu Zhao <yuzhao@google.com>, "Liam R . Howlett" <Liam.Howlett@Oracle.com>,
 kernel test robot <oliver.sang@intel.com>,
 Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The conversion looks harmless, however the addr value is updated inside
the loop with the previous vm_end, which then incorrectly leads to
for_each_vma_range() iterating over stuff outside the range we care
about. Fix this by storing the end value separately. Also fix the case
where the range doesn't intersect with any vma, or if the vma itself
doesn't extend the entire range, which must mean we have hole at the
end. Both should result in an error, as per the previous behaviour.

v2: Fix the cases where the range is empty, or if there's a hole at
the end of the range

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7247
Testcase: igt@gem_userptr_blits@probe
Fixes: f683b9d61319 ("i915: use the VMA iterator")
Reported-by: kernel test robot <oliver.sang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
Cc: Liam R. Howlett <Liam.Howlett@Oracle.com>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Yu Zhao <yuzhao@google.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 1b1a22716722..ca7a388ba2bf 100644
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
@@ -441,7 +442,7 @@ probe_range(struct mm_struct *mm, unsigned long addr, unsigned long len)
 	}
 	mmap_read_unlock(mm);
 
-	if (vma)
+	if (vma || addr < end)
 		return -EFAULT;
 	return 0;
 }
-- 
2.37.3

