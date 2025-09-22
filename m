Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4D0B8FFFC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 12:27:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 078BD10E410;
	Mon, 22 Sep 2025 10:27:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EG8TSQUE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF5E10E40F;
 Mon, 22 Sep 2025 10:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758536868; x=1790072868;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pnbmxKQp4OfGXLO7hv3QDQPs2hjZCfo5ZY9OHR6zNb8=;
 b=EG8TSQUE8tFj7EBI/AYJtqZKhqO9AESZYtH/V5Zsx0lq6rVPdMdJzzk3
 wRqiaLWFyuQ3/i7n3eKkuJxz2psMg/3CSM1qm2CNrT4OIygweSKFx8uip
 LEvmIyPxQzyt80Lq/I4HqeYTwVQuRTv3YFyP8200GSVChkrBxbubmz284
 I6H/B/FIrHlsGJ/rHHvnPg9URcRnBcm6rpcy7sPdenErDQMN2/ZXgP1CX
 mwOJrydAGK1SEYcY7kYw26gfmO0+Ye68Agg9tpuZ2krIpuV1p1SpmyYkf
 JyXbQdDwbEBbTru5Nrf1XhPhOoQVhQl7ky7vB3yEIbiHC38I6L+iyPgjN w==;
X-CSE-ConnectionGUID: g+QdNfG7Sn2+ip7vAIHmdQ==
X-CSE-MsgGUID: 5yEU6mMrRcWsGZKM/8EtwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11560"; a="60683128"
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="60683128"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:27:48 -0700
X-CSE-ConnectionGUID: pjRWgsdLTYuGqD5iP/p79g==
X-CSE-MsgGUID: wc27SpKxRXKaKJtI7PREhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,284,1751266800"; d="scan'208";a="181692951"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.244.53])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 03:27:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Lemen <lemen@lemen.xyz>, Koos Vriezen <koos.vriezen@gmail.com>
Subject: [PATCH] drm/i915/psr: Deactivate PSR only on LNL and when selective
 fetch enabled
Date: Mon, 22 Sep 2025 13:27:25 +0300
Message-ID: <20250922102725.2752742-1-jouni.hogander@intel.com>
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

Using intel_psr_exit in frontbuffer flush on older platforms seems to be
causing problems.

Sending single full frame update using intel_psr_force_update is anyways
more optimal compared to psr deactivate/activate -> move back to this
approach on PSR1, PSR HW tracking and Panel Replay full frame update and
use deactivate/activate only on LunarLake and only when selective fetch is
enabled.

Tested-by: Lemen <lemen@lemen.xyz>
Tested-by: Koos Vriezen <koos.vriezen@gmail.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14946
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 01bf304c705f..10eb93a34cf2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3402,6 +3402,7 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_enabled) {
+		/* Selective fetch prior LNL */
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			/* can we turn CFF off? */
 			if (intel_dp->psr.busy_frontbuffer_bits == 0)
@@ -3420,12 +3421,19 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 		intel_psr_configure_full_frame_update(intel_dp);
 
 		intel_psr_force_update(intel_dp);
+	} else if (!intel_dp->psr.psr2_sel_fetch_enabled) {
+		/*
+		 * PSR1 on all platforms
+		 * PSR2 HW tracking
+		 * Panel Replay Full frame update
+		 */
+		intel_psr_force_update(intel_dp);
 	} else {
+		/* Selective update LNL onwards */
 		intel_psr_exit(intel_dp);
 	}
 
-	if ((!intel_dp->psr.psr2_sel_fetch_enabled || DISPLAY_VER(display) >= 20) &&
-	    !intel_dp->psr.busy_frontbuffer_bits)
+	if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
 		queue_work(display->wq.unordered, &intel_dp->psr.work);
 }
 
-- 
2.43.0

