Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9901F25C020
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 13:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25FED6E9AC;
	Thu,  3 Sep 2020 11:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 596C36E9B4
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 11:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599132238;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZukzWkoKOICgMwClnkSHfjft9LoCEglKBEzHtiqOOV4=;
 b=UzfIJ8Yg+GGJlz4Dm57uaPWRb+8+9tblrRDJ0Tz9XZaF7ncJ0IkcgbLep46S0ji3FuZMzV
 u0Qe4BxJd56eQoW0nL7NI+QGgu7jsdLsLRwoKBPcht62Ykyt7RagHmkkWTmOgsKjJ0LW4G
 017e2v/ePqDJBvW/5zDn2xza7PS9/eQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-10-pdpVvNiWPduzJMNpzU_yqA-1; Thu, 03 Sep 2020 07:23:56 -0400
X-MC-Unique: pdpVvNiWPduzJMNpzU_yqA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A117C10ABDB8;
 Thu,  3 Sep 2020 11:23:54 +0000 (UTC)
Received: from x1.localdomain (ovpn-113-3.ams2.redhat.com [10.36.113.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EB0625C1C2;
 Thu,  3 Sep 2020 11:23:51 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Date: Thu,  3 Sep 2020 13:23:24 +0200
Message-Id: <20200903112337.4113-5-hdegoede@redhat.com>
In-Reply-To: <20200903112337.4113-1-hdegoede@redhat.com>
References: <20200903112337.4113-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Subject: [Intel-gfx] [PATCH v10 04/17] pwm: lpss: Add range limit check for
 the base_unit register value
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

When the user requests a high enough period ns value, then the
calculations in pwm_lpss_prepare() might result in a base_unit value of 0.

But according to the data-sheet the way the PWM controller works is that
each input clock-cycle the base_unit gets added to a N bit counter and
that counter overflowing determines the PWM output frequency. Adding 0
to the counter is a no-op. The data-sheet even explicitly states that
writing 0 to the base_unit bits will result in the PWM outputting a
continuous 0 signal.

When the user requestes a low enough period ns value, then the
calculations in pwm_lpss_prepare() might result in a base_unit value
which is bigger then base_unit_range - 1. Currently the codes for this
deals with this by applying a mask:

	base_unit &= (base_unit_range - 1);

But this means that we let the value overflow the range, we throw away the
higher bits and store whatever value is left in the lower bits into the
register leading to a random output frequency, rather then clamping the
output frequency to the highest frequency which the hardware can do.

This commit fixes both issues by clamping the base_unit value to be
between 1 and (base_unit_range - 1).

Fixes: 684309e5043e ("pwm: lpss: Avoid potential overflow of base_unit")
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Acked-by: Thierry Reding <thierry.reding@gmail.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
Changes in v5:
- Use clamp_val(... instead of clam_t(unsigned long long, ...

Changes in v3:
- Change upper limit of clamp to (base_unit_range - 1)
- Add Fixes tag
---
 drivers/pwm/pwm-lpss.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-lpss.c b/drivers/pwm/pwm-lpss.c
index 43b1fc634af1..da9bc3d10104 100644
--- a/drivers/pwm/pwm-lpss.c
+++ b/drivers/pwm/pwm-lpss.c
@@ -97,6 +97,8 @@ static void pwm_lpss_prepare(struct pwm_lpss_chip *lpwm, struct pwm_device *pwm,
 	freq *= base_unit_range;
 
 	base_unit = DIV_ROUND_CLOSEST_ULL(freq, c);
+	/* base_unit must not be 0 and we also want to avoid overflowing it */
+	base_unit = clamp_val(base_unit, 1, base_unit_range - 1);
 
 	on_time_div = 255ULL * duty_ns;
 	do_div(on_time_div, period_ns);
@@ -105,7 +107,6 @@ static void pwm_lpss_prepare(struct pwm_lpss_chip *lpwm, struct pwm_device *pwm,
 	orig_ctrl = ctrl = pwm_lpss_read(pwm);
 	ctrl &= ~PWM_ON_TIME_DIV_MASK;
 	ctrl &= ~((base_unit_range - 1) << PWM_BASE_UNIT_SHIFT);
-	base_unit &= (base_unit_range - 1);
 	ctrl |= (u32) base_unit << PWM_BASE_UNIT_SHIFT;
 	ctrl |= on_time_div;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
