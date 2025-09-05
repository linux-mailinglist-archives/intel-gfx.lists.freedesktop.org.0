Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4246B44F68
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 09:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D1C010EB3A;
	Fri,  5 Sep 2025 07:27:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ehjJ260u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D18710EB37;
 Fri,  5 Sep 2025 07:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757057249; x=1788593249;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SQJs3vtElSjVjDNoYx5eFXI7VAolAQt8QQSPMNapwpc=;
 b=ehjJ260ubtNdIVTflaHw3tvmUeTrO9Bvvjztv7oNW7Aze3KXK17DWkR/
 GKGEQyQS4iTwOlnsl06Lg5gF6NIMcHaQoJRoToM8frfjaSTEDEv/3KDUy
 up6B+wAkxwDC87ljQ0ZfrwFzYP5beCZAvcfAMrgC8qdKaZ4aGr4CZt5I/
 DdTk3GSrHyfpOc2w/YjceiDD0g7OsBhCCEerhI+Gnh5W/Id0yahPWDZfM
 9A5xtWRNf3lSG4VSq5+VxTuiFHJoGHqGw+fVkehE4dnGQMtfu5SURkQeH
 9GYnkJNcP3gkFL816AEmD0LVnWKo98+4SGHNr76ktgeIjFKmvzUPYYYqB A==;
X-CSE-ConnectionGUID: GEj2KfoGSLCzEKhnrCx7+g==
X-CSE-MsgGUID: ogC2NZv6QIWpsW3OuO75wQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="63047067"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="63047067"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:27:29 -0700
X-CSE-ConnectionGUID: 7/pwIgD4TfyyyUxzcBl7ng==
X-CSE-MsgGUID: 9OAEqym+QE+7SZFy5nRc+A==
X-ExtLoop1: 1
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.5])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 00:27:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 4/4] drm/i915/psr: Add poll for checking PSR is idle before
 starting update
Date: Fri,  5 Sep 2025 10:27:08 +0300
Message-ID: <20250905072708.2659411-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250905072708.2659411-1-jouni.hogander@intel.com>
References: <20250905072708.2659411-1-jouni.hogander@intel.com>
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

v2: pass new_crtc_state->dsb_commit to intel_psr_wait_for_idle_dsb

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c1a3a95c65f0..5dca7f96b425 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7271,6 +7271,9 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
 						     state, crtc);
 
+		intel_psr_wait_for_idle_dsb(new_crtc_state->dsb_commit,
+					    new_crtc_state);
+
 		if (new_crtc_state->use_dsb)
 			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
-- 
2.43.0

