Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B779925C02A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 13:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F0856E9B9;
	Thu,  3 Sep 2020 11:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EC676E9B9
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 11:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599132256;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=i4LjoFZKzNRx0QYdGkEhCDj0MPbafDuhon7vtbsVDBA=;
 b=EOAzVj6hLqhvf1aHQ5SH2leE6YKFw8hxffN4b5qgLVS+ckPg+gYT7zctPeYHWrLgSEzGya
 4aw1INXmb/EC3x8/yaa+bQ4DFid7mlhX7q/dTURfeSlCt1JQrokhcyqc8QHzD9rU4c71Jz
 eADM3YMSkQFhTwY9AxUWlEGM2CCGNnw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-B0vmSOdDOKOmHE0IMh7tmQ-1; Thu, 03 Sep 2020 07:24:14 -0400
X-MC-Unique: B0vmSOdDOKOmHE0IMh7tmQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 69478801AB3;
 Thu,  3 Sep 2020 11:24:12 +0000 (UTC)
Received: from x1.localdomain (ovpn-113-3.ams2.redhat.com [10.36.113.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A12915C1C2;
 Thu,  3 Sep 2020 11:24:06 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Date: Thu,  3 Sep 2020 13:23:28 +0200
Message-Id: <20200903112337.4113-9-hdegoede@redhat.com>
In-Reply-To: <20200903112337.4113-1-hdegoede@redhat.com>
References: <20200903112337.4113-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Subject: [Intel-gfx] [PATCH v10 08/17] pwm: crc: Fix period / duty_cycle
 times being off by a factor of 256
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

While looking into adding atomic-pwm support to the pwm-crc driver I
noticed something odd, there is a PWM_BASE_CLK define of 6 MHz and
there is a clock-divider which divides this with a value between 1-128,
and there are 256 duty-cycle steps.

The pwm-crc code before this commit assumed that a clock-divider
setting of 1 means that the PWM output is running at 6 MHZ, if that
is true, where do these 256 duty-cycle steps come from?

This would require an internal frequency of 256 * 6 MHz = 1.5 GHz, that
seems unlikely for a PMIC which is using a silicon process optimized for
power-switching transistors. It is way more likely that there is an 8
bit counter for the duty cycle which acts as an extra fixed divider
wrt the PWM output frequency.

The main user of the pwm-crc driver is the i915 GPU driver which uses it
for backlight control. Lets compare the PWM register values set by the
video-BIOS (the GOP), assuming the extra fixed divider is present versus
the PWM frequency specified in the Video-BIOS-Tables:

Device:		PWM Hz set by BIOS	PWM Hz specified in VBT
Asus T100TA 	200			200
Asus T100HA 	200			200
Lenovo Miix 2 8	23437			20000
Toshiba WT8-A	23437			20000

So as we can see if we assume the extra division by 256 then the register
values set by the GOP are an exact match for the VBT values, where as
otherwise the values would be of by a factor of 256.

This commit fixes the period / duty_cycle calculations to take the
extra division by 256 into account.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Acked-by: Thierry Reding <thierry.reding@gmail.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
Changes in v3:
- Use NSEC_PER_USEC instead of adding a new (non-sensical) NSEC_PER_MHZ define
---
 drivers/pwm/pwm-crc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-crc.c b/drivers/pwm/pwm-crc.c
index 272eeb071147..c056eb9b858c 100644
--- a/drivers/pwm/pwm-crc.c
+++ b/drivers/pwm/pwm-crc.c
@@ -21,8 +21,8 @@
 
 #define PWM_MAX_LEVEL		0xFF
 
-#define PWM_BASE_CLK		6000000  /* 6 MHz */
-#define PWM_MAX_PERIOD_NS	21333    /* 46.875KHz */
+#define PWM_BASE_CLK_MHZ	6	/* 6 MHz */
+#define PWM_MAX_PERIOD_NS	5461333	/* 183 Hz */
 
 /**
  * struct crystalcove_pwm - Crystal Cove PWM controller
@@ -72,7 +72,7 @@ static int crc_pwm_config(struct pwm_chip *c, struct pwm_device *pwm,
 
 		/* changing the clk divisor, need to disable fisrt */
 		crc_pwm_disable(c, pwm);
-		clk_div = PWM_BASE_CLK * period_ns / NSEC_PER_SEC;
+		clk_div = PWM_BASE_CLK_MHZ * period_ns / (256 * NSEC_PER_USEC);
 
 		regmap_write(crc_pwm->regmap, PWM0_CLK_DIV,
 					clk_div | PWM_OUTPUT_ENABLE);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
