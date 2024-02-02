Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7EA847C73
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 23:44:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59B3810F0FF;
	Fri,  2 Feb 2024 22:44:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T1Owoptx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A01010F0FF
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 22:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706913851; x=1738449851;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=004gMDCq85H4rSz3QNVNMG3UQSVU2XNCDQmtl6SN4IM=;
 b=T1Owoptxqvrf1Q6Q8BJdWUFTdzz0TK3tlG3Hk4V6468GMJTd+uRWp4dx
 tKRpzbT+0s0sTJMUdSunHLRjKv2WeFOLGirvDrQWBdh+44k8f53iB8lDV
 OoLpTHVEYcm+UXl6McoqHosqDShstzJEzhSBEKI7NLzl2ETbZ7DRKC0yS
 59u0qw7VRSwQMbebdRiHLrgolm/EwXYoQapaWsxzzFjtKNFviDrGAc9HU
 GX06RvKDOPTE9GV5v9BIzWeQVRS0ibHKKXlekanIHma1t6aOArv+u8rpw
 zc10IuGmzhywLhoVKp33I74S/FDnRiYMGyK87/SXARNR5VuzfnyjftLsB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="153752"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="153752"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 14:44:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823332033"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823332033"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 14:44:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 03 Feb 2024 00:44:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Paz Zcharya <pazz@chromium.org>
Subject: [PATCH v4 07/16] drm/i915: Fix PTE decode during initial plane readout
Date: Sat,  3 Feb 2024 00:43:31 +0200
Message-ID: <20240202224340.30647-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
Tested-by: Paz Zcharya <pazz@chromium.org>
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
2.43.0

