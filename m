Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F7B903BA4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE4410E612;
	Tue, 11 Jun 2024 12:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cdOcagwI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF1310E618
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718108005; x=1749644005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UV7QJ74re0+97XHQm8/mBG6tYl9iqgrMqr8nE2GGQyA=;
 b=cdOcagwIL0REfObF4dKIDqwthtz20+cjhpV0W6Z40VKePp5Zy9+O7rtE
 rDJNpaSwvcBkr2oiXLV1lYlzNJPn6G6JQaFJcCMDqWHmDwp88zOcAcNMg
 bChTJWLbUYSZQlZjCPlNbSY/7+e6gca3awPZMDVWCA2rdWhENbfmAss1p
 Nu7zk+Zn98/8OUCV40y2pBQDWlxYU8VM3HWU8jlS4LpXhLoSFhii27DBz
 QZ5NuRUYn0/7wahKJDOxY+WvtB9uhd9P2TMwQPmSXrRbhsoekRorzd8K2
 77wCvc5jSXRpzwsj8B8aaHm8WYAfqIidyBzJo1491djjdFIg/cvqgbKHE Q==;
X-CSE-ConnectionGUID: eRPuvCfIQVKtEHPUqPKuIA==
X-CSE-MsgGUID: z8/ATEjbQma3vDz5xy90pg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296861"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296861"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:25 -0700
X-CSE-ConnectionGUID: ZfXuz2vRTS+XOlDbOA/yaQ==
X-CSE-MsgGUID: UtrKHj1uTjyYJMwG2sckNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118751"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 13/18] drm/i915/psr: Check Early Transport for Panel Replay
 as well
Date: Tue, 11 Jun 2024 15:12:38 +0300
Message-Id: <20240611121243.3366990-14-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611121243.3366990-1-jouni.hogander@intel.com>
References: <20240611121243.3366990-1-jouni.hogander@intel.com>
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

Move Early Transport validity check to be performed for Panel Replay as
well and use Early Transport for eDP Panel Replay always.

v2:set crtc_state->enable_psr2_su_region_et directly (not in if block)

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b3add3c21fb1..5d82438dfc20 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1417,9 +1417,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 
-	if (psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay))
-		crtc_state->enable_psr2_su_region_et = true;
-
 	return true;
 }
 
@@ -1466,6 +1463,9 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
+	crtc_state->enable_psr2_su_region_et =
+		psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay);
+
 	return true;
 
 unsupported:
-- 
2.34.1

