Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A5B337473
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 14:49:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5636ECB4;
	Thu, 11 Mar 2021 13:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D30C56ECA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 13:48:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:41:58 +0100
Message-Id: <20210311134249.588632-19-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
References: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 18/69] drm/i915: Populate logical context
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
b24uYwppbmRleCA4NWZmNWZlODYxYjQuLmNhNmE4NTUzNzI3NCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb24uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9leGVjbGlzdHNfc3VibWlzc2lvbi5jCkBAIC0yMjA2
LDExICsyMjA2LDMxIEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19wcmVlbXB0KHN0cnVjdCB0aW1l
cl9saXN0ICp0aW1lcikKIAlleGVjbGlzdHNfa2ljayh0aW1lciwgcHJlZW1wdCk7CiB9CiAKK3N0
YXRpYyBpbnQKK19fZXhlY2xpc3RzX2NvbnRleHRfcHJlX3BpbihzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UsCisJCQkgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAorCQkJICAgIHN0
cnVjdCBpOTE1X2dlbV93d19jdHggKnd3LCB2b2lkICoqdmFkZHIpCit7CisJaW50IGVycjsKKwor
CWVyciA9IGxyY19wcmVfcGluKGNlLCBlbmdpbmUsIHd3LCB2YWRkcik7CisJaWYgKGVycikKKwkJ
cmV0dXJuIGVycjsKKworCWlmICghX190ZXN0X2FuZF9zZXRfYml0KENPTlRFWFRfSU5JVF9CSVQs
ICZjZS0+ZmxhZ3MpKSB7CisJCWxyY19pbml0X3N0YXRlKGNlLCBlbmdpbmUsICp2YWRkcik7CisK
KwkJIF9faTkxNV9nZW1fb2JqZWN0X2ZsdXNoX21hcChjZS0+c3RhdGUtPm9iaiwgMCwgZW5naW5l
LT5jb250ZXh0X3NpemUpOworCX0KKworCXJldHVybiAwOworfQorCiBzdGF0aWMgaW50IGV4ZWNs
aXN0c19jb250ZXh0X3ByZV9waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCQkJCSAgICAg
c3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3csCiAJCQkJICAgICB2b2lkICoqdmFkZHIpCiB7Ci0J
cmV0dXJuIGxyY19wcmVfcGluKGNlLCBjZS0+ZW5naW5lLCB3dywgdmFkZHIpOworCXJldHVybiBf
X2V4ZWNsaXN0c19jb250ZXh0X3ByZV9waW4oY2UsIGNlLT5lbmdpbmUsIHd3LCB2YWRkcik7CiB9
CiAKIHN0YXRpYyBpbnQgZXhlY2xpc3RzX2NvbnRleHRfcGluKHN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZSwgdm9pZCAqdmFkZHIpCkBAIC0zMDg4LDggKzMxMDgsOCBAQCBzdGF0aWMgaW50IHZpcnR1
YWxfY29udGV4dF9wcmVfcGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIHsKIAlzdHJ1Y3Qg
dmlydHVhbF9lbmdpbmUgKnZlID0gY29udGFpbmVyX29mKGNlLCB0eXBlb2YoKnZlKSwgY29udGV4
dCk7CiAKLQkvKiBOb3RlOiB3ZSBtdXN0IHVzZSBhIHJlYWwgZW5naW5lIGNsYXNzIGZvciBzZXR0
aW5nIHVwIHJlZyBzdGF0ZSAqLwotCXJldHVybiBscmNfcHJlX3BpbihjZSwgdmUtPnNpYmxpbmdz
WzBdLCB3dywgdmFkZHIpOworCSAvKiBOb3RlOiB3ZSBtdXN0IHVzZSBhIHJlYWwgZW5naW5lIGNs
YXNzIGZvciBzZXR0aW5nIHVwIHJlZyBzdGF0ZSAqLworCXJldHVybiBfX2V4ZWNsaXN0c19jb250
ZXh0X3ByZV9waW4oY2UsIHZlLT5zaWJsaW5nc1swXSwgd3csIHZhZGRyKTsKIH0KIAogc3RhdGlj
IGludCB2aXJ0dWFsX2NvbnRleHRfcGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgdm9pZCAq
dmFkZHIpCi0tIAoyLjMwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
