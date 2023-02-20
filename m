Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0B269D1A9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 17:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A89010E28E;
	Mon, 20 Feb 2023 16:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC1AC10E6FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 16:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676911641; x=1708447641;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Gx2YPnQmRkza64VzzBhvJR8HHmurR20EFBp/F/TTqvU=;
 b=jaWbMBW4XYBIB+WJPpDd43uC6X5CS1B5gVxhDK5u+piD8loR5Jpk15N0
 dQ7tD97beC01bdEH4ICzu3v/Iy6eU4VjZCYlk9RaBLmiDwzrnQ55MiPfI
 Drd+UlHl4w9e0GBTKBT180tig6aUe5v6U4LjTQ6PeLDwZAk68tgcvh+Ta
 AqHNJFg96TIMjle7c+ie+RcFyyGlu2OJmJvU/KjYX4fCO3El2eNJgrhE3
 AYEOCPVXZwuvePOENw3kfxSvSwjjJ+9MhtfZfCdHXrwkiPInfCFqsLC5X
 r/gUcYzaXqP/8MdC04XWqbKrtiiz8E9qPf3VXxUrT8qi9d/xExGp1VyIv g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="332446845"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="332446845"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 08:47:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="735183626"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="735183626"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 20 Feb 2023 08:47:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Feb 2023 18:47:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 18:47:18 +0200
Message-Id: <20230220164718.23117-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Get HDR DPCD refresh timeout from VBT
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

Grab the HDR DPCD refresh timeout (time we need to wait after
writing the sourc OUI before the HDR DPCD registers are ready)
from the VBT.

Windows doesn't even seem to have any default value for this,
which is perhaps a bit weird since the VBT value is documented
as TGL+ and I thought the HDR backlight stuff might already be
used on earlier platforms. To play it safe I left the old
hardcoded 30ms default in place. Digging through some internal
stuff that seems to have been a number given by the vendor for
one particularly slow TCON. Although I did see 50ms mentioned
somewhere as well.

Let's also include the value in the debug print to ease
debugging, and toss in the customary connector id+name as well.

The TGL Thinkpad T14 I have sets this to 0 btw. So the delay
is now gone on this machine:
 [CONNECTOR:308:eDP-1] Detected Intel HDR backlight interface version 1
 [CONNECTOR:308:eDP-1] Using Intel proprietary eDP backlight controls
 [CONNECTOR:308:eDP-1] SDR backlight is controlled through PWM
 [CONNECTOR:308:eDP-1] Using native PCH PWM for backlight control (controller=0)
 [CONNECTOR:308:eDP-1] Using AUX HDR interface for backlight control (range 0..496)
 [CONNECTOR:308:eDP-1] Performing OUI wait (0 ms)

Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 9 +++++++--
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index f35ef3675d39..f16887aed56d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1084,6 +1084,12 @@ parse_lfp_backlight(struct drm_i915_private *i915,
 		panel->vbt.backlight.min_brightness = entry->min_brightness;
 	}
 
+	if (i915->display.vbt.version >= 239)
+		panel->vbt.backlight.hdr_dpcd_refresh_timeout =
+			DIV_ROUND_UP(backlight_data->hdr_dpcd_refresh_timeout[panel_type], 100);
+	else
+		panel->vbt.backlight.hdr_dpcd_refresh_timeout = 30;
+
 	drm_dbg_kms(&i915->drm,
 		    "VBT backlight PWM modulation frequency %u Hz, "
 		    "active %s, min brightness %u, level %u, controller %u\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 748b0cd411fa..76f47ba3be45 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -326,6 +326,7 @@ struct intel_vbt_panel_data {
 	struct {
 		u16 pwm_freq_hz;
 		u16 brightness_precision_bits;
+		u16 hdr_dpcd_refresh_timeout;
 		bool present;
 		bool active_low_pwm;
 		u8 min_brightness;	/* min_brightness/255 of max */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b77bd4565864..3734e7567230 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2293,10 +2293,15 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
 
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
 {
+	struct intel_connector *connector = intel_dp->attached_connector;
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	drm_dbg_kms(&i915->drm, "Performing OUI wait\n");
-	wait_remaining_ms_from_jiffies(intel_dp->last_oui_write, 30);
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Performing OUI wait (%u ms)\n",
+		    connector->base.base.id, connector->base.name,
+		    connector->panel.vbt.backlight.hdr_dpcd_refresh_timeout);
+
+	wait_remaining_ms_from_jiffies(intel_dp->last_oui_write,
+				       connector->panel.vbt.backlight.hdr_dpcd_refresh_timeout);
 }
 
 /* If the device supports it, try to set the power state appropriately */
-- 
2.39.2

