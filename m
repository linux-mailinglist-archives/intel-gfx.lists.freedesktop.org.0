Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D253C2A14E
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F392510E379;
	Mon,  3 Nov 2025 05:30:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qu2nl7Su";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D913610E378;
 Mon,  3 Nov 2025 05:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147844; x=1793683844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8AYbZUuN6V8ZecRSMnoChOjqJFj5aMnTHfxcx1zdXoI=;
 b=Qu2nl7Su3CymLA1kEOmQZKN9rQy4uxXb52CO38ARdBb4u9ayP+xRs27M
 j2mJuMAPvygatBnIqzHaukP5IfF8/i1NSXYenm1lnwOeztmb5RhrFYyAQ
 4mprA3waLmSsjBurojseUxCTB1d/08aLfR6X9hpFHSPdJWgDEwJrdQbB6
 BwtTSCElMIe/b4Fx0dBwkxMFc6r9LBuasrNQzxpl1SHzgSpoGdU6FC8bl
 KVdJU78IVuIkgNTPlUZfP5BcHu6xS7WbdM7RFEQqMq/wjrb8KBovjjjsF
 0gZIfFf6FVRwmLNS36qoEg21SST4PeZkgBzQTYAEzj83rms/qjVng2VC/ g==;
X-CSE-ConnectionGUID: pDNSYDrNRc+dNOELTQEjog==
X-CSE-MsgGUID: h3NE/bPdSxqUwUf2w3A97A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64143878"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64143878"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:44 -0800
X-CSE-ConnectionGUID: lUpSTpjvQJSgbESZJr7UTQ==
X-CSE-MsgGUID: WfLumzShTwiwuLoo8a7jDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925408"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:30:42 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND, 20/22] drm/i915/vrr: Enable Adaptive sync counter bit
Date: Mon,  3 Nov 2025 11:00:00 +0530
Message-ID: <20251103053002.3002695-21-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add enable/disable frame counters for DC Balance odd and even
frame count calculation.

--v2:
Update commit message

--v3:
- Driver should not control adjustment enable bit, as that
is already being controlled by firmware. Release bit from
driver computation.
- Commit message update.

--v4:
- Configure PIPEDMC_EVT_CTL enable/disable call.

--v5:
- Add Adaptive sync counter enable.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 4d56a4e8c7ca..4c4dc065d3ad 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -816,6 +816,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 
 	if (crtc_state->vrr.dc_balance.enable) {
 		intel_dmc_configure_dc_balance_event(display, pipe, true);
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
+			       ADAPTIVE_SYNC_COUNTER_EN);
 		intel_pipedmc_dcb_enable(NULL, crtc);
 	}
 
@@ -842,6 +844,7 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
 	if (old_crtc_state->vrr.dc_balance.enable) {
 		intel_pipedmc_dcb_disable(NULL, crtc);
 		intel_dmc_configure_dc_balance_event(display, pipe, false);
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
 		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
 		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
-- 
2.48.1

