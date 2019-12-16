Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E7C121ADC
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 21:29:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E06746E87A;
	Mon, 16 Dec 2019 20:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D26E86E87A
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 20:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576528153;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=x2+gaSqShRjI9TwRpQ1ymZ0YBhaNrVlTtmkRQd+AJA0=;
 b=TGXKqDqxif9uLlMAt0IYfBIRLTm/FipokgQtR+ztHnPXHaDFmvNwRIAh0TVpWAIcemdal3
 OLHtoCudhXMRBNBTWkc9E4QaPjp1VJy64v/FfKLzr0Q/uGWIhVxsWrQ9d+5jhVUqZtg9Mj
 1zhrgTa4c6acIvlCvrpO3GPP0PDZFms=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-297-aLMJHBYmN3agL3oLRkyuoA-1; Mon, 16 Dec 2019 15:29:12 -0500
X-MC-Unique: aLMJHBYmN3agL3oLRkyuoA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E27618A6EC1;
 Mon, 16 Dec 2019 20:29:10 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-96.ams2.redhat.com
 [10.36.116.96])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D99095C219;
 Mon, 16 Dec 2019 20:29:07 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lee Jones <lee.jones@linaro.org>
Date: Mon, 16 Dec 2019 21:29:03 +0100
Message-Id: <20191216202906.1662893-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Subject: [Intel-gfx] [CI 0/3] drm/i915 / LPSS / mfd: Select correct PWM
 controller to use based on VBT
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi All,

Somehow the CI system did not pick up this series the first time, there
are no test results recorded for it:
https://patchwork.freedesktop.org/series/69685

So this is a resend for CI to do its thing. As soon as CI is happy with
this I will push this to drm-intel-next-queued.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
