Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFB18283A3
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 11:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE51610E3DA;
	Tue,  9 Jan 2024 10:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E70110E36A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 10:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704794731; x=1736330731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PY78am0WLUAoEkvAx0ruGrHQ+OFNq31Jy3sUNPq4Ch0=;
 b=U46gYnFI5QDePe9QiZupyGaicrhzluupXvoz4mshrCDHB9Sd5NLVm9He
 gvb325hXt4ym6hnisd6lctYkDL8hQsUGR1UyBtWeWrLtCTRbG85SrLzD5
 RwB8oQH/lq/2eFotc4V3/wzPPE27CCLRV8gDQX8DRSk5Ixh+o5h3BUBSr
 xsKsO6JdD1TOxJHdNdid/icc18LlIC0m7IBAYtuHP4U/ruv0fwBWt1Pzq
 H0Eeuey/TZXMEUdDb+6p4OK+3a60c4XhSuYDKCCgYNbMWtOdXB5V4MGMy
 aAGcVmAcKGAu/H8LeJLRRpP7LjsrPk0EYbrMETOfpDleK+oX+IHg4Tp2p g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="5517895"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; 
   d="scan'208";a="5517895"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 02:05:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="925194207"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="925194207"
Received: from ahuge-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.36.112])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 02:05:28 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/display: No need for full modeset due to psr
Date: Tue,  9 Jan 2024 12:05:16 +0200
Message-Id: <20240109100517.1947414-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240109100517.1947414-1-jouni.hogander@intel.com>
References: <20240109100517.1947414-1-jouni.hogander@intel.com>
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

There is no specific reason to force full modeset if psr is enabled.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Tested-by: Paz Zcharya <pazz@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 -------
 drivers/gpu/drm/i915/display/intel_dp.c      | 7 -------
 2 files changed, 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 31a6a82c1261..0cccf6df6718 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5202,13 +5202,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 		PIPE_CONF_CHECK_CSC(csc);
 		PIPE_CONF_CHECK_CSC(output_csc);
-
-		if (current_config->active_planes) {
-			PIPE_CONF_CHECK_BOOL(has_psr);
-			PIPE_CONF_CHECK_BOOL(has_psr2);
-			PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
-			PIPE_CONF_CHECK_I(dc3co_exitline);
-		}
 	}
 
 	PIPE_CONF_CHECK_BOOL(double_wide);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e4b7d5606d4..ab415f41924d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3326,13 +3326,6 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
 		fastset = false;
 	}
 
-	if (CAN_PSR(intel_dp)) {
-		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compute PSR state\n",
-			    encoder->base.base.id, encoder->base.name);
-		crtc_state->uapi.mode_changed = true;
-		fastset = false;
-	}
-
 	return fastset;
 }
 
-- 
2.34.1

