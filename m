Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EF8A467CE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 18:18:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DF910E980;
	Wed, 26 Feb 2025 17:18:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lzTkzT33";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9742B10E96D;
 Wed, 26 Feb 2025 17:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740590310; x=1772126310;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=826KuhLGZx3v5DLdmP0iWIW8pKL1Mmz7qP5Yo5UB55c=;
 b=lzTkzT33IO448SL9nrfHzkEF4uE1gVurWdMld0jG0x3AS/tnUGWHZESa
 Z47CRMxeJ3WOe5fXU0JSB4xiYVShB3K1Cj1N9397ooJUbXrHn4AynmKat
 MqZnjAnCv0Qd29iOQMLqBl0LfUeCaSK4GnX+xButwwRy2Ro0sQ4Zi91Wp
 ZFVHQa7qw34QsonkXiCT+nnN4+ThLKQXNSIFN6+SiwGZFLUUVzEb6yszQ
 7BIV2IzagIyHYNXJ4ZEuunOhsQP5oQ3MqarvHtiVwWE5eWhUvR4AOpA/u
 jPRAH1bR7uUl5q2TqURIvc4ui8NdFWQPF+pqwVrUBeIIEdZ9lmjJ3KcEf g==;
X-CSE-ConnectionGUID: Y179guwMQyuU2CII4Ykp2g==
X-CSE-MsgGUID: g+g8DZVcSsmn8Q6Rf/9CnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="40628473"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="40628473"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:26 -0800
X-CSE-ConnectionGUID: lJMZqc7mTlG/GWGuEiA7ew==
X-CSE-MsgGUID: GgxY4ORNS12Vlo1OLSdtMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="121371341"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:25 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 3/5] drm/i915/dp: Fix link training interrupted by a short
 HPD pulse
Date: Wed, 26 Feb 2025 19:19:21 +0200
Message-ID: <20250226171924.2646997-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250226171924.2646997-1-imre.deak@intel.com>
References: <20250226171924.2646997-1-imre.deak@intel.com>
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

During Display Port link training the handling of HPD pulses should be
prevented, as that handling can interfere with the link training:

- Accessing DPCD registers outside the range of link training registers
  are not allowed by the Standard (see DP Standard v2.1, 3.5.2.16.1,
  3.6.6.1). The pulse handler reads the DPRX capability registers, which
  are outside of the allowed range.
- Switching of the LTTPR transparent/non-transparent mode may reset the
  LTTPRs on the link, thus aborting any ongoing link training. The pulse
  handler does set the LTTPR mode, thus it could unexpectedly abort the
  ongoing link training.

Block/unblock the HPD pulse handling for the duration of the link
training to prevent the above DPCD register accesses / LTTPR mode
change.

Apart from the above scenarios, there are other ways a non-link training
DPCD register could be accessed during link training: via the DRM AUX
device node, or via DPCD register probing (as performed by
drm_dp_dpcd_probe()). These will be addressed by a follow-up change.

v2: Rebase on the intel_hpd_suspend/resume -> intel_hpd_block/unblock()
    rename change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 66fcd90f00282..ce0601a4f0e20 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1109,6 +1109,8 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+
 	intel_dp->link_trained = true;
 
 	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
@@ -1119,6 +1121,8 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	    wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
 	}
+
+	intel_hpd_unblock(encoder);
 }
 
 static bool
@@ -1601,7 +1605,11 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	 * non-transparent mode. During an earlier LTTPR detection this
 	 * could've been prevented by an active link.
 	 */
-	int lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
+	int lttpr_count;
+
+	intel_hpd_block(encoder);
+
+	lttpr_count = intel_dp_init_lttpr_and_dprx_caps(intel_dp);
 
 	if (lttpr_count < 0)
 		/* Still continue with enabling the port and link training. */
-- 
2.44.2

