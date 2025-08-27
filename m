Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E37B37A27
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 08:08:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 903DC10E0AC;
	Wed, 27 Aug 2025 06:08:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aXQapo8P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2073610E0AC;
 Wed, 27 Aug 2025 06:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756274907; x=1787810907;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i6Ji4FBvxXrSF/MMUBoJ5qTh8ekBT4Y0N1Z9ko9sOOw=;
 b=aXQapo8P47qyBhcmE05AsdZ5fk4rlKPDlGYW2SW7QSLp9RFR7dPY7aFo
 LOvYSUAVhsXQhEPLW1gXSdzespc61H64tjU9f7nY7jyezNExRDyt0fjHD
 2Bed9Ht3QuSn0DIjUbGnMQI/nZnNzHk77A2AMzkTEx+QXJXZ+62TvkuB4
 oZ3Z6Ke5TogIypH2sxUIT66SJNPWnqchiA5ftQ4ZeoOoP1d/DKguYoW3b
 +bGz4Jg/H0MkZi6bMKo6Ql0BspU5y1mPxtsr7xgzDveQQ+FAdO7FluC+o
 anF2121O9hQG/5EbglpK1mCYpBJ4lXR4E32KMd8PLoTL+/L8lqgYfqrNX w==;
X-CSE-ConnectionGUID: Vhc36b+VSO6woYsQyfBcAg==
X-CSE-MsgGUID: JQsIT46KRLqshHLcjlk4lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="57724856"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="57724856"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 23:08:25 -0700
X-CSE-ConnectionGUID: FliZPHgOSa+nhmsqz7wcFw==
X-CSE-MsgGUID: yYN0RKn4TWSoaMu3v2OOzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="170591128"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.83])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 23:08:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Panel Replay SU cap dpcd read return value
Date: Wed, 27 Aug 2025 09:08:09 +0300
Message-ID: <20250827060809.2461725-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently return value of drm_dpcd_readb is not checked when reading sink
Panel Replay Selective Update capabilities.

Fix this and switch to drm_dpcd_read_byte.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8b4cdf9b30db..f2b9a733637a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -494,12 +494,14 @@ static u8 intel_dp_get_su_capability(struct intel_dp *intel_dp)
 {
 	u8 su_capability = 0;
 
-	if (intel_dp->psr.sink_panel_replay_su_support)
-		drm_dp_dpcd_readb(&intel_dp->aux,
-				  DP_PANEL_REPLAY_CAP_CAPABILITY,
-				  &su_capability);
-	else
+	if (intel_dp->psr.sink_panel_replay_su_support) {
+		if (drm_dp_dpcd_read_byte(&intel_dp->aux,
+					  DP_PANEL_REPLAY_CAP_CAPABILITY,
+					  &su_capability) < 0)
+			return 0;
+	} else {
 		su_capability = intel_dp->psr_dpcd[1];
+	}
 
 	return su_capability;
 }
-- 
2.43.0

