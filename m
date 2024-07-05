Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE01E928AE7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2810B10EAD6;
	Fri,  5 Jul 2024 14:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3kel8a8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C25710E237;
 Fri,  5 Jul 2024 14:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191180; x=1751727180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VgrdPl0B2HgVAi63zxknY7eerZV+Lh+d0i9Ywv9IbHQ=;
 b=h3kel8a8C4aw19WqjPiGf0ie5QcNPDF5KChVaWeiHDGiv31OOVpvZET/
 FXB+Xym3qplR5/a7CcRrbCWPD3Ba+gdOPE1DKumDqu6G2Eefs36j6O5E+
 +LJaLpS6QM911w820NJbNCPHg5evCMr7/bmQOH61tmRen655BJMAl0LOT
 Q/YfGNWc7zECLe5HnBoLluQh3AvN+hjBBFKvaxBWG4hirAjMiiwl2etul
 rc2WqUTMELfQYYXumhON2th0UCr2OLuciZDCfbxbf1M9+OGoLf1g/71H8
 3WCv9Ig1jayVaM7CKTA02W7cdEbUD4w+bn6YE52qLCF5NRw1sWklIwS1J A==;
X-CSE-ConnectionGUID: PinxxQpDRAWXjr4gi5XDdw==
X-CSE-MsgGUID: 4k3+0YhITye5X3pHaaJA3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204721"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204721"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:00 -0700
X-CSE-ConnectionGUID: JqXIrvr9SaW4Boomm+j2qg==
X-CSE-MsgGUID: 2A2EEAhbQCCEjYg1YW46Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864346"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:52:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:52:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/20] drm/i915/fbc: Extract intel_fbc_has_fences()
Date: Fri,  5 Jul 2024 17:52:35 +0300
Message-ID: <20240705145254.3355-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
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

Pull the "do we have fences?" check into a single helper in the FBC
code. Avoids having to call to outside the display code in multiple
places for this.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 8488f82143a4..ba9820d4b78f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -229,6 +229,11 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
 	return 0;
 }
 
+static bool intel_fbc_has_fences(struct drm_i915_private *i915)
+{
+	return intel_gt_support_legacy_fencing(to_gt(i915));
+}
+
 static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
 {
 	const struct intel_fbc_state *fbc_state = &fbc->state;
@@ -620,7 +625,7 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
 	else if (DISPLAY_VER(i915) == 9)
 		skl_fbc_program_cfb_stride(fbc);
 
-	if (intel_gt_support_legacy_fencing(to_gt(i915)))
+	if (intel_fbc_has_fences(i915))
 		snb_fbc_program_fence(fbc);
 
 	/* wa_14019417088 Alternative WA*/
@@ -1154,7 +1159,7 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 	fbc_state->fence_y_offset = intel_plane_fence_y_offset(plane_state);
 
 	drm_WARN_ON(&i915->drm, plane_state->flags & PLANE_HAS_FENCE &&
-		    !intel_gt_support_legacy_fencing(to_gt(i915)));
+		    !intel_fbc_has_fences(i915));
 
 	if (plane_state->flags & PLANE_HAS_FENCE)
 		fbc_state->fence_id =  i915_vma_fence_id(plane_state->ggtt_vma);
-- 
2.44.2

