Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC644B092ED
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 19:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C1710E868;
	Thu, 17 Jul 2025 17:14:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tb7/mold";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8432F10E173;
 Thu, 17 Jul 2025 17:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752772450; x=1784308450;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fo2qFrXsV8jcIxQ/gNmv3pFaTp58tQ6xl3agHctQf4c=;
 b=Tb7/moldWQjnIl1pbxzQGCLlK6MiOkAmZHseb2My7h1P0tXb7C3HnMo+
 ciJafiRNNErXAojVI1EizehMA1vHx7oaVaSasbNftl0gwoqC6Sf3L8Htu
 dcKnR2S42Q7ZXFMMIGcWNa5QXOokfYeZKnP/61RfYW9y29ppA/BhQWY4Q
 nmfPo4GoaZsJ2cN46tZHhDK00meS424XNVdQmxUDuk0UQ0ctzWsyx8Af3
 seX7aGvIfpm44yy7pKQ1eloHRqH04b/1rmrjtzKe/T0ERPkZSoHo6fRO7
 elsLiWAHwPPbj4hSxLHngdKi004Esqq4mQIt1o0Us38TGhn2fgarOAlFq Q==;
X-CSE-ConnectionGUID: /xxIsxTRR6uv5V57kvnnHg==
X-CSE-MsgGUID: 3T0lCtWYSEiD1HW3G0ksxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="58729027"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="58729027"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 10:14:10 -0700
X-CSE-ConnectionGUID: dwEPT5iZQqC1jF1+1R0hTg==
X-CSE-MsgGUID: JzqZ9Ng+TqCFrMG3WKx8uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="163488828"
Received: from agladkov-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.179])
 by orviesa005.jf.intel.com with SMTP; 17 Jul 2025 10:14:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Jul 2025 20:14:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 4/6] drm/i915: Use i915_vma_offset() in intel_dpt_offset()
Date: Thu, 17 Jul 2025 20:13:50 +0300
Message-ID: <20250717171353.23090-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
References: <20250717171353.23090-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index aea249e2699f..4743d8b0bf40 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -322,5 +322,5 @@ void intel_dpt_destroy(struct i915_address_space *vm)
 
 u64 intel_dpt_offset(struct i915_vma *dpt_vma)
 {
-	return dpt_vma->node.start;
+	return i915_vma_offset(dpt_vma);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index b0557976836d..d598a005f847 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -302,8 +302,8 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
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
2.49.0

