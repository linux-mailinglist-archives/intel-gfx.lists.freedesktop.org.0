Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAE61F08B8
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Jun 2020 22:26:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 050506E22D;
	Sat,  6 Jun 2020 20:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A44196E23D
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Jun 2020 20:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591475202;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lKSCk6QuQzVxgH872USZwWSK0gPTDPHYq3zfkekP8Dw=;
 b=H5vQsApgsLs0MrLuPJwgwRFBRrlPXnUp6Qetx7FSSYaUZn2iDM56BNV1OfsCzOozLofaHQ
 WwSUokESjHJMLhWYm8lPXv8yQcpCaI7gTmN3RHO2ummgr9I3v9/Hu8fKnWWwQThQ+qOzLx
 PcR0b6llY13owy82iXe6c5t+t3oKzKA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-393-czpcLGIXOd2_tcBcSH0xSw-1; Sat, 06 Jun 2020 16:26:40 -0400
X-MC-Unique: czpcLGIXOd2_tcBcSH0xSw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C11EE800685;
 Sat,  6 Jun 2020 20:26:38 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-50.ams2.redhat.com [10.36.112.50])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4F8955C557;
 Sat,  6 Jun 2020 20:26:36 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Date: Sat,  6 Jun 2020 22:25:57 +0200
Message-Id: <20200606202601.48410-13-hdegoede@redhat.com>
In-Reply-To: <20200606202601.48410-1-hdegoede@redhat.com>
References: <20200606202601.48410-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Subject: [Intel-gfx] [PATCH 12/16] pwm: crc: Implement get_state() method
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

Implement the pwm_ops.get_state() method to complete the support for the
new atomic PWM API.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/pwm/pwm-crc.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/pwm/pwm-crc.c b/drivers/pwm/pwm-crc.c
index 58c7e9ef7278..6c75a3470bc8 100644
--- a/drivers/pwm/pwm-crc.c
+++ b/drivers/pwm/pwm-crc.c
@@ -114,8 +114,37 @@ static int crc_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	return 0;
 }
 
+static void crc_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
+			       struct pwm_state *state)
+{
+	struct crystalcove_pwm *crc_pwm = to_crc_pwm(chip);
+	struct device *dev = crc_pwm->chip.dev;
+	unsigned int clk_div, clk_div_reg, duty_cycle_reg;
+	int error;
+
+	error = regmap_read(crc_pwm->regmap, PWM0_CLK_DIV, &clk_div_reg);
+	if (error) {
+		dev_err(dev, "Error reading PWM0_CLK_DIV %d\n", error);
+		return;
+	}
+
+	error = regmap_read(crc_pwm->regmap, PWM0_DUTY_CYCLE, &duty_cycle_reg);
+	if (error) {
+		dev_err(dev, "Error reading PWM0_DUTY_CYCLE %d\n", error);
+		return;
+	}
+
+	clk_div = (clk_div_reg & ~PWM_OUTPUT_ENABLE) + 1;
+
+	state->period     = clk_div * NSEC_PER_MHZ * 256 / PWM_BASE_CLK_MHZ;
+	state->duty_cycle = duty_cycle_reg * state->period / PWM_MAX_LEVEL;
+	state->polarity   = PWM_POLARITY_NORMAL;
+	state->enabled    = !!(clk_div_reg & PWM_OUTPUT_ENABLE);
+}
+
 static const struct pwm_ops crc_pwm_ops = {
 	.apply = crc_pwm_apply,
+	.get_state = crc_pwm_get_state,
 };
 
 static int crystalcove_pwm_probe(struct platform_device *pdev)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
