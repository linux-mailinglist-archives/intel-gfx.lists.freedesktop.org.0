Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC464AAC8E7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B36310E6D3;
	Tue,  6 May 2025 14:57:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fCk6lxW2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9CA710E6D2;
 Tue,  6 May 2025 14:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746543453; x=1778079453;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x5cHsgG9U6lBfKUNfmMRQMIxmtAdlQB+hSoQYfI3hbA=;
 b=fCk6lxW2jGuRYUu5aol42Ce1WvrKqR1v5d+A8Eh0yB8iC/L1Qg4JTvBx
 8hlnxQxdKS7QW4w5Gj6b8kLr+SMfKO7jHc0/ds8OYQGUHhryexzMX32HF
 ZcqcK2HtODq7e4ieXtozc7+6/fx9yoOMm5iMSZ3t1DTZpyIW5r0hvu6bV
 Q4f0sAlHtTB8C5QdYHxRVZQHPUnVcrnUmRkbeZWvRVHZzEvTtVt+k9TGf
 9i1bw8EjEUzQJUH29AEWsUzvd5Bbp6GIu/ypQNqBybM0/zQIyGNx4sjU/
 gF5cDGAVwEhKvNIiEshi43JpueR5nRJM9+eWLTOaHrifHRXCc7EQ2DRcH Q==;
X-CSE-ConnectionGUID: UgvE3BWsSAibAOEH014p+w==
X-CSE-MsgGUID: oxSMf6+4SESxUemBjpwfNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59206083"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59206083"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:57:33 -0700
X-CSE-ConnectionGUID: zqVaGaxgSMWIDXksKp03OA==
X-CSE-MsgGUID: 2RfY5WI/TCiThZc30UwqoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="166572213"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2025 07:57:31 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v4 10/17] drm/i915/vrr: Write DC balance params to hw registers
Date: Tue,  6 May 2025 20:25:10 +0530
Message-ID: <20250506145517.4129419-11-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
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

Write DC Balance parameters to hw registers.

--v2:
- Update commit header.
- Separate crtc_state params from this patch. (Ankit)

--v3:
- Write registers at compute config.
- Update condition for write.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index dcaae7631b0a..420ee917d6a9 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -483,6 +483,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 
 	/*
 	 * This bit seems to have two meanings depending on the platform:
@@ -510,6 +512,24 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 			       lower_32_bits(crtc_state->cmrr.cmrr_n));
 	}
 
+	if (HAS_VRR_DC_BALANCE(display) &&
+	    (crtc_state->vrr.dc_balance.vmin || crtc_state->vrr.dc_balance.vmax)) {
+		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
+			       crtc_state->vrr.dc_balance.vmin - 1);
+		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
+			       crtc_state->vrr.dc_balance.vmax - 1);
+		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe),
+			       crtc_state->vrr.dc_balance.max_increase);
+		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe),
+			       crtc_state->vrr.dc_balance.max_decrease);
+		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe),
+			       crtc_state->vrr.dc_balance.guardband);
+		intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe),
+			       crtc_state->vrr.dc_balance.slope);
+		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
+			       crtc_state->vrr.dc_balance.vblank_target);
+	}
+
 	intel_vrr_set_fixed_rr_timings(crtc_state);
 
 	if (!intel_vrr_always_use_vrr_tg(display) && !crtc_state->vrr.enable)
-- 
2.48.1

