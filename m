Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B39509B5279
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 20:11:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 619A810E6E0;
	Tue, 29 Oct 2024 19:11:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BJZ+ESB3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09C4710E6DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 19:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730229105; x=1761765105;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=C1yV3IyV4gicB2UK05+sle9LT8gCt8hTp6kAUxfHIPE=;
 b=BJZ+ESB3XdVk4JSv/U7bCQZ3RW/BmGHCh0ltBK6lnrkpjPZY2ylEZRz5
 8/zzuX/BrP1lE0pbxEvcRzbMQ0RE7+c6iXT9nH4qI71DafyMem/LnCMKR
 nLExm1MOoFvnNA2I96bH0/h10WV8/d+WuLxdo+dNWVWLUSj4CFjAa2NwL
 sRmbAXEUGMZyNn/ik6uCz0I5k/vq9uLLCCPChlp36aQsQuIAaKfE1ImW+
 hmWRyBBg/YmzBVisTKOxhKXAhJ+k6Ms9AS069qWvPtDfAfQbOsCEMIuvn
 iC19bPQ329BcfWB8H0RN45vQJPLh7Khc6dm7pjTwUncDScA6eSeQ/qiYr g==;
X-CSE-ConnectionGUID: 3y0E5LneQIOkYf3E+1aMgw==
X-CSE-MsgGUID: 8/+RTT1KTfikEJSYDCkp6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29745594"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29745594"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:11:44 -0700
X-CSE-ConnectionGUID: UOuX7ofnQLGNeeOQ9wYxCA==
X-CSE-MsgGUID: KMyUFKsLSaSuHz9vcAOlfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="86812700"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:11:44 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/ptl/dp_mst: Fix slave transcoder enabling wrt.
 DDI function
Date: Tue, 29 Oct 2024 21:12:12 +0200
Message-ID: <20241029191215.3889861-2-imre.deak@intel.com>
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

On PTL during modeset enabling configure the DDI function without
enabling it for MST slave transcoders before programming the data and
link M/N values. The DDI function gets enabled separately later in the
transcoder enabling sequence.

This fixes a slave transcoder getting stuck during enabling, leading
to page flip timeout errors on the corresponding pipe.

The spec requires the same programming step for ADLP+ platforms, that
will be addressed separately (on those platforms the above transcoder
getting stuck issue was not observed).

Bspec: 68849
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_ddi.h    | 2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ff4c633c85460..6bbfe0762cafa 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -619,7 +619,7 @@ void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
  * Same as intel_ddi_enable_transcoder_func(), but it does not set the enable
  * bit.
  */
-static void
+void
 intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 6d85422bdefef..1aa2e3a190aee 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -57,6 +57,8 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 void intel_ddi_init(struct intel_display *display,
 		    const struct intel_bios_encoder_data *devdata);
 bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
+void intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
+				      const struct intel_crtc_state *crtc_state);
 void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state);
 void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1a2ff3e1cb68f..7c16406883594 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1224,6 +1224,9 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
 		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
 
+	if (DISPLAY_VER(dev_priv) >= 30 && !first_mst_stream)
+		intel_ddi_config_transcoder_func(encoder, pipe_config);
+
 	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 }
-- 
2.44.2

