Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7F7B13621
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 10:16:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C1010E4A0;
	Mon, 28 Jul 2025 08:16:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NAikdUGF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95A2410E4A1;
 Mon, 28 Jul 2025 08:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753690607; x=1785226607;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=WhjJbOLwA7r8zgwXNtbCNU84FVuNxhReiWjMnqcJHgI=;
 b=NAikdUGF3vTniwJx9QPSSgxJYdaCaqGauBD2Nf1C4532tHzuQgvIDWfD
 2fPmTmomaeSlHjRdSC/e8BFsc01kk4tuQ3sunzzp45tiIlLIDKWEWcDGm
 Ttxq96dd5wCD0ZE5BEF/637JjnRe2VTrcypqeQlZLB3CmGgwB7RckV5Xq
 9bk4Z67kvtTFcr3ADrFYaHsw72Js2HxdbmyOyQmSCULkIOKsTg60zD0eF
 HfE7po2PhORN6JXnOy8h618Uc9whkDOedY3Pm1AOc4DdJ9idGFla3E17h
 BYeToqlBRdbwUTdQjI7maO8sSNCO/892Xowaxuz30CNpfV1LuhgGdbq98 Q==;
X-CSE-ConnectionGUID: /zWntrvkSWyHpxbMqRyNxA==
X-CSE-MsgGUID: LrNz0tN0RN6rF2yXiVnCXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="55007950"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55007950"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 01:16:44 -0700
X-CSE-ConnectionGUID: PRPgYEqiSQuPGbakvgzuGw==
X-CSE-MsgGUID: 5UWsRT8LRnOiPiYj3FsGbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="185983784"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa002.fm.intel.com with ESMTP; 28 Jul 2025 01:16:43 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Mon, 28 Jul 2025 13:32:14 +0530
Subject: [PATCH v5] drm/i915/display: Use the recomended min_hblank values
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250728-min_hblank-v5-1-54cb7ea5cd74@intel.com>
X-B4-Tracking: v=1; b=H4sIAIUuh2gC/23OQQ7CIBCF4as0rMUglEpdeQ/TGKAgE1sw0BBN0
 7tLu7ELl38y8+XNKJkIJqFLNaNoMiQIvgQ/VEg76R8GQ18aUUI5OVOBR/B3pwbpn5g2TBtVE06
 ERuXhFY2F94bdutI2hhFPLhr5IxrK90Rm+IQbK1rJeV8rS6/gJzMcdRhX0UGaQvxs63K9un+H5
 Looqu0FU5awcrBTumVZvjKL/W/mAAAA
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

Bspec: 74379
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
Changes in v5:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v4: https://lore.kernel.org/r/20250728-min_hblank-v4-1-b9d83bf03025@intel.com
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54d88f24b6893e1f8009f00dda87d8dae5dfc137..1cc19f3e7729c25d2066f42601a18bdfa03b2721 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3182,7 +3182,26 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
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
+		 * Note: Driver doesn't support compressed bpp 6.
+		 * Its unusual to have 6bpc with YCBCR420, for which the spec suggests
+		 * a minimum hblank value of 2(Hence this condition is omitted).
+		 */
+		drm_WARN(display->drm, (crtc_state->dsc.compression_enable &&
+			 crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+			 crtc_state->dsc.compressed_bpp_x16 == 6),
+			 "Unusual to have compressed bpp 6 with ycbcr420\n");
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

