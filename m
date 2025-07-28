Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECBBB13718
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 10:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B1010E341;
	Mon, 28 Jul 2025 08:59:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lwE9nJSd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BAD910E039;
 Mon, 28 Jul 2025 08:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753693152; x=1785229152;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=AfxX4m7Ke/F//BbmmtyANJRuWyPJBg4giMulwlk1BUk=;
 b=lwE9nJSd8m+fnBsdMudQHyvLzZy1z5E94jC+H4wFYIQ7d+ZgVpDhBLwo
 iIH6VV/a4sTykr81rtC0Pc9KoLJCBjqrKep0qZf1gbPYsz3ht/UXU3yz2
 xZlgopX7qkEpQr8wK4QxnqTXQkFd7PUnPH9z3qDyKEDgsbKBbVY4m8wYb
 kyc79E8VMSlBrk0VLQAmxG7WAXZeCk/PCszW8polWnbL6sq+HcjffwBd+
 lajiZGs9HPf21EtZpVVFBWAak2I8O+7RfhB4LoE1XLmIXw9PHJDcytyve
 pG8Q4SBA4TEtVKOJMlUhD8gf5xWOsLcbxiOjmt0EqQNINX1WZ1Ol1EcW7 w==;
X-CSE-ConnectionGUID: tlcFZNllSSmrOw75SdE5Cw==
X-CSE-MsgGUID: ZQUNviNOSvuB0AzIHtY8PQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="81378888"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="81378888"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 01:59:12 -0700
X-CSE-ConnectionGUID: eKpTjvOcTkOjHhq4MaFrAA==
X-CSE-MsgGUID: T2ihwNDDSiSjHgrShafq9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="161950123"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa007.fm.intel.com with ESMTP; 28 Jul 2025 01:59:10 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Mon, 28 Jul 2025 14:14:48 +0530
Subject: [PATCH v6] drm/i915/display: Use the recomended min_hblank values
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250728-min_hblank-v6-1-8c8bae7db250@intel.com>
X-B4-Tracking: v=1; b=H4sIAH84h2gC/3WOywrCMBQFf0WyNhKT3D5c+R8ikseNDbappCUop
 f9u2o1d6HLgzHAmMmD0OJDTbiIRkx98HzIU+x0xjQp3pN5mJpxxYCWvaOfDrdGtCg/KC2FQSwa
 sMiQLz4jOv9bY5ZrZxb6jYxNRfRMFh20iCXqkhatqBWCldvzsw4jtwfTdUmz8MPbxvb5Lcun+P
 JJkrujaVkI7JvJgU1mOJPivQlZBGl2iAmNLuVXnef4AyBvWYCEBAAA=
X-Change-ID: 20250728-min_hblank-263ceb40508c
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

Use recommended values as per wa_14021694213 to compare with the
calculated value and choose minimum of them.

v2: corrected checkpatch warning and retain the restriction for
min_hblank (Jani)
v3: use calculated value to compare with recomended value and choose
minimum of them (Imre)
v4: As driver supported min bpc is 8, omit the condition check for
bpc6 with ycbcr420. Added a note for the same (Imre)
v5: Add a warn for the unexpected case of 6bpc + uhbr + ycbcr420
v6: Reworded the comments and check fo anything < compressed bpp 8(Imre)

Bspec: 74379
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
Changes in v6:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v5: https://lore.kernel.org/r/20250728-min_hblank-v5-1-54cb7ea5cd74@intel.com

Changes in v5:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v4: https://lore.kernel.org/r/20250728-min_hblank-v4-1-b9d83bf03025@intel.com
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54d88f24b6893e1f8009f00dda87d8dae5dfc137..148848a919e09e185fce38a0636e2c2a25d33bc4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3182,7 +3182,25 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 	 */
 	min_hblank = min_hblank - 2;
 
-	min_hblank = min(10, min_hblank);
+	/*
+	 * min_hblank formula is undergoing a change, to avoid underrun use the
+	 * recomended value in spec to compare with the calculated one and use the
+	 * minimum value
+	 */
+	if (intel_dp_is_uhbr(crtc_state)) {
+		/*
+		 * Note: Bspec requires a min_hblank of 2 for YCBCR420
+		 * with compressed bpp 6, but the minimum compressed bpp
+		 * supported by the driver is 8.
+		 */
+		drm_WARN_ON(display->drm, (crtc_state->dsc.compression_enable &&
+			 crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+			 crtc_state->dsc.compressed_bpp_x16 < fxp_q4_from_int(8)));
+		min_hblank = min(3, min_hblank);
+	} else {
+		min_hblank = min(10, min_hblank);
+	}
+
 	crtc_state->min_hblank = min_hblank;
 
 	return 0;

---
base-commit: eb0c2b25072b5c56e8c41d7099050bf53bebaa14
change-id: 20250728-min_hblank-263ceb40508c

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>

