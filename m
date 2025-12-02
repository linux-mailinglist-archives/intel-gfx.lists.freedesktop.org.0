Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D46C9A79E
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:37:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC7710E57A;
	Tue,  2 Dec 2025 07:37:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ICkB55d3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E973E10E595;
 Tue,  2 Dec 2025 07:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764661031; x=1796197031;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gV8DY2ukB2nKnMoGajwqI+sFtRbFPs5J5Adjjujp3f4=;
 b=ICkB55d3aU5OyWe7PQHSIotqEPgTUpH/vOqBep7miXxzqUJdLpvWXEOG
 rhZ4EFYpA9hW5/Ura2sY72dNlYgxIgCcJk4/dxVG65EjfZDdrL/WxYqSA
 sBghWwaeyzsZGsMIpYOltuWhNnqdKAugmneX0Fm08JRHCrqhbbOkFDw5T
 PXmb8vdSRNfOQkxYjiZ2MyicuyJ6BV3DqNB/GmZmV9BIChO2gJLfTY83F
 Zfqiq3OUKNCzlNwuVM2BXNgSWXpZ522wcdsKNGwcYKmKdr4nQG/bHTL19
 4YzjNK4bw9zKy3Xaz5LAgpRFkVicb1C44KXLWWRYnlMdihnbnjugXbKQz A==;
X-CSE-ConnectionGUID: ZsiFZSSJQ1S9KW281WNFXQ==
X-CSE-MsgGUID: P+GG7qfnTC+7horg0tU5ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84219251"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="84219251"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:37:10 -0800
X-CSE-ConnectionGUID: 79NBXZJvQEyLEzBGbTnqgg==
X-CSE-MsgGUID: GiDVYhlAQqawgtED1h4xaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198504865"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 01 Dec 2025 23:37:09 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v10 13/17] drm/i915/display: Wait for VRR PUSH status update
Date: Tue,  2 Dec 2025 13:06:48 +0530
Message-ID: <20251202073659.926838-14-mitulkumar.ajitkumar.golani@intel.com>
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

After VRR Push is sent, need to wait till flipline decision boundary
to get Push bit to get cleared.

--v2:
- Adjust delays to vrr vmin vblank delays. (Ankit)

--v3:
- Change intel_vrr_vmin_safe_window_end() so that
intel_dsb_wait_for_delayed_vblank() uses correct delay. (Ankit)

--v4:
- Simplify intel_vrr_vmin_safe_window_end implementation. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3db61d1f0124..4c1470dcd3bb 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -1095,10 +1095,21 @@ int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
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
+	int vmin_vblank_start = crtc_state->vrr.dc_balance.enable ?
+			intel_vrr_dcb_vmin_vblank_start(crtc_state) :
+			intel_vrr_vmin_vblank_start(crtc_state);
+
+	return vmin_vblank_start - crtc_state->set_context_latency;
 }
 
 int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
-- 
2.48.1

