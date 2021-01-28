Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C752307AF1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:27:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E1336E9DE;
	Thu, 28 Jan 2021 16:27:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D620B6E993
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:26:23 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:25:27 +0100
Message-Id: <20210128162612.927917-19-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 18/63] drm/i915: Populate logical context
 during first pin.
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBhbGxvd3MgdXMgdG8gcmVtb3ZlIHBpbl9tYXAgZnJvbSBzdGF0ZSBhbGxvY2F0aW9uLCB3
aGljaCBzYXZlcwp1cyBhIGZldyByZXRyeSBsb29wcy4gV2Ugd29uJ3QgbmVlZCB0aGlzIHVudGls
IGZpcnN0IHBpbiwgYW55d2F5LgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1h
YXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxs
c3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiAuLi4vZHJtL2k5
MTUvZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb24uYyAgfCAyNiArKysrKysrKysrKysrKysr
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9leGVjbGlzdHNfc3VibWlz
c2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Np
b24uYwppbmRleCBlMjBhYjJlYWIzYTguLjEzZTE4NzZhNmI2YyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb24uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9leGVjbGlzdHNfc3VibWlzc2lvbi5jCkBAIC0yNDU2
LDExICsyNDU2LDMxIEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19zdWJtaXRfcmVxdWVzdChzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0KQogCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmVuZ2lu
ZS0+YWN0aXZlLmxvY2ssIGZsYWdzKTsKIH0KIAorc3RhdGljIGludAorX19leGVjbGlzdHNfY29u
dGV4dF9wcmVfcGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJCSAgICBzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUsCisJCQkgICAgc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3cs
IHZvaWQgKip2YWRkcikKK3sKKwlpbnQgZXJyOworCisJZXJyID0gbHJjX3ByZV9waW4oY2UsIGVu
Z2luZSwgd3csIHZhZGRyKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOworCisJaWYgKCFfX3Rl
c3RfYW5kX3NldF9iaXQoQ09OVEVYVF9JTklUX0JJVCwgJmNlLT5mbGFncykpIHsKKwkJbHJjX2lu
aXRfc3RhdGUoY2UsIGVuZ2luZSwgKnZhZGRyKTsKKworCQkgX19pOTE1X2dlbV9vYmplY3RfZmx1
c2hfbWFwKGNlLT5zdGF0ZS0+b2JqLCAwLCBlbmdpbmUtPmNvbnRleHRfc2l6ZSk7CisJfQorCisJ
cmV0dXJuIDA7Cit9CisKIHN0YXRpYyBpbnQgZXhlY2xpc3RzX2NvbnRleHRfcHJlX3BpbihzdHJ1
Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJCQkJICAgICBzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3
dywKIAkJCQkgICAgIHZvaWQgKip2YWRkcikKIHsKLQlyZXR1cm4gbHJjX3ByZV9waW4oY2UsIGNl
LT5lbmdpbmUsIHd3LCB2YWRkcik7CisJcmV0dXJuIF9fZXhlY2xpc3RzX2NvbnRleHRfcHJlX3Bp
bihjZSwgY2UtPmVuZ2luZSwgd3csIHZhZGRyKTsKIH0KIAogc3RhdGljIGludCBleGVjbGlzdHNf
Y29udGV4dF9waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICp2YWRkcikKQEAgLTMz
NjYsOCArMzM4Niw4IEBAIHN0YXRpYyBpbnQgdmlydHVhbF9jb250ZXh0X3ByZV9waW4oc3RydWN0
IGludGVsX2NvbnRleHQgKmNlLAogewogCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUgPSBjb250
YWluZXJfb2YoY2UsIHR5cGVvZigqdmUpLCBjb250ZXh0KTsKIAotCS8qIE5vdGU6IHdlIG11c3Qg
dXNlIGEgcmVhbCBlbmdpbmUgY2xhc3MgZm9yIHNldHRpbmcgdXAgcmVnIHN0YXRlICovCi0JcmV0
dXJuIGxyY19wcmVfcGluKGNlLCB2ZS0+c2libGluZ3NbMF0sIHd3LCB2YWRkcik7CisJIC8qIE5v
dGU6IHdlIG11c3QgdXNlIGEgcmVhbCBlbmdpbmUgY2xhc3MgZm9yIHNldHRpbmcgdXAgcmVnIHN0
YXRlICovCisJcmV0dXJuIF9fZXhlY2xpc3RzX2NvbnRleHRfcHJlX3BpbihjZSwgdmUtPnNpYmxp
bmdzWzBdLCB3dywgdmFkZHIpOwogfQogCiBzdGF0aWMgaW50IHZpcnR1YWxfY29udGV4dF9waW4o
c3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICp2YWRkcikKLS0gCjIuMzAuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
