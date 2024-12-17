Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 215BA9F557C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 19:04:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AED010EA4D;
	Tue, 17 Dec 2024 18:04:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D7p7XQss";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BAB910EA4D;
 Tue, 17 Dec 2024 18:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734458691; x=1765994691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W99d06rG3wDx+1fJUZxfy6ke6YTd1vYKG9wa0IyTl3M=;
 b=D7p7XQssTLngQXmOsO8g8QqPiQCoU3Ht0p5nqZ4N7bUkbn2EpgenNtNi
 00ADCUvliYxAb3DjsAWkldBjS/8FAe/iA08okvoaaCTZmExNyZKEu5Too
 FquWBq1sxWBrv3sWOOqnX1FCiW6NeLw/GR2pPJj9W3lC4yiA/PANwjOsw
 DDvz6SbhH4RwDiVT5/DcIH9YXuL5b6aGH2x3l4BkuOv1dsjl0LG5jwSFF
 KLWiFVZdLcTY6Iq99ULrYmGUPgqaWRxb01dER+6EL3eRS3mPy0OVlUwiW
 LUvfPSl/h+vAsmCTlIylpcq9wRuVVrPfTTUnh/efs5ZA+11m3eI5tVcXU g==;
X-CSE-ConnectionGUID: +Mfm1TH5RSaoe0ML8gnfKg==
X-CSE-MsgGUID: cg425CWUT4qlpdDJ7wdHxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38837141"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38837141"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 10:04:51 -0800
X-CSE-ConnectionGUID: 4bPPcUNiRI+Cl61+yEIqwA==
X-CSE-MsgGUID: 2sT2a6/qQP2PUxedlvUxlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="102442803"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa004.fm.intel.com with ESMTP; 17 Dec 2024 10:04:50 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [RFC v2 2/6] drm/i915/scaler: Add member to track scaler user
Date: Tue, 17 Dec 2024 23:37:06 +0530
Message-ID: <20241217180710.1048355-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add enum to track scaler user, this differenciates between
the current user of scaler, either plane scaler/pipe scaler or
in case no scaler is used.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
 drivers/gpu/drm/i915/display/skl_scaler.c          | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 28b2861df42b..f39215c70ca7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -707,11 +707,18 @@ struct intel_initial_plane_config {
 	u8 rotation;
 };
 
+enum scaler_users {
+	SKL_NO_SCALER,
+	SKL_PIPE_SCALER,
+	SKL_PLANE_SCALER,
+};
+
 struct intel_scaler {
 	u32 mode;
 	bool in_use;
 	int hscale;
 	int vscale;
+	int user;
 };
 
 struct intel_crtc_scaler_state {
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index e00c6830ef65..e113c6ba4de7 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -426,6 +426,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 
 		scaler_state->scalers[*scaler_id].hscale = hscale;
 		scaler_state->scalers[*scaler_id].vscale = vscale;
+		scaler_state->scalers[*scaler_id].user = SKL_PLANE_SCALER;
 	}
 
 	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
-- 
2.46.0

