Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADC05AA87A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 09:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 203F110E77E;
	Fri,  2 Sep 2022 07:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F358410E77A
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 07:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662102203; x=1693638203;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2kEVMerJzzNBHXgKnx0r6fq6Mc/Ic+VfiRCxqauUitY=;
 b=YdpH+SCbQr8R9cmRyU/VJf24CJnCJq5aJbwmpdlVPudA9Y/bP2LWJmkO
 Tc82GG2HD9T0sYDJ0OwRZM9LXeViq1wqA4WJZ1Bda7Usniv1li/TUcJDf
 IBw2o9yZR3Fz6XZwCBPglc0r1jI0NbrJjw2QXXQlXfU0jMyD7U2VMCg1E
 IdtCRBhUGP2tQ/x9S5NfBH8xkya76iGscyMLcOxetHAAyYmpl1Pmb/ahq
 NjM8pK5FLcXyt9KvahrfCNDEnon59S1SmmkmOUAkPPrpcEr7l7DqszjOu
 DWAhgKI3C0nqUnC3+JnMzJNv9eReK0r/KaUKdlCa92n462fvH9SiaRu+l w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="297194819"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="297194819"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 00:03:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="716417089"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 02 Sep 2022 00:03:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Sep 2022 10:03:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Sep 2022 10:03:18 +0300
Message-Id: <20220902070319.15395-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Implement WaEdpLinkRateDataReload
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

A lot of modern laptops use the Parade PS8461E MUX for eDP
switching. The MUX can operate in jitter cleaning mode or
redriver mode, the first one resulting in higher link
quality. The jitter cleaning mode needs to know the link
rate used and the MUX achieves this by snooping the
LINK_BW_SET, LINK_RATE_SELECT and SUPPORTED_LINK_RATES
DPCD accesses.

When the MUX is powered down (seems this can happen whenever
the display is turned off) it loses track of the snooped
link rates so when we do the LINK_RATE_SELECT write it no
longer knowns which link rate we're selecting, and thus it
falls back to the lower quality redriver mode. This results
in unstable high link rates (eg. usually 8.1Gbps link rate
no longer works correctly).

In order to avoid all that let's re-snoop SUPPORTED_LINK_RATES
from the sink at the start of every link training.

Unfortunately we don't have a way to detect the presence of
the MUX. It looks like the set of laptops equipped with this
MUX is fairly large and contains devices from multiple
manufacturers. It may also still be growing with new models.
So a quirk doesn't seem like a very easily maintainable
option, thus we shall attempt to do this unconditionally on
all machines that use LINK_RATE_SELECT. Hopefully this extra
DPCD read doesn't cause issues for any unaffected machine.
If that turns out to be the case we'll need to convert this
into a quirk in the future.

Cc: stable@vger.kernel.org
Cc: Jason A. Donenfeld <Jason@zx2c4.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6205
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9feaf1a589f3..d213d8ad1ea5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -671,6 +671,28 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
 	intel_dp_compute_rate(intel_dp, crtc_state->port_clock,
 			      &link_bw, &rate_select);
 
+	/*
+	 * WaEdpLinkRateDataReload
+	 *
+	 * Parade PS8461E MUX (used on varius TGL+ laptops) needs
+	 * to snoop the link rates reported by the sink when we
+	 * use LINK_RATE_SET in order to operate in jitter cleaning
+	 * mode (as opposed to redriver mode). Unfortunately it
+	 * loses track of the snooped link rates when powered down,
+	 * so we need to make it re-snoop often. Without this high
+	 * link rates are not stable.
+	 */
+	if (!link_bw) {
+		struct intel_connector *connector = intel_dp->attached_connector;
+		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
+
+		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Reloading eDP link rates\n",
+			    connector->base.base.id, connector->base.name);
+
+		drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
+				 sink_rates, sizeof(sink_rates));
+	}
+
 	if (link_bw)
 		drm_dbg_kms(&i915->drm,
 			    "[ENCODER:%d:%s] Using LINK_BW_SET value %02x\n",
-- 
2.35.1

