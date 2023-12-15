Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B72814614
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 12:00:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40EAB10E9D7;
	Fri, 15 Dec 2023 10:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06BD410E9DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 10:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702637998; x=1734173998;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d1Nx136vn5oe3CKXz3hEa8PbY8uJt9C3yRoDsYBFMMI=;
 b=Wxhe/ccCH4TaBRARhx0OyTNDdMkwnBBY6Fj0E8MzNaOzs7cz5o6Zhrz/
 lHHngd5MxHils1DvEk5ebuXuV3z5e31VfxU8Yo+i8HZkua+ZSe40ryp+9
 G0Kqtjlx7r75yQnzMFXapuAqmnnIgMLWULs+m0CAnl5i4XDpQhj/w/YUi
 onsQV4/gc/GQrjdmdwE2m7fLCUkIvnJzFVj6mk0nac3dZT7Kf2ENYbMEH
 36LUV+hMPRitrbFfyqbnwG0EqxJMxYBw5wbUT39Tcdvv3+XTqlgYcpZM4
 v1vQ2Bw+Qwh4A88R+aGAWdXXZ+F/is2JZtQ0mnVOo7ZCBrBCoj5b+gmta A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394136786"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394136786"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 02:59:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767935171"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767935171"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 02:59:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 12:59:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 07/15] drm/i915: Fix PTE decode during initial plane readout
Date: Fri, 15 Dec 2023 12:59:21 +0200
Message-ID: <20231215105929.29568-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
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

Cc: Paz Zcharya <pazz@chromium.org>
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

