Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9075DB135C1
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 09:33:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A965010E488;
	Mon, 28 Jul 2025 07:33:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eRxUXdt3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2814710E487;
 Mon, 28 Jul 2025 07:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753688002; x=1785224002;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=emuuMmHOYeVajoBdT6yNzjTuW5LHAIgrHVcwWr/j7fw=;
 b=eRxUXdt3frkKkwfTPn5jehdlZqNGVmBj2HSCw6tjtk+PlxL0QCHx3Tpo
 ZRKIGetBeP6ZDerbBqwo7CaUywxPZZ6MAudiEpM/ps65oMos9XKwUgvXg
 sQENuU8GG4wVPnMRT+O40xRtqGRpVtju7TgZCgyggcyDX05WezT0p29aW
 sL6abCpo+VlwmGAJWqfgXZKtAMee81zazFXj76H67IpCJFtOrePQ2JvSm
 TocgXOEkpvtMUSVuGuxnjiVvKcBjRYbWQ5n//P5URsmFW88YRPxSZECQ2
 IHrbzD9pYXUkr00JkwkCyOfnSqHZAZoPP51TOf6/xYhEwck6BT/i5PLIL w==;
X-CSE-ConnectionGUID: qBbL2MVgRp2EmPHo2/JA7g==
X-CSE-MsgGUID: Qo5WaG4zSg+UD6jEWvgguA==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="66498400"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="66498400"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 00:33:21 -0700
X-CSE-ConnectionGUID: 3i20vmw9Q1uvThCkxOgW7w==
X-CSE-MsgGUID: NUP6UarlS4W03hBsOOMGLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="162402694"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa007.jf.intel.com with ESMTP; 28 Jul 2025 00:33:20 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Mon, 28 Jul 2025 12:48:32 +0530
Subject: [PATCH v4] drm/i915/display: Use the recomended min_hblank values
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250728-min_hblank-v4-1-b9d83bf03025@intel.com>
X-B4-Tracking: v=1; b=H4sIAEckh2gC/03MQQ7CIBBA0as0sxaDFBBdeQ9jDKWDTCxgoGlMm
 t5d4kaXb/H/ChULYYVzt0LBhSrl1CB3Hbhg0wMZjc0guFD8KAyLlO5hmGx6MqF7h4PkihsHLXg
 V9PT+zq63Zl9yZHMoaH8LLdT/YunZgWlvTlapUQ5eXCjNOO1djrBtH67pfU6eAAAA
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

Bspec: 74379
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54d88f24b6893e1f8009f00dda87d8dae5dfc137..a3872764e3d8b1d596f3150db0edf71bf9ea9748 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3182,7 +3182,22 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
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
+		 * Note: Driver doesn't support 6bpc and unusual to have 6bpc
+		 * with YCBCR420, for which the spec suggests a minimum hblank
+		 * value of 2(Hence this condition is omitted).
+		 */
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

