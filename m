Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6AEB15E78
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 12:47:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2B5910E2B7;
	Wed, 30 Jul 2025 10:47:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3ss8spK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33D0010E2B7;
 Wed, 30 Jul 2025 10:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753872469; x=1785408469;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=h+9Ugwmnr/evd1H22Tb4NkX+skKuMYlzql+GHHioAzY=;
 b=R3ss8spKV7c5ssNMvsy4qoOBW1X7kYK3kcBRPiv16eTkM2X4JrwNo4FW
 WBOgp76aIl80xkOehDvULzG+OwqbWIzKKji8f+dGYT1rNj5qeMZbwXdQT
 7QpAVWeZyt8rrnV5yEzccSFfzz2JA3kjDIc30lVsKI6fBktcWk91K2JFT
 vSivga22KRpL3dQdiuwcgH5CdtkyL9JHL55KzOVqeTPSB47Z5qKFry5yI
 elpEwq7w8gGztyhamgKxMWbXIfG8Ov+5EjoZQVRqN8STZ/RA+47fc86ec
 EXXZMM9/thQUVHCqnNkVt9YYke7SdiBrXbPy9HeXgS+ybWNYp9ZtRym0+ w==;
X-CSE-ConnectionGUID: Ahsize8zSmyh1s31oBn9Vw==
X-CSE-MsgGUID: zhEV43WNS+GNp3dDcsZCWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="81618873"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="81618873"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 03:47:49 -0700
X-CSE-ConnectionGUID: sn8A+lSPR2KjPdOpJLo6yg==
X-CSE-MsgGUID: xDdXbxDPRsC0wKwO7K+RmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="162224569"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa006.jf.intel.com with ESMTP; 30 Jul 2025 03:47:48 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Wed, 30 Jul 2025 16:03:20 +0530
Subject: [PATCH v7] drm/i915/display: Use the recomended min_hblank values
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250730-min_hblank-v7-1-179360220ced@intel.com>
X-B4-Tracking: v=1; b=H4sIAO/0iWgC/3WOzWrDMBAGXyXoXBVV1kpKTnmPUoJ+VrVoLAfZi
 ITgd886l5rSHD92Z5g7m7BmnNhhd2cVW57yWGiYtx0LvSvfyHOkzaSQIIy0fMjl1PuzKz9c6i6
 gVwKEDYyAS8WUr0/Z5xftVMeBz31F96vQEraK1vEPrpPdO4CofJLHXGY8v4dxWI19nuax3p51T
 a3ef0OaIovfR9v5JDp62FjWkAavUSAUVPAGHYRo1F9Uv0Y1oTZY79BET/ctuizLA7yivNBcAQA
 A
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
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
Changes in v7:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v6: https://lore.kernel.org/r/20250728-min_hblank-v6-1-8c8bae7db250@intel.com

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
index 54d88f24b6893e1f8009f00dda87d8dae5dfc137..0d0d12413441bebec05139996c208116da3d776f 100644
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
+			    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+			    crtc_state->dsc.compressed_bpp_x16 < fxp_q4_from_int(8)));
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

