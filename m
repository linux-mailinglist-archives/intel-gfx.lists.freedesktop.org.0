Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1239A7BDEB7
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 15:22:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E95CF10E0FB;
	Mon,  9 Oct 2023 13:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D57710E112
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 13:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696857730; x=1728393730;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cTj+H8aCUxnzZLa4kJbMD6nzBOn+hVdJiDdQ+N1svY8=;
 b=Mh/RAtVe/Inq8RNAU+6e0YkPAHefcyHfyvVlQA9z8pCq0mpkpMfnL9sD
 Jq5HzjViGaUsPUrx21u+/tftsJCT5/v+KuSqPe6QPJ+Uwf6AcXZxkc23e
 sbR6T/RCRsDcZKeLBJQbRalA5wT+j1j5JuwW10TOWAlXta7gI7LnoVlaM
 DsqMY/E2jdPEx5kkPcPSwiVzuOeEOCx3mRYBebNA3itC9Q/1QJBH54zj6
 6piFdbc6cUNPsh9gr2Ml/6uw95zsqRybU2KlZan9b3QPx4LbkNFISZpsg
 MaXVYlL/81XBjKAaPHkaXKLAJgs6FpAMpg3W0h98MOwsg+8M1eMcPRLFW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="384014456"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="384014456"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 06:22:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="788162056"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="788162056"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 09 Oct 2023 06:22:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Oct 2023 16:22:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 16:22:02 +0300
Message-ID: <20231009132204.15098-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
References: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/dsb: Correct DSB command buffer
 cache coherency settings
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The display engine does not snoop the caches so shoukd to mark
the DSB command buffer as I915_CACHE_NONE.
i915_gem_object_create_internal() always gives us I915_CACHE_LLC
on LLC platforms. And to make things 100% correct we should also
clflush at the end, if necessary.

Note that currently this is a non-issue as we always write the
command buffer through a WC mapping, so a cache flush is not actually
needed. But we might actually want to consider a WB mapping since
we also end up reading from the command buffer (in the indexed
reg write handling). Either that or we should do something else
to avoid those reads (might actually be even more sensible on DGFX
since we end up reading over PCIe). But we should measure the overhead
first...

Anyways, no real harm in adding the belts and suspenders here so
that the code will work correctly regardless of how we map the
buffer. If we do get a WC mapping (as we request)
i915_gem_object_flush_map() will be a nop. Well, apart form
a wmb() which may just flush the WC buffer a bit earlier
than would otherwise happen (at the latest the mmio accesses
would trigger the WC flush).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 7410ba3126f9..78b6fe24dcd8 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -316,6 +316,8 @@ void intel_dsb_finish(struct intel_dsb *dsb)
 				   DSB_FORCE_DEWAKE, 0);
 
 	intel_dsb_align_tail(dsb);
+
+	i915_gem_object_flush_map(dsb->vma->obj);
 }
 
 static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
@@ -462,13 +464,18 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 	/* ~1 qword per instruction, full cachelines */
 	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
 
-	if (HAS_LMEM(i915))
+	if (HAS_LMEM(i915)) {
 		obj = i915_gem_object_create_lmem(i915, PAGE_ALIGN(size),
 						  I915_BO_ALLOC_CONTIGUOUS);
-	else
+		if (IS_ERR(obj))
+			goto out_put_rpm;
+	} else {
 		obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
-	if (IS_ERR(obj))
-		goto out_put_rpm;
+		if (IS_ERR(obj))
+			goto out_put_rpm;
+
+		i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
+	}
 
 	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
 	if (IS_ERR(vma)) {
-- 
2.41.0

