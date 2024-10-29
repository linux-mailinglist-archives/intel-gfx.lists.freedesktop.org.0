Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7521B9B527C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 20:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CB4010E6E4;
	Tue, 29 Oct 2024 19:11:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PdLuPg9Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D9210E6E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 19:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730229107; x=1761765107;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WoYojkdzZFEtmRawKNnXUlMFV0eK8mvJi83SXNGhgA0=;
 b=PdLuPg9Zntfqzga7qPSSHli1e67u8IQeefd0PA40+oA7QupNdIlrlgon
 uY9mXtuC1cyExesPygVDECdSv2YXRfGNCLsfAGoiEWoOx/DWjlzRJfw6G
 DmfYvZoARUrOR7/dW6oT0nOPMsGjmVZyDhTvywyao24ucJlT2hOd9D7Qy
 TKXIW19v3VJNMkuMZVPRXXcvUheJ67RKLCRc+2XFnaH0X89ExSntVD3iJ
 s70O3MXcMDp1O6Iu4vl+TjUtSzkp8J9Nq3rIKdDtXoGwjsn7vmogKhjFR
 bseLwpQDlICELqWl0yZrcvRtPq/4JW/9GDQang/PMt9EHRJeMIOkWnWoM Q==;
X-CSE-ConnectionGUID: gUjXOr7XRcimkvRMggTEsQ==
X-CSE-MsgGUID: 7wDHQZX8S3edxdhbjd3QIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29745605"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29745605"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:11:47 -0700
X-CSE-ConnectionGUID: +hm5xwwrRQOFtywgDoliFA==
X-CSE-MsgGUID: Dv3RaTABT5OtAzunNYvueQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="86812727"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:11:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/ptl/dp_mst: Align slave transcoder sequences
 with spec wrt. DP2 config
Date: Tue, 29 Oct 2024 21:12:14 +0200
Message-ID: <20241029191215.3889861-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241029191215.3889861-1-imre.deak@intel.com>
References: <20241029191215.3889861-1-imre.deak@intel.com>
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

On PTL during modeset enabling and disabling enable and disable the DP2
configuration for MST slave transcoders as required by the specification.

The spec requires the same programming steps on ADLP+ platforms as well,
this will be addressed by the next patch.

Bspec: 68849
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7c16406883594..b1eee8500a383 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1057,6 +1057,9 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
+	if (DISPLAY_VER(dev_priv) >= 30 && !last_mst_stream)
+		intel_ddi_config_transcoder_dp2(encoder, old_crtc_state, false);
+
 	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
 		const struct intel_crtc_state *old_pipe_crtc_state =
 			intel_atomic_get_old_crtc_state(state, pipe_crtc);
@@ -1224,8 +1227,10 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
 		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
 
-	if (DISPLAY_VER(dev_priv) >= 30 && !first_mst_stream)
+	if (DISPLAY_VER(dev_priv) >= 30 && !first_mst_stream) {
+		intel_ddi_config_transcoder_dp2(encoder, pipe_config, true);
 		intel_ddi_config_transcoder_func(encoder, pipe_config);
+	}
 
 	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
-- 
2.44.2

