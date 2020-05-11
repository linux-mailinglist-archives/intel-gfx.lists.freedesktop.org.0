Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0E41CE019
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 18:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7959E6E04A;
	Mon, 11 May 2020 16:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 464BD6E04A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 16:08:51 +0000 (UTC)
IronPort-SDR: ttcAZTAQWTiI9UurGOdRB+bWsyWFYech1Ha6lE6i01bQNLziruj0IRedHNHps0htz+QP23jJ7A
 X9/Q1qlf5MKQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 09:08:50 -0700
IronPort-SDR: gpx9xxK0UFOKH2FRtjEr1sIb+VfwMwdwyI2LBJZhnTjYNl8HSxOxpJ6JEt081iTXjLss/zfv7f
 e6mQDLygBzwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,380,1583222400"; d="scan'208";a="265201727"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga006.jf.intel.com with ESMTP; 11 May 2020 09:08:49 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id C2C5F8408A3; Mon, 11 May 2020 19:08:05 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 May 2020 19:08:03 +0300
Message-Id: <20200511160803.15407-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Force pte cacheline to main memory
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have problems of tgl not seeing a valid pte entry
when iommu is enabled. Add heavy handed flushing
of entry modification by flushing the cpu, cacheline
and then wcb. This forces the pte out to main memory
past this point regarless of promises of coherency.

This is an evolution of an experimental patch from
Chris Wilson of adding wmb for coherent partners,
by adding a clflush to force the cache->memory step.

Testcase: igt/gem_exec_fence/parallel
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 94e746af8926..6b13408b0e38 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -389,6 +389,15 @@ static int gen8_ppgtt_alloc(struct i915_address_space *vm,
 	return err;
 }
 
+static __always_inline inline void
+write_pte(gen8_pte_t * const pte, const gen8_pte_t val)
+{
+	*pte = val;
+	wmb(); /* cpu to cache */
+	clflush((void *)pte); /* cache to memory */
+	wmb(); /* visible to all */
+}
+
 static __always_inline u64
 gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 		      struct i915_page_directory *pdp,
@@ -405,7 +414,8 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
 	vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
 	do {
 		GEM_BUG_ON(iter->sg->length < I915_GTT_PAGE_SIZE);
-		vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
+		write_pte(&vaddr[gen8_pd_index(idx, 0)],
+			  pte_encode | iter->dma);
 
 		iter->dma += I915_GTT_PAGE_SIZE;
 		if (iter->dma >= iter->max) {
@@ -487,7 +497,7 @@ static void gen8_ppgtt_insert_huge(struct i915_vma *vma,
 
 		do {
 			GEM_BUG_ON(iter->sg->length < page_size);
-			vaddr[index++] = encode | iter->dma;
+			write_pte(&vaddr[index++], encode | iter->dma);
 
 			start += page_size;
 			iter->dma += page_size;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
