Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59370223D29
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 15:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 730CA6EDD0;
	Fri, 17 Jul 2020 13:44:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 292976E0FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 13:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594993479;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wFxzn0JHmm3vfb35/XuLlaLchu4vOFUQ8XAR0bQcpag=;
 b=b+39FTixLQpmnN3ZbF30zPR2QmFis0GrHCG8WhFnzTdkEPPOOoeb8LB7BDw2hERtmr5jAM
 r1FtpUfS5msOk8ggcNtANmMpR1/fadgHKW9xNhTio5cFIFWcABBxsY3fEQldE+WYHnmLVH
 owwfz+27IdJknT/KuK6RZunV1HUxi9c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-478-dNxV-KE6MJmm3_Gfli90Ow-1; Fri, 17 Jul 2020 09:44:36 -0400
X-MC-Unique: dNxV-KE6MJmm3_Gfli90Ow-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EDC36106B247;
 Fri, 17 Jul 2020 13:44:33 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-162.ams2.redhat.com
 [10.36.112.162])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4127E10013C0;
 Fri, 17 Jul 2020 13:44:31 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Date: Fri, 17 Jul 2020 15:44:29 +0200
Message-Id: <20200717134430.127575-1-hdegoede@redhat.com>
In-Reply-To: <20200717133753.127282-1-hdegoede@redhat.com>
References: <20200717133753.127282-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [PATCH v5 15/16] drm/i915: panel: Honor the VBT PWM min
 setting for devs with an external PWM controller
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
 Jani Nikula <jani.nikula@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

So far for devices using an external PWM controller (devices using
pwm_setup_backlight()), we have been hardcoding the minimum allowed
PWM level to 0. But several of these devices specify a non 0 minimum
setting in their VBT.

Change pwm_setup_backlight() to use get_backlight_min_vbt() to get
the minimum level.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 14e611c92194..cb28b9908ca4 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -1925,8 +1925,8 @@ static int pwm_setup_backlight(struct intel_connector *connector,
 	 */
 	pwm_apply_args(panel->backlight.pwm);
 
-	panel->backlight.min = 0; /* 0% */
 	panel->backlight.max = 100; /* 100% */
+	panel->backlight.min = get_backlight_min_vbt(connector);
 	level = intel_panel_compute_brightness(connector, 100);
 	ns = DIV_ROUND_UP(level * panel->backlight.pwm_period_ns, 100);
 
@@ -1941,8 +1941,9 @@ static int pwm_setup_backlight(struct intel_connector *connector,
 
 	level = DIV_ROUND_UP(pwm_get_duty_cycle(panel->backlight.pwm) * 100,
 			     panel->backlight.pwm_period_ns);
-	panel->backlight.level =
-		intel_panel_compute_brightness(connector, level);
+	level = intel_panel_compute_brightness(connector, level);
+	panel->backlight.level = clamp(level, panel->backlight.min,
+				       panel->backlight.max);
 	panel->backlight.enabled = panel->backlight.level != 0;
 
 	drm_info(&dev_priv->drm, "Using %s PWM for LCD backlight control\n",
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
