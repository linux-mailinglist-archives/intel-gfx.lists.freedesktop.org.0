Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A34BCC8D7BA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:16:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FFB510E7D6;
	Thu, 27 Nov 2025 09:16:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E50BgeyA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 135E510E7D2;
 Thu, 27 Nov 2025 09:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234979; x=1795770979;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VvSZW/a+qiT7/mfAvhDflzHxPutv0B8gcL+BCdPGICA=;
 b=E50BgeyAl5meOL8ZaKoHsbyIjj81ntgojFFABOlzchnWBmis/b28zbxo
 qC7V0Jdk0ytVyFHESv7QSwzRM+VsBVvNk21Yk/WxHUe3dG26L+4ZwkwpN
 uiBaCTrI7zNliWtP/evCZGFCaPHeK0UWtFWpAg0VxwDHCbccPpK4MXQfD
 R1lQUFjp9tcCcAEhn7r5xvub7H6SOIBjlSLFyEy8DuDCFTLCJRTmFEeVT
 nC5+UqETKDNxg5chMf9x8uGr9NXt4m16ngfSR2TFRQEOts4y7Jc/yvm7q
 jqtrt+0yitW5TKbMha8TUk3kPSug7c/umAPBmqwu+UDoKKjyH1S9vprtv Q==;
X-CSE-ConnectionGUID: k6rNswPISkSnhyW5J+rsoA==
X-CSE-MsgGUID: q25kjIs8SD68moctyk8URA==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642352"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642352"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:16:19 -0800
X-CSE-ConnectionGUID: QysPS8LjTDWfT8WYMyYzgQ==
X-CSE-MsgGUID: lc2+4rEjTGCJR9dcdjTMog==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:16:18 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 13/17] drm/i915/display: Wait for VRR PUSH status update
Date: Thu, 27 Nov 2025 14:46:10 +0530
Message-ID: <20251127091614.648791-14-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
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

After VRR Push is sent, need to wait till flipline decision boundary
to get Push bit to get cleared.

--v2:
- Adjust delays to vrr vmin vblank delays. (Ankit)

--v3:
- Change intel_vrr_vmin_safe_window_end() so that
intel_dsb_wait_for_delayed_vblank() uses correct delay. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 11f06a5b854a..e5cff3892cb1 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -1081,10 +1081,23 @@ int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
 		return crtc_state->hw.adjusted_mode.crtc_vdisplay;
 }
 
+static int
+intel_vrr_dcb_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
+{
+	return (intel_vrr_dcb_vmin_vblank_start_next(crtc_state) < 0) ?
+		intel_vrr_dcb_vmin_vblank_start_final(crtc_state) :
+		intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
+}
+
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmin_vblank_start(crtc_state) -
-	       crtc_state->set_context_latency;
+	if (crtc_state->vrr.dc_balance.enable) {
+		return intel_vrr_dcb_vmin_vblank_start(crtc_state) -
+			crtc_state->set_context_latency;
+	} else {
+		return intel_vrr_vmin_vblank_start(crtc_state) -
+			crtc_state->set_context_latency;
+	}
 }
 
 int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
-- 
2.48.1

