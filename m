Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C72F3EF542
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 23:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FFEA6E2A3;
	Tue, 17 Aug 2021 21:52:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551A06E2A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 21:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629237154;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J0XOPky0n5K1+Rj9fYhvzENPaEC2/lCnRT5I8myIw6g=;
 b=XESw9tm3ja21F4O9+OFxRWglkEcSCZe+/wDSxT2sOrJpBrWO7QhpCofc3wulv09DOAinxL
 rD2G40x3Vvlp38Ij6gLN3Rnmtl9T+VjHay0cs0BZRwOhiSZrR52Gs6fusGG7IjrxWE2Xib
 im5GHzp1Mhh/hKm3BQOHFkwtH/5i31k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-571-q5ubL2d2Nau9TRI6JPvY-Q-1; Tue, 17 Aug 2021 17:52:31 -0400
X-MC-Unique: q5ubL2d2Nau9TRI6JPvY-Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 246AB875047;
 Tue, 17 Aug 2021 21:52:29 +0000 (UTC)
Received: from x1.localdomain (unknown [10.39.192.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E2F8F10013D6;
 Tue, 17 Aug 2021 21:52:25 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>, Lyude <lyude@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, linux-usb@vger.kernel.org
Date: Tue, 17 Aug 2021 23:51:59 +0200
Message-Id: <20210817215201.795062-7-hdegoede@redhat.com>
In-Reply-To: <20210817215201.795062-1-hdegoede@redhat.com>
References: <20210817215201.795062-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/dp: Add support for out-of-bound
 hotplug events
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

On some Cherry Trail devices, DisplayPort over Type-C is supported through
a USB-PD microcontroller (e.g. a fusb302) + a mux to switch the superspeed
datalines between USB-3 and DP (e.g. a pi3usb30532). The kernel in this
case does the PD/alt-mode negotiation itself, rather then everything being
handled in firmware.

So the kernel itself picks an alt-mode, tells the Type-C "dongle" to switch
to DP mode and sets the mux accordingly. In this setup the HPD pin is not
connected, so the i915 driver needs to respond to a software event and scan
the DP port for changes manually.

This commit adds support for this. Together with the recent addition of
DP alt-mode support to the Type-C subsystem this makes DP over Type-C
work on these devices.

Tested-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 75d4ebc66941..e807ffc2d782 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4590,6 +4590,17 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
 	return intel_modeset_synced_crtcs(state, conn);
 }
 
+static void intel_dp_oob_hotplug_event(struct drm_connector *connector)
+{
+	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+
+	spin_lock_irq(&i915->irq_lock);
+	i915->hotplug.event_bits |= BIT(encoder->hpd_pin);
+	spin_unlock_irq(&i915->irq_lock);
+	queue_delayed_work(system_wq, &i915->hotplug.hotplug_work, 0);
+}
+
 static const struct drm_connector_funcs intel_dp_connector_funcs = {
 	.force = intel_dp_force,
 	.fill_modes = drm_helper_probe_single_connector_modes,
@@ -4600,6 +4611,7 @@ static const struct drm_connector_funcs intel_dp_connector_funcs = {
 	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
+	.oob_hotplug_event = intel_dp_oob_hotplug_event,
 };
 
 static const struct drm_connector_helper_funcs intel_dp_connector_helper_funcs = {
-- 
2.31.1

