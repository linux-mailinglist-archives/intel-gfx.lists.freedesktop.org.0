Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBB82DC5AE
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 18:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B544899B7;
	Wed, 16 Dec 2020 17:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65BD5899B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 17:48:46 +0000 (UTC)
IronPort-SDR: CB45l3GEE0q39ZuGYHR4i00qYwNp8pxlV4JDZ5rDwwTENjw55kG/XFnORzzSd1cj9ASAyvvYKq
 0pivFUGzsQtg==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="162156876"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="162156876"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 09:48:46 -0800
IronPort-SDR: c9QGABf6NLCqxvlJDr5v1w8XY9KPf2YXQZpFA/qsv+vFeRdCWbXebTXdyN165JOCyxjeyvbA0n
 kbX/2PI1VuEQ==
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="488613677"
Received: from mhlabrec-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.255.69.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 09:48:44 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Dec 2020 09:48:58 -0800
Message-Id: <20201216174900.185178-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201216174900.185178-1-jose.souza@intel.com>
References: <20201216174900.185178-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 3/5] drm/i915/display: Split and export main
 surface calculation from skl_check_main_surface()
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

VGhlIGNhbGN1bGF0aW9uIHRoZSBvZmZzZXRzIG9mIHRoZSBtYWluIHN1cmZhY2Ugd2lsbCBiZSBu
ZWVkZWQgYnkgUFNSMgpzZWxlY3RpdmUgZmV0Y2ggY29kZSBzbyBoZXJlIHNwbGl0dGluZyBhbmQg
ZXhwb3J0aW5nIGl0LgpObyBmdW5jdGlvbmFsIGNoYW5nZXMgd2VyZSBkb25lIGhlcmUuCgp2Mzog
UmViYXNlZAoKQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4K
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpU
ZXN0ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDc4ICsrKysr
KysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaCB8ICAyICsKIDIgZmlsZXMgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpp
bmRleCA3ODQ1MmRlNWUxMmYuLmFkZDc0ZmY3ZWI5YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTM4MjEsMzMgKzM4MjEsMTkgQEAgc3RhdGlj
IGludCBpbnRlbF9wbGFuZV9tYXhfaGVpZ2h0KHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCiAJ
CXJldHVybiBJTlRfTUFYOwogfQogCi1zdGF0aWMgaW50IHNrbF9jaGVja19tYWluX3N1cmZhY2Uo
c3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKK2ludCBza2xfY2FsY19tYWlu
X3N1cmZhY2Vfb2Zmc2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3Rh
dGUsCisJCQkJIGludCAqeCwgaW50ICp5LCB1MzIgKm9mZnNldCkKIHsKIAlzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lID0gdG9faW50ZWxfcGxhbmUocGxhbmVfc3RhdGUtPnVhcGkucGxhbmUpOwog
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUocGxhbmUtPmJhc2Uu
ZGV2KTsKIAljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5o
dy5mYjsKLQl1bnNpZ25lZCBpbnQgcm90YXRpb24gPSBwbGFuZV9zdGF0ZS0+aHcucm90YXRpb247
Ci0JaW50IHggPSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMueDEgPj4gMTY7Ci0JaW50IHkgPSBwbGFu
ZV9zdGF0ZS0+dWFwaS5zcmMueTEgPj4gMTY7Ci0JaW50IHcgPSBkcm1fcmVjdF93aWR0aCgmcGxh
bmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsKLQlpbnQgaCA9IGRybV9yZWN0X2hlaWdodCgmcGxh
bmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsKLQlpbnQgbWluX3dpZHRoID0gaW50ZWxfcGxhbmVf
bWluX3dpZHRoKHBsYW5lLCBmYiwgMCwgcm90YXRpb24pOwotCWludCBtYXhfd2lkdGggPSBpbnRl
bF9wbGFuZV9tYXhfd2lkdGgocGxhbmUsIGZiLCAwLCByb3RhdGlvbik7Ci0JaW50IG1heF9oZWln
aHQgPSBpbnRlbF9wbGFuZV9tYXhfaGVpZ2h0KHBsYW5lLCBmYiwgMCwgcm90YXRpb24pOwotCWlu
dCBhdXhfcGxhbmUgPSBpbnRlbF9tYWluX3RvX2F1eF9wbGFuZShmYiwgMCk7Ci0JdTMyIGF1eF9v
ZmZzZXQgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbYXV4X3BsYW5lXS5vZmZzZXQ7Ci0JdTMy
IGFsaWdubWVudCwgb2Zmc2V0OworCWNvbnN0IGludCBhdXhfcGxhbmUgPSBpbnRlbF9tYWluX3Rv
X2F1eF9wbGFuZShmYiwgMCk7CisJY29uc3QgdTMyIGF1eF9vZmZzZXQgPSBwbGFuZV9zdGF0ZS0+
Y29sb3JfcGxhbmVbYXV4X3BsYW5lXS5vZmZzZXQ7CisJY29uc3QgdTMyIGFsaWdubWVudCA9IGlu
dGVsX3N1cmZfYWxpZ25tZW50KGZiLCAwKTsKKwljb25zdCBpbnQgdyA9IGRybV9yZWN0X3dpZHRo
KCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2OwogCi0JaWYgKHcgPiBtYXhfd2lkdGggfHwg
dyA8IG1pbl93aWR0aCB8fCBoID4gbWF4X2hlaWdodCkgewotCQlkcm1fZGJnX2ttcygmZGV2X3By
aXYtPmRybSwKLQkJCSAgICAicmVxdWVzdGVkIFkvUkdCIHNvdXJjZSBzaXplICVkeCVkIG91dHNp
ZGUgbGltaXRzIChtaW46ICVkeDEgbWF4OiAlZHglZClcbiIsCi0JCQkgICAgdywgaCwgbWluX3dp
ZHRoLCBtYXhfd2lkdGgsIG1heF9oZWlnaHQpOwotCQlyZXR1cm4gLUVJTlZBTDsKLQl9Ci0KLQlp
bnRlbF9hZGRfZmJfb2Zmc2V0cygmeCwgJnksIHBsYW5lX3N0YXRlLCAwKTsKLQlvZmZzZXQgPSBp
bnRlbF9wbGFuZV9jb21wdXRlX2FsaWduZWRfb2Zmc2V0KCZ4LCAmeSwgcGxhbmVfc3RhdGUsIDAp
OwotCWFsaWdubWVudCA9IGludGVsX3N1cmZfYWxpZ25tZW50KGZiLCAwKTsKKwlpbnRlbF9hZGRf
ZmJfb2Zmc2V0cyh4LCB5LCBwbGFuZV9zdGF0ZSwgMCk7CisJKm9mZnNldCA9IGludGVsX3BsYW5l
X2NvbXB1dGVfYWxpZ25lZF9vZmZzZXQoeCwgeSwgcGxhbmVfc3RhdGUsIDApOwogCWlmIChkcm1f
V0FSTl9PTigmZGV2X3ByaXYtPmRybSwgYWxpZ25tZW50ICYmICFpc19wb3dlcl9vZl8yKGFsaWdu
bWVudCkpKQogCQlyZXR1cm4gLUVJTlZBTDsKIApAQCAtMzg1Niw5ICszODQyLDEwIEBAIHN0YXRp
YyBpbnQgc2tsX2NoZWNrX21haW5fc3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBs
YW5lX3N0YXRlKQogCSAqIG1haW4gc3VyZmFjZSBvZmZzZXQsIGFuZCBpdCBtdXN0IGJlIG5vbi1u
ZWdhdGl2ZS4gTWFrZQogCSAqIHN1cmUgdGhhdCBpcyB3aGF0IHdlIHdpbGwgZ2V0LgogCSAqLwot
CWlmIChhdXhfcGxhbmUgJiYgb2Zmc2V0ID4gYXV4X29mZnNldCkKLQkJb2Zmc2V0ID0gaW50ZWxf
cGxhbmVfYWRqdXN0X2FsaWduZWRfb2Zmc2V0KCZ4LCAmeSwgcGxhbmVfc3RhdGUsIDAsCi0JCQkJ
CQkJICAgb2Zmc2V0LCBhdXhfb2Zmc2V0ICYgfihhbGlnbm1lbnQgLSAxKSk7CisJaWYgKGF1eF9w
bGFuZSAmJiAqb2Zmc2V0ID4gYXV4X29mZnNldCkKKwkJKm9mZnNldCA9IGludGVsX3BsYW5lX2Fk
anVzdF9hbGlnbmVkX29mZnNldCh4LCB5LCBwbGFuZV9zdGF0ZSwgMCwKKwkJCQkJCQkgICAgKm9m
ZnNldCwKKwkJCQkJCQkgICAgYXV4X29mZnNldCAmIH4oYWxpZ25tZW50IC0gMSkpOwogCiAJLyoK
IAkgKiBXaGVuIHVzaW5nIGFuIFgtdGlsZWQgc3VyZmFjZSwgdGhlIHBsYW5lIGJsb3dzIHVwCkBA
IC0zODY5LDE4ICszODU2LDUxIEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX21haW5fc3VyZmFjZShz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQogCWlmIChmYi0+bW9kaWZpZXIg
PT0gSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQpIHsKIAkJaW50IGNwcCA9IGZiLT5mb3JtYXQtPmNw
cFswXTsKIAotCQl3aGlsZSAoKHggKyB3KSAqIGNwcCA+IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFu
ZVswXS5zdHJpZGUpIHsKLQkJCWlmIChvZmZzZXQgPT0gMCkgeworCQl3aGlsZSAoKCp4ICsgdykg
KiBjcHAgPiBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF0uc3RyaWRlKSB7CisJCQlpZiAoKm9m
ZnNldCA9PSAwKSB7CiAJCQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCiAJCQkJCSAgICAi
VW5hYmxlIHRvIGZpbmQgc3VpdGFibGUgZGlzcGxheSBzdXJmYWNlIG9mZnNldCBkdWUgdG8gWC10
aWxpbmdcbiIpOwogCQkJCXJldHVybiAtRUlOVkFMOwogCQkJfQogCi0JCQlvZmZzZXQgPSBpbnRl
bF9wbGFuZV9hZGp1c3RfYWxpZ25lZF9vZmZzZXQoJngsICZ5LCBwbGFuZV9zdGF0ZSwgMCwKLQkJ
CQkJCQkJICAgb2Zmc2V0LCBvZmZzZXQgLSBhbGlnbm1lbnQpOworCQkJKm9mZnNldCA9IGludGVs
X3BsYW5lX2FkanVzdF9hbGlnbmVkX29mZnNldCh4LCB5LCBwbGFuZV9zdGF0ZSwgMCwKKwkJCQkJ
CQkJICAgICpvZmZzZXQsCisJCQkJCQkJCSAgICAqb2Zmc2V0IC0gYWxpZ25tZW50KTsKIAkJfQog
CX0KIAorCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IHNrbF9jaGVja19tYWluX3N1cmZhY2Uo
c3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKK3sKKwlzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lID0gdG9faW50ZWxfcGxhbmUocGxhbmVfc3RhdGUtPnVhcGkucGxhbmUpOwor
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUocGxhbmUtPmJhc2Uu
ZGV2KTsKKwljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5o
dy5mYjsKKwljb25zdCB1bnNpZ25lZCBpbnQgcm90YXRpb24gPSBwbGFuZV9zdGF0ZS0+aHcucm90
YXRpb247CisJaW50IHggPSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMueDEgPj4gMTY7CisJaW50IHkg
PSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMueTEgPj4gMTY7CisJY29uc3QgaW50IHcgPSBkcm1fcmVj
dF93aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsKKwljb25zdCBpbnQgaCA9IGRy
bV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsKKwljb25zdCBpbnQg
bWluX3dpZHRoID0gaW50ZWxfcGxhbmVfbWluX3dpZHRoKHBsYW5lLCBmYiwgMCwgcm90YXRpb24p
OworCWNvbnN0IGludCBtYXhfd2lkdGggPSBpbnRlbF9wbGFuZV9tYXhfd2lkdGgocGxhbmUsIGZi
LCAwLCByb3RhdGlvbik7CisJY29uc3QgaW50IG1heF9oZWlnaHQgPSBpbnRlbF9wbGFuZV9tYXhf
aGVpZ2h0KHBsYW5lLCBmYiwgMCwgcm90YXRpb24pOworCWNvbnN0IGludCBhdXhfcGxhbmUgPSBp
bnRlbF9tYWluX3RvX2F1eF9wbGFuZShmYiwgMCk7CisJY29uc3QgdTMyIGFsaWdubWVudCA9IGlu
dGVsX3N1cmZfYWxpZ25tZW50KGZiLCAwKTsKKwl1MzIgb2Zmc2V0OworCWludCByZXQ7CisKKwlp
ZiAodyA+IG1heF93aWR0aCB8fCB3IDwgbWluX3dpZHRoIHx8IGggPiBtYXhfaGVpZ2h0KSB7CisJ
CWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAorCQkJICAgICJyZXF1ZXN0ZWQgWS9SR0Igc291
cmNlIHNpemUgJWR4JWQgb3V0c2lkZSBsaW1pdHMgKG1pbjogJWR4MSBtYXg6ICVkeCVkKVxuIiwK
KwkJCSAgICB3LCBoLCBtaW5fd2lkdGgsIG1heF93aWR0aCwgbWF4X2hlaWdodCk7CisJCXJldHVy
biAtRUlOVkFMOworCX0KKworCXJldCA9IHNrbF9jYWxjX21haW5fc3VyZmFjZV9vZmZzZXQocGxh
bmVfc3RhdGUsICZ4LCAmeSwgJm9mZnNldCk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKwog
CS8qCiAJICogQ0NTIEFVWCBzdXJmYWNlIGRvZXNuJ3QgaGF2ZSBpdHMgb3duIHgveSBvZmZzZXRz
LCB3ZSBtdXN0IG1ha2Ugc3VyZQogCSAqIHRoZXkgbWF0Y2ggd2l0aCB0aGUgbWFpbiBzdXJmYWNl
IHgveSBvZmZzZXRzLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaAppbmRleCBhNTc3MWJmZWNiYTYuLmViMjYzYmY5MzE0ZCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKQEAgLTYzMCw2ICs2MzAsOCBAQCB1MzIg
c2tsX3BsYW5lX2N0bF9jcnRjKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKTsKIHUzMiBza2xfcGxhbmVfc3RyaWRlKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqcGxhbmVfc3RhdGUsCiAJCSAgICAgaW50IHBsYW5lKTsKIGludCBza2xfY2hlY2tfcGxhbmVf
c3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKTsKK2ludCBza2xf
Y2FsY19tYWluX3N1cmZhY2Vfb2Zmc2V0KGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAq
cGxhbmVfc3RhdGUsCisJCQkJIGludCAqeCwgaW50ICp5LCB1MzIgKm9mZnNldCk7CiBpbnQgaTl4
eF9jaGVja19wbGFuZV9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3Rh
dGUpOwogaW50IHNrbF9mb3JtYXRfdG9fZm91cmNjKGludCBmb3JtYXQsIGJvb2wgcmdiX29yZGVy
LCBib29sIGFscGhhKTsKIHVuc2lnbmVkIGludCBpOXh4X3BsYW5lX21heF9zdHJpZGUoc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZSwKLS0gCjIuMjkuMgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
