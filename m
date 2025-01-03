Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEF8A00A1A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 221E410E8D5;
	Fri,  3 Jan 2025 13:53:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EGKuxu6J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DCE10E8D6;
 Fri,  3 Jan 2025 13:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912435; x=1767448435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IBOC62hVhuQbsmqayWaLBnOut3qEUzA3PKw15PJmJ08=;
 b=EGKuxu6JdvCSmC+EQQpVuqfyPCJi/y8qDFisw6sOUpSYazwpFq3JjN6X
 TgZhDA55i3M1gQYXuFfsS48IQg8zflsRPAojnBOA+xf7t/yBb8xHZD/Jq
 HgpjYM8A367uudfInoi942Q2jiHm+c8KzYskzNROBIaHRrDeSJ3c01AiT
 nnSPW8j21LTCWRqI5WR1xPNGGv+cKxJ7E/KWPwEzQjQ0A3F1bjJrprtVi
 5TxuyFQN1MLVzklwjp8zNNA+WvVRJYqjJaTvk8NQQGea4I54uiI6QK3ak
 dpc7u0XzF/m5JqOzjJEJwDk9b0A/VcX5Z6jOo9cDiMYLPdh1XKbB5/s9l g==;
X-CSE-ConnectionGUID: GknUZAOZTE2509F0bV2XFg==
X-CSE-MsgGUID: 4XsPKhGZQmKhonowmL4e1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="53704000"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="53704000"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:54 -0800
X-CSE-ConnectionGUID: l4T9EgigSwK25IivlpuX8g==
X-CSE-MsgGUID: Jmhl1xtoT4GuAB84Va+MMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="132651839"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 14/16] drm/i915/ddi: handle 128b/132b SST in
 intel_ddi_read_func_ctl()
Date: Fri,  3 Jan 2025 15:52:37 +0200
Message-Id: <436854c0bb6ab5c14c3d3837694ea60ac2fbaba2.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
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

We'll only ever get here in MST mode from MST stream encoders; the
primary encoder's ->get_config() won't be called when we've detected
it's MST.

v2: Read mst_master_transcoder in 128b/132b SST path (Imre)

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 30822c368525..e114929d4d9c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4049,6 +4049,11 @@ static void intel_ddi_read_func_ctl_dp_sst(struct intel_encoder *encoder,
 	crtc_state->lane_count =
 		((ddi_func_ctl & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
 
+	if (DISPLAY_VER(display) >= 12 &&
+	    (ddi_func_ctl & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B)
+		crtc_state->mst_master_transcoder =
+			REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, ddi_func_ctl);
+
 	intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder, &crtc_state->dp_m_n);
 	intel_cpu_transcoder_get_m2_n2(crtc, cpu_transcoder, &crtc_state->dp_m2_n2);
 
@@ -4143,9 +4148,19 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		intel_ddi_read_func_ctl_fdi(encoder, pipe_config, ddi_func_ctl);
 	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_SST) {
 		intel_ddi_read_func_ctl_dp_sst(encoder, pipe_config, ddi_func_ctl);
-	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
-		   (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display))) {
+	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST) {
 		intel_ddi_read_func_ctl_dp_mst(encoder, pipe_config, ddi_func_ctl);
+	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		/*
+		 * If this is true, we know we're being called from mst stream
+		 * encoder's ->get_config().
+		 */
+		if (intel_dp->is_mst)
+			intel_ddi_read_func_ctl_dp_mst(encoder, pipe_config, ddi_func_ctl);
+		else
+			intel_ddi_read_func_ctl_dp_sst(encoder, pipe_config, ddi_func_ctl);
 	}
 }
 
-- 
2.39.5

