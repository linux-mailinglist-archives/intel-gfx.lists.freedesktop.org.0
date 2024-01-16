Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED3A82EA73
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:57:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF22110E421;
	Tue, 16 Jan 2024 07:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EB3810E421
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391825; x=1736927825;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YBokagKwleGRqBC5bXKkt2edbHD+hezYUhI26/oW8Wc=;
 b=YRyYB8wxVLnIQgHj9PJX7EvpP/nOKirbtcdxlAtbloQoKF6T4geylvV+
 DfvNmhVmV18zr8r1XvRyRWkCFXWRSUZzovrwugdOXL5orCB1vnzNyAlLn
 tPGrSJDyV9Pwgufuzas0YJmDJzXvhHB/1Xt1yqJnyTH493G/ND7TmOpqx
 D2Yt7gKXUL7hyKtm0aBRcrOIB01LQZwr/fGJBKYjSnHyQEjeDpo0JqSei
 wKAhmsQHjBC9OS3ByKppr4lWuJYALUc5nnGh69LP5PkC1e/Qc7g3iQoc3
 U7LvyOafcvCJ8XlQ9ZGAfOe3Sv/adWhI2DmUbHNaIh+/Ha9PO6WSnZ+Rf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948593"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948593"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:57:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776946996"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776946996"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:57:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:57:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 07/16] drm/i915: Fix PTE decode during initial plane readout
Date: Tue, 16 Jan 2024 09:56:27 +0200
Message-ID: <20240116075636.6121-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

When multiple pipes are enabled by the BIOS we try to read out each
in turn. But we do the readout for the second only after the inherited
vma for the first has been rebound into its original place (and thus
the PTEs have been rewritten). Unlike the BIOS we set some high caching
bits in the PTE on MTL which confuses the readout for the second plane.
Filter out the non-address bits from the PTE value appropriately to
fix this.

I suppose it might also be possible that the BIOS would already set
some caching bits as well, in which case we'd run into this same
issue already for the first plane.

TODO:
- should abstract the PTE decoding to avoid details leaking all over
- should probably do the readout for all the planes before
  we touch anything (including the PTEs) so that we truly read
  out the BIOS state

Cc: Paz Zcharya <pazz@chromium.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index a55c09cbd0e4..ffc92b18fcf5 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -72,7 +72,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 			return NULL;
 		}
 
-		phys_base = pte & I915_GTT_PAGE_MASK;
+		phys_base = pte & GEN12_GGTT_PTE_ADDR_MASK;
 		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
 
 		/*
-- 
2.41.0

