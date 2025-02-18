Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C83A3AAB3
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:20:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A51610E76E;
	Tue, 18 Feb 2025 21:20:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LUEi29or";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 991A310E76E
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913598; x=1771449598;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3Y7dZbHl2Y91Rltnep4/c4bn/Ny2GYpvyANqmAjoLFA=;
 b=LUEi29or4tkuHiK5uXQVZazFpIM+kJdJ1P3Ry5xinuB+RPmzIR7oPdoi
 vzJA1cWFgxSpxPLwj+Lo52rFbYFKTJZ5+qmnSBRp9D1W6ju8X6vQFnE/T
 jkqA6Ov/ZkjacBO7RFATkha4ym3tQbaOHqiE5eR6U48FsJevXSPRcyVVn
 nBGsQ2E36d1H6Z/Mto+8Va2QCV/dj1svAlGALroRx0NPijWe0qNJlQ6i+
 2ZXEhHgAYuJe0+PtLBcVG62TTEdOYYae9Qbo71JlzOThoSPUZozp5yl9n
 a0V8tR3BTCBfKBfwcW6vEI2qwt0D6kibAMJZuIlw1xx/WLbS+y/lC00Hi w==;
X-CSE-ConnectionGUID: dKaXdq5zRAyHQM5nonIZmg==
X-CSE-MsgGUID: zL9DG4MMTEOixJxQ1VyCPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862314"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862314"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:58 -0800
X-CSE-ConnectionGUID: qbdgKbqjRy+AwYIfb/697Q==
X-CSE-MsgGUID: mW2K0EV/TSiBn7mAGZETgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693494"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/19] drm/i915: Update bw_state->active_pipes during readout
Date: Tue, 18 Feb 2025 23:19:06 +0200
Message-ID: <20250218211913.27867-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Update bw_state->active_pipes during readout.

This was completely missing from the current readout code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 0090ee7e73a1..30e6f33d6f30 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1431,9 +1431,15 @@ void intel_bw_update_hw_state(struct intel_display *display)
 	if (DISPLAY_VER(display) < 9)
 		return;
 
+	bw_state->active_pipes = 0;
+
 	for_each_intel_crtc(display->drm, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
+		enum pipe pipe = crtc->pipe;
+
+		if (crtc_state->hw.active)
+			bw_state->active_pipes |= BIT(pipe);
 
 		intel_bw_crtc_update(bw_state, crtc_state);
 	}
-- 
2.45.3

