Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31966A259E3
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC0A10E4C1;
	Mon,  3 Feb 2025 12:50:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b7yK03UO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B9510E4C1;
 Mon,  3 Feb 2025 12:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587028; x=1770123028;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MgjFGeMJNM9mQoLufGPMYU2BtGeb3kNGFJhAb8313DI=;
 b=b7yK03UO7TuFiPrx3TER/v/J4rxCkNwtU1LIzSZIG33ZRunwr5q/oJMB
 yzhO3nlio9R2Uz7ZJg0r1cCiMAYroHWsAIxZK2dJ12bkI5/j5Xa+PmEpM
 G2oToyrgsv6wqrC0RfJvVhRhbcCnU4NSFyqWDLDaHQGIjpDOQ9sjLATrW
 i6GvZjg8twq9moFmJDAbpWAwZ8V+KMzvetI1EPBimka6vgIFx6rs1ePT2
 03BEfAXjDCgp+pyReGvxYpwQ1fRlrOVqgPD4j8OTEv45rGmT/6oNc3qWU
 GB9aK7Mtj2Z6KqOHiB1B/m4Y7/707Ip8Wm2VrA9MGzWQrCaflmlfCKVlT g==;
X-CSE-ConnectionGUID: J1tkAkUiSwmekICRi86nqQ==
X-CSE-MsgGUID: CVgeifeVTNib0+vBeuIEUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548103"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548103"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:28 -0800
X-CSE-ConnectionGUID: cviyqB/3Sr6Akyvgv3H0/Q==
X-CSE-MsgGUID: /UcHUnRzS5SVPZ96JKC5tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529016"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:26 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 18/28] drm/i915/display: Disable PSR before disabling VRR
Date: Mon,  3 Feb 2025 18:08:30 +0530
Message-ID: <20250203123840.3855874-19-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

As per bspec 49268: Disable PSR before disabling VRR.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d70e19beef4b..09f881050ccd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1315,6 +1315,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	intel_psr_pre_plane_update(state, crtc);
+
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
 		intel_crtc_update_active_timings(old_crtc_state, false);
@@ -1325,8 +1327,6 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	intel_drrs_deactivate(old_crtc_state);
 
-	intel_psr_pre_plane_update(state, crtc);
-
 	if (hsw_ips_pre_update(state, crtc))
 		intel_crtc_wait_for_next_vblank(crtc);
 
-- 
2.45.2

