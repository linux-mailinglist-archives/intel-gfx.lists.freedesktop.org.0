Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1781F0889
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Jun 2020 22:26:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D96A6E1EC;
	Sat,  6 Jun 2020 20:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE61D6E1EC
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Jun 2020 20:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591475171;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=xTqw3kVnB8v3sRhZ7VbObD+yMIguMk4i/LcXMpFqEhQ=;
 b=FeoUY5OFL792Uh0bBYUxAfCinet0gyf5ffzPBHMrmxUTPwTSDsHnYcvTarjw2QIvfPfqMl
 2wrbdPKowHruCUnN/LxprmZFDyd0VJLHcsJZYSpK8P1PxGe0cB6VsUMWcy7KUAmarJC8p+
 r+Vpsplx3HBz1z71VMiVnFbVACH1/7w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-136-nzGiU4zhPGC6e83HQDwwyA-1; Sat, 06 Jun 2020 16:26:07 -0400
X-MC-Unique: nzGiU4zhPGC6e83HQDwwyA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 900127BAC;
 Sat,  6 Jun 2020 20:26:05 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-50.ams2.redhat.com [10.36.112.50])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BE3045C557;
 Sat,  6 Jun 2020 20:26:02 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Date: Sat,  6 Jun 2020 22:25:45 +0200
Message-Id: <20200606202601.48410-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Subject: [Intel-gfx] pwm/i915: Convert pwm-crc and i915 driver's PWM code to
 use the atomic PWM API
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

Hi All,

This patch series converts the i915 driver's cpde for controlling the
panel's backlight with an external PWM controller to use the atomic PWM API.

Initially the plan was for this series to consist of 2 parts:
1. convert the pwm-crc driver to support the atomic PWM API and
2. convert the i915 driver's PWM code to use the atomic PWM API.

But during testing I've found a number of bugs in the pwm-lpss and I
found that the acpi_lpss code needs some special handling because of
some ugliness found in most Cherry Trail DSDTs.

So now this series has grown somewhat large and consists of 4 parts:

1. acpi_lpss fixes workarounds for Cherry Trail DSTD nastiness
2. various fixes to the pwm-lpss driver
3. convert the pwm-crc driver to support the atomic PWM API and
4. convert the i915 driver's PWM code to use the atomic PWM API

So we need to discuss how to merge this (once it passes review).
Although the inter-dependencies are only runtime I still think we should
make sure that 1-3 are in the drm-intel-next-queued (dinq) tree before
merging the i915 changes. Both to make sure that the intel-gfx CI system
does not become unhappy and for bisecting reasons.

The involved acpi_lpss and pwm drivers do not see a whole lot of churn,
so we could just merge everything through dinq, or we could use immutable
branch and merge those into dinq.

So Rafael and Thierry, can I either get your Acked-by for directly merging
this into dinq, or can you provide an immutable branch with these patches?

This series has been tested (and re-tested after adding various bug-fixes)
extensively. It has been tested on the following devices:

-Asus T100TA		BYT + CRC-PMIC PWM
-Toshiba WT8-A		BYT + CRC-PMIC PWM
-Thundersoft TS178	BYT + CRC-PMIC PWM, inverse PWM
-Asus T100HA		CHT + CRC-PMIC PWM
-Terra Pad 1061		BYT + LPSS PWM
-Trekstor Twin 10.1	BYT + LPSS PWM
-Asus T101HA		CHT + CRC-PMIC PWM
-GPD Pocket		CHT + CRC-PMIC PWM

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
