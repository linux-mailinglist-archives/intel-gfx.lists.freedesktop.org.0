Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1287A479091
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 16:54:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D42110E4BC;
	Fri, 17 Dec 2021 15:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DDC310E4BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 15:54:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="263951350"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="263951350"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 07:54:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="506807433"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 17 Dec 2021 07:54:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Dec 2021 17:54:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 17:54:02 +0200
Message-Id: <20211217155403.31477-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/bios: Nuke
 DEVICE_TYPE_DP_DUAL_MODE_BITS
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

Replace the DEVICE_TYPE_DP_DUAL_MODE_BITS stuff with just
a DP+HDMI check. The rest of the bits shouldn't really
matter anyway.

The slight change in behaviour here is that now we do look at
the DEVICE_TYPE_NOT_HDMI_OUTPUT bit (via
intel_bios_encoder_supports_hdmi()) when we previously ignored it.
The one platform we know that has problems with that bit is VLV.
But IIRC the problem was always that buggy VBTs basically never
set that bit. So that should be OK since all it would do is make
all DVI ports look like HDMI ports instead. Also can't imagine
there are many VLV machines with actual DVI ports in existence.

We still keep the rest of the dvo_port/aux_ch checks as we
can't trust that DP+HDMI device type equals DP++ due to
buggy VBTs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 11 -----------
 2 files changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index f5aa2c72b2fe..d1909ad28306 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2684,10 +2684,12 @@ bool intel_bios_is_port_edp(struct drm_i915_private *i915, enum port port)
 	return devdata && intel_bios_encoder_supports_edp(devdata);
 }
 
-static bool child_dev_is_dp_dual_mode(const struct child_device_config *child)
+static bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata)
 {
-	if ((child->device_type & DEVICE_TYPE_DP_DUAL_MODE_BITS) !=
-	    (DEVICE_TYPE_DP_DUAL_MODE & DEVICE_TYPE_DP_DUAL_MODE_BITS))
+	const struct child_device_config *child = &devdata->child;
+
+	if (!intel_bios_encoder_supports_dp(devdata) ||
+	    !intel_bios_encoder_supports_hdmi(devdata))
 		return false;
 
 	if (dvo_port_type(child->dvo_port) == DVO_PORT_DPA)
@@ -2707,7 +2709,7 @@ bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *i915,
 	const struct intel_bios_encoder_data *devdata =
 		intel_bios_encoder_data_lookup(i915, port);
 
-	return devdata && child_dev_is_dp_dual_mode(&devdata->child);
+	return devdata && intel_bios_encoder_supports_dp_dual_mode(devdata);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index c23582769f34..a39d6cfea87a 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -226,17 +226,6 @@ struct bdb_general_features {
 #define DEVICE_TYPE_DIGITAL_OUTPUT	(1 << 1)
 #define DEVICE_TYPE_ANALOG_OUTPUT	(1 << 0)
 
-#define DEVICE_TYPE_DP_DUAL_MODE_BITS \
-	(DEVICE_TYPE_INTERNAL_CONNECTOR |	\
-	 DEVICE_TYPE_MIPI_OUTPUT |		\
-	 DEVICE_TYPE_COMPOSITE_OUTPUT |		\
-	 DEVICE_TYPE_LVDS_SIGNALING |		\
-	 DEVICE_TYPE_TMDS_DVI_SIGNALING |	\
-	 DEVICE_TYPE_VIDEO_SIGNALING |		\
-	 DEVICE_TYPE_DISPLAYPORT_OUTPUT |	\
-	 DEVICE_TYPE_DIGITAL_OUTPUT |		\
-	 DEVICE_TYPE_ANALOG_OUTPUT)
-
 #define DEVICE_CFG_NONE		0x00
 #define DEVICE_CFG_12BIT_DVOB	0x01
 #define DEVICE_CFG_12BIT_DVOC	0x02
-- 
2.32.0

