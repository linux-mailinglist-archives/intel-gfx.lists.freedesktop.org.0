Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F97644EEE0
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 22:51:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A21A6E3D0;
	Fri, 12 Nov 2021 21:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3BC36E283
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 21:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636753852;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=5Y/KeYMkZrPqzaUQAesZ7C9fuu2vX4Qc2wHFhCuxHro=;
 b=Z0BH/tbeR/KyzqJ6Hu+VDmz83bALBxuOSbGHz3kY+51EqZ3bUhS/0HswSGq1wlWRo1UjHK
 0lpZRWddkMsAAorjKjW8fBhGE9Do5gWMJbpkYxCR5hjD9iSNdsm4bv/rJaB22rgfXY8a8V
 KcA/yCWpEJgcbz4XUeYscS93KlTBwRc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-141-F1BMakDrPAylDQ6GhAQ91w-1; Fri, 12 Nov 2021 16:50:48 -0500
X-MC-Unique: F1BMakDrPAylDQ6GhAQ91w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E100806668;
 Fri, 12 Nov 2021 21:50:45 +0000 (UTC)
Received: from emerald.redhat.com (unknown [10.22.34.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 589BE19729;
 Fri, 12 Nov 2021 21:50:26 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Nov 2021 16:50:11 -0500
Message-Id: <20211112215016.270267-1-lyude@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Perform 30ms delay after source
 OUI write
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
Cc: "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Dave Airlie <airlied@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While working on supporting the Intel HDR backlight interface, I noticed
that there's a couple of laptops that will very rarely manage to boot up
without detecting Intel HDR backlight support - even though it's supported
on the system. One example of such a laptop is the Lenovo P17 1st
generation.

Following some investigation Ville Syrjälä did through the docs they have
available to them, they discovered that there's actually supposed to be a
30ms wait after writing the source OUI before we begin setting up the rest
of the backlight interface.

This seems to be correct, as adding this 30ms delay seems to have
completely fixed the probing issues I was previously seeing. So - let's
start performing a 30ms wait after writing the OUI, which we do in a manner
similar to how we keep track of PPS delays (e.g. record the timestamp of
the OUI write, and then wait for however many ms are left since that
timestamp right before we interact with the backlight) in order to avoid
waiting any longer then we need to. As well, this also avoids us performing
this delay on systems where we don't end up using the HDR backlight
interface.

Signed-off-by: Lyude Paul <lyude@redhat.com>
Fixes: 4a8d79901d5b ("drm/i915/dp: Enable Intel's HDR backlight interface (only SDR for now)")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.12+
---
 drivers/gpu/drm/i915/display/intel_display_types.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_dp.c               |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 11 +++++++++++
 3 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ea1e8a6e10b0..b9c967837872 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1653,6 +1653,9 @@ struct intel_dp {
 	struct intel_dp_pcon_frl frl;
 
 	struct intel_psr psr;
+
+	/* When we last wrote the OUI for eDP */
+	unsigned long last_oui_write;
 };
 
 enum lspcon_vendor {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0a424bf69396..77d9a9390c1e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -29,6 +29,7 @@
 #include <linux/i2c.h>
 #include <linux/notifier.h>
 #include <linux/slab.h>
+#include <linux/timekeeping.h>
 #include <linux/types.h>
 
 #include <asm/byteorder.h>
@@ -2010,6 +2011,8 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
 
 	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
 		drm_err(&i915->drm, "Failed to write source OUI\n");
+
+	intel_dp->last_oui_write = jiffies;
 }
 
 /* If the device supports it, try to set the power state appropriately */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 569d17b4d00f..2c35b999ec2c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -96,6 +96,13 @@
 #define INTEL_EDP_BRIGHTNESS_OPTIMIZATION_1                            0x359
 
 /* Intel EDP backlight callbacks */
+static void
+wait_for_oui(struct drm_i915_private *i915, struct intel_dp *intel_dp)
+{
+	drm_dbg_kms(&i915->drm, "Performing OUI wait\n");
+	wait_remaining_ms_from_jiffies(intel_dp->last_oui_write, 30);
+}
+
 static bool
 intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 {
@@ -106,6 +113,8 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 	int ret;
 	u8 tcon_cap[4];
 
+	wait_for_oui(i915, intel_dp);
+
 	ret = drm_dp_dpcd_read(aux, INTEL_EDP_HDR_TCON_CAP0, tcon_cap, sizeof(tcon_cap));
 	if (ret != sizeof(tcon_cap))
 		return false;
@@ -204,6 +213,8 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 	int ret;
 	u8 old_ctrl, ctrl;
 
+	wait_for_oui(i915, intel_dp);
+
 	ret = drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, &old_ctrl);
 	if (ret != 1) {
 		drm_err(&i915->drm, "Failed to read current backlight control mode: %d\n", ret);
-- 
2.31.1

