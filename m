Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F2AA23926
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 05:24:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBE3110EA0E;
	Fri, 31 Jan 2025 04:24:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m3Hk62Nc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 514A310E031;
 Fri, 31 Jan 2025 04:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738297493; x=1769833493;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xumFJ2wLozsBN6+aVDQ/tUb8Cggg6mfrUD9j0eh9Sk0=;
 b=m3Hk62Nc8pWKovr8JkMZXY+UyOyhKxIy0RNN6MO5tVwNZJvJ4SSW/UhD
 jkQFXrruXVO9Re5B2LXp+0Rv+rY3x3baqu2chIFoUJoA32hB0osBlMhK9
 /HIzU8IHSBFdawQaYDmntLGZyAPbgEDYrrWqYAhgzP8IOWqMTmaMZB3OL
 J3ukfbDLrRiVxQRPvzOXSN9s/OgcUejJKHDghVS1S2f7t6Od2qB8wlQjc
 23XAGl+DDsYOS1lOBYUcd1/QdkJUGIMy/4mAm5TNK2zHBkx5F5ceAFwjG
 soF7pV2FZWfX6S3+due7nNlOopXjBtpwkMA2oblK65nKBBoH5YcMkK/Yd g==;
X-CSE-ConnectionGUID: /j0ObO3vTMi0znS8BQspsQ==
X-CSE-MsgGUID: i1RLzYUiRGyQ1By1cu2Pww==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38571075"
X-IronPort-AV: E=Sophos;i="6.13,247,1732608000"; d="scan'208";a="38571075"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 20:24:51 -0800
X-CSE-ConnectionGUID: 4OtStruLTBevPkDIMYkU5Q==
X-CSE-MsgGUID: eWdgGywLSBCRrsSdFpu/rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,247,1732608000"; d="scan'208";a="109312427"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 20:24:48 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 rodrigo.vivi@intel.com, david.laight.linux@gmail.com,
 naresh.kamboju@linaro.org
Subject: [PATCH] drm/i915/dp: Return min bpc supported by source instead of 0
Date: Fri, 31 Jan 2025 09:43:42 +0530
Message-ID: <20250131041342.3086716-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Currently, intel_dp_dsc_max_src_input_bpc can return 0 for platforms not
supporting DSC, which could theoretically cause issues in clamp()
due to a low limit being greater than the high limit.

Instead, return the minimum bpc supported by the source to prevent
such issues.

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
Closes: https://lore.kernel.org/all/CA+G9fYtNfM399_=_ff81zeRJv=0+z7oFJfPGmJgTp6yrJmU+1w@mail.gmail.com/
Fixes: 160672b86b0d ("drm/i915/dp: Use clamp for pipe_bpp limits with DSC")
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 80214a559013..d28abf081844 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1791,7 +1791,7 @@ int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
 	if (DISPLAY_VER(display) == 11)
 		return 10;
 
-	return 0;
+	return intel_dp_dsc_min_src_input_bpc();
 }
 
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
-- 
2.45.2

