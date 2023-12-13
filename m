Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7608106D5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 01:43:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C776F10E6E4;
	Wed, 13 Dec 2023 00:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A55DF10E6E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 00:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702428183; x=1733964183;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9bbDWoJ0ARFdgLNvwtx1ESJTGxjVimpvo1Eu6gq0SkM=;
 b=O1wQWqoHPs9fHPZR/KZbbbiCFXCVXvUaWffzB6wGE7Ct7MilHXUxQFhk
 vsL/fLgeEPm2mB6840gjJIsl4ZDzOvNyGgOxOPPc98o0fKgE9aUM2Jt9d
 pBJ1HT10+KgWwDUUNJCNi0nXaLIggTSdNJrwd5W7sLbv//IZP5yv52VkE
 NotiDIQ9cmv0PGr/jwJ96I9NLEmYu0u6M4zt+MH6c5J/9aI2vti/AavsD
 h6vEeNZUbmNBIXFBFGmvxlFiShtwE/S9/mbJ6YEF2Pyo1H6ESdYopHnrq
 y3pFGhrBWQmlF8wgKZc4oDlWyJifzYOey6WJj9LnL1y93mN/iGp/Uuvu2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385309688"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="385309688"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:43:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767011807"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767011807"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2023 16:43:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 02:43:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/12] drm/i915: Fix PTE decode during initial plane readout
Date: Wed, 13 Dec 2023 02:42:32 +0200
Message-ID: <20231213004237.20375-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
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

