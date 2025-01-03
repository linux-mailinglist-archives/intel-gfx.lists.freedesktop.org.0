Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2D0A00320
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 04:26:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C9C610E277;
	Fri,  3 Jan 2025 03:26:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oHQjWQ5b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39F9010E1DC;
 Fri,  3 Jan 2025 03:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735874758; x=1767410758;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ewohmKMUDIMJnxqD2qRp9rRyviNmhi77EIYLGh5bAJc=;
 b=oHQjWQ5blwBsRvUh9A5GgvKw8YFbMXUdtt+AqGLUVgPu0Y/OtELy8N5h
 LEPLnGxLpo1x15SEBwrVfDcfpcLvRQfUdlxuHCU/h3RC/nbXG/JejUKbE
 3MMcGcmjULdE+kwGoP/Yb0C6Zzge/7mmgGby3BqmBmza4mTN0IMqzRBdG
 yp7PrCIRYsKwvHVjVsj64ePWu7rQyiPFSO9qWWzVRaIfj3OeTlhlzjRH6
 Bp8HAqBjEPNnQcnJEP1Sr2VeBuT42sj3vj4qxwTJFwiXEi7qoDNqYY6Cd
 N14iPpNzFYfSTwHK0oNYvAIIU5n1GFGFmRequsurZNIpe1VotEb83x+z2 Q==;
X-CSE-ConnectionGUID: +3jWUnOLTT6Qi1+yUhlYSQ==
X-CSE-MsgGUID: ZU9QAvXURYCspRmWOeTjDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="39891679"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="39891679"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 19:25:58 -0800
X-CSE-ConnectionGUID: dy48zZOVRRq8/v0evKPMxQ==
X-CSE-MsgGUID: spGei8uTT/CYHTjgFbatiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="102199729"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 19:25:52 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 imre.deak@intel.com
Subject: [PATCH] drm/i915/dp: Return early if dsc is required but not supported
Date: Fri,  3 Jan 2025 08:44:24 +0530
Message-ID: <20250103031424.1732774-1-ankit.k.nautiyal@intel.com>
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

Currently, when bandwidth is insufficient for a given mode, we attempt
to use DSC. This is indicated by a debug print, followed by a check for
DSC support.

The debug message states that we are trying DSC, but DSC might not be
supported, which can give an incorrect picture in the logs if we bail
out later.

Correct the order for both DP and DP MST to:
- Check if DSC is required and supported, and return early if DSC is
not supported.
- Print a debug message to indicate that DSC will be tried next.

Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 8 +++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 +++++--
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0d74adae2ec9..4fa0e0b675b0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2642,15 +2642,17 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			dsc_needed = true;
 	}
 
+	if (dsc_needed && !intel_dp_supports_dsc(intel_dp, connector, pipe_config)) {
+		drm_dbg_kms(display->drm, "DSC required but not available\n");
+		return -EINVAL;
+	}
+
 	if (dsc_needed) {
 		drm_dbg_kms(display->drm,
 			    "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
-		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
-			return -EINVAL;
-
 		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
 						    respect_downstream_limits,
 						    true,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fffd199999e0..0433f2ff77e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -633,14 +633,17 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 			dsc_needed = true;
 	}
 
+	if (dsc_needed && !intel_dp_supports_dsc(intel_dp, connector, pipe_config)) {
+		drm_dbg_kms(display->drm, "DSC required but not available\n");
+		return -EINVAL;
+	}
+
 	/* enable compression if the mode doesn't fit available BW */
 	if (dsc_needed) {
 		drm_dbg_kms(display->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
-		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
-			return -EINVAL;
 
 		if (!mst_stream_compute_config_limits(intel_dp, connector,
 						      pipe_config, true,
-- 
2.45.2

