Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FE23B9788
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 22:26:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB4006EC46;
	Thu,  1 Jul 2021 20:25:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58D7E6EC15;
 Thu,  1 Jul 2021 20:25:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="188998675"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="188998675"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:25:21 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="644564563"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:25:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 13:24:27 -0700
Message-Id: <20210701202427.1547543-54-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210701202427.1547543-1-matthew.d.roper@intel.com>
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 53/53] drm/i915/dg2: Configure PCON in DP
 pre-enable path
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Add the functions to configure HDMI2.1 pcon for DG2, before DP link
training.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5499a2975a0e..77f79f3269a1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2580,6 +2580,7 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	if (!is_mst)
 		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
 
+	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
 	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
 	/*
 	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
@@ -2587,6 +2588,8 @@ static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 * training
 	 */
 	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
+	intel_dp_check_frl_training(intel_dp);
+	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
 
 	/*
 	 * 5.h Follow DisplayPort specification training sequence (see notes for
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
