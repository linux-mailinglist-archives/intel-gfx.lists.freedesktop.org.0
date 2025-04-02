Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 423C5A7859A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 02:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B26CA10E165;
	Wed,  2 Apr 2025 00:22:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PhfIhRVd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CBCA10E2B4;
 Wed,  2 Apr 2025 00:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743553345; x=1775089345;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iDO6JUq0cqnUr0vHVj8e/7VWrSG92Thq4oqYZ72NTVs=;
 b=PhfIhRVd/ty8nJMNoE0tc5749OTArV5huhnkUD2pQfXJ3aXLYCtUHFW+
 uS9gqn74O6gYUh/bWSQ2SAZljybuWwsQiekoBfuPMD+K9ZGJXtKSKSNCP
 VYwjXJfACA33HqXAesfZ/ZsInYFqwM9OxgBDCyYmGuHw30E6QIBKhnDGI
 zGIHYsRWOgexnpKSobLfQ/bfs62GnT1IF65dGtAYAJcZ5NP/T0uX3a5pm
 0/4eT/5c1dNQbHucH6k861qacPDU4Po/YEg2jQMT8Yw34ufX5y5Qiwa7s
 Wqfmsb08fHu3g6OwMn/FDt4poFPZ22ISNmSyMYS8wRhiGF2/iJKVSBX6m Q==;
X-CSE-ConnectionGUID: hdV8XM4gTom5/QiGhqXFBQ==
X-CSE-MsgGUID: VvfB2S0uRPCoMEuJfIalkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="45021929"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="45021929"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 17:22:25 -0700
X-CSE-ConnectionGUID: J1+6tXKaRRKWbeh8ijwuJA==
X-CSE-MsgGUID: TidmXsUUT9OSZKmsfOJBeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131729585"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 17:22:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 03:22:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915: Use i915_vma_offset() in intel_dpt_offset()
Date: Wed,  2 Apr 2025 03:22:04 +0300
Message-ID: <20250402002209.24987-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
References: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
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

Replace the open coded vma mm node stuff in intel_dpt_offset()
with i915_vma_offset(). This will also include the VT-d guard
in the result. Granted that should always be 0 for DPT, but
it seems prudent to include that in our DPT vma offset check
anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 43bd97e4f589..2bf4ad6a0fdf 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -321,5 +321,5 @@ void intel_dpt_destroy(struct i915_address_space *vm)
 
 u64 intel_dpt_offset(struct i915_vma *dpt_vma)
 {
-	return dpt_vma->node.start;
+	return i915_vma_offset(dpt_vma);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index a5b9d87b2255..d40e3d96b14a 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -300,8 +300,8 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		WARN_ON(plane_state->ggtt_vma == plane_state->dpt_vma);
 
 		/*
-		 * The DPT object contains only one vma, so
-		 * the VMA's offset within the DPT is always 0.
+		 * The DPT object contains only one vma, and there is no VT-d
+		 * guard, so the VMA's offset within the DPT is always 0.
 		 */
 		drm_WARN_ON(display->drm, intel_dpt_offset(plane_state->dpt_vma));
 	}
-- 
2.45.3

