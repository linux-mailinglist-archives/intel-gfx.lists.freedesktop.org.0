Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 973B1798185
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 07:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28FD310E867;
	Fri,  8 Sep 2023 05:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B98510E867
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 05:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694150731; x=1725686731;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OPZT8GaB+fP5mbtLrKymx3LDa0nSlMiRUxXt2QHP79A=;
 b=a4jL7sRqXEsFLKBS9x0ZPmz92z777KpRqwU7fXgoW88xZ8T9DQkXzNeb
 ZzWxvI0dS2PszBBQ2hyFhopLQm3TUo84GslL9XBagl2LhnRcWD6jJzy1d
 ln9RNW/wqOwqZawQwxRrQbu7h/+rMyFZ88KC11epRjNFBE8TI+P087ZoS
 lZ9hT+4K0yMFRzVRX42F5tYFo2ft40e9ZEC697hiJ5Xo1LYDeKlVYw2tT
 +HmgYV39vaRuP6iuYow1qlGn3XNVFOrcPxGYi1jomP0KZjywOn83vuGYj
 gyEFgiz3rZK7/c+BOcw0fMOMJLQ6ovScmH0lcwXcdxDTr0YcNTOQjbw2n Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362625040"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="362625040"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 22:25:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="885516851"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="885516851"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 07 Sep 2023 22:25:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Sep 2023 08:25:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Sep 2023 08:25:27 +0300
Message-ID: <20230908052527.685-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230907121736.23734-1-ville.syrjala@linux.intel.com>
References: <20230907121736.23734-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Only check eDP HPD when AUX CH is
 shared
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently Acer Chromebook C740 (BDW-ULT) doesn't have the
eDP HPD line properly connected, and thus fails the new
HPD check during eDP probe. The result is that we lose the
eDP output.

I suspect all such machines would all be Chromebooks or other
Linux exclusive systems as the Windows driver likely wouldn't
work either. I did check a few other BDW machines here and
those do have eDP HPD connected, one of them even is a
different Chromebook (Samus).

To account for these funky machines let's skip the HPD check when
it looks like the eDP port is the only one using that specific AUX
channel. In case of multiple ports sharing the same AUX CH (eg. on
Asrock B250M-HDV) we still do the check and thus should correctly
ignore the eDP port in favor of the other DP port (usually a DP->VGA
converter).

v2: Don't oops during list iteration

Cc: stable@vger.kernel.org
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9264
Fixes: cfe5bdfb27fa ("drm/i915: Check HPD live state during eDP probe")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c   |  7 ++++++-
 3 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 858c959f7bab..f735b035436c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3540,6 +3540,27 @@ enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata)
 	return map_aux_ch(devdata->i915, devdata->child.aux_channel);
 }
 
+bool intel_bios_dp_has_shared_aux_ch(const struct intel_bios_encoder_data *devdata)
+{
+	struct drm_i915_private *i915;
+	u8 aux_channel;
+	int count = 0;
+
+	if (!devdata || !devdata->child.aux_channel)
+		return false;
+
+	i915 = devdata->i915;
+	aux_channel = devdata->child.aux_channel;
+
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+		if (intel_bios_encoder_supports_dp(devdata) &&
+		    aux_channel == devdata->child.aux_channel)
+			count++;
+	}
+
+	return count > 1;
+}
+
 int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->child.iboost)
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 9680e3e92bb5..49e24b7cf675 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -273,6 +273,7 @@ enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata);
 int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata);
 int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata);
 int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_dp_has_shared_aux_ch(const struct intel_bios_encoder_data *devdata);
 int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *devdata);
 int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata);
 int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2206b45bc78c..aa5f602b56fb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5889,8 +5889,13 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	/*
 	 * VBT and straps are liars. Also check HPD as that seems
 	 * to be the most reliable piece of information available.
+	 *
+	 * ... expect on devices that forgot to hook HPD up for eDP
+	 * (eg. Acer Chromebook C710), so we'll check it only if multiple
+	 * ports are attempting to use the same AUX CH, according to VBT.
 	 */
-	if (!intel_digital_port_connected(encoder)) {
+	if (intel_bios_dp_has_shared_aux_ch(encoder->devdata) &&
+	    !intel_digital_port_connected(encoder)) {
 		/*
 		 * If this fails, presume the DPCD answer came
 		 * from some other port using the same AUX CH.
-- 
2.41.0

