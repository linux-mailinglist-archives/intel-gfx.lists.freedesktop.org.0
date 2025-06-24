Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03537AE5E87
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E22110E512;
	Tue, 24 Jun 2025 07:51:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QGuXPU7T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3BBA10E512;
 Tue, 24 Jun 2025 07:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751514; x=1782287514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tYQWNxVWBueS1gsnpURhH7h8zCx2cdz6VQ8Y8OUeG1E=;
 b=QGuXPU7TeCKE048WSH8ibK7RDOMPuoEdQjw8QyNehsvtAwseebJ96dxG
 hJh0e3MyU/h8O9TdWa+TrgLZzJd2897vq5ydATBzNNjH+wDbdnB27h8+h
 1HTJ1fqgmOBok0hYH4NJJ2xMnBryEKCX9mIbdBm2H9uIbWJW9TTxZuSRs
 RS2PHIBAMeEl8HFlTSlHZlPWKQ2bk4OteucQVNngd2gJrWbNQw1wXhSPD
 zLbzhA7vKvdHqhvrF/LJijIG1S45KxX3TGAF9yxnVtBbopNt+iMyg3GJY
 daIrC64JENYDyWqQc37x5jmu8endMHDdGyDwoDXgIEzuaMzcQLqrAb8Kg w==;
X-CSE-ConnectionGUID: KMw0iQ0FQFGHUnItm8a9Rw==
X-CSE-MsgGUID: RIu3x/E8Q8awfI8MbfNJsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398340"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398340"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:53 -0700
X-CSE-ConnectionGUID: x1bPh9qrT8eNGEp99+skXA==
X-CSE-MsgGUID: w8i3cBk9RS+Hd0HIUde1lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446516"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:40 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 17/18] drm/i915/vrr: Enable Adaptive sync counter bit
Date: Tue, 24 Jun 2025 13:19:47 +0530
Message-ID: <20250624074948.671761-18-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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
index 5eb4a7e97291..d5359a96054b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -686,6 +686,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		ctl |= VRR_CTL_CMRR_ENABLE;
 
 	if (crtc_state->vrr.dc_balance.enable) {
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
+			       ADAPTIVE_SYNC_COUNTER_EN);
 		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, true);
 		intel_pipedmc_dcb_enable(NULL, crtc);
 	}
@@ -707,6 +709,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (old_crtc_state->vrr.dc_balance.enable) {
 		intel_pipedmc_dcb_disable(NULL, crtc);
 		intel_dmc_configure_dc_balance_ctl_regs(display, pipe, false);
+		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
 	}
 
 	ctl = trans_vrr_ctl(old_crtc_state);
-- 
2.48.1

