Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF60423140
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 12:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9535588E37;
	Mon, 20 May 2019 10:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC8288E37
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 10:23:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 03:23:06 -0700
X-ExtLoop1: 1
Received: from ovasilev-desk1.fi.intel.com ([10.237.72.57])
 by orsmga008.jf.intel.com with ESMTP; 20 May 2019 03:23:04 -0700
From: Oleg Vasilev <oleg.vasilev@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2019 13:22:35 +0300
Message-Id: <20190520102235.31735-1-oleg.vasilev@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517162109.2319-1-oleg.vasilev@intel.com>
References: <20190517162109.2319-1-oleg.vasilev@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: add i2c symlink under hdmi
 connector
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5LCB0aGUgaTJjIGFkYXB0ZXIgaXMgYXZhaWxhYmxlIG9ubHkgdW5kZXIgRFAgY29u
bmVjdG9ycy4KCkFkZCBpMmMgc3ltbGluayB1bmRlciBoZG1pIGNvbm5lY3RvciBwb2ludGluZyB0
byBpMmMgYWRhcHRlciBpbiBvcmRlciB0bwptYWtlIHRoaXMgYmVoYXZpb3VyIGNvbnNpc3RlbnQu
CgpUaGUgaW5pdGlhbCBtb3RpdmF0aW9uIHdhcyB0byBtYWtlIGlndCBpMmMgc3VidGVzdApwYXRj
aCBbMV0gd29yayBvbiBhbGwgY29ubmVjdG9ycy4KClsxXTogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy82MDM1Ny8KCnYyOgotIE1vdmVkIHN5bWxpbmsgcmVtb3ZlIHRv
IHVucmVnaXN0ZXIgKFZpbGxlKQotIENsYXJpZmllZCBjb21taXQgbWVzc2FnZSAoSmFuaSkKLSBD
aGFuZ2VkIFdBUk4gdG8gRFJNX0VSUk9SIChKYW5pKQotIE1pbm9yIGNvZGVzdHlsZSBjaGFuZ2Vz
IHByb3Bvc2VkIGJ5IEphbmkKCkNjOiBBcmthZGl1c3ogSGlsZXIgPGFya2FkaXVzei5oaWxlckBp
bnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogT2xlZyBWYXNpbGV2IDxvbGVn
LnZhc2lsZXZAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkbWku
YyB8IDQwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAz
OSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5j
CmluZGV4IDJhNDA4NmNmMjY5Mi4uZmQzODNkZTUzMWI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
aGRtaS5jCkBAIC0yNjU4LDYgKzI2NTgsMzUgQEAgc3RhdGljIHZvaWQgY2h2X2hkbWlfcHJlX2Vu
YWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAljaHZfcGh5X3JlbGVhc2VfY2wy
X292ZXJyaWRlKGVuY29kZXIpOwogfQogCitzdGF0aWMgc3RydWN0IGkyY19hZGFwdGVyICoKK2lu
dGVsX2hkbWlfZ2V0X2kyY19hZGFwdGVyKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3Ip
Cit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0
b3ItPmRldik7CisJc3RydWN0IGludGVsX2hkbWkgKmludGVsX2hkbWkgPSBpbnRlbF9hdHRhY2hl
ZF9oZG1pKGNvbm5lY3Rvcik7CisJcmV0dXJuIGludGVsX2dtYnVzX2dldF9hZGFwdGVyKGRldl9w
cml2LCBpbnRlbF9oZG1pLT5kZGNfYnVzKTsKK30KKworc3RhdGljIHZvaWQgaW50ZWxfaGRtaV9j
cmVhdGVfaTJjX3N5bWxpbmsoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKK3sKKwlz
dHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXB0ZXIgPSBpbnRlbF9oZG1pX2dldF9pMmNfYWRhcHRlcihj
b25uZWN0b3IpOworCXN0cnVjdCBrb2JqZWN0ICppMmNfa29iaiA9ICZhZGFwdGVyLT5kZXYua29i
ajsKKwlzdHJ1Y3Qga29iamVjdCAqY29ubmVjdG9yX2tvYmogPSAmY29ubmVjdG9yLT5rZGV2LT5r
b2JqOworCWludCByZXQ7CisKKwlyZXQgPSBzeXNmc19jcmVhdGVfbGluayhjb25uZWN0b3Jfa29i
aiwgaTJjX2tvYmosIGkyY19rb2JqLT5uYW1lKTsKKwlpZiAocmV0KQorCQlEUk1fRVJST1IoIkZh
aWxlZCB0byBjcmVhdGUgaTJjIHN5bWxpbmsgKCVkKVxuIiwgcmV0KTsKK30KKworc3RhdGljIHZv
aWQgaW50ZWxfaGRtaV9yZW1vdmVfaTJjX3N5bWxpbmsoc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvcikKK3sKKwlzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmFkYXB0ZXIgPSBpbnRlbF9oZG1pX2dl
dF9pMmNfYWRhcHRlcihjb25uZWN0b3IpOworCXN0cnVjdCBrb2JqZWN0ICppMmNfa29iaiA9ICZh
ZGFwdGVyLT5kZXYua29iajsKKwlzdHJ1Y3Qga29iamVjdCAqY29ubmVjdG9yX2tvYmogPSAmY29u
bmVjdG9yLT5rZGV2LT5rb2JqOworCisJc3lzZnNfcmVtb3ZlX2xpbmsoY29ubmVjdG9yX2tvYmos
IGkyY19rb2JqLT5uYW1lKTsKK30KKwogc3RhdGljIGludAogaW50ZWxfaGRtaV9jb25uZWN0b3Jf
cmVnaXN0ZXIoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKIHsKQEAgLTI2NjksNiAr
MjY5OCw4IEBAIGludGVsX2hkbWlfY29ubmVjdG9yX3JlZ2lzdGVyKHN0cnVjdCBkcm1fY29ubmVj
dG9yICpjb25uZWN0b3IpCiAKIAlpOTE1X2RlYnVnZnNfY29ubmVjdG9yX2FkZChjb25uZWN0b3Ip
OwogCisJaW50ZWxfaGRtaV9jcmVhdGVfaTJjX3N5bWxpbmsoY29ubmVjdG9yKTsKKwogCXJldHVy
biByZXQ7CiB9CiAKQEAgLTI2ODAsNiArMjcxMSwxMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9oZG1p
X2Rlc3Ryb3koc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAlpbnRlbF9jb25uZWN0
b3JfZGVzdHJveShjb25uZWN0b3IpOwogfQogCitzdGF0aWMgdm9pZCBpbnRlbF9oZG1pX2Nvbm5l
Y3Rvcl91bnJlZ2lzdGVyKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCit7CisJaW50
ZWxfaGRtaV9yZW1vdmVfaTJjX3N5bWxpbmsoY29ubmVjdG9yKTsKKworCWludGVsX2Nvbm5lY3Rv
cl91bnJlZ2lzdGVyKGNvbm5lY3Rvcik7Cit9CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Nv
bm5lY3Rvcl9mdW5jcyBpbnRlbF9oZG1pX2Nvbm5lY3Rvcl9mdW5jcyA9IHsKIAkuZGV0ZWN0ID0g
aW50ZWxfaGRtaV9kZXRlY3QsCiAJLmZvcmNlID0gaW50ZWxfaGRtaV9mb3JjZSwKQEAgLTI2ODcs
NyArMjcyNSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9mdW5jcyBpbnRl
bF9oZG1pX2Nvbm5lY3Rvcl9mdW5jcyA9IHsKIAkuYXRvbWljX2dldF9wcm9wZXJ0eSA9IGludGVs
X2RpZ2l0YWxfY29ubmVjdG9yX2F0b21pY19nZXRfcHJvcGVydHksCiAJLmF0b21pY19zZXRfcHJv
cGVydHkgPSBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9hdG9taWNfc2V0X3Byb3BlcnR5LAogCS5s
YXRlX3JlZ2lzdGVyID0gaW50ZWxfaGRtaV9jb25uZWN0b3JfcmVnaXN0ZXIsCi0JLmVhcmx5X3Vu
cmVnaXN0ZXIgPSBpbnRlbF9jb25uZWN0b3JfdW5yZWdpc3RlciwKKwkuZWFybHlfdW5yZWdpc3Rl
ciA9IGludGVsX2hkbWlfY29ubmVjdG9yX3VucmVnaXN0ZXIsCiAJLmRlc3Ryb3kgPSBpbnRlbF9o
ZG1pX2Rlc3Ryb3ksCiAJLmF0b21pY19kZXN0cm95X3N0YXRlID0gZHJtX2F0b21pY19oZWxwZXJf
Y29ubmVjdG9yX2Rlc3Ryb3lfc3RhdGUsCiAJLmF0b21pY19kdXBsaWNhdGVfc3RhdGUgPSBpbnRl
bF9kaWdpdGFsX2Nvbm5lY3Rvcl9kdXBsaWNhdGVfc3RhdGUsCi0tIAoyLjIxLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
