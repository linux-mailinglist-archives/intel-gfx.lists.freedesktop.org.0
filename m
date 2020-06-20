Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0C32023B9
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Jun 2020 14:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7789E6E2B4;
	Sat, 20 Jun 2020 12:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39726E2A9
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Jun 2020 12:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592655558;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9qR6rmdUeqQSUNGkLDHXMEUzE7CJ6YnDyFwyWLHoCx4=;
 b=gxD0MP0GdTZon3tpt99mxiPkCZwK+gO7FSBzOqwk0yxMfneMPZHuKuMn1Vfy7v2XEo7X7J
 zh5Xej2+j6vzPnbdTTx0oDO5yFW9jQh3s3VlUcGPB041Wds3jvKpH6FBXflg/oO6pIPp7k
 NHWVNvAv4w2zx7KEtQogPBCgPqAek1c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-309-xQ8ej0aiO4-NIXe9I1jucA-1; Sat, 20 Jun 2020 08:19:14 -0400
X-MC-Unique: xQ8ej0aiO4-NIXe9I1jucA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72546801503;
 Sat, 20 Jun 2020 12:19:12 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-42.ams2.redhat.com [10.36.112.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 03E0F10021B3;
 Sat, 20 Jun 2020 12:19:09 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Date: Sat, 20 Jun 2020 14:17:55 +0200
Message-Id: <20200620121758.14836-13-hdegoede@redhat.com>
In-Reply-To: <20200620121758.14836-1-hdegoede@redhat.com>
References: <20200620121758.14836-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [PATCH v3 12/15] drm/i915: panel: Add
 get_vbt_pwm_freq() helper
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
Cc: linux-pwm@vger.kernel.org, linux-acpi@vger.kernel.org,
 intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Factor the code which checks and drm_dbg_kms-s the VBT PWM frequency
out of get_backlight_max_vbt().

This is a preparation patch for honering the VBT PWM frequency for
devices which use an external PWM controller (devices using
pwm_setup_backlight()).

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 27 ++++++++++++++--------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 3c5056dbf607..8efdd9f08a08 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -1543,18 +1543,9 @@ static u32 vlv_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 	return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * mul);
 }
 
-static u32 get_backlight_max_vbt(struct intel_connector *connector)
+static u16 get_vbt_pwm_freq(struct drm_i915_private *dev_priv)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	struct intel_panel *panel = &connector->panel;
 	u16 pwm_freq_hz = dev_priv->vbt.backlight.pwm_freq_hz;
-	u32 pwm;
-
-	if (!panel->backlight.hz_to_pwm) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "backlight frequency conversion not supported\n");
-		return 0;
-	}
 
 	if (pwm_freq_hz) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -1567,6 +1558,22 @@ static u32 get_backlight_max_vbt(struct intel_connector *connector)
 			    pwm_freq_hz);
 	}
 
+	return pwm_freq_hz;
+}
+
+static u32 get_backlight_max_vbt(struct intel_connector *connector)
+{
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_panel *panel = &connector->panel;
+	u16 pwm_freq_hz = get_vbt_pwm_freq(dev_priv);
+	u32 pwm;
+
+	if (!panel->backlight.hz_to_pwm) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "backlight frequency conversion not supported\n");
+		return 0;
+	}
+
 	pwm = panel->backlight.hz_to_pwm(connector, pwm_freq_hz);
 	if (!pwm) {
 		drm_dbg_kms(&dev_priv->drm,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
