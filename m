Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD65421922A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 23:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2B266E92A;
	Wed,  8 Jul 2020 21:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 293E66E93B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 21:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594242933;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rsgaSScqfqS4PRyzzf5oPN1LM95C1kF5r/jgzFwdEWU=;
 b=eADXwL17x8OVTztGMU22g5X6UoGEZuYioq2tMPciUTPfsoRj2ROukTIFjGAvsdXfv01k3s
 NejhX9WQtsLQ1tKiWtOmybs/o+Hqw5435q/6pCtevMscd74BQX7ZXoxeVYUbcG9CCle1ty
 yAxDGzaRMV/1nOo1f0ktKHAMUtZ+yJE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-206-0k9nNlDkP8-PHMMbRtmHdQ-1; Wed, 08 Jul 2020 17:15:31 -0400
X-MC-Unique: 0k9nNlDkP8-PHMMbRtmHdQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1BFF9E91A;
 Wed,  8 Jul 2020 21:15:29 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-5.ams2.redhat.com [10.36.112.5])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8CA8D797F2;
 Wed,  8 Jul 2020 21:15:26 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Date: Wed,  8 Jul 2020 23:14:27 +0200
Message-Id: <20200708211432.28612-12-hdegoede@redhat.com>
In-Reply-To: <20200708211432.28612-1-hdegoede@redhat.com>
References: <20200708211432.28612-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-gfx] [PATCH v4 11/16] pwm: crc: Implement apply() method to
 support the new atomic PWM API
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

Replace the enable, disable and config pwm_ops with an apply op,
to support the new atomic PWM API.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
Changes in v3:
- Keep crc_pwm_calc_clk_div() helper to avoid needless churn
---
 drivers/pwm/pwm-crc.c | 89 ++++++++++++++++++++++++++-----------------
 1 file changed, 53 insertions(+), 36 deletions(-)

diff --git a/drivers/pwm/pwm-crc.c b/drivers/pwm/pwm-crc.c
index b72008c9b072..8a7f4707279c 100644
--- a/drivers/pwm/pwm-crc.c
+++ b/drivers/pwm/pwm-crc.c
@@ -51,59 +51,76 @@ static int crc_pwm_calc_clk_div(int period_ns)
 	return clk_div;
 }
 
-static int crc_pwm_enable(struct pwm_chip *c, struct pwm_device *pwm)
+static int crc_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
+			 const struct pwm_state *state)
 {
-	struct crystalcove_pwm *crc_pwm = to_crc_pwm(c);
-	int div = crc_pwm_calc_clk_div(pwm_get_period(pwm));
-
-	regmap_write(crc_pwm->regmap, PWM0_CLK_DIV, div | PWM_OUTPUT_ENABLE);
-	regmap_write(crc_pwm->regmap, BACKLIGHT_EN, 1);
-
-	return 0;
-}
-
-static void crc_pwm_disable(struct pwm_chip *c, struct pwm_device *pwm)
-{
-	struct crystalcove_pwm *crc_pwm = to_crc_pwm(c);
-	int div = crc_pwm_calc_clk_div(pwm_get_period(pwm));
-
-	regmap_write(crc_pwm->regmap, BACKLIGHT_EN, 0);
-	regmap_write(crc_pwm->regmap, PWM0_CLK_DIV, div);
-}
-
-static int crc_pwm_config(struct pwm_chip *c, struct pwm_device *pwm,
-			  int duty_ns, int period_ns)
-{
-	struct crystalcove_pwm *crc_pwm = to_crc_pwm(c);
+	struct crystalcove_pwm *crc_pwm = to_crc_pwm(chip);
 	struct device *dev = crc_pwm->chip.dev;
-	int level;
+	int err;
 
-	if (period_ns > PWM_MAX_PERIOD_NS) {
+	if (state->period > PWM_MAX_PERIOD_NS) {
 		dev_err(dev, "un-supported period_ns\n");
 		return -EINVAL;
 	}
 
-	if (pwm_get_period(pwm) != period_ns) {
-		int clk_div = crc_pwm_calc_clk_div(period_ns);
+	if (state->polarity != PWM_POLARITY_NORMAL)
+		return -EOPNOTSUPP;
+
+	if (pwm_is_enabled(pwm) && !state->enabled) {
+		err = regmap_write(crc_pwm->regmap, BACKLIGHT_EN, 0);
+		if (err) {
+			dev_err(dev, "Error writing BACKLIGHT_EN %d\n", err);
+			return err;
+		}
+	}
+
+	if (pwm_get_duty_cycle(pwm) != state->duty_cycle ||
+	    pwm_get_period(pwm) != state->period) {
+		int level = state->duty_cycle * PWM_MAX_LEVEL / state->period;
 
+		err = regmap_write(crc_pwm->regmap, PWM0_DUTY_CYCLE, level);
+		if (err) {
+			dev_err(dev, "Error writing PWM0_DUTY_CYCLE %d\n", err);
+			return err;
+		}
+	}
+
+	if (pwm_is_enabled(pwm) && state->enabled &&
+	    pwm_get_period(pwm) != state->period) {
 		/* changing the clk divisor, clear PWM_OUTPUT_ENABLE first */
-		regmap_write(crc_pwm->regmap, PWM0_CLK_DIV, 0);
+		err = regmap_write(crc_pwm->regmap, PWM0_CLK_DIV, 0);
+		if (err) {
+			dev_err(dev, "Error writing PWM0_CLK_DIV %d\n", err);
+			return err;
+		}
+	}
 
-		regmap_write(crc_pwm->regmap, PWM0_CLK_DIV,
-					clk_div | PWM_OUTPUT_ENABLE);
+	if (pwm_get_period(pwm) != state->period ||
+	    pwm_is_enabled(pwm) != state->enabled) {
+		int clk_div = crc_pwm_calc_clk_div(state->period);
+		int pwm_output_enable = state->enabled ? PWM_OUTPUT_ENABLE : 0;
+
+		err = regmap_write(crc_pwm->regmap, PWM0_CLK_DIV,
+				   clk_div | pwm_output_enable);
+		if (err) {
+			dev_err(dev, "Error writing PWM0_CLK_DIV %d\n", err);
+			return err;
+		}
 	}
 
-	/* change the pwm duty cycle */
-	level = duty_ns * PWM_MAX_LEVEL / period_ns;
-	regmap_write(crc_pwm->regmap, PWM0_DUTY_CYCLE, level);
+	if (!pwm_is_enabled(pwm) && state->enabled) {
+		err = regmap_write(crc_pwm->regmap, BACKLIGHT_EN, 1);
+		if (err) {
+			dev_err(dev, "Error writing BACKLIGHT_EN %d\n", err);
+			return err;
+		}
+	}
 
 	return 0;
 }
 
 static const struct pwm_ops crc_pwm_ops = {
-	.config = crc_pwm_config,
-	.enable = crc_pwm_enable,
-	.disable = crc_pwm_disable,
+	.apply = crc_pwm_apply,
 };
 
 static int crystalcove_pwm_probe(struct platform_device *pdev)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
