Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7C2C9A7A7
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B92C10E59C;
	Tue,  2 Dec 2025 07:37:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aAdxtEoc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DAB310E59C;
 Tue,  2 Dec 2025 07:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764661038; x=1796197038;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WDWclAFKzoIfFGOY1rP6WrsXysn/sMPUhdzwHsLGFmk=;
 b=aAdxtEoc6dUqMsHeDvH4JmeHgpg3HUHQWehSGq0qaIgEv1eFnx1A4vRq
 E7W1TcNSD+su1MjoorywoYjUxnbmkj7vBZ72FErSymVE6vfwsq+0I0fTT
 Lf0oEwt914u8yRF8aM2u2BnfOkiPI+N0Zgkzbsp4p0mH8ZxYl9yn60s2V
 m17Fr0yP7BMTvAxuNM90pX5WWOFXBx/7yKu9Fg/L03L9ZhI/gGnnj9iuN
 jZ1Szro/MSj+LE182Xa9rF5FCm77sJdsLcO1MgPj/7mAJsjstaTNYYE2G
 UAn4VRfLxXPV0vi/IiCV3Uaj51Me6TFch2HPwo0tS2MsIr7OK02DhkWsv w==;
X-CSE-ConnectionGUID: PoE4zL79Rp23Tvrqg5AcpA==
X-CSE-MsgGUID: qKTiAghdQnWPuJGkgqSDUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84219279"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="84219279"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:37:18 -0800
X-CSE-ConnectionGUID: VPF2g7F7QOyF99tHV6nQbg==
X-CSE-MsgGUID: P0U9XGahSDORrzyuqcanjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198504919"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 01 Dec 2025 23:37:16 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v10 16/17] drm/i915/display: Add function to configure event
 for dc balance
Date: Tue,  2 Dec 2025 13:06:51 +0530
Message-ID: <20251202073659.926838-17-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
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

Configure pipe dmc event for dc balance enable/disable.

--v2:
- Keeping function and removing unnecessary comments. (Jani, Nikula)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h | 2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c | 2 ++
 3 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index e076ba7e0f28..1182bc9a2e6d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -859,6 +859,14 @@ static void dmc_configure_event(struct intel_display *display,
 		      dmc_id, num_handlers, event_id);
 }
 
+void intel_dmc_configure_dc_balance_event(struct intel_display *display,
+					  enum pipe pipe, bool enable)
+{
+	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
+
+	dmc_configure_event(display, dmc_id, PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER, enable);
+}
+
 /**
  * intel_dmc_block_pkgc() - block PKG C-state
  * @display: display instance
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 9c6a42fc820e..3d8a9a593319 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -25,6 +25,8 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state);
 void intel_dmc_disable_pipe(const struct intel_crtc_state *crtc_state);
 void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 			  bool block);
+void intel_dmc_configure_dc_balance_event(struct intel_display *display,
+					  enum pipe pipe, bool enable);
 void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
 							    enum pipe pipe, bool enable);
 void intel_dmc_fini(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 38dc4f87e6fe..ba8b3c664e70 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -823,6 +823,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.dc_balance.slope);
 	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
 		       crtc_state->vrr.dc_balance.vblank_target);
+	intel_dmc_configure_dc_balance_event(display, pipe, true);
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
 		       ADAPTIVE_SYNC_COUNTER_EN);
 	intel_pipedmc_dcb_enable(NULL, crtc);
@@ -840,6 +841,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
 		return;
 
 	intel_pipedmc_dcb_disable(NULL, crtc);
+	intel_dmc_configure_dc_balance_event(display, pipe, false);
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
 	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
 	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
-- 
2.48.1

