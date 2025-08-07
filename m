Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CABB1D943
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 15:43:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8451210E851;
	Thu,  7 Aug 2025 13:43:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZQMBVhEU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA10B10E851;
 Thu,  7 Aug 2025 13:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754574212; x=1786110212;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AwyIoS4lSTqgtMjsn0Wsbp3cyzGtiJx22XUPoqodyf8=;
 b=ZQMBVhEU4tA1JMJme+xm/sK/CTqGdyZLKLj59ZV+sSGdwwlOmV6l6J6r
 u7akk6f7tB/goPkzfOR4PdGqIXoRGcv3gtldxLnBV9BKP3uLaUPMcEiIV
 XuDUN9MrUKWdB9C+TpCq870I0GweHtafipIDgsWIgiUA/yJI1d2nwQ7Bx
 dP1OyVBObxYqCS5iao7JmVj7rbTTvGHusq+NiKIK2f9UNm79WdTltvY2o
 H73XH/vuKonUP+DIso/bl0kedV0QZOdY6yOSDqxPaLXZeyWqo/tE7Hj5m
 Al4SCDDRS1gji6tVWmOkRstWA4smHGY7cMCUr9v49gIMh94gmbCkwoYpS A==;
X-CSE-ConnectionGUID: ZqozSuHuQCmrBF3Rl+Rjzg==
X-CSE-MsgGUID: GetC0PUxQMe5M0CJvoJPxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56987205"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56987205"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 06:43:31 -0700
X-CSE-ConnectionGUID: WSz2kMfUTg6rCiBg4rVgdQ==
X-CSE-MsgGUID: hl9svklyQma1se5YsBQ5Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165481008"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 06:43:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/intel_crtc: Warn and clamp if num_scalers exceeds
 SKL_NUM_SCALERS
Date: Thu,  7 Aug 2025 18:59:35 +0530
Message-ID: <20250807132935.1493028-1-ankit.k.nautiyal@intel.com>
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

Add a drm_WARN_ON() in intel_crtc_init() to catch cases where
crtc->num_scalers exceeds the expected SKL_NUM_SCALERS limit.

This condition should not occur, as the number of scalers per pipe does not
exceed two for current platforms, making SKL_NUM_SCALERS (2) a safer upper
limit. However, if a platform ever gains more scalers per pipe than
SKL_NUM_SCALERS, it could lead to issues when crtc->num_scalers is used to
iterate over scaler_state->scalers.

To prevent this, warn and clamp the value to SKL_NUM_SCALERS.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a187db6df2d3..e262e686dc2b 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -317,6 +317,9 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 	crtc->pipe = pipe;
 	crtc->num_scalers = DISPLAY_RUNTIME_INFO(display)->num_scalers[pipe];
 
+	if (drm_WARN_ON(display->drm, crtc->num_scalers > SKL_NUM_SCALERS))
+		crtc->num_scalers = SKL_NUM_SCALERS;
+
 	if (DISPLAY_VER(display) >= 9)
 		primary = skl_universal_plane_create(display, pipe, PLANE_1);
 	else
-- 
2.45.2

