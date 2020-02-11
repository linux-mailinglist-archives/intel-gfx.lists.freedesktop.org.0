Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A90D1598C3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 19:34:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B286F41A;
	Tue, 11 Feb 2020 18:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 047FD6F41B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 18:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581446069;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PZq825i0coPwIgxr8swXpBmvjatE/H/TFgDNYkwo1tw=;
 b=U7/HwAYEj8POuoVDB6ouzeK7eEULU0TkppwiPV5HAQVWnofDcic0sDA3BLEkw/wmJC62vn
 Eqvxad41BK1EQSsxGQTl/w8awGrGrX100b6kOMEmj8F29qP+I1MGzSpQijIO9StfHT0eVA
 2Rxq9W/31Aud2PIgwvy7P9WTP9Yfufw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-173-xhF_iuDPOMutTJmjH0YFwQ-1; Tue, 11 Feb 2020 13:34:22 -0500
X-MC-Unique: xhF_iuDPOMutTJmjH0YFwQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E07F9800D48;
 Tue, 11 Feb 2020 18:34:19 +0000 (UTC)
Received: from Ruby.bss.redhat.com (dhcp-10-20-1-196.bss.redhat.com
 [10.20.1.196])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 48E555C100;
 Tue, 11 Feb 2020 18:34:18 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 11 Feb 2020 13:33:47 -0500
Message-Id: <20200211183358.157448-3-lyude@redhat.com>
In-Reply-To: <20200211183358.157448-1-lyude@redhat.com>
References: <20200211183358.157448-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Force DPCD backlight mode on
 X1 Extreme 2nd Gen 4K AMOLED panel
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@intel.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The X1 Extreme is one of the systems that lies about which backlight
interface that it uses in its VBIOS as PWM backlight controls don't work
at all on this machine. It's possible that this panel could be one of
the infamous ones that can switch between PWM mode and DPCD backlight
control mode, but we haven't gotten any more details on this from Lenovo
just yet. For the time being though, making sure the backlight 'just
works' is a bit more important.

So, add a quirk to force DPCD backlight controls on for these systems
based on EDID (since this panel doesn't appear to fill in the device ID).
Hopefully in the future we'll figure out a better way of probing this.

Signed-off-by: Lyude Paul <lyude@redhat.com>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_dp_helper.c               |  4 +++
 .../drm/i915/display/intel_dp_aux_backlight.c | 25 ++++++++++++++++---
 include/drm/drm_dp_helper.h                   | 10 ++++++++
 3 files changed, 35 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index db23308f4d8b..a39c3cdacb20 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -1236,6 +1236,10 @@ struct edid_quirk {
  * DP quirks in such cases.
  */
 static const struct edid_quirk edid_quirk_list[] = {
+	/* Optional 4K AMOLED panel in the ThinkPad X1 Extreme 2nd Generation
+	 * only supports DPCD backlight controls
+	 */
+	{ MFG(0x4c, 0x83), PROD_ID(0x41, 0x41), BIT(DP_QUIRK_FORCE_DPCD_BACKLIGHT) },
 };
 
 #undef MFG
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 48276237b362..35a19c0314fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -328,15 +328,32 @@ intel_dp_aux_display_control_capable(struct intel_connector *connector)
 int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
 {
 	struct intel_panel *panel = &intel_connector->panel;
-	struct drm_i915_private *dev_priv = to_i915(intel_connector->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(intel_connector->encoder);
+	struct drm_device *dev = intel_connector->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
 
 	if (i915_modparams.enable_dpcd_backlight == 0 ||
-	    (i915_modparams.enable_dpcd_backlight == -1 &&
-	    dev_priv->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE))
+	    !intel_dp_aux_display_control_capable(intel_connector))
 		return -ENODEV;
 
-	if (!intel_dp_aux_display_control_capable(intel_connector))
+	/*
+	 * There are a lot of machines that don't advertise the backlight
+	 * control interface to use properly in their VBIOS, :\
+	 */
+	if (dev_priv->vbt.backlight.type !=
+	    INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
+	    !drm_dp_has_quirk(&intel_dp->desc, intel_dp->edid_quirks,
+			      DP_QUIRK_FORCE_DPCD_BACKLIGHT)) {
+		DRM_DEV_INFO(dev->dev,
+			     "Panel advertises DPCD backlight support, but "
+			     "VBT disagrees. If your backlight controls "
+			     "don't work try booting with "
+			     "i915.enable_dpcd_backlight=1. If your machine "
+			     "needs this, please file a _new_ bug report on "
+			     "bugs.freedesktop.org against DRI -> "
+			     "DRM/Intel\n");
 		return -ENODEV;
+	}
 
 	panel->backlight.setup = intel_dp_aux_setup_backlight;
 	panel->backlight.enable = intel_dp_aux_enable_backlight;
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 7f5dd2ee4a94..c5580e988826 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1535,6 +1535,16 @@ enum drm_dp_quirk {
 	 * The DSC caps can be read from the physical aux instead.
 	 */
 	DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD,
+	/**
+	 * @DP_QUIRK_FORCE_DPCD_BACKLIGHT:
+	 *
+	 * The device is telling the truth when it says that it uses DPCD
+	 * backlight controls, even if the system's firmware disagrees. This
+	 * quirk should be checked against both the ident and panel EDID.
+	 * When present, the driver should honor the DPCD backlight
+	 * capabilities advertised.
+	 */
+	DP_QUIRK_FORCE_DPCD_BACKLIGHT,
 };
 
 /**
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
