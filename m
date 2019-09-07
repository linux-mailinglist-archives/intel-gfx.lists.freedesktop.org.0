Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C927AC640
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 13:15:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A653489DFA;
	Sat,  7 Sep 2019 11:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA9889DED
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 11:15:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 04:15:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,477,1559545200"; d="scan'208";a="177883215"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga008.jf.intel.com with ESMTP; 07 Sep 2019 04:15:37 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Sep 2019 16:37:30 +0530
Message-Id: <20190907110735.10302-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190907110735.10302-1-animesh.manna@intel.com>
References: <20190907110735.10302-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 06/11] drm/i915/dsb: functions to
 enable/disable DSB engine.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFNCIHdpbGwgYmUgdXNlZCBmb3IgcGVyZm9ybWFuY2UgaW1wcm92ZW1lbnQgZm9yIHNvbWUgc3Bl
Y2lhbCBzY2VuYXJpby4KRFNCIGVuZ2luZSB3aWxsIGJlIGVuYWJsZWQgYmFzZWQgb24gbmVlZCBh
bmQgYWZ0ZXIgY29tcGxldGlvbiBvZiBpdHMgd29yawp3aWxsIGJlIGRpc2FibGVkLiBBcGkgYWRk
ZWQgZm9yIGVuYWJsZS9kaXNhYmxlIG9wZXJhdGlvbiBieSB1c2luZyBEU0JfQ1RSTApyZWdpc3Rl
ci4KCnYxOiBJbml0aWFsIHZlcnNpb24uCnYyOiBQT1NUSU5HX1JFQUQgYWRkZWQgYWZ0ZXIgd3Jp
dGluZyBjb250cm9sIHJlZ2lzdGVyLiAoU2hhc2hhbmspCgpDYzogTWljaGVsIFRoaWVycnkgPG1p
Y2hlbC50aGllcnJ5QGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBTaGFz
aGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFu
aW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA0MiArKysrKysrKysrKysrKysrKysrKysrKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgMSArCiAyIGZpbGVz
IGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYwppbmRleCAyYzg0MTU1MThjNjUuLjU2YmY0MWIwMGY2MiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCkBAIC0yNiw2ICsyNiw0OCBAQCBzdGF0aWMg
aW5saW5lIGJvb2wgaXNfZHNiX2J1c3koc3RydWN0IGludGVsX2RzYiAqZHNiKQogCXJldHVybiBE
U0JfU1RBVFVTICYgSTkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsKIH0KIAorc3Rh
dGljIGlubGluZSBib29sIGludGVsX2RzYl9lbmFibGVfZW5naW5lKHN0cnVjdCBpbnRlbF9kc2Ig
KmRzYikKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGNvbnRhaW5lcl9vZihkc2IsIHR5
cGVvZigqY3J0YyksIGRzYik7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwor
CXUzMiBkc2JfY3RybDsKKworCWRzYl9jdHJsID0gSTkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRz
Yi0+aWQpKTsKKworCWlmIChEU0JfU1RBVFVTICYgZHNiX2N0cmwpIHsKKwkJRFJNX0RFQlVHX0tN
UygiRFNCIGVuZ2luZSBpcyBidXN5LlxuIik7CisJCXJldHVybiBmYWxzZTsKKwl9CisKKwlkc2Jf
Y3RybCB8PSBEU0JfRU5BQkxFOworCUk5MTVfV1JJVEUoRFNCX0NUUkwocGlwZSwgZHNiLT5pZCks
IGRzYl9jdHJsKTsKKworCVBPU1RJTkdfUkVBRChEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSk7CisJ
cmV0dXJuIHRydWU7Cit9CisKK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9kc2JfZGlzYWJsZV9l
bmdpbmUoc3RydWN0IGludGVsX2RzYiAqZHNiKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
ID0gY29udGFpbmVyX29mKGRzYiwgdHlwZW9mKCpjcnRjKSwgZHNiKTsKKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwllbnVtIHBp
cGUgcGlwZSA9IGNydGMtPnBpcGU7CisJdTMyIGRzYl9jdHJsOworCisJZHNiX2N0cmwgPSBJOTE1
X1JFQUQoRFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpOworCisJaWYgKERTQl9TVEFUVVMgJiBkc2Jf
Y3RybCkgeworCQlEUk1fREVCVUdfS01TKCJEU0IgZW5naW5lIGlzIGJ1c3kuXG4iKTsKKwkJcmV0
dXJuIGZhbHNlOworCX0KKworCWRzYl9jdHJsICY9IH5EU0JfRU5BQkxFOworCUk5MTVfV1JJVEUo
RFNCX0NUUkwocGlwZSwgZHNiLT5pZCksIGRzYl9jdHJsKTsKKworCVBPU1RJTkdfUkVBRChEU0Jf
Q1RSTChwaXBlLCBkc2ItPmlkKSk7CisJcmV0dXJuIHRydWU7Cit9CisKIHN0cnVjdCBpbnRlbF9k
c2IgKgogaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCmluZGV4IGEzMDk5ZjcxMmFlNi4uMmRmMDEzODZlM2RlIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKQEAgLTExNjgxLDYgKzExNjgxLDcgQEAgZW51bSBza2xfcG93ZXJfZ2F0
ZSB7CiAjZGVmaW5lIERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKQkoX0RTQlNMX0lOU1RBTkNFX0JB
U0UgKyBcCiAJCQkJCSAocGlwZSkgKiAweDEwMDAgKyAoaWQpICogMTAwKQogI2RlZmluZSBEU0Jf
Q1RSTChwaXBlLCBpZCkJCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArIDB4OCkKKyNk
ZWZpbmUgICBEU0JfRU5BQkxFCQkJKDEgPDwgMzEpCiAjZGVmaW5lICAgRFNCX1NUQVRVUwkJCSgx
IDw8IDApCiAKICNlbmRpZiAvKiBfSTkxNV9SRUdfSF8gKi8KLS0gCjIuMjIuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
