Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD5A28D6B7
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 00:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C259E6E97F;
	Tue, 13 Oct 2020 22:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B6B26E13A
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 22:58:03 +0000 (UTC)
IronPort-SDR: XNezwT458FjWbZgE7LVuqwOngOD6SreWNm+y+2d/SjV5IVgv/jznNTKxuy9cslUA7I88hyFqii
 S6VomXWwKkjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="145315612"
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="145315612"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 15:58:02 -0700
IronPort-SDR: RD+NahmNb6+Yi4fe1coVKaN1Ki/YCvvrYyA22GWhs8K+wToidl32CDTTpcdvnOaot8KY1dMzCD
 Xgp9+B33yZkw==
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="313976712"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.55])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 15:58:01 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 16:01:18 -0700
Message-Id: <20201013230121.331595-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201013230121.331595-1-jose.souza@intel.com>
References: <20201013230121.331595-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/display/psr: Consider other planes
 to damaged area calculation
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UGxhbmVzIGNhbiBpbmRpdmlkdWFsbHkgaGF2ZSB0cmFuc3BhcmVudCwgbW92ZSBvciBoYXZlIHZp
c2liaWxpdHkKY2hhbmdlZCBpZiBhbnkgb2YgdGhvc2UgaGFwcGVucywgcGxhbmVzIGJlbGxvdyBp
dCB3aWxsIGJlIHZpc2libGUgb3IKaGF2ZSBtb3JlIHBpeGVscyBvZiBpdCB2aXNpYmxlIHRoYW4g
YmVmb3JlLgoKVGhpcyBwYXRjaCBpcyB0YWtpbmcgY2FyZSBvZiB0aGlzIGNhc2UgZm9yIHNlbGVj
dGl2ZSBmZXRjaCBieSBhZGRpbmcKdG8gZWFjaCBwbGFuZSBkYW1hZ2VkIGFyZWEgYWxsIHRoZSBp
bnRlcnNlY3Rpb25zIG9mIHBsYW5lcyBhYm92ZSBpdAp0aGF0IG1hdGNoZXMgd2l0aCB0aGUgY2hh
cmFjdGVyaXN0aWNzIGRlc2NyaWJlZCBhYm92ZS4KClRoZXJlIHN0aWxsIHNvbWUgcm9vbSBmcm9t
IGltcHJvdmVtZW50cyBoZXJlIGJ1dCBhdCBsZWFzdCB0aGlzIGluaXRpYWwKdmVyc2lvbiB3aWxs
IHRha2UgY2FyZSBvZiBkaXNwbGF5IHdoYXQgaXMgZXhwZWN0ZWQgc2F2aW5nIHNvbWUgbWVtb3J5
CnJlYWRzLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+CkNjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA2MiArKysrKysr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggMGYxZTlmMGZhNTdmLi45
MWJhOTdiZjYwOWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpA
QCAtMTI1MywxMSArMTI1MywzOCBAQCBzdGF0aWMgdm9pZCBjbGlwX2FyZWFfdXBkYXRlKHN0cnVj
dCBkcm1fcmVjdCAqb3ZlcmxhcF9kYW1hZ2VfYXJlYSwKIAkJb3ZlcmxhcF9kYW1hZ2VfYXJlYS0+
eTIgPSBkYW1hZ2VfYXJlYS0+eTI7CiB9CiAKKy8qIFVwZGF0ZSBwbGFuZSBkYW1hZ2UgYXJlYSBp
ZiBwbGFuZXMgYWJvdmUgbW92ZWQgb3IgaGF2ZSBhbHBoYSAqLworc3RhdGljIHZvaWQgcGlwZV9k
aXJ0eV9hcmVhc19zZXQoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwKKwkJ
CQkgc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKKwkJCQkgY29uc3Qgc3RydWN0IGRybV9yZWN0
ICpwaXBlX2RpcnR5X2FyZWFzLAorCQkJCSBzdHJ1Y3QgZHJtX3JlY3QgKnNlbF9mZXRjaF9hcmVh
KQoreworCWVudW0gcGxhbmVfaWQgaTsKKworCWZvciAoaSA9IFBMQU5FX0NVUlNPUjsgaSA+IHBs
YW5lLT5pZDsgaS0tKSB7CisJCWludCBqOworCisJCWZvciAoaiA9IDA7IGogPCAyOyBqKyspIHsK
KwkJCXN0cnVjdCBkcm1fcmVjdCByID0gcGlwZV9kaXJ0eV9hcmVhc1tpICogMiArIGpdOworCisJ
CQlpZiAoIWRybV9yZWN0X3dpZHRoKCZyKSkKKwkJCQljb250aW51ZTsKKwkJCWlmICghZHJtX3Jl
Y3RfaW50ZXJzZWN0KCZyLCAmcGxhbmVfc3RhdGUtPnVhcGkuZHN0KSkKKwkJCQljb250aW51ZTsK
KworCQkJci55MSAtPSBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7CisJCQlyLnkyIC09IHBsYW5l
X3N0YXRlLT51YXBpLmRzdC55MTsKKwkJCWNsaXBfYXJlYV91cGRhdGUoc2VsX2ZldGNoX2FyZWEs
ICZyKTsKKwkJfQorCX0KK30KKwogaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJCQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YykKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9IGludGVsX2F0b21p
Y19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwogCXN0cnVjdCBpbnRlbF9wbGFuZV9z
dGF0ZSAqbmV3X3BsYW5lX3N0YXRlLCAqb2xkX3BsYW5lX3N0YXRlOworCXN0cnVjdCBkcm1fcmVj
dCBwaXBlX2RpcnR5X2FyZWFzW0k5MTVfTUFYX1BMQU5FUyAqIDJdID0ge307CiAJc3RydWN0IGRy
bV9yZWN0IHBpcGVfY2xpcCA9IHsgLnkxID0gLTEgfTsKIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBs
YW5lOwogCWJvb2wgZnVsbF91cGRhdGUgPSBmYWxzZTsKQEAgLTEyNzAsNiArMTI5NywzOCBAQCBp
bnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKKwkvKgorCSAqIE1hcmsgYWxsIHRo
ZSBhcmVhcyB3aGVyZSB0aGVyZSBpcyBhIHBsYW5lIHRoYXQgbWF0Y2hlcyBvbmUgb2YgdGhpczoK
KwkgKiAtIHRyYW5zcGFyZW50CisJICogLSBtb3ZlZAorCSAqIC0gdmlzaWJpbGl0eSBjaGFuZ2Vk
CisJICogSW4gYWxsIHRob3NlIGNhc2VzLCBwbGFuZXMgYmVsbG93IGl0IHdpbGwgbmVlZCB0byBi
ZSByZWRyYXcuCisJICovCisJZm9yX2VhY2hfb2xkbmV3X2ludGVsX3BsYW5lX2luX3N0YXRlKHN0
YXRlLCBwbGFuZSwgb2xkX3BsYW5lX3N0YXRlLAorCQkJCQkgICAgIG5ld19wbGFuZV9zdGF0ZSwg
aSkgeworCQlib29sIGFscGhhLCBmbGlwLCBkaXJ0eTsKKworCQlpZiAobmV3X3BsYW5lX3N0YXRl
LT51YXBpLmNydGMgIT0gY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKQorCQkJY29udGludWU7CisKKwkJ
YWxwaGEgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuYWxwaGEgIT0gRFJNX0JMRU5EX0FMUEhBX09Q
QVFVRTsKKwkJYWxwaGEgfD0gb2xkX3BsYW5lX3N0YXRlLT51YXBpLmFscGhhICE9IERSTV9CTEVO
RF9BTFBIQV9PUEFRVUU7CisJCWZsaXAgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZmIgIT0gb2xk
X3BsYW5lX3N0YXRlLT51YXBpLmZiOworCQlkaXJ0eSA9IGFscGhhICYmIGZsaXA7CisKKwkJZGly
dHkgfD0gIWRybV9yZWN0X2VxdWFscygmbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdCwKKwkJCQkJ
ICAmb2xkX3BsYW5lX3N0YXRlLT51YXBpLmRzdCk7CisJCWRpcnR5IHw9IG5ld19wbGFuZV9zdGF0
ZS0+dWFwaS52aXNpYmxlICE9CisJCQkgb2xkX3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGU7CisJ
CWlmICghZGlydHkpCisJCQljb250aW51ZTsKKworCQlpZiAob2xkX3BsYW5lX3N0YXRlLT51YXBp
LnZpc2libGUpCisJCQlwaXBlX2RpcnR5X2FyZWFzW3BsYW5lLT5pZCAqIDJdID0gb2xkX3BsYW5l
X3N0YXRlLT51YXBpLmRzdDsKKwkJaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlKQor
CQkJcGlwZV9kaXJ0eV9hcmVhc1twbGFuZS0+aWQgKiAyICsgMV0gPSBuZXdfcGxhbmVfc3RhdGUt
PnVhcGkuZHN0OworCX0KKwogCWZvcl9lYWNoX29sZG5ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShz
dGF0ZSwgcGxhbmUsIG9sZF9wbGFuZV9zdGF0ZSwKIAkJCQkJICAgICBuZXdfcGxhbmVfc3RhdGUs
IGkpIHsKIAkJc3RydWN0IGRybV9yZWN0ICpzZWxfZmV0Y2hfYXJlYSwgdGVtcDsKQEAgLTEzMzcs
NiArMTM5Niw5IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQlzZWxfZmV0Y2hfYXJlYS0+eTIgPSAwOwogCQl9CiAK
KwkJcGlwZV9kaXJ0eV9hcmVhc19zZXQobmV3X3BsYW5lX3N0YXRlLCBwbGFuZSwgcGlwZV9kaXJ0
eV9hcmVhcywKKwkJCQkgICAgIHNlbF9mZXRjaF9hcmVhKTsKKwogCQkvKiBEb24ndCBuZWVkIHRv
IHJlZHJhdyBwbGFuZSBkYW1hZ2VkIGFyZWFzIG91dHNpZGUgb2Ygc2NyZWVuICovCiAJCWogPSBz
ZWxfZmV0Y2hfYXJlYS0+eTIgKyAobmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MSA+PiAxNik7
CiAJCWogPSBjcnRjX3N0YXRlLT51YXBpLmFkanVzdGVkX21vZGUuY3J0Y192ZGlzcGxheSAtIGo7
Ci0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
