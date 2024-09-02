Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA33C968152
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6802210E238;
	Mon,  2 Sep 2024 08:05:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cnIrf5kg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F0B710E23C
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264314; x=1756800314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G1VgTillNeT2r8+fG1s1eLtgVeiTXNdCpxHBOeSUbxc=;
 b=cnIrf5kg9d4X9eW0ylBkP6nf+39N+PRzhAXcnv4ALC+u+fNtSfZ1B0Ju
 yn76+vc0+7Et3nz1bpqTfBYRKysZyo6QR9cn85DtIsl7+cbpES3DFQEMl
 Ncortc1k64vFCTll1MeLkx+VQCcGgqNgsC4x8zveaIirnSwgZROn7ZbN3
 F+lnfj6KplIMY98h2qkL8jR2pP51bj7eLQe51/j8fiG5rfmFCrXswFpG6
 Z1Qd4jSdPZ55NFXM/gLqB110nl1sAxhbIQO9JCn0hxLG2Nzj+S4MTBARL
 038134hJm24SK5CU+DwfwlAvrLA3cheUL64zjsIvWNeNGvkXIrmpy7NMg w==;
X-CSE-ConnectionGUID: yXB2+QENRWeDScBd1csNsA==
X-CSE-MsgGUID: ZUO5+rlaRWuSMn9ge365YA==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967399"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967399"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:14 -0700
X-CSE-ConnectionGUID: 44TphiJSTXCokKUUawTwOA==
X-CSE-MsgGUID: L7lAycYlTQ6Arebs40pMaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039894"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 08/13] drm/i915/display: Disable PSR before disabling VRR
Date: Mon,  2 Sep 2024 13:36:29 +0530
Message-ID: <20240902080635.2946858-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

As per bspec 49268: Disable PSR before disabling VRR.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8b437e79c8df..df6d4cab05e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1193,6 +1193,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	intel_psr_pre_plane_update(state, crtc);
+
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
 		intel_crtc_update_active_timings(old_crtc_state, false);
@@ -1203,8 +1205,6 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	intel_drrs_deactivate(old_crtc_state);
 
-	intel_psr_pre_plane_update(state, crtc);
-
 	if (hsw_ips_pre_update(state, crtc))
 		intel_crtc_wait_for_next_vblank(crtc);
 
-- 
2.45.2

