Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 213AD256DC3
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Aug 2020 14:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 923BB6E2BD;
	Sun, 30 Aug 2020 12:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 259EB6E2B6
 for <intel-gfx@lists.freedesktop.org>; Sun, 30 Aug 2020 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598792295;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3rXccuABT6+C2AQXzwjNb04mRQTh+EDLI9eSXOti2cI=;
 b=Ae5uEN8l+C+cQTRNstRmvPiWYzJrLapO5RiW7v0BzzhF4i09jEQknrBXTKFrOkGt1oFkkp
 07qiamKWbaIZX1Zlf/wm84w4tOIfiAa0h8fX/PGBDglwBOkwbQsFyFN2Qax1KmcSPnD55K
 K+of6SlVMiRDgrA/mD1nfXokIw9PzVU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-363-XPZXeq87OWmSxMQ1V4Ve1g-1; Sun, 30 Aug 2020 08:58:11 -0400
X-MC-Unique: XPZXeq87OWmSxMQ1V4Ve1g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CF85801AC4;
 Sun, 30 Aug 2020 12:58:09 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-77.ams2.redhat.com [10.36.112.77])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AB906171C6;
 Sun, 30 Aug 2020 12:58:06 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Date: Sun, 30 Aug 2020 14:57:39 +0200
Message-Id: <20200830125753.230420-4-hdegoede@redhat.com>
In-Reply-To: <20200830125753.230420-1-hdegoede@redhat.com>
References: <20200830125753.230420-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: [Intel-gfx] [PATCH v8 03/17] pwm: lpss: Fix off by one error in
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNjb3JkaW5nIHRvIHRoZSBkYXRhLXNoZWV0IHRoZSB3YXkgdGhlIFBXTSBjb250cm9sbGVyIHdv
cmtzIGlzIHRoYXQKZWFjaCBpbnB1dCBjbG9jay1jeWNsZSB0aGUgYmFzZV91bml0IGdldHMgYWRk
ZWQgdG8gYSBOIGJpdCBjb3VudGVyIGFuZAp0aGF0IGNvdW50ZXIgb3ZlcmZsb3dpbmcgZGV0ZXJt
aW5lcyB0aGUgUFdNIG91dHB1dCBmcmVxdWVuY3kuCgpTbyBhc3N1bWluZyBlLmcuIGEgMTYgYml0
IGNvdW50ZXIgdGhpcyBtZWFucyB0aGF0IGlmIGJhc2VfdW5pdCBpcyBzZXQgdG8gMSwKYWZ0ZXIg
NjU1MzUgaW5wdXQgY2xvY2stY3ljbGVzIHRoZSBjb3VudGVyIGhhcyBiZWVuIGluY3JlYXNlZCBm
cm9tIDAgdG8KNjU1MzUgYW5kIGl0IHdpbGwgb3ZlcmZsb3cgb24gdGhlIG5leHQgY3ljbGUsIHNv
IGl0IHdpbGwgb3ZlcmZsb3cgYWZ0ZXIKZXZlcnkgNjU1MzYgY2xvY2sgY3ljbGVzIGFuZCB0aHVz
IHRoZSBjYWxjdWxhdGlvbnMgZG9uZSBpbgpwd21fbHBzc19wcmVwYXJlKCkgc2hvdWxkIHVzZSA2
NTUzNiBhbmQgbm90IDY1NTM1LgoKVGhpcyBjb21taXQgZml4ZXMgdGhpcy4gTm90ZSB0aGlzIGFs
c28gYWxpZ25zIHRoZSBjYWxjdWxhdGlvbnMgaW4KcHdtX2xwc3NfcHJlcGFyZSgpIHdpdGggdGhv
c2UgaW4gcHdtX2xwc3NfZ2V0X3N0YXRlKCkuCgpOb3RlIHRoaXMgZWZmZWN0aXZlbHkgcmV2ZXJ0
cyBjb21taXQgNjg0MzA5ZTUwNDNlICgicHdtOiBscHNzOiBBdm9pZApwb3RlbnRpYWwgb3ZlcmZs
b3cgb2YgYmFzZV91bml0IikuIFRoZSBuZXh0IHBhdGNoIGluIHRoaXMgc2VyaWVzIHJlYWxseQpm
aXhlcyB0aGUgcG90ZW50aWFsIG92ZXJmbG93IG9mIHRoZSBiYXNlX3VuaXQgdmFsdWUuCgpGaXhl
czogNjg0MzA5ZTUwNDNlICgicHdtOiBscHNzOiBBdm9pZCBwb3RlbnRpYWwgb3ZlcmZsb3cgb2Yg
YmFzZV91bml0IikKUmV2aWV3ZWQtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVu
a29AbGludXguaW50ZWwuY29tPgpBY2tlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5l
LWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogSGFucyBkZSBHb2VkZSA8aGRl
Z29lZGVAcmVkaGF0LmNvbT4KLS0tCkNoYW5nZXMgaW4gdjM6Ci0gQWRkIEZpeGVzIHRhZwotIEFk
ZCBSZXZpZXdlZC1ieTogQW5keSBTaGV2Y2hlbmtvIHRhZwotLS0KIGRyaXZlcnMvcHdtL3B3bS1s
cHNzLmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tbHBzcy5jIGIvZHJpdmVycy9w
d20vcHdtLWxwc3MuYwppbmRleCA5ZDk2NWZmZTY2ZDEuLjQzYjFmYzYzNGFmMSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9wd20vcHdtLWxwc3MuYworKysgYi9kcml2ZXJzL3B3bS9wd20tbHBzcy5jCkBA
IC05Myw3ICs5Myw3IEBAIHN0YXRpYyB2b2lkIHB3bV9scHNzX3ByZXBhcmUoc3RydWN0IHB3bV9s
cHNzX2NoaXAgKmxwd20sIHN0cnVjdCBwd21fZGV2aWNlICpwd20sCiAJICogVGhlIGVxdWF0aW9u
IGlzOgogCSAqIGJhc2VfdW5pdCA9IHJvdW5kKGJhc2VfdW5pdF9yYW5nZSAqIGZyZXEgLyBjKQog
CSAqLwotCWJhc2VfdW5pdF9yYW5nZSA9IEJJVChscHdtLT5pbmZvLT5iYXNlX3VuaXRfYml0cykg
LSAxOworCWJhc2VfdW5pdF9yYW5nZSA9IEJJVChscHdtLT5pbmZvLT5iYXNlX3VuaXRfYml0cyk7
CiAJZnJlcSAqPSBiYXNlX3VuaXRfcmFuZ2U7CiAKIAliYXNlX3VuaXQgPSBESVZfUk9VTkRfQ0xP
U0VTVF9VTEwoZnJlcSwgYyk7CkBAIC0xMDQsOCArMTA0LDggQEAgc3RhdGljIHZvaWQgcHdtX2xw
c3NfcHJlcGFyZShzdHJ1Y3QgcHdtX2xwc3NfY2hpcCAqbHB3bSwgc3RydWN0IHB3bV9kZXZpY2Ug
KnB3bSwKIAogCW9yaWdfY3RybCA9IGN0cmwgPSBwd21fbHBzc19yZWFkKHB3bSk7CiAJY3RybCAm
PSB+UFdNX09OX1RJTUVfRElWX01BU0s7Ci0JY3RybCAmPSB+KGJhc2VfdW5pdF9yYW5nZSA8PCBQ
V01fQkFTRV9VTklUX1NISUZUKTsKLQliYXNlX3VuaXQgJj0gYmFzZV91bml0X3JhbmdlOworCWN0
cmwgJj0gfigoYmFzZV91bml0X3JhbmdlIC0gMSkgPDwgUFdNX0JBU0VfVU5JVF9TSElGVCk7CisJ
YmFzZV91bml0ICY9IChiYXNlX3VuaXRfcmFuZ2UgLSAxKTsKIAljdHJsIHw9ICh1MzIpIGJhc2Vf
dW5pdCA8PCBQV01fQkFTRV9VTklUX1NISUZUOwogCWN0cmwgfD0gb25fdGltZV9kaXY7CiAKLS0g
CjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
