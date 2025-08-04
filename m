Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B5BB19B6F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 08:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64CC110E342;
	Mon,  4 Aug 2025 06:16:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iwYKv//j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07D5710E33E;
 Mon,  4 Aug 2025 06:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754288192; x=1785824192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zaON76mQHXRiGrWCpsDHqtTl3mA7yRYpvAfCIqnxO0Y=;
 b=iwYKv//j3CfwtlULJc1JZnrVpMKyCAS6D77jRb/kxbz9hlRia2eIDpxn
 7Mh4wdYLg5qWf7lXCaa3rw5pdo1Z3XOoE8PjBCJdopmiAUmhoDemOdlDC
 MKy9sB4pt7uixFHgt0uImZGZZFv7kHnN1wTipKy1+TDWVvWBJRYsO2QD6
 JFhWAmpw4zKfgSHVdhhq+YXjvWAR2sHAlU9ugdZjBFe9xuUY51+oBaSY/
 Gve0ealQlLGFjrRY6izjX5eutsQnvsOglcfAeCKfXuBRfmE5lTFYlQZVg
 UwCvzCSUNj6Mu1d9qxMiYdZ24UuOSTqEFKxu/JrCZBDlpc1SbnptYNkrz w==;
X-CSE-ConnectionGUID: HukUIWHVQwGQrfY06EtOZQ==
X-CSE-MsgGUID: Wp8WuNH+TmyMwj3ndvt0xQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="74127046"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="74127046"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2025 23:16:32 -0700
X-CSE-ConnectionGUID: zqnut/QbTzWcopSfgazvMQ==
X-CSE-MsgGUID: kpVWOMWCQDCAZfqrnlOAxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163345458"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.38])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2025 23:16:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/4] drm/i915/psr: Add poll for checking PSR is idle before
 starting update
Date: Mon,  4 Aug 2025 09:16:15 +0300
Message-ID: <20250804061615.932508-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250804061615.932508-1-jouni.hogander@intel.com>
References: <20250804061615.932508-1-jouni.hogander@intel.com>
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

We are currently observing crc failures after we started using dsb for PSR
updates as well. This seems to happen because PSR HW is still sending
couple of updates using old framebuffers on wake-up.

Fix this by adding poll ensuring PSR is idle before starting update.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7035c1fc9033..826efc1aea46 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7265,6 +7265,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
 						     state, crtc);
 
+		intel_psr_wait_for_idle_dsb(new_crtc_state);
+
 		if (new_crtc_state->use_dsb)
 			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
-- 
2.43.0

