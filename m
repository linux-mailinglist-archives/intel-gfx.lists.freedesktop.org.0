Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A324F7A3053
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Sep 2023 14:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1182210E096;
	Sat, 16 Sep 2023 12:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7079010E096
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Sep 2023 12:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1694868903;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xLeNALjUh/JmabhYFvjomc7Vv0HFotHbYwVbd/rgd5Y=;
 b=IhBZ4mGenZ7thjPZ1tP664R3K+4ACCObRyMrUXFsKOR57/tvFn/NJfTZB0jPipvbdMTf8Y
 Kj+MNeBwsFbAUQZ3aO6PrnqH/lPBLu6CnP4YXa3d3T/VHs/v8HH+5DQADHaSy20sillbwn
 x+k9QfrMzIGdmSmaR1fDrVnK4E6iGVU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-30-a19735HtP4qnH3hhy5w9Ng-1; Sat, 16 Sep 2023 08:54:59 -0400
X-MC-Unique: a19735HtP4qnH3hhy5w9Ng-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8C7E945921;
 Sat, 16 Sep 2023 12:54:58 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8393F40C6EA8;
 Sat, 16 Sep 2023 12:54:57 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Sat, 16 Sep 2023 14:54:52 +0200
Message-ID: <20230916125455.237325-2-hdegoede@redhat.com>
In-Reply-To: <20230916125455.237325-1-hdegoede@redhat.com>
References: <20230916125455.237325-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/vlv_dsi: Add DMI quirk for wrong
 panel modeline in BIOS on Asus TF103C (v2)
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
Cc: Hans de Goede <hdegoede@redhat.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Javier Martinez Canillas <javierm@redhat.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Vtotal is wrong in the BIOS supplied modeline for the DSI panel on
the Asus TF103C leading to the last line of the display being shown
as the first line.

Original: "1280x800": 60 67700 1280 1312 1328 1376 800 808 812 820 0x8 0xa
Fixed:    "1280x800": 60 67700 1280 1312 1328 1376 800 808 812 816 0x8 0xa

The factory installed Android has a hardcoded modeline in its kernel,
causing it to not suffer from this BIOS bug;
and the Android boot-splash which uses the EFI FB which does have this bug
has the last line all black causing the bug to not be visible.

This commit introduces a generic DMI based quirk mechanism to vlv_dsi for
doing various fixups, and uses this to correct the modeline.

v2:
- s/mode_fixup/dmi_quirk/ to make the new DMI quirk mechanism more generic
- Add a comment with the old and new modelines to the patch and commit msg

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 42 ++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index a96e7d028c5c..51c4b1491fa2 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -23,6 +23,7 @@
  * Author: Jani Nikula <jani.nikula@intel.com>
  */
 
+#include <linux/dmi.h>
 #include <linux/slab.h>
 
 #include <drm/drm_atomic_helper.h>
@@ -1744,6 +1745,38 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 	intel_dsi_log_params(intel_dsi);
 }
 
+typedef void (*vlv_dsi_dmi_quirk_func)(struct intel_dsi *intel_dsi);
+
+/*
+ * Vtotal is wrong on the Asus TF103C leading to the last line of the display
+ * being shown as the first line. The factory installed Android has a hardcoded
+ * modeline, causing it to not suffer from this BIOS bug.
+ *
+ * Original mode: "1280x800": 60 67700 1280 1312 1328 1376 800 808 812 820 0x8 0xa
+ * Fixed    mode: "1280x800": 60 67700 1280 1312 1328 1376 800 808 812 816 0x8 0xa
+ */
+static void vlv_dsi_asus_tf103c_mode_fixup(struct intel_dsi *intel_dsi)
+{
+	/* Cast away the const as we want to fixup the mode */
+	struct drm_display_mode *fixed_mode = (struct drm_display_mode *)
+		intel_panel_preferred_fixed_mode(intel_dsi->attached_connector);
+
+	if (fixed_mode->vtotal == 820)
+		fixed_mode->vtotal -= 4;
+}
+
+static const struct dmi_system_id vlv_dsi_dmi_quirk_table[] = {
+	{
+		/* Asus Transformer Pad TF103C */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "ASUSTeK COMPUTER INC."),
+			DMI_MATCH(DMI_PRODUCT_NAME, "TF103C"),
+		},
+		.driver_data = (void *)vlv_dsi_asus_tf103c_mode_fixup,
+	},
+	{ }
+};
+
 void vlv_dsi_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_dsi *intel_dsi;
@@ -1752,6 +1785,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	struct intel_connector *intel_connector;
 	struct drm_connector *connector;
 	struct drm_display_mode *current_mode;
+	const struct dmi_system_id *dmi_id;
 	enum port port;
 	enum pipe pipe;
 
@@ -1883,6 +1917,14 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 		goto err_cleanup_connector;
 	}
 
+	dmi_id = dmi_first_match(vlv_dsi_dmi_quirk_table);
+	if (dmi_id) {
+		vlv_dsi_dmi_quirk_func quirk_func =
+			(vlv_dsi_dmi_quirk_func)dmi_id->driver_data;
+
+		quirk_func(intel_dsi);
+	}
+
 	intel_panel_init(intel_connector, NULL);
 
 	intel_backlight_setup(intel_connector, INVALID_PIPE);
-- 
2.41.0

