Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D67B1153448
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 16:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4586F631;
	Wed,  5 Feb 2020 15:41:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379A66F62B;
 Wed,  5 Feb 2020 15:41:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 07:41:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,406,1574150400"; d="scan'208";a="224950166"
Received: from helsinki.fi.intel.com ([10.237.66.164])
 by fmsmga007.fm.intel.com with ESMTP; 05 Feb 2020 07:41:48 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Feb 2020 17:41:26 +0200
Message-Id: <20200205154137.1202389-7-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200205154137.1202389-1-gwan-gyeong.mun@intel.com>
References: <20200205154137.1202389-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 06/17] drm/i915/dp: Read out DP SDPs
 (Secondary Data Packet)
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
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgYWRkcyBjb2RlIHRvIHJlYWQgdGhlIERQIFNEUHMgZnJvbSB0aGUgdmlkZW8gRElQIGFuZCB1
bnBhY2sgdGhlbSBpbnRvCnRoZSBjcnRjIHN0YXRlLgoKSXQgYWRkcyByb3V0aW5lcyB0aGF0IHJl
YWQgb3V0IERQIFZTQyBTRFAgYW5kIERQIEhEUiBNZXRhZGF0YSBJbmZvZnJhbWUgU0RQCkluIG9y
ZGVyIHRvIHVucGFjayBEUCBWU0MgU0RQLCBpdCBhZGRzIGludGVsX2RwX3ZzY19zZHBfdW5wYWNr
KCkgZnVuY3Rpb24uCkl0IGZvbGxvd3MgRFAgMS40YSBzcGVjLiBbVGFibGUgMi0xMTY6IFZTQyBT
RFAgSGVhZGVyIEJ5dGVzXSBhbmQKW1RhYmxlIDItMTE3OiBWU0MgU0RQIFBheWxvYWQgZm9yIERC
MTYgdGhyb3VnaCBEQjE4XQoKSW4gb3JkZXIgdG8gdW5wYWNrIERQIEhEUiBNZXRhZGF0YSBJbmZv
ZnJhbWUgU0RQLCBpdCBhZGRzCmludGVsX2RwX2hkcl9tZXRhZGF0YV9pbmZvZnJhbWVfc2RwX3Vu
cGFjaygpLiBBbmQgaXQgZm9sbG93cyBEUCAxLjRhIHNwZWMuCihbVGFibGUgMi0xMjU6IElORk9G
UkFNRSBTRFAgdjEuMiBIZWFkZXIgQnl0ZXNdIGFuZApbVGFibGUgMi0xMjY6IElORk9GUkFNRSBT
RFAgdjEuMiBQYXlsb2FkIERhdGEgQnl0ZXMgLSBEQjAgdGhyb3VnaCBEQjMxXSkKYW5kIENUQS04
NjEtRyBzcGVjLiBbVGFibGUtNDIgRHluYW1pYyBSYW5nZSBhbmQgTWFzdGVyaW5nIEluZm9GcmFt
ZV0uCgpBIG5hbWVpbmcgcnVsZSBhbmQgc3R5bGUgb2YgaW50ZWxfcmVhZF9kcF9zZHAoKSBmdW5j
dGlvbiByZWZlcmVuY2VzCmludGVsX3JlYWRfaW5mb2ZyYW1lKCkgZnVuY3Rpb24gb2YgaW50ZWxf
aGRtaS5jCgp2MjogTWlub3Igc3R5bGUgZml4CnYzOiBSZXBsYWNlIGEgc3RydWN0dXJlIG5hbWUg
dG8gZHJtX2RwX3ZzY19zZHAgZnJvbSBpbnRlbF9kcF92c2Nfc2RwCnY0OiBVc2Ugc3RydWN0IGRy
bV9kZXZpY2UgbG9nZ2luZyBtYWNyb3MKClNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11biA8
Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMgfCAxNzMgKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggfCAgIDMgKwogMiBmaWxlcyBjaGFuZ2VkLCAx
NzYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpp
bmRleCBmOTQxYmMyNjFmNmEuLmMzMDI3MmU4MGRjNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYwpAQCAtNDkyOCw2ICs0OTI4LDE3OSBAQCB2b2lkIGludGVsX2RwX3Nl
dF9pbmZvZnJhbWVzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWludGVsX3dyaXRl
X2RwX3NkcChlbmNvZGVyLCBjcnRjX3N0YXRlLCBIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFE
QVRBKTsKIH0KIAorc3RhdGljIGludCBpbnRlbF9kcF92c2Nfc2RwX3VucGFjayhzdHJ1Y3QgZHJt
X2RwX3ZzY19zZHAgKnZzYywKKwkJCQkgICBjb25zdCB2b2lkICpidWZmZXIsIHNpemVfdCBzaXpl
KQoreworCWNvbnN0IHN0cnVjdCBkcF9zZHAgKnNkcCA9IGJ1ZmZlcjsKKworCWlmIChzaXplIDwg
c2l6ZW9mKHN0cnVjdCBkcF9zZHApKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCW1lbXNldCh2c2Ms
IDAsIHNpemUpOworCisJaWYgKHNkcC0+c2RwX2hlYWRlci5IQjAgIT0gMCkKKwkJcmV0dXJuIC1F
SU5WQUw7CisKKwlpZiAoc2RwLT5zZHBfaGVhZGVyLkhCMSAhPSBEUF9TRFBfVlNDKQorCQlyZXR1
cm4gLUVJTlZBTDsKKwl2c2MtPnNkcF90eXBlID0gc2RwLT5zZHBfaGVhZGVyLkhCMTsKKworCWlm
IChzZHAtPnNkcF9oZWFkZXIuSEIyID09IDB4MiAmJiBzZHAtPnNkcF9oZWFkZXIuSEIzID09IDB4
OCkgeworCQl2c2MtPnJldmlzaW9uID0gc2RwLT5zZHBfaGVhZGVyLkhCMjsKKwkJdnNjLT5sZW5n
dGggPSBzZHAtPnNkcF9oZWFkZXIuSEIzOworCX0gZWxzZSBpZiAoc2RwLT5zZHBfaGVhZGVyLkhC
MiA9PSAweDQgJiYgc2RwLT5zZHBfaGVhZGVyLkhCMyA9PSAweGUpIHsKKwkJdnNjLT5yZXZpc2lv
biA9IHNkcC0+c2RwX2hlYWRlci5IQjI7CisJCXZzYy0+bGVuZ3RoID0gc2RwLT5zZHBfaGVhZGVy
LkhCMzsKKwl9IGVsc2UgaWYgKHNkcC0+c2RwX2hlYWRlci5IQjIgPT0gMHg1ICYmIHNkcC0+c2Rw
X2hlYWRlci5IQjMgPT0gMHgxMykgeworCQl2c2MtPnJldmlzaW9uID0gc2RwLT5zZHBfaGVhZGVy
LkhCMjsKKwkJdnNjLT5sZW5ndGggPSBzZHAtPnNkcF9oZWFkZXIuSEIzOworCQl2c2MtPmNvbG9y
c3BhY2UgPSAoc2RwLT5kYlsxNl0gPj4gNCkgJiAweGY7CisJCXZzYy0+Y29sb3JpbWV0cnkgPSBz
ZHAtPmRiWzE2XSAmIDB4ZjsKKwkJdnNjLT5keW5hbWljX3JhbmdlID0gKHNkcC0+ZGJbMTddID4+
IDcpICYgMHgxOworCisJCXN3aXRjaCAoc2RwLT5kYlsxN10gJiAweDcpIHsKKwkJY2FzZSAweDE6
CisJCQl2c2MtPmJwYyA9IDg7CisJCQlicmVhazsKKwkJY2FzZSAweDI6CisJCQl2c2MtPmJwYyA9
IDEwOworCQkJYnJlYWs7CisJCWNhc2UgMHgzOgorCQkJdnNjLT5icGMgPSAxMjsKKwkJCWJyZWFr
OworCQljYXNlIDB4NDoKKwkJCXZzYy0+YnBjID0gMTY7CisJCQlicmVhazsKKwkJZGVmYXVsdDoK
KwkJCU1JU1NJTkdfQ0FTRShzZHAtPmRiWzE3XSAmIDB4Nyk7CisJCQlyZXR1cm4gLUVJTlZBTDsK
KwkJfQorCisJCXZzYy0+Y29udGVudF90eXBlID0gc2RwLT5kYlsxOF0gJiAweDc7CisJfSBlbHNl
IHsKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQK
K2ludGVsX2RwX2hkcl9tZXRhZGF0YV9pbmZvZnJhbWVfc2RwX3VucGFjayhzdHJ1Y3QgaGRtaV9k
cm1faW5mb2ZyYW1lICpkcm1faW5mb2ZyYW1lLAorCQkJCQkgICBjb25zdCB2b2lkICpidWZmZXIs
IHNpemVfdCBzaXplKQoreworCWludCByZXQ7CisKKwljb25zdCBzdHJ1Y3QgZHBfc2RwICpzZHAg
PSBidWZmZXI7CisKKwlpZiAoc2l6ZSA8IHNpemVvZihzdHJ1Y3QgZHBfc2RwKSkKKwkJcmV0dXJu
IC1FSU5WQUw7CisKKwlpZiAoc2RwLT5zZHBfaGVhZGVyLkhCMCAhPSAwKQorCQlyZXR1cm4gLUVJ
TlZBTDsKKworCWlmIChzZHAtPnNkcF9oZWFkZXIuSEIxICE9IEhETUlfSU5GT0ZSQU1FX1RZUEVf
RFJNKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCS8qCisJICogTGVhc3QgU2lnbmlmaWNhbnQgRWln
aHQgQml0cyBvZiAoRGF0YSBCeXRlIENvdW50IOKAkyAxKQorCSAqIDFEaCAoaS5lLiwgRGF0YSBC
eXRlIENvdW50ID0gMzAgYnl0ZXMpLgorCSAqLworCWlmIChzZHAtPnNkcF9oZWFkZXIuSEIyICE9
IDB4MUQpCisJCXJldHVybiAtRUlOVkFMOworCisJLyogTW9zdCBTaWduaWZpY2FudCBUd28gQml0
cyBvZiAoRGF0YSBCeXRlIENvdW50IOKAkyAxKSwgQ2xlYXIgdG8gMDBiLiAqLworCWlmICgoc2Rw
LT5zZHBfaGVhZGVyLkhCMyAmIDB4MykgIT0gMCkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwkvKiBJ
TkZPRlJBTUUgU0RQIFZlcnNpb24gTnVtYmVyICovCisJaWYgKCgoc2RwLT5zZHBfaGVhZGVyLkhC
MyA+PiAyKSAmIDB4M2YpICE9IDB4MTMpCisJCXJldHVybiAtRUlOVkFMOworCisJLyogQ1RBIEhl
YWRlciBCeXRlIDIgKElORk9GUkFNRSBWZXJzaW9uIE51bWJlcikgKi8KKwlpZiAoc2RwLT5kYlsw
XSAhPSAxKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCS8qIENUQSBIZWFkZXIgQnl0ZSAzIChMZW5n
dGggb2YgSU5GT0ZSQU1FKTogSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkUgKi8KKwlpZiAoc2RwLT5k
YlsxXSAhPSBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwly
ZXQgPSBoZG1pX2RybV9pbmZvZnJhbWVfdW5wYWNrX29ubHkoZHJtX2luZm9mcmFtZSwgJnNkcC0+
ZGJbMl0sCisJCQkJCSAgICAgSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkUpOworCisJcmV0dXJuIHJl
dDsKK30KKworc3RhdGljIHZvaWQgaW50ZWxfcmVhZF9kcF92c2Nfc2RwKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAorCQkJCSAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUsCisJCQkJICBzdHJ1Y3QgZHJtX2RwX3ZzY19zZHAgKnZzYykKK3sKKwlzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsK
KwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOwor
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFz
ZS5kZXYpOworCXVuc2lnbmVkIGludCB0eXBlID0gRFBfU0RQX1ZTQzsKKwlzdHJ1Y3QgZHBfc2Rw
IHNkcCA9IHt9OworCWludCByZXQ7CisKKwkvKiBXaGVuIFBTUiBpcyBlbmFibGVkLCBWU0MgU0RQ
IGlzIGhhbmRsZWQgYnkgUFNSIHJvdXRpbmUgKi8KKwlpZiAoaW50ZWxfcHNyX2VuYWJsZWQoaW50
ZWxfZHApKQorCQlyZXR1cm47CisKKwlpZiAoKGNydGNfc3RhdGUtPmluZm9mcmFtZXMuZW5hYmxl
ICYKKwkgICAgIGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZSh0eXBlKSkgPT0gMCkKKwkJcmV0
dXJuOworCisJaW50ZWxfZGlnX3BvcnQtPnJlYWRfaW5mb2ZyYW1lKGVuY29kZXIsIGNydGNfc3Rh
dGUsIHR5cGUsICZzZHAsIHNpemVvZihzZHApKTsKKworCXJldCA9IGludGVsX2RwX3ZzY19zZHBf
dW5wYWNrKHZzYywgJnNkcCwgc2l6ZW9mKHNkcCkpOworCisJaWYgKHJldCkKKwkJZHJtX2RiZ19r
bXMoJmRldl9wcml2LT5kcm0sICJGYWlsZWQgdG8gdW5wYWNrIERQIFZTQyBTRFBcbiIpOworfQor
CitzdGF0aWMgdm9pZCBpbnRlbF9yZWFkX2RwX2hkcl9tZXRhZGF0YV9pbmZvZnJhbWVfc2RwKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAorCQkJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkJCSAgICAgc3RydWN0IGhkbWlfZHJtX2luZm9mcmFt
ZSAqZHJtX2luZm9mcmFtZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9k
aWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKKwl1bnNpZ25lZCBp
bnQgdHlwZSA9IEhETUlfUEFDS0VUX1RZUEVfR0FNVVRfTUVUQURBVEE7CisJc3RydWN0IGRwX3Nk
cCBzZHAgPSB7fTsKKwlpbnQgcmV0OworCisJaWYgKChjcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmVu
YWJsZSAmCisJICAgIGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZSh0eXBlKSkgPT0gMCkKKwkJ
cmV0dXJuOworCisJaW50ZWxfZGlnX3BvcnQtPnJlYWRfaW5mb2ZyYW1lKGVuY29kZXIsIGNydGNf
c3RhdGUsIHR5cGUsICZzZHAsCisJCQkJICAgICAgIHNpemVvZihzZHApKTsKKworCXJldCA9IGlu
dGVsX2RwX2hkcl9tZXRhZGF0YV9pbmZvZnJhbWVfc2RwX3VucGFjayhkcm1faW5mb2ZyYW1lLCAm
c2RwLAorCQkJCQkJCSBzaXplb2Yoc2RwKSk7CisKKwlpZiAocmV0KQorCQlkcm1fZGJnX2ttcygm
ZGV2X3ByaXYtPmRybSwKKwkJCSAgICAiRmFpbGVkIHRvIHVucGFjayBEUCBIRFIgTWV0YWRhdGEg
SW5mb2ZyYW1lIFNEUFxuIik7Cit9CisKK3ZvaWQgaW50ZWxfcmVhZF9kcF9zZHAoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCisJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKKwkJICAgICAgIHVuc2lnbmVkIGludCB0eXBlKQoreworCXN3aXRjaCAodHlw
ZSkgeworCWNhc2UgRFBfU0RQX1ZTQzoKKwkJaW50ZWxfcmVhZF9kcF92c2Nfc2RwKGVuY29kZXIs
IGNydGNfc3RhdGUsCisJCQkJICAgICAgJmNydGNfc3RhdGUtPmluZm9mcmFtZXMudnNjKTsKKwkJ
YnJlYWs7CisJY2FzZSBIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFEQVRBOgorCQlpbnRlbF9y
ZWFkX2RwX2hkcl9tZXRhZGF0YV9pbmZvZnJhbWVfc2RwKGVuY29kZXIsIGNydGNfc3RhdGUsCisJ
CQkJCQkJICZjcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmRybS5kcm0pOworCQlicmVhazsKKwlkZWZh
dWx0OgorCQlNSVNTSU5HX0NBU0UodHlwZSk7CisJCWJyZWFrOworCX0KK30KKwogc3RhdGljIHZv
aWQKIGludGVsX2RwX3NldHVwX3ZzY19zZHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJ
ICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCmluZGV4IDBkYzA5YTQ2M2VlMS4uZThmOWJh
OTYyZDA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCkBAIC0xMTks
NiArMTE5LDkgQEAgdm9pZCBpbnRlbF9kcF9oZHJfbWV0YWRhdGFfZW5hYmxlKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsCiB2b2lkIGludGVsX2RwX3NldF9pbmZvZnJhbWVzKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLCBib29sIGVuYWJsZSwKIAkJCSAgICAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkgICAgIGNvbnN0IHN0cnVjdCBkcm1fY29u
bmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKTsKK3ZvaWQgaW50ZWxfcmVhZF9kcF9zZHAoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCisJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwKKwkJICAgICAgIHVuc2lnbmVkIGludCB0eXBlKTsKIGJvb2wgaW50ZWxf
ZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7CiAK
IHN0YXRpYyBpbmxpbmUgdW5zaWduZWQgaW50IGludGVsX2RwX3VudXNlZF9sYW5lX21hc2soaW50
IGxhbmVfY291bnQpCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
