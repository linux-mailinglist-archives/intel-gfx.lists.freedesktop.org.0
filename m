Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F096AAE7678
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 07:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FF6310E0EC;
	Wed, 25 Jun 2025 05:48:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fivP/3yS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B90A610E0EC;
 Wed, 25 Jun 2025 05:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750830516; x=1782366516;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=QucC7Gh02u5JeEJwga1ZFHA0K4Q+q0rBO9x3xxum42k=;
 b=fivP/3ySzLBQ1aJ9p3lodi3VBtk9LH9qda0vUbaaI8mcSF1znmQ+txVG
 MpILG4uGlUyoU+2LqJR/3kx9VcloS5L9AHENCow3sJ/tPiN+bkgWWr9L5
 boEIAegh3FDWJ0lIbkXMo1MJydccRqgrH3UJz3q+DCpibzIm0cisqVmzo
 jQSkZBfLMsoieTjdxMKjWdqoMV/TAywuTD8tt8XDE4guBA8ZWrhlc6lka
 JO/Xb0BFzvwDWSJ/pXqKWqM3hDVgPvoFDe/u6MS9IoVgj1SMiCMkdqS0O
 2yzZlYr8OXujz/jjZkWjmGMkNnDMguvV1EQL045diuFbntKmnetA0yib7 g==;
X-CSE-ConnectionGUID: /nyx4qRhQeCcYhNk2Y4sMg==
X-CSE-MsgGUID: A7LRNHCZRYa1qOHgtp83sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="78508615"
X-IronPort-AV: E=Sophos;i="6.16,263,1744095600"; d="scan'208";a="78508615"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 22:48:35 -0700
X-CSE-ConnectionGUID: iiiFiTngS+CEMu9NC5XOZw==
X-CSE-MsgGUID: 3MEzB2vHSXOclllaT6uuJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,263,1744095600"; d="scan'208";a="152409737"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa009.fm.intel.com with ESMTP; 24 Jun 2025 22:48:34 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Wed, 25 Jun 2025 11:04:07 +0530
Subject: [PATCH v3] drm/i915/display: Use the recomended min_hblank values
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-min_hblank-v3-1-6f89a55d4bf2@intel.com>
X-B4-Tracking: v=1; b=H4sIAE+KW2gC/3WMSwrCMBQAr1KyNpK8fkhdeQ8RSdMX+7BNJClBK
 b27aVcudDkDMwuLGAgjOxULC5gokncZykPBzKDdHTn1mRkIqEUDFZ/I3YZu1O7BlbaqhwYaaxX
 LwTOgpdc+u1wzDxRnH977O8nN/twkySWvjRQCK606UZ/JzTgejZ/YtknwP4WctlIK3ZYV9Mp8p
 +u6fgCy5qrw3wAAAA==
X-Change-ID: 20250624-min_hblank-8af8d2626ff8
To: jani.nikula@intel.com, Imre Deak <imre.deak@intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
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

Bspec: 74379
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
Changes in v3:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v2: https://lore.kernel.org/r/20250624-min_hblank-v2-1-9110a9342d8c@intel.com

Changes in v2:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v1: https://lore.kernel.org/r/20250624-min_hblank-v1-1-5c100e4a8b05@intel.com
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f48912f308df7fd26c9d089e8f1bd096bfc8df95..c55315fb74734fded40695bae40dd19f71a9786f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3175,7 +3175,22 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 	 */
 	min_hblank = min_hblank - 2;
 
-	min_hblank = min(10, min_hblank);
+	/*
+	 * min_hblank formula is undergoing a change, to avoid underrun use the
+	 * recomended value in spec to compare with the calculated one and use the
+	 * minimum value
+	 */
+	if (intel_dp_is_uhbr(crtc_state)) {
+		if (crtc_state->dsc.compression_enable &&
+		    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+		    crtc_state->pipe_bpp == 18)
+			min_hblank = min(2, min_hblank);
+		else
+			min_hblank = min(3, min_hblank);
+	} else {
+		min_hblank = min(10, min_hblank);
+	}
+
 	crtc_state->min_hblank = min_hblank;
 
 	return 0;

---
base-commit: da56936fad6f5e1d5f0cef8b50277bfb071eefe7
change-id: 20250624-min_hblank-8af8d2626ff8

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>

