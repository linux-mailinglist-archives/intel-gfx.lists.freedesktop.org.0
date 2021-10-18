Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5364313B8
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 11:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F656E9C1;
	Mon, 18 Oct 2021 09:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D5796E9C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 09:42:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="228092153"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="228092153"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 02:42:01 -0700
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="493516713"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 02:42:00 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 stable@vger.kernel.org
Date: Mon, 18 Oct 2021 12:41:50 +0300
Message-Id: <20211018094154.1407705-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211018094154.1407705-1-imre.deak@intel.com>
References: <20211018094154.1407705-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/dp: Ensure sink rate values are
 always valid
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

Atm, there are no sink rate values set for DP (vs. eDP) sinks until the
DPCD capabilities are successfully read from the sink. During this time
intel_dp->num_common_rates is 0 which can lead to a

intel_dp->common_rates[-1]    (*)

access, which is an undefined behaviour, in the following cases:

- In intel_dp_sync_state(), if the encoder is enabled without a sink
  connected to the encoder's connector (BIOS enabled a monitor, but the
  user unplugged the monitor until the driver loaded).
- In intel_dp_sync_state() if the encoder is enabled with a sink
  connected, but for some reason the DPCD read has failed.
- In intel_dp_compute_link_config() if modesetting a connector without
  a sink connected on it.
- In intel_dp_compute_link_config() if modesetting a connector with a
  a sink connected on it, but before probing the connector first.

To avoid the (*) access in all the above cases, make sure that the sink
rate table - and hence the common rate table - is always valid, by
setting a default minimum sink rate when registering the connector
before anything could use it.

I also considered setting all the DP link rates by default, so that
modesetting with higher resolution modes also succeeds in the last two
cases above. However in case a sink is not connected that would stop
working after the first modeset, due to the LT fallback logic. So this
would need more work, beyond the scope of this fix.

As I mentioned in the previous patch, I don't think the issue this patch
fixes is user visible, however it is an undefined behaviour by
definition and triggers a BUG() in CONFIG_UBSAN builds, hence CC:stable.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4297
References: https://gitlab.freedesktop.org/drm/intel/-/issues/4298
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: <stable@vger.kernel.org>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 23de500d56b52..153ae944a354b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -120,6 +120,12 @@ bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
 	return crtc_state->port_clock >= 1000000;
 }
 
+static void intel_dp_set_default_sink_rates(struct intel_dp *intel_dp)
+{
+	intel_dp->sink_rates[0] = 162000;
+	intel_dp->num_sink_rates = 1;
+}
+
 /* update sink rates from dpcd */
 static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
 {
@@ -5003,6 +5009,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	}
 
 	intel_dp_set_source_rates(intel_dp);
+	intel_dp_set_default_sink_rates(intel_dp);
+	intel_dp_set_common_rates(intel_dp);
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
-- 
2.27.0

