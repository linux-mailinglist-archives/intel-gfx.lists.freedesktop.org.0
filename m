Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 025A6458301
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Nov 2021 12:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 122266F88A;
	Sun, 21 Nov 2021 11:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C6F26F888
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Nov 2021 11:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637492446;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=LsgBxUcRxWCwY+zbf8nElGg4ua0pfw40r1USCxEdbCY=;
 b=TjlkLfstijnxL4A3Tsg1Xw1aU59y5FUAud3LdfEGmEA46qHNlHmRznPNdbvGcffFetNkGT
 xfQ5tV8w76RaYcewWjP+T4gd88teuHEU6P9VrXIKL3BT6XCWyhP48+evPy0SKf9M/dThY7
 fTss1LItTB4pClLnV+uUvo4DgiERRU4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-85-jVkEfZMjMQ694LjGQovE_w-1; Sun, 21 Nov 2021 06:00:40 -0500
X-MC-Unique: jVkEfZMjMQ694LjGQovE_w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B86A018125C0;
 Sun, 21 Nov 2021 11:00:38 +0000 (UTC)
Received: from x1.localdomain (unknown [10.39.192.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 583FE4ABA3;
 Sun, 21 Nov 2021 11:00:33 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Lyude <lyude@redhat.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 21 Nov 2021 12:00:31 +0100
Message-Id: <20211121110032.4720-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/backlight: Drop duplicate
 intel_panel_actually_set_backlight()
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After the recent refactoring of the backlight code the contents of
intel_panel_actually_set_backlight() is exactly the same (minus a
small wording difference in the drm_dbg_kms() as the contents if the
more widely used intel_backlight_set_pwm_level() function.

Drop the duplicate intel_panel_actually_set_backlight() function.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 9523411cddd8..03cd730c926a 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -268,18 +268,6 @@ static void ext_pwm_set_backlight(const struct drm_connector_state *conn_state,
 	pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
 }
 
-static void
-intel_panel_actually_set_backlight(const struct drm_connector_state *conn_state, u32 level)
-{
-	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct intel_panel *panel = &connector->panel;
-
-	drm_dbg_kms(&i915->drm, "set backlight level = %d\n", level);
-
-	panel->backlight.funcs->set(conn_state, level);
-}
-
 /* set backlight brightness to level in range [0..max], assuming hw min is
  * respected.
  */
@@ -314,7 +302,7 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
 					 panel->backlight.device->props.max_brightness);
 
 	if (panel->backlight.enabled)
-		intel_panel_actually_set_backlight(conn_state, hw_level);
+		intel_backlight_set_pwm_level(conn_state, hw_level);
 
 	mutex_unlock(&dev_priv->backlight_lock);
 }
@@ -863,7 +851,7 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
 	panel->backlight.level = hw_level;
 
 	if (panel->backlight.enabled)
-		intel_panel_actually_set_backlight(conn_state, hw_level);
+		intel_backlight_set_pwm_level(conn_state, hw_level);
 
 	mutex_unlock(&dev_priv->backlight_lock);
 }
-- 
2.31.1

