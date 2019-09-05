Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C17A9FD1
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 12:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5DB26E03B;
	Thu,  5 Sep 2019 10:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B7D16E038
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 10:37:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 03:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="187935743"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 05 Sep 2019 03:37:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Sep 2019 13:37:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 13:37:42 +0300
Message-Id: <20190905103742.3555-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190904162625.15048-9-ville.syrjala@linux.intel.com>
References: <20190904162625.15048-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 08/15] drm/i915: Check pfit scaling factors
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
aGUgcGFuZWwKZml0dGVyLgoKdjI6IFJlYmFzZSBkdWUgdG8gY3J0YyBlbmFibGUgY2hlY2sKClNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0
NiArKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCmluZGV4IGNjZWMyYjU0Njc3ZC4uZjdmOTNhZjU1ZWM1IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTE4MTAsMTMgKzExODEwLDU3
IEBAIHN0YXRpYyBpbnQgaW50ZWxfcGNoX3BmaXRfY2hlY2tfc3JjX3NpemUoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBpbnQg
aW50ZWxfcGNoX3BmaXRfY2hlY2tfc2NhbGluZyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGNydGNfc3RhdGUtPmJhc2UuY3J0Yy0+ZGV2KTsKKwlzdHJ1Y3QgZHJtX3JlY3Qgc3Jj
ID0geworCQkueDIgPSBjcnRjX3N0YXRlLT5waXBlX3NyY193IDw8IDE2LAorCQkueTIgPSBjcnRj
X3N0YXRlLT5waXBlX3NyY19oIDw8IDE2LAorCX07CisJY29uc3Qgc3RydWN0IGRybV9yZWN0ICpk
c3QgPSAmY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0OworCWludCByZXQsIG1heF9zY2FsZTsKKwor
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpIHsKKwkJaWYgKGNydGNfc3RhdGUtPm91dHB1
dF9mb3JtYXQgPT0gSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQyMCkKKwkJCW1heF9zY2FsZSA9
IDB4MTgwMDAgLSAxOyAvKiA8IDEuNSAqLworCQllbHNlCisJCQltYXhfc2NhbGUgPSAweDMwMDAw
IC0gMTsgLyogPCAzLjAgKi8KKwl9IGVsc2UgeworCQltYXhfc2NhbGUgPSAweDEyMDAwOyAvKiAx
LjEyNSAqLworCX0KKworCXJldCA9IGRybV9yZWN0X2NhbGNfaHNjYWxlKCZzcmMsIGRzdCwgMCwg
bWF4X3NjYWxlKTsKKwlpZiAocmV0IDwgMCkgeworCQlEUk1fREVCVUdfS01TKCJwZml0IGhvcml6
b250YWwgZG93bnNjYWxlICglZC0+JWQpIGV4Y2VlZHMgbWF4ICgweCV4KVxuIiwKKwkJCSAgICAg
IGNydGNfc3RhdGUtPnBpcGVfc3JjX3csCisJCQkgICAgICBkcm1fcmVjdF93aWR0aChkc3QpLCBt
YXhfc2NhbGUpOworCQlyZXR1cm4gcmV0OworCX0KKworCXJldCA9IGRybV9yZWN0X2NhbGNfdnNj
YWxlKCZzcmMsIGRzdCwgMCwgbWF4X3NjYWxlKTsKKwlpZiAocmV0IDwgMCkgeworCQlEUk1fREVC
VUdfS01TKCJwZml0IHZlcnRpY2FsIGRvd25zY2FsZSAoJWQtPiVkKSBleGNlZWRzIG1heCAoMHgl
eClcbiIsCisJCQkgICAgICBjcnRjX3N0YXRlLT5waXBlX3NyY19oLAorCQkJICAgICAgZHJtX3Jl
Y3RfaGVpZ2h0KGRzdCksIG1heF9zY2FsZSk7CisJCXJldHVybiByZXQ7CisJfQorCisJcmV0dXJu
IDA7Cit9CisKIHN0YXRpYyBpbnQgaW50ZWxfcGNoX3BmaXRfY2hlY2soY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CisJaW50IHJldDsKKwogCWlmICghY3J0Y19z
dGF0ZS0+YmFzZS5lbmFibGUgfHwKIAkgICAgIWNydGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQp
CiAJCXJldHVybiAwOwogCi0JcmV0dXJuIGludGVsX3BjaF9wZml0X2NoZWNrX3NyY19zaXplKGNy
dGNfc3RhdGUpOworCXJldCA9IGludGVsX3BjaF9wZml0X2NoZWNrX3NyY19zaXplKGNydGNfc3Rh
dGUpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKKwlyZXR1cm4gaW50ZWxfcGNoX3BmaXRf
Y2hlY2tfc2NhbGluZyhjcnRjX3N0YXRlKTsKIH0KIAogc3RhdGljIGludCBpbnRlbF9jcnRjX2F0
b21pY19jaGVjayhzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCi0tIAoyLjIxLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
