Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B91D0A27399
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:58:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5676910E653;
	Tue,  4 Feb 2025 13:58:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VNjZOref";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC06410E653;
 Tue,  4 Feb 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738677534; x=1770213534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f5S693uLfKcI3wih/v935t/wa/aokVdmzKzZ1DNdhVo=;
 b=VNjZOref33+S0ersYS6urUiM71XTsHl58WdKsngaclGZfy0ceMzHoJoJ
 nN0LanTLbXq/kNC/K5mCDVDqgWVa3S60q9XjbyMwOo5PK6c6J9yGxNYhV
 8F55pohMtyu3ZM1SkIZtFZ8dGtyrPNbzpsG9ju+5mgCGtXFqblnl0hznR
 qMcc5bqBHEW1EFNfBQjzAN1Ic0NU+sOyDDGkbUNV0CEFmmlMfyP6bID1s
 h2Zbwal1I3dmFx/+BhnD4uJPaWxqpvC3KOvaAyZNXNFpNPYzqxTa2RLid
 wySvwAFOIJGrz1WTkTLz7l0WtcePa+FeoNffNlSgmLAVwW3XueWqQVFzl w==;
X-CSE-ConnectionGUID: qizVcjgeTDio77XNhKg+Cw==
X-CSE-MsgGUID: bd/w3kJ2Qr+zlQixpavRcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39359001"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39359001"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:58:54 -0800
X-CSE-ConnectionGUID: YlQ/NYmgTTGgkA/gH33Kvg==
X-CSE-MsgGUID: f8YQEquKQyiVwSAyfg3YWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110484239"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:58:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 1/6] drm/i915/hdmi: move declarations for
 hsw_read/write_infoframe() to the right place
Date: Tue,  4 Feb 2025 15:58:38 +0200
Message-Id: <e8cd28a3c46f06b9654df8b7990e1e6a1d9e18c1.1738677489.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738677489.git.jani.nikula@intel.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

The functions are located in intel_hdmi.c, put the declarations in
intel_hdmi.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.h   | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_lspcon.h | 8 --------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 38deaeb302a2..d237fe08c3e6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -62,4 +62,13 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
 				  int hdmi_max_slices, int hdmi_throughput);
 int intel_hdmi_dsc_get_slice_height(int vactive);
 
+void hsw_write_infoframe(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state,
+			 unsigned int type,
+			 const void *frame, ssize_t len);
+void hsw_read_infoframe(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state,
+			unsigned int type,
+			void *frame, ssize_t len);
+
 #endif /* __INTEL_HDMI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index e19e10492b05..47f9ae77b328 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -35,13 +35,5 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config);
 u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *pipe_config);
-void hsw_write_infoframe(struct intel_encoder *encoder,
-			 const struct intel_crtc_state *crtc_state,
-			 unsigned int type,
-			 const void *frame, ssize_t len);
-void hsw_read_infoframe(struct intel_encoder *encoder,
-			const struct intel_crtc_state *crtc_state,
-			unsigned int type,
-			void *frame, ssize_t len);
 
 #endif /* __INTEL_LSPCON_H__ */
-- 
2.39.5

