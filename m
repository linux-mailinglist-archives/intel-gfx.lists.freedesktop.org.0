Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4118373FA0
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 18:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AAD6EC0D;
	Wed,  5 May 2021 16:24:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6656EC02
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 16:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620231888;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=df0TAB04jjuAkYrLpFFnGfbjBNW8ZYOLZdk4uurR24U=;
 b=KFUhBQS/tPLeF6po6vNMRwJq65mI8rJu3dIwUl8q6mX464ivYrmMKQWt5cXMupXFrBmikq
 TuP/ghXSWqs0huyOJQz4MzBdFh6WocSyCXSauKmmWG2AWH8UJn+RgJe48nqlOPX6mFDwXt
 RtN6Fd8mthKy4j6hH4u+eCiuKwemsE4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-591-dausN1SPOjCaQkBPMfLE6w-1; Wed, 05 May 2021 12:24:46 -0400
X-MC-Unique: dausN1SPOjCaQkBPMfLE6w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1400A80362E;
 Wed,  5 May 2021 16:24:44 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-71.ams2.redhat.com [10.36.112.71])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 353095C5B5;
 Wed,  5 May 2021 16:24:41 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Date: Wed,  5 May 2021 18:24:13 +0200
Message-Id: <20210505162415.531876-7-hdegoede@redhat.com>
In-Reply-To: <20210505162415.531876-1-hdegoede@redhat.com>
References: <20210505162415.531876-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, linux-usb@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dfa7da928ae5..554090e6ab7d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4571,6 +4571,17 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
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
@@ -4581,6 +4592,7 @@ static const struct drm_connector_funcs intel_dp_connector_funcs = {
 	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
+	.oob_hotplug_event = intel_dp_oob_hotplug_event,
 };
 
 static const struct drm_connector_helper_funcs intel_dp_connector_helper_funcs = {
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
