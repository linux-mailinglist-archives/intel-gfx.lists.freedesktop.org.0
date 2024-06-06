Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 638FF8FE507
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCBAC10E8F9;
	Thu,  6 Jun 2024 11:16:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z7yuM9u8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F94F10E8F9
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672591; x=1749208591;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gz0431GwIGNYFMS3x8okVGho3ot9Ix/FXkHVuuJW3B8=;
 b=Z7yuM9u8AIXBuRsKEF4Wy7S7ZZsY+FarC1w1L3IOtgnAPT/4V37CHzEH
 BxtfrjOatpzUzSTo9KKaCW3h9ZWWsMwmjg6oKXx8zew1miIkuGBSQ+ugs
 M4PTroa7o6g83b2J0VYIcGP4K5bCL50x5j/wpE34CFiqswxRtINjfTGVE
 ZZCqGw4B1C8hBCuiPxt9NInxJzPBGGNqoR2kqoMYstevNlz8eagNjtncJ
 5TClamj0P76aVNQN+L52kFLIiCpuCCetVKmh/DqXZH+ID8dCY55UiWb85
 Tgr3gE/14tepL++rTxrOLo5sCS0gMPF4zT85c3+Zd0pSpNgyhz/2f8JiX g==;
X-CSE-ConnectionGUID: tljZ/1K8T5Goojmv9CX7eg==
X-CSE-MsgGUID: 7su+y4DBSm+FSoR3yriRXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14468052"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14468052"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:31 -0700
X-CSE-ConnectionGUID: k4ICcqOQRImWw9n0RVIhNg==
X-CSE-MsgGUID: 8krULEK3S2WMpo/OSzs8rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38003800"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 06/14] drm/i915/gt: remove mem freq from gt debugfs
Date: Thu,  6 Jun 2024 14:15:58 +0300
Message-Id: <caa24463d5f80be18725d59dcdde5fdbd56f77d0.1717672515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717672515.git.jani.nikula@intel.com>
References: <cover.1717672515.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

It's a bit out of place, and only printed for VLV/CHV.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 4fcba42cfe34..c1ce6258e55c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -367,7 +367,6 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 		vlv_punit_put(i915);
 
 		drm_printf(p, "PUNIT_REG_GPU_FREQ_STS: 0x%08x\n", freq_sts);
-		drm_printf(p, "DDR freq: %d MHz\n", i915->mem_freq);
 
 		drm_printf(p, "actual GPU freq: %d MHz\n",
 			   intel_gpu_freq(rps, (freq_sts >> 8) & 0xff));
-- 
2.39.2

