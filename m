Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C5EAB4AE3
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:19:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD22C10E527;
	Tue, 13 May 2025 05:19:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f3GSwKlt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F06810E52A;
 Tue, 13 May 2025 05:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113560; x=1778649560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1w8RfR4oyritK4Oz4lQpnzghNFlzo3vx3FDx6tRGwLE=;
 b=f3GSwKlto3WfhhK4hB0iykgpZKl3+WKwWf0+k6sW73rawQx9ZOh1ffia
 R4y2iWLs1utgKXvf4kybWLpYfM+5/+NFE4ZTYns+Rqq+TB3Kkxv/HaXKE
 O93/nyvg4crwLuQdkeQj3Vb7Z+yPJzhj/HCLOqqCRXPsPdGIkPZSO5C/t
 rHZZLSbHTZ173+YyGDl/VH3HTWEye3JNyIoTqGwsi6XFmjuiG3W7TgFfp
 IzG8Tm7PmU6TvLcoa1iZpBmVmcSPFpruYeJ/lIAN4z2klv0Hb2dJPa3rB
 Xc6pc3ApQKbUQRJZKwUoHSslDPTNLoilTgkTQJNZdl8dYvwNhNtyXyof7 w==;
X-CSE-ConnectionGUID: VbkrHhJcS4y2M6EWamcqcg==
X-CSE-MsgGUID: 3/k2eUGPQ3eF2pQoO7DhKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597890"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597890"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:19:20 -0700
X-CSE-ConnectionGUID: W9tfcy4UR0KO06Vf4WbJSQ==
X-CSE-MsgGUID: AgJPF+FzRoyZYklltVODzg==
X-Ironport-Invalid-End-Of-Message: True
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506295"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:19:18 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 17/17] drm/i915/vrr: Enable DC Balance bit
Date: Tue, 13 May 2025 10:47:00 +0530
Message-ID: <20250513051700.507389-18-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
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

Enable DC Balance from vrr compute config and also add
enable/disable frame counters for DC Balance odd and even
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5ca71df79430..25e8c76990d2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -277,6 +277,9 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 {
 	crtc_state->vrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+
+	if (intel_vrr_dc_balance_possible(crtc_state))
+		crtc_state->vrr.dc_balance.enable = true;
 }
 
 /*
@@ -663,6 +666,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 
 	if (crtc_state->vrr.dc_balance.enable) {
 		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, true);
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder),
+			       ADAPTIVE_SYNC_COUNTER_EN);
 		intel_pipedmc_dcb_enable(NULL, crtc);
 	}
 }
@@ -680,6 +685,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 
 	if (old_crtc_state->vrr.dc_balance.enable) {
 		intel_pipedmc_dcb_disable(NULL, crtc);
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder), 0);
 		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, false);
 	}
 
-- 
2.48.1

