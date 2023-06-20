Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5727372FC
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 19:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D7510E30A;
	Tue, 20 Jun 2023 17:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F3E910E193
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 17:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687282437; x=1718818437;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=s5CCt3i/mmwRRcGRY5BnTgqlKkSOzj1jKPCB6PpWtNk=;
 b=lLLg3D1Uc+pp5AhU8ZLFWpfWxpQy6jbdRS+b990veVNDUAO8BTCtnyvz
 oxMiNpVHWNoBqrJS9pREVgUTo+q4rgUVM/vyyDrakZXYaC6jiEoVRo+ZP
 N7swnwqdrIwiUp9ghel/HsffA2hYgU6s5OTigRvVwHF3NeVvE03gxdn5/
 tLENHlcJ49mlw8ehVXU6cDqL0Ih8fl4mcCZ/pT5ey2SMydxv8V0cnyME/
 GR6KtFx8EIB4G7leEYZv7lKdMGITFApP/j2MdZFxIq2qRPVCY1gcE3FkA
 sk1ksJj3fHW2OrHys7YtTD6IaqnQNuXXLvvIPIMcAuBPY+XVchk1BV2Cw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="363353792"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="363353792"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 10:32:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="804029156"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="804029156"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Jun 2023 10:32:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Jun 2023 20:32:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jun 2023 20:32:39 +0300
Message-Id: <20230620173242.26923-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
References: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/5] drm/i915: Only populate aux_ch is really
 needed
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

Mixing VBT based AUX CH with platform defaults seems like
a recipe for conflicts. Let's only populate AUX CH if we
absolutely need it, that is only if we are dealing with
a DP output or a TC port (which need it due to some power
well shenanigans).

TODO: double check that real VBTs do in fact populate
      the AUX CH for HDMI TC legacy ports...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c  |  1 -
 drivers/gpu/drm/i915/display/intel_ddi.c | 12 +++++++++++-
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index c1fd13bdc9d2..634b14116d9d 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -775,6 +775,5 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
 	intel_infoframe_init(dig_port);
 
-	dig_port->aux_ch = intel_dp_aux_ch(intel_encoder);
 	intel_hdmi_init_connector(dig_port, intel_connector);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6cb24a472a9b..662b5ceef3c8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4676,6 +4676,14 @@ static bool port_strap_detected(struct drm_i915_private *i915, enum port port)
 	}
 }
 
+static bool need_aux_ch(struct intel_encoder *encoder, bool init_dp)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	return init_dp || intel_phy_is_tc(i915, phy);
+}
+
 void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 {
 	struct intel_digital_port *dig_port;
@@ -4929,7 +4937,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
 	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
-	dig_port->aux_ch = intel_dp_aux_ch(encoder);
+
+	if (need_aux_ch(encoder, init_dp))
+		dig_port->aux_ch = intel_dp_aux_ch(encoder);
 
 	if (intel_phy_is_tc(dev_priv, phy)) {
 		bool is_legacy =
-- 
2.39.3

