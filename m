Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CC0BC7B8C
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A468A10E941;
	Thu,  9 Oct 2025 07:30:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jTeyRjJa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92CF110E941;
 Thu,  9 Oct 2025 07:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759995049; x=1791531049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kpp8C3R51Gz4vQQa+dyhawDbNS9mxI8zMvC1Vvq8+8s=;
 b=jTeyRjJaEuz8OR115fioOiuwhpzx5FPinwOV1PA35ncDcfOvrBHrkYtK
 tzHdRedAsU9WiQzLZWrJM+Eoqv5YJvTKKsEAmiNFWVqeTkndiKJYWJMT/
 eoyiJLmuA53du19xjxd7ynXenSORj0Imzzp868aRoMoE6XDNXCWQgY/x8
 pm7P9/aH4h2pkEjAaXNbxfnmR+IBTXRylDHmE3rRlZhx2Ml3o/jYMygYJ
 qF9ZeGHiJGOAFQ5C6drYshSlle+VhcAXAHB4z4Nr/d+QSIsuLfERxOk2a
 8nsynDncvOrBiWrggshA49KFCgeXvT9YABs8MjW+N6HXw9DskxgnodQKl g==;
X-CSE-ConnectionGUID: cbzF7GlMSIKJXTMTI3ZUAA==
X-CSE-MsgGUID: 5iqR0kvaTAyxZ4EFcgbx9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="66050817"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="66050817"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:30:49 -0700
X-CSE-ConnectionGUID: vP2bktXuT2O63I7Gh2Gvhg==
X-CSE-MsgGUID: z4ubykp9RjiT8/cbAJortw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="181073410"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:30:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 1/8] drm/i915/vrr: Use crtc_vsync_start/end for computing
 vrr.vsync_start/end
Date: Thu,  9 Oct 2025 12:47:29 +0530
Message-ID: <20251009071736.800248-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
References: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
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

Use adjusted_mode->crtc_vsync_start/end instead of
adjusted_mode->vsync_start while computing vrr.vsync_start/end.
For most modes, these are same but for 3D/stereo modes the
crtc_vsync_start is different than vsync_start.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 190c51be5cbc..4bc14b5e685f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -394,10 +394,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
-			 crtc_state->hw.adjusted_mode.vsync_start);
+			 crtc_state->hw.adjusted_mode.crtc_vsync_start);
 		crtc_state->vrr.vsync_end =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
-			 crtc_state->hw.adjusted_mode.vsync_end);
+			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
 	}
 }
 
-- 
2.45.2

