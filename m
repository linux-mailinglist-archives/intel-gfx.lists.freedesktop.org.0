Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CB644CE7F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 01:46:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E2C6E843;
	Thu, 11 Nov 2021 00:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FA66E81A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Nov 2021 00:45:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="212853094"
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="212853094"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 16:45:54 -0800
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="501715576"
Received: from menghsia-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.209.91.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 16:45:53 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Nov 2021 16:45:48 -0800
Message-Id: <20211111004549.144706-3-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211111004549.144706-1-michael.cheng@intel.com>
References: <20211111004549.144706-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/3] drm/i915: Clean up GEN6 page valid macros
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
Cc: michael.cheng@intel.com, wayne.boyer@intel.com, jani.nikula@intel.com,
 lucas.demarchi@intel.com, siva.mullati@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GEN6_PTE_VALID and GEN6_PDE_VALID both checks the 0 bit
to see weather the mapping of the corresponding graphics
memory page is valid. Instead of having two different
macros doing the same thing, this patch replaces the macros
with I915_PAGE_PRESENT.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 10 +++++-----
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  2 --
 3 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index ae693bf88ef0..aeefe70a0e83 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -19,7 +19,7 @@ static void gen6_write_pde(const struct gen6_ppgtt *ppgtt,
 	dma_addr_t addr = pt ? px_dma(pt) : px_dma(ppgtt->base.vm.scratch[1]);
 
 	/* Caller needs to make sure the write completes if necessary */
-	iowrite32(GEN6_PDE_ADDR_ENCODE(addr) | GEN6_PDE_VALID,
+	iowrite32(GEN6_PDE_ADDR_ENCODE(addr) | I915_PAGE_PRESENT,
 		  ppgtt->pd_addr + pde);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 3f8e1ee0fbfa..995a1c47cd35 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -979,7 +979,7 @@ static u64 snb_pte_encode(dma_addr_t addr,
 			  enum i915_cache_level level,
 			  u32 flags)
 {
-	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
+	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | I915_PAGE_PRESENT;
 
 	switch (level) {
 	case I915_CACHE_L3_LLC:
@@ -1000,7 +1000,7 @@ static u64 ivb_pte_encode(dma_addr_t addr,
 			  enum i915_cache_level level,
 			  u32 flags)
 {
-	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
+	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | I915_PAGE_PRESENT;
 
 	switch (level) {
 	case I915_CACHE_L3_LLC:
@@ -1023,7 +1023,7 @@ static u64 byt_pte_encode(dma_addr_t addr,
 			  enum i915_cache_level level,
 			  u32 flags)
 {
-	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
+	gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | I915_PAGE_PRESENT;
 
 	if (!(flags & PTE_READ_ONLY))
 		pte |= BYT_PTE_WRITEABLE;
@@ -1038,7 +1038,7 @@ static u64 hsw_pte_encode(dma_addr_t addr,
 			  enum i915_cache_level level,
 			  u32 flags)
 {
-	gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
+	gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | I915_PAGE_PRESENT;
 
 	if (level != I915_CACHE_NONE)
 		pte |= HSW_WB_LLC_AGE3;
@@ -1050,7 +1050,7 @@ static u64 iris_pte_encode(dma_addr_t addr,
 			   enum i915_cache_level level,
 			   u32 flags)
 {
-	gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
+	gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | I915_PAGE_PRESENT;
 
 	switch (level) {
 	case I915_CACHE_NONE:
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index fba9c0c18f4a..884bc250260c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -74,13 +74,11 @@ typedef u64 gen8_pte_t;
 #define GEN6_PDE_ADDR_ENCODE(addr)	GEN6_GTT_ADDR_ENCODE(addr)
 #define GEN6_PTE_CACHE_LLC		(2 << 1)
 #define GEN6_PTE_UNCACHED		(1 << 1)
-#define GEN6_PTE_VALID			REG_BIT(0)
 
 #define GEN6_PTES			I915_PTES(sizeof(gen6_pte_t))
 #define GEN6_PD_SIZE		        (I915_PDES * PAGE_SIZE)
 #define GEN6_PD_ALIGN			(PAGE_SIZE * 16)
 #define GEN6_PDE_SHIFT			22
-#define GEN6_PDE_VALID			REG_BIT(0)
 #define NUM_PTE(pde_shift)     (1 << (pde_shift - PAGE_SHIFT))
 
 #define GEN7_PTE_CACHE_L3_LLC		(3 << 1)
-- 
2.25.1

