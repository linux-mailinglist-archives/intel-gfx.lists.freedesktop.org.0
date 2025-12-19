Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8785CD1E80
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 22:03:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C8110E3D5;
	Fri, 19 Dec 2025 21:03:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FkUAcXk7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7548F10E3D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Dec 2025 21:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766178217; x=1797714217;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N5WWfTOUGlXN3JhSeWRlxbZq7f8tWydb7DoWC02l5UE=;
 b=FkUAcXk7GsXXnAP7bO7v3CLL9LvTGbK8NjkZDhSNNh1vTcZBg9vf+Pnh
 3BgVJAA73O70PhrP66dfazIFVwJmfPuEyt+8d/JBgkf1bBEf4stNr1I//
 e+rW0LM0uICZR+RpVTe9xNBe6CIDZPgtfWUJjwz42LBe6awnRDPi5LJdz
 fhbQjUCjt4iisX2eGqH4RprgFgeclGudNdOu5OpCc+6O839diye/BBpWz
 jVwQDZlnL4fE8TxnEup34opG0aDeFFcvMXcwFsZKVSDwz9iW8cqp2rg+S
 P/tiqL30XoqnaeNuw2CgNNNIeSX6dAWymvfJ+dkTMjCT2K6sBePhBN4n+ Q==;
X-CSE-ConnectionGUID: dwcDXiYxQXCvcdkhCfdRUw==
X-CSE-MsgGUID: Cx2nz8/OQaGVtnRvZDac0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11647"; a="85725332"
X-IronPort-AV: E=Sophos;i="6.21,162,1763452800"; d="scan'208";a="85725332"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 13:03:37 -0800
X-CSE-ConnectionGUID: SNibv70WTmC+CF2DYRlcMA==
X-CSE-MsgGUID: LJ9gU5/+SCiGOM9hLqFo5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,162,1763452800"; d="scan'208";a="204029722"
Received: from dut4086lnl.fm.intel.com ([10.105.10.207])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 13:03:37 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 paulo.r.zanoni@intel.com, ville.syrjala@linux.intel.com,
 daniel.vetter@ffwll.ch
Subject: [PATCH] drm/i915/display: Prevent u64 underflow in
 intel_fbc_stolen_end
Date: Fri, 19 Dec 2025 21:03:36 +0000
Message-ID: <20251219210335.133830-2-jonathan.cavitt@intel.com>
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

While we're here, create a macro for the 2^23 value and modify the
execution path for readability.

Fixes: a9da512b3ed7 ("drm/i915: avoid the last 8mb of stolen on BDW/SKL")
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index fef2f35ff1e9..00c32df50933 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -807,21 +807,29 @@ static u64 intel_fbc_cfb_base_max(struct intel_display *display)
 		return BIT_ULL(32);
 }
 
+#define STOLEN_RESERVE_MAX	SZ_8M
 static u64 intel_fbc_stolen_end(struct intel_display *display)
 {
-	u64 end;
+	u64 end = intel_fbc_cfb_base_max(display);
 
 	/* The FBC hardware for BDW/SKL doesn't have access to the stolen
 	 * reserved range size, so it always assumes the maximum (8mb) is used.
 	 * If we enable FBC using a CFB on that memory range we'll get FIFO
 	 * underruns, even if that range is not reserved by the BIOS. */
 	if (display->platform.broadwell ||
-	    (DISPLAY_VER(display) == 9 && !display->platform.broxton))
-		end = intel_parent_stolen_area_size(display) - 8 * 1024 * 1024;
-	else
-		end = U64_MAX;
+	    (DISPLAY_VER(display) == 9 && !display->platform.broxton)) {
+		u64 stolen_area_size = intel_parent_stolen_area_size(display);
+
+		/* If stolen_area_size is less than STOLEN_RESERVE_MAX,
+		 * use intel_fbc_cfb_base_max instead. */
+		if (stolen_area_size < STOLEN_RESERVE_MAX)
+			return end;
+
+		stolen_area_size -= STOLEN_RESERVE_MAX;
+		return min(end, stolen_area_size);
+	}
 
-	return min(end, intel_fbc_cfb_base_max(display));
+	return end;
 }
 
 static int intel_fbc_min_limit(const struct intel_plane_state *plane_state)
-- 
2.43.0

