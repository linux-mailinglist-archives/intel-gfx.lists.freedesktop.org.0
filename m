Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E28886561
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 04:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2362010E427;
	Fri, 22 Mar 2024 03:18:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hp1BDPSk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF6E110E427
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 03:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711077512; x=1742613512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cvApeDi3ectFwuRUG0QZdgHhcgaA8wo7VrHvcm0uKks=;
 b=Hp1BDPSkW0RRbs5UgeqXQg53wYO6esfLJLFqYSZ6ik/XB02TE0AAJl2k
 sopU/EkcVOCafXUwWq1uE+/oJMSjZVFjf6dPDAEVv1meWfX9HlnGeJyuV
 P+Qw/6kkW5D8Y5RrMxV6V4y4mDZIzUVV/CwHSwlXozOw03slMboVKsid0
 A1PP9VZNaaVLpHPCg8Jx2Xrw4UHMz6n/wFAlmy14+vmRBCTCc/Kn24nEn
 fvRqBosDb7hw6mz9l1+V7ho0FfMQm8K0kEM0e9y/X1YW2NyAfh1kGYtcW
 +dYj5LcSTrqR6UbyTZnymgXe91hjRaq8MCQy6oBuUH7f2HitCq9bQyyWK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6235032"
X-IronPort-AV: E=Sophos;i="6.07,144,1708416000"; 
   d="scan'208";a="6235032"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 20:18:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,144,1708416000"; d="scan'208";a="37874639"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 21 Mar 2024 20:18:30 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v18 3/9] drm/i915/display: Add crtc state dump for Adaptive
 Sync SDP
Date: Fri, 22 Mar 2024 08:41:51 +0530
Message-Id: <20240322031157.3823909-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240322031157.3823909-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240322031157.3823909-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add crtc state dump for Adaptive Sync SDP to know which
crtc specifically caused the failure.

--v1:
- Rebase Patches to latest.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_types.h   | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index cd78c200d483..ccaa4cb2809b 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -286,6 +286,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	if (pipe_config->infoframes.enable &
 	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
 		drm_dp_vsc_sdp_log(&p, &pipe_config->infoframes.vsc);
+	if (pipe_config->infoframes.enable &
+	    intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
+		drm_dp_as_sdp_log(&p, &pipe_config->infoframes.as_sdp);
 
 	if (pipe_config->has_audio)
 		intel_dump_buffer("ELD: ", pipe_config->eld,
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8a35fb6b2ade..c00f6c3548b9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1346,6 +1346,7 @@ struct intel_crtc_state {
 		union hdmi_infoframe hdmi;
 		union hdmi_infoframe drm;
 		struct drm_dp_vsc_sdp vsc;
+		struct drm_dp_as_sdp as_sdp;
 	} infoframes;
 
 	u8 eld[MAX_ELD_BYTES];
-- 
2.25.1

