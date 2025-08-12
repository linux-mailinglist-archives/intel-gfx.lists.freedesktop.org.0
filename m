Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E12B21C20
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 06:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6051A10E585;
	Tue, 12 Aug 2025 04:28:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GgZ6TOtO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41C7410E582;
 Tue, 12 Aug 2025 04:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754972904; x=1786508904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pGbzagEAPh0UUUY/gHz/Vfo/zAYImSgKujSSart3QWw=;
 b=GgZ6TOtOan4YSf5ynGMzpy2S/tZli9Df159aS5iCeCQoTzRF6+rnRStO
 moAWcvs11W8J5Am+NsWu2LBDjllYEZ0wKqhHWapJmd/J1m0hID1faSjxn
 9aQ30/2mmUfXR97BId/FWVkdfDbH2qGoRxLhl3hHyHu3/rrWil/f21dFh
 IHRLmupkkBPoxwOHWyKPLzLo1YkUCxBZ+NTbq1nRwIdVoBnH6SgbGZEth
 4eKrcGjOL8+2Tyvqzi+25vI6k1u6Br3IFIDcLBQPJPPsQ66xMMg274YY0
 hqUDDgjBr/d1pXbQ8hax426U/DR1TQr6v2+/e0osP6J3Of8hRyIYZHubI A==;
X-CSE-ConnectionGUID: Du/gIQuaTNKRxklvka+6Mw==
X-CSE-MsgGUID: OKuyG2ZKScq8ROlDlP/Afg==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68693385"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="68693385"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:24 -0700
X-CSE-ConnectionGUID: 3Lq4lKwMSDedr1B9vDJwhg==
X-CSE-MsgGUID: RSAUZGcFTbORIlSBYF8ftw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165982360"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 21:28:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/6] drm/i915/dp: Early reject bad hdisplay in
 intel_dp_mode_valid
Date: Tue, 12 Aug 2025 09:44:22 +0530
Message-ID: <20250812041428.1820109-2-ankit.k.nautiyal@intel.com>
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

Move check for bad hdisplay early as it is independent on other checks.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 625036c47bdf..1c2d4f172dfe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1435,6 +1435,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (mode->clock < 10000)
 		return MODE_CLOCK_LOW;
 
+	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
+		return MODE_H_ILLEGAL;
+
 	fixed_mode = intel_panel_fixed_mode(connector, mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		status = intel_panel_mode_valid(connector, mode);
@@ -1458,9 +1461,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
-	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
-		return MODE_H_ILLEGAL;
-
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
-- 
2.45.2

