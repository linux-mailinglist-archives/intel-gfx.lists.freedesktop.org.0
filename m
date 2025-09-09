Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 594ADB4A955
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 12:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF81610E583;
	Tue,  9 Sep 2025 10:07:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZFyaKtEW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A3310E583
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 10:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757412429; x=1788948429;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fIRA/qAZSdHOfEcfYBGM3n8Sj0bRj3Dn/UzSqWoi4Cs=;
 b=ZFyaKtEWnds7G6GWQloSCUoe2/l87BVLKcVXRp2F75u0LK7cbtqOH5mn
 ZeALJtIv8du6ALsQtgm7U7fdQXjTAoiLU0mUJD+fLa+llzXFPmtIXkMVJ
 kpLPjz81+LGVZ3oC2IZNV5yVEZmb/Njxt4tZ99lJlMpIgozKKa7xAym3N
 iVji7jS+fy0knRprSUgohD6aKVd+R5R7II2aDplfmfpfFnUwtscTsnyVH
 4V2JTJLnc9socJMuVxqEtnlGx1KxZzns9LYDG1L93UzZQkyBwIeEQETIQ
 h++JJ38BbLiz/iHM8YacXEzfG7QTh7/hlLsvVy/Y9PbxwwAR830bxSZ7G Q==;
X-CSE-ConnectionGUID: Xu73jsxwSE2c43TaqVP00A==
X-CSE-MsgGUID: xfUZq3OgTWG8qD1nG2hK4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="47265076"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="47265076"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 03:07:09 -0700
X-CSE-ConnectionGUID: yhmsysRfR1qmPM7Mm0Y3Kw==
X-CSE-MsgGUID: dD8D00LMQ0yWzN6yA4lsgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="173838109"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.190.216.83])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 03:07:07 -0700
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, raag.jadav@intel.com, vinay.belgaumkar@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH] drm/i915/slpc: Update min_freq_softlimit when ignore_eff_freq
 is enabled
Date: Tue,  9 Sep 2025 15:36:20 +0530
Message-ID: <20250909100619.1623315-2-sk.anirban@intel.com>
X-Mailer: git-send-email 2.43.0
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

When slpc_ignore_eff_freq is enabled, min frequency is set to RPn but
min_freq_softlimit is not updated, causing sysfs to show stale
values.

Update min freq softlimit when ignore_eff_freq is successfully enabled.

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index d5ee6e5e1443..a4d8279dbe8a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -499,6 +499,8 @@ int intel_guc_slpc_set_ignore_eff_freq(struct intel_guc_slpc *slpc, bool val)
 			ret = slpc_set_param(slpc,
 					     SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
 					     slpc->min_freq);
+			if (!ret)
+				slpc->min_freq_softlimit = slpc->min_freq;
 	}
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
-- 
2.43.0

