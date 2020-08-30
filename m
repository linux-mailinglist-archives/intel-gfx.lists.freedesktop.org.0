Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EA1256DD9
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Aug 2020 14:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 626556E30F;
	Sun, 30 Aug 2020 12:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D96D6E303
 for <intel-gfx@lists.freedesktop.org>; Sun, 30 Aug 2020 12:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598792318;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6zdMqI9djrIOSjSF+r36fsHrv2APK30XDs0lh8OJOjs=;
 b=LNxSEYBySGyCEFX1uIBvrrMRJf2l0Ik06/+yYAV4fhRspdIQwLRkXbpEAQZx/rTF4lKl+F
 7F3bfS/sIpvRQTi9oIkmO71oODm+iQq7NbOqWJw2UcbgfDyxnlDIe+m4830GegyYidR6GA
 dktBKlYNfpKkPnmnJEPjnucKf6dCuYM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-501-INYwc280OWymb5Zw1sZcOQ-1; Sun, 30 Aug 2020 08:58:34 -0400
X-MC-Unique: INYwc280OWymb5Zw1sZcOQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C33D8015F5;
 Sun, 30 Aug 2020 12:58:32 +0000 (UTC)
Received: from x1.localdomain.com (ovpn-112-77.ams2.redhat.com [10.36.112.77])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BFBC4171C6;
 Sun, 30 Aug 2020 12:58:29 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>
Date: Sun, 30 Aug 2020 14:57:47 +0200
Message-Id: <20200830125753.230420-12-hdegoede@redhat.com>
In-Reply-To: <20200830125753.230420-1-hdegoede@redhat.com>
References: <20200830125753.230420-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: [Intel-gfx] [PATCH v8 11/17] pwm: crc: Enable/disable PWM output on
 enable/disable
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

VGhlIHB3bS1jcmMgY29kZSBpcyB1c2luZyAyIGRpZmZlcmVudCBlbmFibGUgYml0czoKMS4gYml0
IDcgb2YgdGhlIFBXTTBfQ0xLX0RJViAoUFdNX09VVFBVVF9FTkFCTEUpCjIuIGJpdCAwIG9mIHRo
ZSBCQUNLTElHSFRfRU4gcmVnaXN0ZXIKClNvIGZhciB3ZSd2ZSBrZXB0IHRoZSBQV01fT1VUUFVU
X0VOQUJMRSBiaXQgc2V0IHdoZW4gZGlzYWJsaW5nIHRoZSBQV00sCnRoaXMgY29tbWl0IG1ha2Vz
IGNyY19wd21fZGlzYWJsZSgpIGNsZWFyIGl0IG9uIGRpc2FibGUgYW5kIG1ha2VzCmNyY19wd21f
ZW5hYmxlKCkgc2V0IGl0IGFnYWluIG9uIHJlLWVuYWJsZS4KCkFja2VkLWJ5OiBVd2UgS2xlaW5l
LUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpSZXZpZXdlZC1ieTogQW5k
eSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+Ci0tLQpDaGFuZ2VzIGlu
IHYzOgotIFJlbW92ZSBwYXJhZ3JhcGggYWJvdXQgdHJpLXN0YXRpbmcgdGhlIG91dHB1dCBmcm9t
IHRoZSBjb21taXQgbWVzc2FnZSwKICB3ZSBkb24ndCBoYXZlIGEgZGF0YXNoZWV0IHNvIHRoaXMg
d2FzIGp1c3QgYW4gdW5mb3VuZGVkIGd1ZXNzCi0tLQogZHJpdmVycy9wd20vcHdtLWNyYy5jIHwg
NCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wd20vcHdtLWNyYy5jIGIvZHJpdmVycy9wd20vcHdtLWNyYy5jCmluZGV4IDgxMjMyZGEw
Yzc2Ny4uYjcyMDA4YzliMDcyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tY3JjLmMKKysr
IGIvZHJpdmVycy9wd20vcHdtLWNyYy5jCkBAIC01NCw3ICs1NCw5IEBAIHN0YXRpYyBpbnQgY3Jj
X3B3bV9jYWxjX2Nsa19kaXYoaW50IHBlcmlvZF9ucykKIHN0YXRpYyBpbnQgY3JjX3B3bV9lbmFi
bGUoc3RydWN0IHB3bV9jaGlwICpjLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtKQogewogCXN0cnVj
dCBjcnlzdGFsY292ZV9wd20gKmNyY19wd20gPSB0b19jcmNfcHdtKGMpOworCWludCBkaXYgPSBj
cmNfcHdtX2NhbGNfY2xrX2Rpdihwd21fZ2V0X3BlcmlvZChwd20pKTsKIAorCXJlZ21hcF93cml0
ZShjcmNfcHdtLT5yZWdtYXAsIFBXTTBfQ0xLX0RJViwgZGl2IHwgUFdNX09VVFBVVF9FTkFCTEUp
OwogCXJlZ21hcF93cml0ZShjcmNfcHdtLT5yZWdtYXAsIEJBQ0tMSUdIVF9FTiwgMSk7CiAKIAly
ZXR1cm4gMDsKQEAgLTYzLDggKzY1LDEwIEBAIHN0YXRpYyBpbnQgY3JjX3B3bV9lbmFibGUoc3Ry
dWN0IHB3bV9jaGlwICpjLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtKQogc3RhdGljIHZvaWQgY3Jj
X3B3bV9kaXNhYmxlKHN0cnVjdCBwd21fY2hpcCAqYywgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSkK
IHsKIAlzdHJ1Y3QgY3J5c3RhbGNvdmVfcHdtICpjcmNfcHdtID0gdG9fY3JjX3B3bShjKTsKKwlp
bnQgZGl2ID0gY3JjX3B3bV9jYWxjX2Nsa19kaXYocHdtX2dldF9wZXJpb2QocHdtKSk7CiAKIAly
ZWdtYXBfd3JpdGUoY3JjX3B3bS0+cmVnbWFwLCBCQUNLTElHSFRfRU4sIDApOworCXJlZ21hcF93
cml0ZShjcmNfcHdtLT5yZWdtYXAsIFBXTTBfQ0xLX0RJViwgZGl2KTsKIH0KIAogc3RhdGljIGlu
dCBjcmNfcHdtX2NvbmZpZyhzdHJ1Y3QgcHdtX2NoaXAgKmMsIHN0cnVjdCBwd21fZGV2aWNlICpw
d20sCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
