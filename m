Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E67D2EAF34
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B0246E175;
	Tue,  5 Jan 2021 15:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8B536E14B
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:41 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:12 +0100
Message-Id: <20210105153558.134272-19-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 18/64] drm/i915: Populate logical context
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
b24uYwppbmRleCBhNWI0NDI2ODNjMTguLjVmNzM2MTFlZDkxYiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb24uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9leGVjbGlzdHNfc3VibWlzc2lvbi5jCkBAIC0yNDg5
LDExICsyNDg5LDMxIEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19zdWJtaXRfcmVxdWVzdChzdHJ1
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
ODksOCArMzQwOSw4IEBAIHN0YXRpYyBpbnQgdmlydHVhbF9jb250ZXh0X3ByZV9waW4oc3RydWN0
IGludGVsX2NvbnRleHQgKmNlLAogewogCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUgPSBjb250
YWluZXJfb2YoY2UsIHR5cGVvZigqdmUpLCBjb250ZXh0KTsKIAotCS8qIE5vdGU6IHdlIG11c3Qg
dXNlIGEgcmVhbCBlbmdpbmUgY2xhc3MgZm9yIHNldHRpbmcgdXAgcmVnIHN0YXRlICovCi0JcmV0
dXJuIGxyY19wcmVfcGluKGNlLCB2ZS0+c2libGluZ3NbMF0sIHd3LCB2YWRkcik7CisJIC8qIE5v
dGU6IHdlIG11c3QgdXNlIGEgcmVhbCBlbmdpbmUgY2xhc3MgZm9yIHNldHRpbmcgdXAgcmVnIHN0
YXRlICovCisJcmV0dXJuIF9fZXhlY2xpc3RzX2NvbnRleHRfcHJlX3BpbihjZSwgdmUtPnNpYmxp
bmdzWzBdLCB3dywgdmFkZHIpOwogfQogCiBzdGF0aWMgaW50IHZpcnR1YWxfY29udGV4dF9waW4o
c3RydWN0IGludGVsX2NvbnRleHQgKmNlLCB2b2lkICp2YWRkcikKLS0gCjIuMzAuMC5yYzEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
