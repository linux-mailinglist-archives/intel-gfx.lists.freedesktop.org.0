Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCB661787
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jul 2019 23:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8FE589A9A;
	Sun,  7 Jul 2019 21:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DDE589AB5
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jul 2019 21:00:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17163708-1500050 
 for multiple; Sun, 07 Jul 2019 22:00:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jul 2019 22:00:17 +0100
Message-Id: <20190707210024.26192-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190707210024.26192-1-chris@chris-wilson.co.uk>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/11] drm/i915/gtt: Markup i915_ppgtt depth
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyB3aWxsIGJlIHVzZWZ1bCB0byBjb25zb2xpZGF0ZSByZWN1cnNpdmUgY29kZS4KClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMyArKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5oIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggZGE0ZGI3NmNlMDU0Li4y
ZmM2MGU4YWNkOWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0xNTM3LDYg
KzE1MzcsOCBAQCBzdGF0aWMgdm9pZCBwcGd0dF9pbml0KHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0
dCwgc3RydWN0IGludGVsX2d0ICpndCkKIAlwcGd0dC0+dm0udm1hX29wcy51bmJpbmRfdm1hICA9
IHBwZ3R0X3VuYmluZF92bWE7CiAJcHBndHQtPnZtLnZtYV9vcHMuc2V0X3BhZ2VzICAgPSBwcGd0
dF9zZXRfcGFnZXM7CiAJcHBndHQtPnZtLnZtYV9vcHMuY2xlYXJfcGFnZXMgPSBjbGVhcl9wYWdl
czsKKworCXBwZ3R0LT52bS50b3AgPSBpOTE1X3ZtX2lzXzRsdmwoJnBwZ3R0LT52bSkgPyAzIDog
MjsKIH0KIAogc3RhdGljIHZvaWQgaW5pdF9wZF9uKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtLApAQCAtMjA4Niw2ICsyMDg4LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0ICpnZW42
X3BwZ3R0X2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJcmV0dXJuIEVS
Ul9QVFIoLUVOT01FTSk7CiAKIAlwcGd0dF9pbml0KCZwcGd0dC0+YmFzZSwgJmk5MTUtPmd0KTsK
KwlwcGd0dC0+YmFzZS52bS50b3AgPSAxOwogCiAJcHBndHQtPmJhc2Uudm0uYWxsb2NhdGVfdmFf
cmFuZ2UgPSBnZW42X2FsbG9jX3ZhX3JhbmdlOwogCXBwZ3R0LT5iYXNlLnZtLmNsZWFyX3Jhbmdl
ID0gZ2VuNl9wcGd0dF9jbGVhcl9yYW5nZTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgK
aW5kZXggNDhiYjhjNTEyNWUzLi4xMTliNmQzM2IyNjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5oCkBAIC0zMjMsNiArMzIzLDcgQEAgc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSB7
CiAJc3RydWN0IGk5MTVfcGFnZV9kbWEgc2NyYXRjaF9wdDsKIAlzdHJ1Y3QgaTkxNV9wYWdlX2Rt
YSBzY3JhdGNoX3BkOwogCXN0cnVjdCBpOTE1X3BhZ2VfZG1hIHNjcmF0Y2hfcGRwOyAvKiBHRU44
KyAmIDQ4YiBQUEdUVCAqLworCWludCB0b3A7CiAKIAkvKioKIAkgKiBMaXN0IG9mIHZtYSBjdXJy
ZW50bHkgYm91bmQuCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
