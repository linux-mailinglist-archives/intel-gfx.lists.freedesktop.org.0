Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4AB9FF884
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 12:05:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30EE510E469;
	Thu,  2 Jan 2025 11:05:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ipEfMDpx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B045F10E469
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2025 11:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735815941; x=1767351941;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SmAkn+Uws1UavpuUjH/0ojWwVj9x31Z0yfA0eH9Uu8U=;
 b=ipEfMDpxTq5furAUl9uFm/TyJWvT4fZu+RyPfM441PDTncsr7H2s9lRl
 sIztcsGcPee6o4jr/yQCU/26zYRnmjP9ktNzZR7B6pQlfsU2RCdekls/B
 32KpipfB034qxaBEgMWxr4OlE0lzcm8V9XDdPB/fZoQQ2XJ7+1kjcGCxn
 wf+JkDKpxfuBGFHsJ2cKX91Boy9yppkoy2hy+8j87DGDRac4x8XBETS8R
 hmqCsa9D2DMP57HgsCI8zSSYhcZ583TcCXVrXIh+BEo2Svh0BCXfyZ+64
 XKQpYG1O1HmWofQ3tptH0Db5pjF0PlfOXdBURpWlQjHx3bjQECUty8vHI A==;
X-CSE-ConnectionGUID: QwbLEJx2QKm533VIjHeaBw==
X-CSE-MsgGUID: ZQUe2FkUS32GjRoq8qFzjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="36202877"
X-IronPort-AV: E=Sophos;i="6.12,285,1728975600"; d="scan'208";a="36202877"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 03:05:40 -0800
X-CSE-ConnectionGUID: GrcpcerKRauNCFZWVbF14A==
X-CSE-MsgGUID: Ekwj5c9/R9GsgdtUVTFAnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="106528086"
Received: from jraag-z790m-itx-wifi.iind.intel.com ([10.190.239.23])
 by orviesa003.jf.intel.com with ESMTP; 02 Jan 2025 03:05:38 -0800
From: Raag Jadav <raag.jadav@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, andi.shyti@linux.intel.com,
 anshuman.gupta@intel.com, Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v1] drm/i915/selftest: Change throttle criteria for rps
Date: Thu,  2 Jan 2025 16:36:18 +0530
Message-Id: <20250102110618.174415-1-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
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

Current live_rps_control() implementation errors out on throttling.
This was done with the assumption that throttling to minimum frequency
is a catastrophic failure, which is incorrect. Throttling can happen
due to variety of reasons and often times out of our control. Also,
the resulting frequency can be at any given point below the maximum
allowed. Change throttle criteria to reflect this logic and drop the
error, as it doesn't necessarily mean selftest failure.

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index dcef8d498919..7aac90c1679e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -477,12 +477,13 @@ int live_rps_control(void *arg)
 			limit, intel_gpu_freq(rps, limit),
 			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
 
-		if (limit == rps->min_freq) {
-			pr_err("%s: GPU throttled to minimum!\n",
-			       engine->name);
+		if (limit != rps->max_freq) {
+			u32 throttle = intel_uncore_read(gt->uncore,
+							 intel_gt_perf_limit_reasons_reg(gt));
+
+			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
+				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
 			show_pstate_limits(rps);
-			err = -ENODEV;
-			break;
 		}
 
 		if (igt_flush_test(gt->i915)) {
-- 
2.34.1

