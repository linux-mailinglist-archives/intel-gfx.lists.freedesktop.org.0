Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CFFBFBB16
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 13:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7ACF10E75F;
	Wed, 22 Oct 2025 11:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 6595 seconds by postgrey-1.36 at gabe;
 Wed, 22 Oct 2025 11:43:26 UTC
Received: from 1.mo560.mail-out.ovh.net (1.mo560.mail-out.ovh.net
 [46.105.63.121])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ACA710E75F
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Oct 2025 11:43:26 +0000 (UTC)
Received: from director10.ghost.mail-out.ovh.net (unknown [10.110.54.124])
 by mo560.mail-out.ovh.net (Postfix) with ESMTP id 4cs3RG193jzBWJJ
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Oct 2025 09:15:22 +0000 (UTC)
Received: from ghost-submission-7d8d68f679-vbl9r (unknown [10.110.113.85])
 by director10.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 11BCDC1466;
 Wed, 22 Oct 2025 09:15:20 +0000 (UTC)
Received: from etezian.org ([37.59.142.107])
 by ghost-submission-7d8d68f679-vbl9r with ESMTPSA
 id quqMFKig+GizIgYAQbzVqQ
 (envelope-from <andi@etezian.org>); Wed, 22 Oct 2025 09:15:20 +0000
Authentication-Results: garm.ovh; auth=pass
 (GARM-107S001210f364e-decb-409c-a7a4-03ba37cfc365,
 417D5E67C9D32DD93A46DBE638E683C8EEFD90CF) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 178.82.31.9
From: Andi Shyti <andi.shyti@kernel.org>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@kernel.org>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 "Christoph Lameter (Ampere)" <cl@gentwo.org>
Subject: [PATCH] drm/i915/gt: Use standard API for seqcount read in TLB
 invalidation
Date: Wed, 22 Oct 2025 11:15:01 +0200
Message-ID: <20251022091501.282955-1-andi.shyti@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 11576784318696524537
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTFR1gWUM8Edx5jhgH4wEl/bmWrnsDa2Oufisv7r2Zrk0EGtEnl1R1IE0UqTnQwfxvpZQb1zo3KfrQhvc87B2ZDSDqPoXPE2ou3EWfLki5W7ZHBbt/uGNcdFOfY0Frl4bAqb8FWPzGWUJcgyHCQz02L/rTd6ix+dXbxJAQCQQ8iXwKrCMJZshP62iQA02RSPr1+KFZTwMbzNIaRmnm0ZxMAJe8Ye8djhor/VLu4Y3MxOnjD1yJrjURnbRjbTZkD3dNQhQ6PCh6GwppI3FCtYtvJG1mk3NtPhdST4mgg/K868fTTW6td6eLCemAQtGs3quB8EBnzSz/4jjmCRnPW+vAORQ6QNwG8pOmU96e5tLTlo5C6UvtbhFpnid5+BqW1rMdZR8MRlzRmFpq3J/Nxss8U1AKdkyum3ZQfxK55oT7GHTO6cORPeNw2XGK7iyjMFbgYvN70KZibpPRuEyH1hCIoPMTCI5onnsgVwa6+/xsgO/rcTGXEvLqOpb09N0GRt8aeQ4/7oytN25NPN59HPLt3+ygvBe9UV2wXnezPBg/8GiALFuXdfglGZYgMTKGOOb2Vl1+xMaShO+L6BM3u7b1lO78c3KUGqP5nE333+Si9ZslhO9aIcCYIp1y1i+mZY7AjR+6aQ1K4qDMa+jui/Ed0YTFb9eOku0QdH0ThkfY5kNg
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

From: Andi Shyti <andi.shyti@linux.intel.com>

seqprop_sequence() is not intended for use outside seqlock.h.
Although it is accessible as a macro, it is meant to be used only
internally within the header.

Replace it with its proper wrapper, raw_read_seqcount().

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Co-developed-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Christoph Lameter (Ampere) <cl@gentwo.org>
---
Hi,

this patch fixes an issue that came up during Christoph's
work[*], which made his series trickier to move forward.

I also added Jani to the chain of tags, since I later noticed he
had suggested the same thing. Joonas had some concerns about this
approach possibly introducing locking issues, so I ran a few
tests before posting to make sure everything behaves as
expected[**].

There could still be a more refined way to handle the seqcount
for TLB invalidation using raw_seqcount_try_begin() and
read_seqcount_retry(), but that would need a fair bit of
refactoring, and I am not sure it would bring enough benefit.

Thanks,
Andi

[*] https://lore.kernel.org/all/20240912-seq_optimize-v3-1-8ee25e04dffa@gentwo.org/
[**] https://patchwork.freedesktop.org/series/155638/

 drivers/gpu/drm/i915/gt/intel_tlb.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.h b/drivers/gpu/drm/i915/gt/intel_tlb.h
index 337327af92ac..ec7612216248 100644
--- a/drivers/gpu/drm/i915/gt/intel_tlb.h
+++ b/drivers/gpu/drm/i915/gt/intel_tlb.h
@@ -18,7 +18,7 @@ void intel_gt_fini_tlb(struct intel_gt *gt);
 
 static inline u32 intel_gt_tlb_seqno(const struct intel_gt *gt)
 {
-	return seqprop_sequence(&gt->tlb.seqno);
+	return raw_read_seqcount(&gt->tlb.seqno);
 }
 
 static inline u32 intel_gt_next_invalidate_tlb_full(const struct intel_gt *gt)
-- 
2.51.0

