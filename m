Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CAC58EF20
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 17:18:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E06A611AAEB;
	Wed, 10 Aug 2022 15:17:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7039FA0939
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 15:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660144633; x=1691680633;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ir+vDgMduLH3/YywYcCXD2qzIOjxHGGxLB21k1HLEmo=;
 b=DBwo9lOE3SZERfOdsNuxtcahhFJkjxmWfCXjMTfQo+HOwu+x6yf95qJA
 ZxlI666q30FnvU4OBCqPs1KcfC6fT2/T5ZLm+XE/bNa2KmuEswOyN/IsU
 N2nTXFhR8XnGX2RCilZ9qXGoDIn+tXPMYWB7kMK7R7oCbQIXCXYCwNorv
 Vw/aZu4hfPjERiykSkX8/uFU4R+xi7CHz9Un393xomu7/e/CJZ15apzUV
 N6VJUzBTZxmti+hEDyL1EhpGoFE5EQG19ndjNN7AKpddhksovu2HeRa2q
 l24FbbRV5dnFSWsoRNB61q7vgypyyczWeFe36hLrfaSjXR/wdpTfR9q0e A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="288674672"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="288674672"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 08:17:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="664935764"
Received: from sagar-optiplex-5060.iind.intel.com ([10.145.162.76])
 by fmsmga008.fm.intel.com with ESMTP; 10 Aug 2022 08:17:06 -0700
From: S A Muqthyar Ahmed <syed.abdul.muqthyar.ahmed@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 20:47:53 +0530
Message-Id: <20220810151753.3250859-1-syed.abdul.muqthyar.ahmed@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gem: reschedule relocations to avoid
 timeouts
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

Platforms with greater system memory will need to relocate more entries.
It may lead to soft hangs.

Adding cond_resched() for rescheduling process to avoid timeouts.

Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: S A Muqthyar Ahmed <syed.abdul.muqthyar.ahmed@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b7b2c14fd9e15e..d1d9e6fc9cd38a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1551,6 +1551,11 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 			}
 		} while (r++, --count);
 		urelocs += ARRAY_SIZE(stack);
+
+		if(need_resched()) {
+			reloc_cache_reset(&eb->reloc_cache, eb);
+			cond_resched();
+		}
 	} while (remain);
 out:
 	reloc_cache_reset(&eb->reloc_cache, eb);
@@ -1564,18 +1569,19 @@ eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
 	struct drm_i915_gem_relocation_entry *relocs =
 		u64_to_ptr(typeof(*relocs), entry->relocs_ptr);
 	unsigned int i;
-	int err;
+	int err = 0;
 
-	for (i = 0; i < entry->relocation_count; i++) {
+	for (i = 0; !err && i < entry->relocation_count; i++) {
 		u64 offset = eb_relocate_entry(eb, ev, &relocs[i]);
 
-		if ((s64)offset < 0) {
+		if ((s64)offset < 0)
 			err = (int)offset;
-			goto err;
+
+		if (need_resched()) {
+			reloc_cache_reset(&eb->reloc_cache, eb);
+			cond_resched();
 		}
 	}
-	err = 0;
-err:
 	reloc_cache_reset(&eb->reloc_cache, eb);
 	return err;
 }
-- 
2.25.1

