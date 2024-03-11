Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B7987826D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 15:56:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9548F112AE3;
	Mon, 11 Mar 2024 14:56:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N1mBHXCE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA05F112AE3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 14:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710168961; x=1741704961;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L+wKJ0IZl17CfwkedhAeCI/Oubpk1Z7mQR4wWcisA2w=;
 b=N1mBHXCEgqlIqSso8rgXSPRZ8ekfPP1pXCFkppPs0axA57rDWWoIXtrb
 T4st2cfbQ2MHmJvX/0mnBJFBZFgIu7i5/M+o0sFeKyOsGMcvGglC0NYlP
 23T+T/EPTYf3HVFb9kYGbptzTLnEXq2Gm02xGKtonIRkgkGeW+Px4aj1f
 QUASR/6lGCNg/dWUShU5vtiCwjgMEMMmi6Q+BtEarp+Sv/bjPnVdfHYz/
 TKUban/ZbwXzr54cEfbUR1H2Wc1kcDrtyr1AS6zEE6BbRYCdbute/H8fx
 AhliNS4skZNFoGDdP8sdPojlrzSgtrk9QCm17sqhedn/mK5KzF/TEP+rF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="4948322"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="4948322"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 07:56:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="15813384"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 07:55:59 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/dp: Fix DSC state HW readout for SST connectors
Date: Mon, 11 Mar 2024 16:56:26 +0200
Message-ID: <20240311145626.2454923-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

Commit a62e14598150 ("drm/i915/dp: Fix connector DSC HW state readout")
moved the DSC HW state readout to a connector specific hook, however
only added the hook for DP MST connectors, not for DP SST ones. Fix
adding the hook for SST connectors as well.

This fixes the following warn on platforms where BIOS enables DSC:

[   66.208601] i915 0000:00:02.0: drm_WARN_ON(!connector->dp.dsc_decompression_aux || !connector->dp.dsc_decompression_enabled)
...
[   66.209024] RIP: 0010:intel_dp_sink_disable_decompression+0x76/0x110 [i915]
...
[   66.209333]  ? intel_dp_sink_disable_decompression+0x76/0x110 [i915]
...
[   66.210068]  intel_disable_ddi+0x135/0x1d0 [i915]
[   66.210302]  intel_encoders_disable+0x9b/0xc0 [i915]
[   66.210565]  hsw_crtc_disable+0x153/0x170 [i915]
[   66.210823]  intel_old_crtc_state_disables+0x52/0xb0 [i915]
[   66.211107]  intel_atomic_commit_tail+0x5cf/0x1330 [i915]
[   66.211366]  intel_atomic_commit+0x39d/0x3f0 [i915]
[   66.211612]  ? intel_atomic_commit+0x39d/0x3f0 [i915]
[   66.211872]  drm_atomic_commit+0x9d/0xd0 [drm]
[   66.211921]  ? __pfx___drm_printfn_info+0x10/0x10 [drm]
[   66.211975]  intel_initial_commit+0x1a8/0x260 [i915]
[   66.212234]  intel_display_driver_probe+0x2a/0x80 [i915]
[   66.212479]  i915_driver_probe+0x7c6/0xc60 [i915]
[   66.212664]  ? drm_privacy_screen_get+0x168/0x190 [drm]
[   66.212711]  i915_pci_probe+0xe2/0x1c0 [i915]

Fixes: a62e14598150 ("drm/i915/dp: Fix connector DSC HW state readout")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f98ef4b42a448..af7ca00e9bc0a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6557,6 +6557,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
 	else
 		intel_connector->get_hw_state = intel_connector_get_hw_state;
+	intel_connector->sync_state = intel_dp_connector_sync_state;
 
 	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
 		intel_dp_aux_fini(intel_dp);
-- 
2.43.3

