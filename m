Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DDC1F4938
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 00:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 783CD89124;
	Tue,  9 Jun 2020 22:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB7A89124
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 22:06:23 +0000 (UTC)
IronPort-SDR: MToGNJsHjpfYNCXa2/OP56Ap61JyXKf8yos63ltiLiYd8Eix9iTuFkn9ARaQm+uOyV0pKcVVqD
 /hkpAaTRpD5Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 15:06:23 -0700
IronPort-SDR: CTkdF2taw1QtIeuSj19R+9oHkdPkc71XrFT5Rvz9Nz7ql0UKfKMrvEKd6OgrA6qYTJxk3R59VW
 n/FZMZxXz8/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,493,1583222400"; d="scan'208";a="271027312"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 09 Jun 2020 15:06:22 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jun 2020 01:06:16 +0300
Message-Id: <20200609220616.6015-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/icl: Disable DIP on MST ports with the
 transcoder clock still on
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to BSpec the Data Island Packet should be disabled after
disabling the transcoder, but before the transcoder clock select is set
to none. On an ICL RVP, daisy-chained MST config not following this
leads to a hang with the following MCE when disabling the output:

[  870.948739] mce: [Hardware Error]: CPU 0: Machine Check Exception: 5 Bank 6: ba00000011000402
[  871.019212] mce: [Hardware Error]: RIP !INEXACT! 10:<ffffffff81aca652> {poll_idle+0x92/0xb0}
[  871.019212] mce: [Hardware Error]: TSC 135a261fe61
[  871.019212] mce: [Hardware Error]: PROCESSOR 0:706e5 TIME 1591739604 SOCKET 0 APIC 0 microcode 20
[  871.019212] mce: [Hardware Error]: Run the above through 'mcelog --ascii'
[  871.019212] mce: [Hardware Error]: Machine check: Processor context corrupt
[  871.019212] Kernel panic - not syncing: Fatal machine check
[  871.019212] Kernel Offset: disabled

Bspec: 4287

Fixes: fa37a213275c ("drm/i915: Stop sending DP SDPs on ddi disable")
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 4 +++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 ++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 96eaa4b39c68..50ccc6e30dc1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3510,7 +3510,9 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 					  INTEL_OUTPUT_DP_MST);
 	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
 
-	intel_dp_set_infoframes(encoder, false, old_crtc_state, old_conn_state);
+	if (!is_mst)
+		intel_dp_set_infoframes(encoder, false,
+					old_crtc_state, old_conn_state);
 
 	/*
 	 * Power down sink before disabling the port, otherwise we end
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d18b406f2a7d..f29e51ce489c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -397,6 +397,14 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	 */
 	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port,
 				     false);
+
+	/*
+	 * BSpec 4287: disable DIP after the transcoder is disabled and before
+	 * the transcoder clock select is set to none.
+	 */
+	if (last_mst_stream)
+		intel_dp_set_infoframes(&intel_dig_port->base, false,
+					old_crtc_state, NULL);
 	/*
 	 * From TGL spec: "If multi-stream slave transcoder: Configure
 	 * Transcoder Clock Select to direct no clock to the transcoder"
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
