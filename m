Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9787ACFEDEC
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 17:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA7C10E640;
	Wed,  7 Jan 2026 16:29:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l+rqdDt8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19AC10E640
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jan 2026 16:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767803376; x=1799339376;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EHktkQIIdvQo3dXROg3WImeuDU2w467TRrl/SnsDZWo=;
 b=l+rqdDt8pueUQCyN4zc+uUDCBPAPRVBPV61Xld+vzc3gh+3d+ca6vMXZ
 3ALUQKXaFO5bcZY/XpLel/eW1FJq8CqLXzsWH7t8Du9mKGHopLzDOMced
 iE3n9xVMALyAybPuOBDWUFKXTOu4v06onhXbhd6MVwOu8bRNuQWclWp4z
 v++EeIl04lC+iC+jh75nZ+/tmLuGAZe9DFdahXYbf2WGjVL7SlBUOID7t
 6nqpXfjeaGTxXDiTP3E56+AG4vUzt8xP5tH5GO/B7iW4rX+L3fJEbc1UN
 q62yadEluachDl5F3TjZkX/JBzANbkq76XDoPjOTU3AYPeqs35KAe6Wdx g==;
X-CSE-ConnectionGUID: SsuNdd1cQwacQfDHmuOfwg==
X-CSE-MsgGUID: eosigeshQLe2N01PEKkxJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="72809564"
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="72809564"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 08:29:36 -0800
X-CSE-ConnectionGUID: L4TergVWQ6KlkDRaZvPcWQ==
X-CSE-MsgGUID: xxOJ9LMUTROCMDQH2QQPjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="202094982"
Received: from dut4086lnl.fm.intel.com ([10.105.10.125])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 08:29:36 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 paulo.r.zanoni@intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@linux.intel.com, daniel.vetter@ffwll.ch
Subject: [PATCH v2] drm/i915/display: Prevent u64 underflow in
 intel_fbc_stolen_end
Date: Wed,  7 Jan 2026 16:29:36 +0000
Message-ID: <20260107162935.8123-2-jonathan.cavitt@intel.com>
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

Static analysis reveals a potential integer underflow in
intel_fbc_stolen_end.  This can apparently occur if
intel_parent_stolen_area_size returns zero (or, theoretically, any value
less than 2^23), as 2^23 is subtracted from the return value and stored
in a u64.  While this doesn't appear to cause any issues due to the use
of the min() function to clamp the return values from the
intel_fbc_stolen_end function, it would be best practice to avoid
undeflowing values like this on principle.  So, rework the function to
prevent the underflow from occurring.  Note that the underflow at
present would result in the value of intel_fbc_cfb_base_max being
returned at the end of intel_fbc_stolen_end, so just return that if the
value of intel_parent_stolen_area_size is too small.

While we're here, fix the other comments here and modify the execution
path for readability.

v2: (Jani)
- Fix the comments in intel_fbc_stolen_end
- Use check_sub_overflow
- Remove macro that mirrors SZ_8M, as it is now only referenced once
- Misc. formatting fixes

Fixes: a9da512b3ed7 ("drm/i915: avoid the last 8mb of stolen on BDW/SKL")
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 29 +++++++++++++++++-------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index fef2f35ff1e9..1f3f5237a1c2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -809,19 +809,32 @@ static u64 intel_fbc_cfb_base_max(struct intel_display *display)
 
 static u64 intel_fbc_stolen_end(struct intel_display *display)
 {
-	u64 end;
+	u64 end = intel_fbc_cfb_base_max(display);
 
-	/* The FBC hardware for BDW/SKL doesn't have access to the stolen
+	/*
+	 * The FBC hardware for BDW/SKL doesn't have access to the stolen
 	 * reserved range size, so it always assumes the maximum (8mb) is used.
 	 * If we enable FBC using a CFB on that memory range we'll get FIFO
-	 * underruns, even if that range is not reserved by the BIOS. */
+	 * underruns, even if that range is not reserved by the BIOS.
+	 */
 	if (display->platform.broadwell ||
-	    (DISPLAY_VER(display) == 9 && !display->platform.broxton))
-		end = intel_parent_stolen_area_size(display) - 8 * 1024 * 1024;
-	else
-		end = U64_MAX;
+	    (DISPLAY_VER(display) == 9 && !display->platform.broxton)) {
+		u64 stolen_area_size = intel_parent_stolen_area_size(display);
+
+		/*
+		 * If stolen_area_size is less than SZ_8M, use
+		 * intel_fbc_cfb_base_max instead.  This should not happen,
+		 * so warn if it does.
+		 */
+		if (drm_WARN_ON(display->drm,
+				check_sub_overflow(stolen_area_size,
+						   SZ_8M, &stolen_area_size)))
+			return end;
+
+		return min(end, stolen_area_size);
+	}
 
-	return min(end, intel_fbc_cfb_base_max(display));
+	return end;
 }
 
 static int intel_fbc_min_limit(const struct intel_plane_state *plane_state)
-- 
2.43.0

