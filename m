Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C42B21C22
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 06:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3A8A10E58A;
	Tue, 12 Aug 2025 04:28:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cxWqCWgj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56FC910E587;
 Tue, 12 Aug 2025 04:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754972907; x=1786508907;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lzs/ZbLYWhLLRZkZDFu1t5NcXRvlf1JRCqNi00hQHtU=;
 b=cxWqCWgjmikgaoCkUDjT7oeBHYaoPXddeMuFSidBime8JFpkVRfgVYqV
 EqYVC0vzZTHFF1adfa9Jg+5U8zvLsi7f611Q+YqolIXAv9J5y2BnUEkcC
 Xrqzzh/ZnqMN/P9yq7WZTWwnUuNRc8hK98buRTSbzFk23q/R9bh12ZVsE
 oM1zTLa6Yqm3iT3wG0GHPJTsTa4lgK56jz68RL7kKBiANhjJ2X1AP0erW
 q80xukxWhCdgGOyfIk8n1H1WvWnxfPv2YhYs1B32IKiFKEKAptrkO0i+c
 etf9ZnY8uw5bN0jP8K5nyeIRCbwCafirYp5+rM0cpNmQ761ujk9QL3x/n g==;
X-CSE-ConnectionGUID: I6pzbH3ZQ+SmVu07WYnmDw==
X-CSE-MsgGUID: +jF0X7A6ReafsyXxefxilw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68693388"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68693388"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:27 -0700
X-CSE-ConnectionGUID: nownFf2NRXWSf0ivFOk9Fg==
X-CSE-MsgGUID: wpvIwtDOT1KvmfB5S272ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165982375"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:26 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/6] drm/i915/dp: Move num_joined_pipes and related checks
 together
Date: Tue, 12 Aug 2025 09:44:24 +0530
Message-ID: <20250812041428.1820109-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250812041428.1820109-1-ankit.k.nautiyal@intel.com>
References: <20250812041428.1820109-1-ankit.k.nautiyal@intel.com>
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

Move the calculation of `num_joined_pipes` and other constraints that
depend on it, into a single block.
This groups all joiner-dependent logic together, preparing the code for a
future loop-based evaluation of multiple joiner configurations.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 62f28f14423e..0884826de1fd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1495,20 +1495,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		target_clock = fixed_mode->clock;
 	}
 
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     mode->hdisplay, target_clock);
-	max_dotclk *= num_joined_pipes;
-
 	sink_format = intel_dp_sink_format(connector, mode);
 	output_format = intel_dp_output_format(connector, sink_format);
 
-	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
-	if (status != MODE_OK)
-		return status;
-
-	if (target_clock > max_dotclk)
-		return MODE_CLOCK_HIGH;
-
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
@@ -1517,6 +1506,17 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	mode_rate = intel_dp_link_required(target_clock,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
+	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
+						     mode->hdisplay, target_clock);
+	max_dotclk *= num_joined_pipes;
+
+	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
+	if (status != MODE_OK)
+		return status;
+
+	if (target_clock > max_dotclk)
+		return MODE_CLOCK_HIGH;
+
 	if (intel_dp_has_dsc(connector)) {
 		get_dsc_slice_and_bpp(connector, mode, target_clock,
 				      num_joined_pipes,
-- 
2.45.2

