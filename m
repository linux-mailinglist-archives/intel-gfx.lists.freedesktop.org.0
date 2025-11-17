Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9671C62707
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A86E210E2DB;
	Mon, 17 Nov 2025 05:44:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J1kA2Vzl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C141B10E2D2;
 Mon, 17 Nov 2025 05:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358296; x=1794894296;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tnJtKsa3O1tWz5r5b53Au8nkmb4YiqAZpvW9H3O6ZxQ=;
 b=J1kA2Vzlt+Zc0WOFCF+XmfvJYHy9Ypu97HybGcMjdAC/8UvjJRrhCGEN
 jHCHKifSQdSx9ceBQt0ond4c5V43iTUXMcEMI1LEcfPy3pCOu+8TwPkdP
 CzIuiwWFythJI1wwe1UjolizHqJIyUJGMQznj6amGWtdbU96Q6UyH5QQi
 4vAjWU/0sfdNgPgWNQxRfSwfxypdAdatpHwwCnzeerpSU6/4CEB2hb4Vk
 ZxUUxX3IFpz2FNX6ffgn0Rk1Zzi4a45PnWrQl2UAe4zgUsazWNY0cZBPM
 zKuB0FcqKRJ1PO7qrWws2O7MHcVsYPheRBj6aawbK49vXo0u8TwY0mEUi Q==;
X-CSE-ConnectionGUID: qK9LwzmkToaMqm+DivnwOA==
X-CSE-MsgGUID: fUK8W+s1SKafqQXOF4TIww==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65446056"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65446056"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:56 -0800
X-CSE-ConnectionGUID: SU9kRbBYS0axPU987SXL2Q==
X-CSE-MsgGUID: uzPU3uHWRD6AX8J5LJ4/9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016392"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:44:54 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 13/18] drm/i915/display: Wait for VRR PUSH status update
Date: Mon, 17 Nov 2025 11:14:37 +0530
Message-ID: <20251117054442.4047665-14-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 30 ++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 7634d6a7ccaf..315d0e4ef43d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -160,14 +160,40 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
 	return crtc_state->vrr.vmax;
 }
 
+static int
+intel_vrr_dcb_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
+{
+	return (intel_vrr_dcb_vmin_vblank_start_next(crtc_state) < 0) ?
+		intel_vrr_dcb_vmin_vblank_start_final(crtc_state) :
+		intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
+}
+
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmin_vtotal(crtc_state) - crtc_state->vrr.guardband;
+	if (crtc_state->vrr.dc_balance.enable) {
+		return (intel_vrr_dcb_vmin_vblank_start(crtc_state) -
+			crtc_state->vrr.guardband);
+	} else {
+		return intel_vrr_vmin_vtotal(crtc_state) - crtc_state->vrr.guardband;
+	}
+}
+
+static int
+intel_vrr_dcb_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
+{
+	return (intel_vrr_dcb_vmax_vblank_start_next(crtc_state) < 0) ?
+		intel_vrr_dcb_vmax_vblank_start_final(crtc_state) :
+		intel_vrr_dcb_vmax_vblank_start_next(crtc_state);
 }
 
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
+	if (crtc_state->vrr.dc_balance.enable) {
+		return (intel_vrr_dcb_vmax_vblank_start(crtc_state) -
+			crtc_state->vrr.guardband);
+	} else {
+		return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
+	}
 }
 
 static bool
-- 
2.48.1

