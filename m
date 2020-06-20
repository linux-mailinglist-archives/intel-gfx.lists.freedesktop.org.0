Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA79E2023B4
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Jun 2020 14:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748816E2A8;
	Sat, 20 Jun 2020 12:19:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24726E2A9
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Jun 2020 12:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592655555;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=erfNuDavLxnTtVjZ6+2hP+lNgUKAFKHBVKGsbAMBI4I=;
 b=ZJNwDfCzRf3nr758XG5u5yb3HQmEsMEXcMKQL7e3DrPQm1MUJ36mRd0JefFdjwBnF5+ZW9
 wj4xW40ZiTuOuxb+6asstQ6WOa9Ko2DAc2dZJcjJ/j3LKIT50Vl+ZrLtxtG/hXGdXf1Y5p
 +pg7RRZc9mMNB0bAHHFkz5kGGsrT7gc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-NA83pny-MFWmNDcFyh1coA-1; Sat, 20 Jun 2020 08:19:12 -0400
X-MC-Unique: NA83pny-MFWmNDcFyh1coA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF0CC8017FB;
 Sat, 20 Jun 2020 12:19:09 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-42.ams2.redhat.com [10.36.112.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4180210021B3;
 Sat, 20 Jun 2020 12:19:07 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Date: Sat, 20 Jun 2020 14:17:54 +0200
Message-Id: <20200620121758.14836-12-hdegoede@redhat.com>
In-Reply-To: <20200620121758.14836-1-hdegoede@redhat.com>
References: <20200620121758.14836-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: [Intel-gfx] [PATCH v3 11/15] pwm: crc: Implement get_state() method
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

SW1wbGVtZW50IHRoZSBwd21fb3BzLmdldF9zdGF0ZSgpIG1ldGhvZCB0byBjb21wbGV0ZSB0aGUg
c3VwcG9ydCBmb3IgdGhlCm5ldyBhdG9taWMgUFdNIEFQSS4KClJldmlld2VkLWJ5OiBBbmR5IFNo
ZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KLS0tCkNoYW5nZXMgaW4gdjM6
Ci0gQWRkIEFuZHkncyBSZXZpZXdlZC1ieSB0YWcKLSBSZW1vdmUgZXh0cmEgd2hpdGVzcGFjZSB0
byBhbGlnbiBzb21lIGNvZGUgYWZ0ZXIgYXNzaWdubWVudHMgKHJlcXVlc3RlZCBieQogIFV3ZSBL
bGVpbmUtS8O2bmlnKQotLS0KIGRyaXZlcnMvcHdtL3B3bS1jcmMuYyB8IDI5ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1jcmMuYyBiL2RyaXZlcnMvcHdtL3B3bS1jcmMuYwpp
bmRleCA4YTdmNDcwNzI3OWMuLmIzMTEzNTRkNDBhMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20v
cHdtLWNyYy5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1jcmMuYwpAQCAtMTE5LDggKzExOSwzNyBA
QCBzdGF0aWMgaW50IGNyY19wd21fYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3Qg
cHdtX2RldmljZSAqcHdtLAogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZCBjcmNfcHdtX2dl
dF9zdGF0ZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20sCisJ
CQkgICAgICAgc3RydWN0IHB3bV9zdGF0ZSAqc3RhdGUpCit7CisJc3RydWN0IGNyeXN0YWxjb3Zl
X3B3bSAqY3JjX3B3bSA9IHRvX2NyY19wd20oY2hpcCk7CisJc3RydWN0IGRldmljZSAqZGV2ID0g
Y3JjX3B3bS0+Y2hpcC5kZXY7CisJdW5zaWduZWQgaW50IGNsa19kaXYsIGNsa19kaXZfcmVnLCBk
dXR5X2N5Y2xlX3JlZzsKKwlpbnQgZXJyb3I7CisKKwllcnJvciA9IHJlZ21hcF9yZWFkKGNyY19w
d20tPnJlZ21hcCwgUFdNMF9DTEtfRElWLCAmY2xrX2Rpdl9yZWcpOworCWlmIChlcnJvcikgewor
CQlkZXZfZXJyKGRldiwgIkVycm9yIHJlYWRpbmcgUFdNMF9DTEtfRElWICVkXG4iLCBlcnJvcik7
CisJCXJldHVybjsKKwl9CisKKwllcnJvciA9IHJlZ21hcF9yZWFkKGNyY19wd20tPnJlZ21hcCwg
UFdNMF9EVVRZX0NZQ0xFLCAmZHV0eV9jeWNsZV9yZWcpOworCWlmIChlcnJvcikgeworCQlkZXZf
ZXJyKGRldiwgIkVycm9yIHJlYWRpbmcgUFdNMF9EVVRZX0NZQ0xFICVkXG4iLCBlcnJvcik7CisJ
CXJldHVybjsKKwl9CisKKwljbGtfZGl2ID0gKGNsa19kaXZfcmVnICYgflBXTV9PVVRQVVRfRU5B
QkxFKSArIDE7CisKKwlzdGF0ZS0+cGVyaW9kID0gY2xrX2RpdiAqIE5TRUNfUEVSX1VTRUMgKiAy
NTYgLyBQV01fQkFTRV9DTEtfTUhaOworCXN0YXRlLT5kdXR5X2N5Y2xlID0gZHV0eV9jeWNsZV9y
ZWcgKiBzdGF0ZS0+cGVyaW9kIC8gUFdNX01BWF9MRVZFTDsKKwlzdGF0ZS0+cG9sYXJpdHkgPSBQ
V01fUE9MQVJJVFlfTk9STUFMOworCXN0YXRlLT5lbmFibGVkID0gISEoY2xrX2Rpdl9yZWcgJiBQ
V01fT1VUUFVUX0VOQUJMRSk7Cit9CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcHdtX29wcyBjcmNf
cHdtX29wcyA9IHsKIAkuYXBwbHkgPSBjcmNfcHdtX2FwcGx5LAorCS5nZXRfc3RhdGUgPSBjcmNf
cHdtX2dldF9zdGF0ZSwKIH07CiAKIHN0YXRpYyBpbnQgY3J5c3RhbGNvdmVfcHdtX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
