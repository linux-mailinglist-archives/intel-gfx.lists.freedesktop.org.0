Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C21A8694
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 18:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E7989BFF;
	Wed,  4 Sep 2019 16:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06ECC89C21
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 16:26:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 09:26:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="182540923"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 04 Sep 2019 09:26:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 19:26:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 19:26:18 +0300
Message-Id: <20190904162625.15048-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
References: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/15] drm/i915: Check pfit scaling factors
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2Ugc3VyZSB3ZSdyZSBub3QgZXhjZWVkaW5nIHRoZSBtYXggc2NhbGluZyBmYWN0b3JzIGZvciB0
aGUgcGFuZWwKZml0dGVyLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDQ2ICsrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdl
ZCwgNDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMDliYjhkOTI1NGNiLi42NWZkYWJjYjIw
MWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBA
IC0xMTgxMCwxMiArMTE4MTAsNTYgQEAgc3RhdGljIGludCBpbnRlbF9wY2hfcGZpdF9jaGVja19z
cmNfc2l6ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGEKIAlyZXR1cm4g
MDsKIH0KIAorc3RhdGljIGludCBpbnRlbF9wY2hfcGZpdF9jaGVja19zY2FsaW5nKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjLT5kZXYpOwor
CXN0cnVjdCBkcm1fcmVjdCBzcmMgPSB7CisJCS54MiA9IGNydGNfc3RhdGUtPnBpcGVfc3JjX3cg
PDwgMTYsCisJCS55MiA9IGNydGNfc3RhdGUtPnBpcGVfc3JjX2ggPDwgMTYsCisJfTsKKwljb25z
dCBzdHJ1Y3QgZHJtX3JlY3QgKmRzdCA9ICZjcnRjX3N0YXRlLT5wY2hfcGZpdC5kc3Q7CisJaW50
IHJldCwgbWF4X3NjYWxlOworCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkgeworCQlp
ZiAoY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCA9PSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNS
NDIwKQorCQkJbWF4X3NjYWxlID0gMHgxODAwMCAtIDE7IC8qIDwgMS41ICovCisJCWVsc2UKKwkJ
CW1heF9zY2FsZSA9IDB4MzAwMDAgLSAxOyAvKiA8IDMuMCAqLworCX0gZWxzZSB7CisJCW1heF9z
Y2FsZSA9IDB4MTIwMDA7IC8qIDEuMTI1ICovCisJfQorCisJcmV0ID0gZHJtX3JlY3RfY2FsY19o
c2NhbGUoJnNyYywgZHN0LCAwLCBtYXhfc2NhbGUpOworCWlmIChyZXQgPCAwKSB7CisJCURSTV9E
RUJVR19LTVMoInBmaXQgaG9yaXpvbnRhbCBkb3duc2NhbGUgKCVkLT4lZCkgZXhjZWVkcyBtYXgg
KDB4JXgpXG4iLAorCQkJICAgICAgY3J0Y19zdGF0ZS0+cGlwZV9zcmNfdywKKwkJCSAgICAgIGRy
bV9yZWN0X3dpZHRoKGRzdCksIG1heF9zY2FsZSk7CisJCXJldHVybiByZXQ7CisJfQorCisJcmV0
ID0gZHJtX3JlY3RfY2FsY192c2NhbGUoJnNyYywgZHN0LCAwLCBtYXhfc2NhbGUpOworCWlmIChy
ZXQgPCAwKSB7CisJCURSTV9ERUJVR19LTVMoInBmaXQgdmVydGljYWwgZG93bnNjYWxlICglZC0+
JWQpIGV4Y2VlZHMgbWF4ICgweCV4KVxuIiwKKwkJCSAgICAgIGNydGNfc3RhdGUtPnBpcGVfc3Jj
X2gsCisJCQkgICAgICBkcm1fcmVjdF9oZWlnaHQoZHN0KSwgbWF4X3NjYWxlKTsKKwkJcmV0dXJu
IHJldDsKKwl9CisKKwlyZXR1cm4gMDsKK30KKwogc3RhdGljIGludCBpbnRlbF9wY2hfcGZpdF9j
aGVjayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKKwlpbnQg
cmV0OworCiAJaWYgKCFjcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkKQogCQlyZXR1cm4gMDsK
IAotCXJldHVybiBpbnRlbF9wY2hfcGZpdF9jaGVja19zcmNfc2l6ZShjcnRjX3N0YXRlKTsKKwly
ZXQgPSBpbnRlbF9wY2hfcGZpdF9jaGVja19zcmNfc2l6ZShjcnRjX3N0YXRlKTsKKwlpZiAocmV0
KQorCQlyZXR1cm4gcmV0OworCisJcmV0dXJuIGludGVsX3BjaF9wZml0X2NoZWNrX3NjYWxpbmco
Y3J0Y19zdGF0ZSk7CiB9CiAKIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19hdG9taWNfY2hlY2soc3Ry
dWN0IGRybV9jcnRjICpjcnRjLAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
