Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A16C1204EE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 13:07:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C172D6E4EC;
	Mon, 16 Dec 2019 12:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE8D56E4EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 12:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576498062;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lI3Llzjueqd8+bR0BAbRmGifS1QAldDdgEe/45KAJFY=;
 b=WfRzJDbfK8rMbpF5GYZnRMvRYNwD+oWuxOFebx0Evkd6U62tsyB5q768AS3AeCWMurbXfC
 lGiNIx8E3xOhZkxdIe2C9eN0mP0Xtk5AAGvfMEcbYS7oFGdwMY+lsaKFPdEV896y0HWEfH
 KTkXW1ibXELT+f84Xej690xD5h/Tsw4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-40-Qk5URHRxNMaGXPMHdmFdBQ-1; Mon, 16 Dec 2019 07:07:41 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2C30107ACC4;
 Mon, 16 Dec 2019 12:07:39 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-96.ams2.redhat.com
 [10.36.116.96])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4E11E1001281;
 Mon, 16 Dec 2019 12:07:38 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 16 Dec 2019 13:07:34 +0100
Message-Id: <20191216120735.1091873-2-hdegoede@redhat.com>
In-Reply-To: <20191216120735.1091873-1-hdegoede@redhat.com>
References: <20191216120735.1091873-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: Qk5URHRxNMaGXPMHdmFdBQ-1
X-Mimecast-Spam-Score: 0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: panel: Use
 intel_panel_compute_brightness() from pwm_setup_backlight()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use intel_panel_compute_brightness() from pwm_setup_backlight() so that
we correctly take i915_modparams.invert_brightness and/or
QUIRK_INVERT_BRIGHTNESS into account when setting + getting the initial
brightness value.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 6f3eaae3761f..c43b7cea2b58 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -1841,6 +1841,7 @@ static int pwm_setup_backlight(struct intel_connector *connector,
 {
 	struct drm_device *dev = connector->base.dev;
 	struct intel_panel *panel = &connector->panel;
+	u32 level, ns;
 	int retval;
 
 	/* Get the PWM chip for backlight control */
@@ -1857,8 +1858,12 @@ static int pwm_setup_backlight(struct intel_connector *connector,
 	 */
 	pwm_apply_args(panel->backlight.pwm);
 
-	retval = pwm_config(panel->backlight.pwm, CRC_PMIC_PWM_PERIOD_NS,
-			    CRC_PMIC_PWM_PERIOD_NS);
+	panel->backlight.min = 0; /* 0% */
+	panel->backlight.max = 100; /* 100% */
+	level = intel_panel_compute_brightness(connector, 100);
+	ns = DIV_ROUND_UP(level * CRC_PMIC_PWM_PERIOD_NS, 100);
+
+	retval = pwm_config(panel->backlight.pwm, ns, CRC_PMIC_PWM_PERIOD_NS);
 	if (retval < 0) {
 		DRM_ERROR("Failed to configure the pwm chip\n");
 		pwm_put(panel->backlight.pwm);
@@ -1866,11 +1871,10 @@ static int pwm_setup_backlight(struct intel_connector *connector,
 		return retval;
 	}
 
-	panel->backlight.min = 0; /* 0% */
-	panel->backlight.max = 100; /* 100% */
-	panel->backlight.level = DIV_ROUND_UP(
-				 pwm_get_duty_cycle(panel->backlight.pwm) * 100,
-				 CRC_PMIC_PWM_PERIOD_NS);
+	level = DIV_ROUND_UP(pwm_get_duty_cycle(panel->backlight.pwm) * 100,
+			     CRC_PMIC_PWM_PERIOD_NS);
+	panel->backlight.level =
+		intel_panel_compute_brightness(connector, level);
 	panel->backlight.enabled = panel->backlight.level != 0;
 
 	return 0;
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
