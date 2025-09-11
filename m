Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C1CB537FD
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 17:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 169ED10EB69;
	Thu, 11 Sep 2025 15:39:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DCuODT9b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 924BB10EB69
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 15:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757605162; x=1789141162;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UMty7NybGsjNqZ8W44VkEdyU2wGpdZRJvKWeYcweRL8=;
 b=DCuODT9bmrVGO2kdi4mFEImwHm/vUUj8ZBe3I8XhOm73rIwTY7ELkIVK
 X8quI1rr66XrHB8rHj1ooimQzlvl+70536mZfJm68H7TSMJN+9QAsJiWV
 0KnHF7Vl+oY7i7X3BxBatvtSX4RCJAi8DflGUEk/DFnx/fLXUKUH4uEXm
 HedHGWFRzC3zg7kPd1hwtWZ3S6McbnGMtnC8z8lwTArxbIpN4tvGdHfbO
 LllyGn/hiJ1jY9cwdpoBrmTV44ZKDi310PpqZzntbKyuNqsK9FlNsZv6r
 4GkZqtuFQrsUHkNRhKg2vyOXvv/cEWwPPB7ePmH0tHtZzmad7BhaRHiQk A==;
X-CSE-ConnectionGUID: VYab0i6GSAOO5bmqTYsxKg==
X-CSE-MsgGUID: 1xLKVuIzTYiMk8lAf6qTSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="59173101"
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="59173101"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 08:39:22 -0700
X-CSE-ConnectionGUID: hcav6+GoR7qNIOpVvGvY0w==
X-CSE-MsgGUID: WLMFkc3cRVSunloeVkKLag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,257,1751266800"; d="scan'208";a="174162686"
Received: from live-gta-imageloader.fm.intel.com (HELO
 DUT4412LNL.fm.intel.com) ([10.105.8.90])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 08:39:22 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 animesh.manna@intel.com
Subject: [PATCH] drm/i915/display: Simplify modular operations with vtotal
Date: Thu, 11 Sep 2025 15:39:22 +0000
Message-ID: <20250911153921.9038-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
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

There are a couple of modulus operations in the i915 display code with
vtotal as the divisor that add vtotal to the dividend.  In modular
arithmetic, adding the divisor to the dividend is equivalent to adding
zero to the dividend, so this addition can be dropped.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 4 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index dee44d45b668..67315116839b 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -173,7 +173,7 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
 		intel_pre_commit_crtc_state(state, crtc);
 	int vtotal = dsb_vtotal(state, crtc);
 
-	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
+	return (scanline - intel_crtc_scanline_offset(crtc_state)) % vtotal;
 }
 
 /*
@@ -482,7 +482,7 @@ static void assert_dsl_ok(struct intel_atomic_state *state,
 	 * Waiting for the entire frame doesn't make sense,
 	 * (IN==don't wait, OUT=wait forever).
 	 */
-	drm_WARN(crtc->base.dev, (end - start + vtotal) % vtotal == vtotal - 1,
+	drm_WARN(crtc->base.dev, (end - start) % vtotal == vtotal - 1,
 		 "[CRTC:%d:%s] DSB %d bad scanline window wait: %d-%d (vt=%d)\n",
 		 crtc->base.base.id, crtc->base.name, dsb->id,
 		 start, end, vtotal);
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index c15234c1d96e..bcfca2fcef3c 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -288,7 +288,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 	 * See update_scanline_offset() for the details on the
 	 * scanline_offset adjustment.
 	 */
-	return (position + vtotal + crtc->scanline_offset) % vtotal;
+	return (position + crtc->scanline_offset) % vtotal;
 }
 
 /*
-- 
2.43.0

