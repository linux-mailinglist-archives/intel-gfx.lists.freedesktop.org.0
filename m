Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4834E202393
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Jun 2020 14:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D39B6E243;
	Sat, 20 Jun 2020 12:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 414726E21D
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Jun 2020 12:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592655531;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7aOs2EbSXN2MSLYbxcS6APypfmdWNHfTZE61Z4Y1mus=;
 b=E8Nx5VOX7iQ//tdoKfNvG0OJRznYsSAr4+6/SHrWJFvNZQTK0RmFpdGSqSnxEsT4LlYt1j
 5GG//EgYOLqyCq6klrxwIihNcuEkgTeTsoAN0cLPKRAT/VrXMCOLmm0PJsg51uGvnWcmBA
 v4yj6WQ/VfkFP4Og6gdl6lXgrqc8Ljs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-5ns0nyB9PDeama-R2_cxGA-1; Sat, 20 Jun 2020 08:18:49 -0400
X-MC-Unique: 5ns0nyB9PDeama-R2_cxGA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A67E010059A6;
 Sat, 20 Jun 2020 12:18:47 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-42.ams2.redhat.com [10.36.112.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 39A291002382;
 Sat, 20 Jun 2020 12:18:45 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Date: Sat, 20 Jun 2020 14:17:46 +0200
Message-Id: <20200620121758.14836-4-hdegoede@redhat.com>
In-Reply-To: <20200620121758.14836-1-hdegoede@redhat.com>
References: <20200620121758.14836-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [PATCH v3 03/15] pwm: lpss: Fix off by one error in
 base_unit math in pwm_lpss_prepare()
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

According to the data-sheet the way the PWM controller works is that
each input clock-cycle the base_unit gets added to a N bit counter and
that counter overflowing determines the PWM output frequency.

So assuming e.g. a 16 bit counter this means that if base_unit is set to 1,
after 65535 input clock-cycles the counter has been increased from 0 to
65535 and it will overflow on the next cycle, so it will overflow after
every 65536 clock cycles and thus the calculations done in
pwm_lpss_prepare() should use 65536 and not 65535.

This commit fixes this. Note this also aligns the calculations in
pwm_lpss_prepare() with those in pwm_lpss_get_state().

Note this effectively reverts commit 684309e5043e ("pwm: lpss: Avoid
potential overflow of base_unit"). The next patch in this series really
fixes the potential overflow of the base_unit value.

Fixes: 684309e5043e ("pwm: lpss: Avoid potential overflow of base_unit")
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
Changes in v3:
- Add Fixes tag
- Add Reviewed-by: Andy Shevchenko tag
---
 drivers/pwm/pwm-lpss.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-lpss.c b/drivers/pwm/pwm-lpss.c
index 9d965ffe66d1..43b1fc634af1 100644
--- a/drivers/pwm/pwm-lpss.c
+++ b/drivers/pwm/pwm-lpss.c
@@ -93,7 +93,7 @@ static void pwm_lpss_prepare(struct pwm_lpss_chip *lpwm, struct pwm_device *pwm,
 	 * The equation is:
 	 * base_unit = round(base_unit_range * freq / c)
 	 */
-	base_unit_range = BIT(lpwm->info->base_unit_bits) - 1;
+	base_unit_range = BIT(lpwm->info->base_unit_bits);
 	freq *= base_unit_range;
 
 	base_unit = DIV_ROUND_CLOSEST_ULL(freq, c);
@@ -104,8 +104,8 @@ static void pwm_lpss_prepare(struct pwm_lpss_chip *lpwm, struct pwm_device *pwm,
 
 	orig_ctrl = ctrl = pwm_lpss_read(pwm);
 	ctrl &= ~PWM_ON_TIME_DIV_MASK;
-	ctrl &= ~(base_unit_range << PWM_BASE_UNIT_SHIFT);
-	base_unit &= base_unit_range;
+	ctrl &= ~((base_unit_range - 1) << PWM_BASE_UNIT_SHIFT);
+	base_unit &= (base_unit_range - 1);
 	ctrl |= (u32) base_unit << PWM_BASE_UNIT_SHIFT;
 	ctrl |= on_time_div;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
