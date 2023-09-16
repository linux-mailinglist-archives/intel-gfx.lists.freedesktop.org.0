Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDAC7A3057
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Sep 2023 14:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D8C10E104;
	Sat, 16 Sep 2023 12:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8A6210E104
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Sep 2023 12:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1694868907;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XKZ8TXxOECK4Jw8KFjq37vZ/IV2Xailavbw5Y3ZqwEE=;
 b=QEXk+4i9YROLjbTn+qYGae7KMzzQXfVD5Syn1rZKSA3DtiF7eyWzKS+dVL5XB/If8ooS8z
 1+PG53m61ADFT7Fw4ewC4WYo0pmPXmWh0GevjGQXYN3ASrmgO8jldnQL3n1RuGmO0l7URZ
 7xZqdVzspduVenReWJawcO6NyfLU2XA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-100-iAhlhsHkPCSoGNCpJ0qA2Q-1; Sat, 16 Sep 2023 08:55:01 -0400
X-MC-Unique: iAhlhsHkPCSoGNCpJ0qA2Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F87C8039D2;
 Sat, 16 Sep 2023 12:55:01 +0000 (UTC)
Received: from shalem.redhat.com (unknown [10.39.192.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3272D40C6EA8;
 Sat, 16 Sep 2023 12:55:00 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Sat, 16 Sep 2023 14:54:54 +0200
Message-ID: <20230916125455.237325-4-hdegoede@redhat.com>
In-Reply-To: <20230916125455.237325-1-hdegoede@redhat.com>
References: <20230916125455.237325-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/vlv_dsi: Add DMI quirk for
 backlight control issues on Lenovo Yoga Tab 3
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
 intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On the Lenovo Yoga Tab 3 Pro YT3-X90F there are 2 issues with the backlight
on/off MIPI sequences:

1. The backlight on sequence has an I2C MIPI sequence element which uses
   bus 0, but there is a bogus I2cSerialBus resource under the GPU in
   the DSDT which causes i2c_acpi_find_adapter() to pick the wrong bus.

2. There is no backlight off sequence, causing the backlight to stay on.

Add a DMI quirk fixing both issues.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 32 ++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index e247e3413d90..db519cfc243b 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1801,6 +1801,29 @@ static void vlv_dsi_lenovo_yoga_tab2_size_fixup(struct intel_dsi *intel_dsi)
 	}
 }
 
+/*
+ * On the Lenovo Yoga Tab 3 Pro YT3-X90F there are 2 problems:
+ * 1. i2c_acpi_find_adapter() picks the wrong adapter causing mipi_exec_i2c()
+ *    to not work. Fix this by setting i2c_bus_num.
+ * 2. There is no backlight off MIPI sequence, causing the backlight to stay on.
+ *    Add a backlight off sequence mirroring the existing backlight on sequence.
+ */
+static void vlv_dsi_lenovo_yoga_tab3_backlight_fixup(struct intel_dsi *intel_dsi)
+{
+	static const u8 backlight_off_sequence[16] = {
+		/* Header Seq-id 7, length after header 11 bytes */
+		0x07, 0x0b, 0x00, 0x00, 0x00,
+		/* MIPI_SEQ_ELEM_I2C bus 0 addr 0x2c reg 0x00 data-len 1 data 0x00 */
+		0x04, 0x08, 0x00, 0x00, 0x00, 0x2c, 0x00, 0x00, 0x01, 0x00,
+		/* MIPI_SEQ_ELEM_END */
+		0x00
+	};
+	struct intel_connector *connector = intel_dsi->attached_connector;
+
+	intel_dsi->i2c_bus_num = 0;
+	connector->panel.vbt.dsi.sequence[MIPI_SEQ_BACKLIGHT_OFF] = backlight_off_sequence;
+}
+
 static const struct dmi_system_id vlv_dsi_dmi_quirk_table[] = {
 	{
 		/* Asus Transformer Pad TF103C */
@@ -1824,6 +1847,15 @@ static const struct dmi_system_id vlv_dsi_dmi_quirk_table[] = {
 		},
 		.driver_data = (void *)vlv_dsi_lenovo_yoga_tab2_size_fixup,
 	},
+	{
+		/* Lenovo Yoga Tab 3 Pro YT3-X90F */
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Intel Corporation"),
+			DMI_MATCH(DMI_PRODUCT_NAME, "CHERRYVIEW D1 PLATFORM"),
+			DMI_MATCH(DMI_PRODUCT_VERSION, "Blade3-10A-001"),
+		},
+		.driver_data = (void *)vlv_dsi_lenovo_yoga_tab3_backlight_fixup,
+	},
 	{ }
 };
 
-- 
2.41.0

