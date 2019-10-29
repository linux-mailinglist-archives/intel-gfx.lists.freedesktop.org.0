Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A2FE8CD9
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 17:38:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC9B6E453;
	Tue, 29 Oct 2019 16:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F31066E453
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 16:38:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 09:38:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="399848608"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 29 Oct 2019 09:38:46 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 5DDD8843CC8; Tue, 29 Oct 2019 18:38:45 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 18:38:40 +0200
Message-Id: <20191029163841.5224-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Add SFC instdone to error
 state
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gZGVidWdnaW5nIG1lZGlhIHdvcmtsb2FkIGhhbmdzLCBzZmMgaW5zdGRvbmUKbWlnaHQgcHJv
dmUgdXNlZnVsIGluIGZ1dHVyZS4gQmUgcHJlcGFyZWQuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIHwgMTUgKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5oIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCAgICAgICB8ICAzICsrKwogMyBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5kZXggNzY3MmQ0YzQ1NTJm
Li44Mjk4ZTdjYTJmNzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1
X2Vycm9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpAQCAt
NzQwLDYgKzc0MCwxNCBAQCBzdGF0aWMgdm9pZCBfX2Vycl9wcmludF90b19zZ2woc3RydWN0IGRy
bV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqbSwKIAlpZiAoSVNfR0VOKG0tPmk5MTUsIDEyKSkKIAkJ
ZXJyX3ByaW50ZihtLCAiQVVYX0VSUl9EQkc6IDB4JTA4eFxuIiwgZXJyb3ItPmF1eF9lcnIpOwog
CisJaWYgKElOVEVMX0dFTihtLT5pOTE1KSA+PSAxMikgeworCQlpbnQgaTsKKworCQlmb3IgKGkg
PSAwOyBpIDwgR0VOMTJfU0ZDX0RPTkVfTUFYOyBpKyspCisJCQllcnJfcHJpbnRmKG0sICIgIFNG
Q19ET05FWyVkXTogMHglMDh4XG4iLCBpLAorCQkJCSAgIGVycm9yLT5zZmNfZG9uZVtpXSk7CisJ
fQorCiAJZm9yIChlZSA9IGVycm9yLT5lbmdpbmU7IGVlOyBlZSA9IGVlLT5uZXh0KQogCQllcnJv
cl9wcmludF9lbmdpbmUobSwgZWUsIGVycm9yLT5jYXB0dXJlKTsKIApAQCAtMTU5OSw2ICsxNjA3
LDEzIEBAIHN0YXRpYyB2b2lkIGNhcHR1cmVfcmVnX3N0YXRlKHN0cnVjdCBpOTE1X2dwdV9zdGF0
ZSAqZXJyb3IpCiAJaWYgKElTX0dFTihpOTE1LCAxMikpCiAJCWVycm9yLT5hdXhfZXJyID0gaW50
ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU4xMl9BVVhfRVJSX0RCRyk7CiAKKwlpZiAoSU5URUxf
R0VOKGk5MTUpID49IDEyKSB7CisJCWZvciAoaSA9IDA7IGkgPCBHRU4xMl9TRkNfRE9ORV9NQVg7
IGkrKykgeworCQkJZXJyb3ItPnNmY19kb25lW2ldID0KKwkJCQlpbnRlbF91bmNvcmVfcmVhZCh1
bmNvcmUsIEdFTjEyX1NGQ19ET05FKGkpKTsKKwkJfQorCX0KKwogCS8qIDQ6IEV2ZXJ5dGhpbmcg
ZWxzZSAqLwogCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTEpIHsKIAkJZXJyb3ItPmllciA9IGlu
dGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VOOF9ERV9NSVNDX0lFUik7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9ncHVfZXJyb3IuaAppbmRleCBjN2YzNmJlMmEzOGUuLjBmZWRlNzAwZTkyMCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5oCkBAIC03NSw2ICs3NSw3IEBAIHN0cnVj
dCBpOTE1X2dwdV9zdGF0ZSB7CiAJdTMyIGdmeF9tb2RlOwogCXUzMiBndHRfY2FjaGU7CiAJdTMy
IGF1eF9lcnI7IC8qIGdlbjEyICovCisJdTMyIHNmY19kb25lW0dFTjEyX1NGQ19ET05FX01BWF07
IC8qIGdlbjEyICovCiAKIAl1MzIgbmZlbmNlOwogCXU2NCBmZW5jZVtJOTE1X01BWF9OVU1fRkVO
Q0VTXTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDQyZDJjMGIwOGVmZi4uYjhmYjc5M2Ez
MDE4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQxMyw2ICs0MTMsOSBAQCBzdGF0aWMg
aW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKICNkZWZpbmUg
R0VOMTFfVkVDU19TRkNfVVNBR0UoZW5naW5lKQkJX01NSU8oKGVuZ2luZSktPm1taW9fYmFzZSAr
IDB4MjAxNCkKICNkZWZpbmUgICBHRU4xMV9WRUNTX1NGQ19VU0FHRV9CSVQJCSgxIDw8IDApCiAK
KyNkZWZpbmUgR0VOMTJfU0ZDX0RPTkUobikJCV9NTUlPKDB4MWNjMDAgKyAobikgKiAweDEwMCkK
KyNkZWZpbmUgR0VOMTJfU0ZDX0RPTkVfTUFYCQk0CisKICNkZWZpbmUgUklOR19QUF9ESVJfQkFT
RShiYXNlKQkJX01NSU8oKGJhc2UpICsgMHgyMjgpCiAjZGVmaW5lIFJJTkdfUFBfRElSX0JBU0Vf
UkVBRChiYXNlKQlfTU1JTygoYmFzZSkgKyAweDUxOCkKICNkZWZpbmUgUklOR19QUF9ESVJfRENM
VihiYXNlKQkJX01NSU8oKGJhc2UpICsgMHgyMjApCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
