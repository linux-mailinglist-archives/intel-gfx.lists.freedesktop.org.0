Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1AEB00CE1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 22:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62DFF10E95E;
	Thu, 10 Jul 2025 20:17:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EqcPETwL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D63E10E95E;
 Thu, 10 Jul 2025 20:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752178662; x=1783714662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rZes+/8fpAu0yhNUNhNbpkcM01QBGNkboyFa9gTovFk=;
 b=EqcPETwL8Hc5yRW1Xdd+b2uqVL8xI8kqy5PT91KK9ZhhMkKLrWTtrag9
 o8sh2u7Kcu2yKWhNuTv/sYCV9b6O6re0NTgO97ycjkhtMzvl5H5IIVjKi
 x85f9F8a6YKUuPnBwNpWOdyVdCrYHYicnVqIy5D6X17rnxFvEW5MswLAl
 QtZf24FvKtF0cOf1O3HsFrdlcEfGsYIqO0iw7HOgxlGYR3YdeN6VP3Qv8
 GQOBJRG0gBq6m91ltYoG06Pby8CI3mljXSz1A5TkZM0KQ74b7fPKXOfJ1
 8AkkqAUDij/m4n5+nVnMSX1e1xCJScKSQo8sH9Yv0uPE4QfjnbCFtzbKq A==;
X-CSE-ConnectionGUID: k6OUzi2dQlex6Yze0ZOzRg==
X-CSE-MsgGUID: enWl43A6SBOkpBLzMiw07A==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54444588"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="54444588"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 13:17:42 -0700
X-CSE-ConnectionGUID: o3yzDFvwS3eecHr9rmw8qA==
X-CSE-MsgGUID: QhsVaY/QTWeFgoEi52D/pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="161877628"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.160])
 by orviesa005.jf.intel.com with SMTP; 10 Jul 2025 13:17:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jul 2025 23:17:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH 6/7] drm/i915/dp: Implement .set_idle_link_train() for everyone
Date: Thu, 10 Jul 2025 23:17:17 +0300
Message-ID: <20250710201718.25310-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
References: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

All platforms are capable of explicitly transmitting the idle
pattern. Implement it for everyone (so far it as implemented
only for HSW+).

The immediate benefit is that we gain the possibility of
implementing the POST_LT_ADJ_REQ sequence for all platforms.

Another potential future use would be a pseudo port sync mode on
pre-BDW where we attempt to sync up multiple ports/pipes by trying
to turn on the transcoders at the same time, and switching the
links to normal pixel transmission at the same time.

I'm not 100% sure the hardware is guaranteed to transmit the
required number of idle patterns (5) when switching away from
training pattern (either via explicit idle pattern, or straight
to the normal pixel output). Would be nice to confirm that at
some point, but for now let's assume it happens correctly in
both cases.

v2: Elaborate a bit more on the min required idle patterns

Tested-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c | 33 +++++++++++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index b54edf0d1c23..846dbd8ae931 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -600,6 +600,19 @@ cpt_set_link_train(struct intel_dp *intel_dp,
 	intel_de_posting_read(display, intel_dp->output_reg);
 }
 
+static void
+cpt_set_idle_link_train(struct intel_dp *intel_dp,
+			const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	intel_dp->DP &= ~DP_LINK_TRAIN_MASK_CPT;
+	intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE_CPT;
+
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(display, intel_dp->output_reg);
+}
+
 static void
 g4x_set_link_train(struct intel_dp *intel_dp,
 		   const struct intel_crtc_state *crtc_state,
@@ -628,6 +641,19 @@ g4x_set_link_train(struct intel_dp *intel_dp,
 	intel_de_posting_read(display, intel_dp->output_reg);
 }
 
+static void
+g4x_set_idle_link_train(struct intel_dp *intel_dp,
+			const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	intel_dp->DP &= ~DP_LINK_TRAIN_MASK;
+	intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE;
+
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(display, intel_dp->output_reg);
+}
+
 static void intel_dp_enable_port(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state)
 {
@@ -1331,10 +1357,13 @@ bool g4x_dp_init(struct intel_display *display,
 	intel_encoder->audio_disable = g4x_dp_audio_disable;
 
 	if ((display->platform.ivybridge && port == PORT_A) ||
-	    (HAS_PCH_CPT(display) && port != PORT_A))
+	    (HAS_PCH_CPT(display) && port != PORT_A)) {
 		dig_port->dp.set_link_train = cpt_set_link_train;
-	else
+		dig_port->dp.set_idle_link_train = cpt_set_idle_link_train;
+	} else {
 		dig_port->dp.set_link_train = g4x_set_link_train;
+		dig_port->dp.set_idle_link_train = g4x_set_idle_link_train;
+	}
 
 	if (display->platform.cherryview)
 		intel_encoder->set_signal_levels = chv_set_signal_levels;
-- 
2.49.0

