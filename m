Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F222C64A0
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:10:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F5C6EC6A;
	Fri, 27 Nov 2020 12:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0050E6EC52;
 Fri, 27 Nov 2020 12:08:47 +0000 (UTC)
IronPort-SDR: LXBfoPmIGnHOWWM0WzV8HUUtD8jflfszkLgntlIeRI+noOAJK+FoYdHBegx10bPuo0PN0skyVR
 AooQycqUPxaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="172540591"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="172540591"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:08:47 -0800
IronPort-SDR: a/ga+z0LeBhFDJE+T6oeXdy3C+A+WwJtQ+TNzTuc6+P1cAbs3FE89Pn6NDunDgPEA/++l30Nta
 5CbUrQDxodGg==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548028797"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:08:45 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:05:20 +0000
Message-Id: <20201127120718.454037-45-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 044/162] drm/i915: Increase ww locking for
 perf.
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
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KCldlIG5lZWQgdG8gbG9jayBhIGZldyBtb3JlIG9iamVjdHMsIHNvbWUgdGVtcG9yYXJpbHks
CmFkZCB3dyBsb2NrIHdoZXJlIG5lZWRlZC4KClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBUaG9tYXMgSGVsbHN0
csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wZXJmLmMgfCA1NiArKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wZXJmLmMKaW5kZXggMGIzMDBlMGQ5NTYxLi4xZjU3NGQyOWVjZTUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCkBAIC0xNTg3LDcgKzE1ODcsNyBAQCBzdGF0aWMgaW50
IGFsbG9jX29hX2J1ZmZlcihzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogCXN0cmVh
bS0+b2FfYnVmZmVyLnZtYSA9IHZtYTsKIAogCXN0cmVhbS0+b2FfYnVmZmVyLnZhZGRyID0KLQkJ
aTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAoYm8sIEk5MTVfTUFQX1dCKTsKKwkJaTkxNV9nZW1fb2Jq
ZWN0X3Bpbl9tYXBfdW5sb2NrZWQoYm8sIEk5MTVfTUFQX1dCKTsKIAlpZiAoSVNfRVJSKHN0cmVh
bS0+b2FfYnVmZmVyLnZhZGRyKSkgewogCQlyZXQgPSBQVFJfRVJSKHN0cmVhbS0+b2FfYnVmZmVy
LnZhZGRyKTsKIAkJZ290byBlcnJfdW5waW47CkBAIC0xNjQwLDYgKzE2NDAsNyBAQCBzdGF0aWMg
aW50IGFsbG9jX25vYV93YWl0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiAJY29u
c3QgdTMyIGJhc2UgPSBzdHJlYW0tPmVuZ2luZS0+bW1pb19iYXNlOwogI2RlZmluZSBDU19HUFIo
eCkgR0VOOF9SSU5HX0NTX0dQUihiYXNlLCB4KQogCXUzMiAqYmF0Y2gsICp0czAsICpjcywgKmp1
bXA7CisJc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCB3dzsKIAlpbnQgcmV0LCBpOwogCWVudW0gewog
CQlTVEFSVF9UUywKQEAgLTE2NTcsMTUgKzE2NTgsMjEgQEAgc3RhdGljIGludCBhbGxvY19ub2Ff
d2FpdChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogCQlyZXR1cm4gUFRSX0VSUihi
byk7CiAJfQogCisJaTkxNV9nZW1fd3dfY3R4X2luaXQoJnd3LCB0cnVlKTsKK3JldHJ5OgorCXJl
dCA9IGk5MTVfZ2VtX29iamVjdF9sb2NrKGJvLCAmd3cpOworCWlmIChyZXQpCisJCWdvdG8gb3V0
X3d3OworCiAJLyoKIAkgKiBXZSBwaW4gaW4gR0dUVCBiZWNhdXNlIHdlIGp1bXAgaW50byB0aGlz
IGJ1ZmZlciBub3cgYmVjYXVzZQogCSAqIG11bHRpcGxlIE9BIGNvbmZpZyBCT3Mgd2lsbCBoYXZl
IGEganVtcCB0byB0aGlzIGFkZHJlc3MgYW5kIGl0CiAJICogbmVlZHMgdG8gYmUgZml4ZWQgZHVy
aW5nIHRoZSBsaWZldGltZSBvZiB0aGUgaTkxNS9wZXJmIHN0cmVhbS4KIAkgKi8KLQl2bWEgPSBp
OTE1X2dlbV9vYmplY3RfZ2d0dF9waW4oYm8sIE5VTEwsIDAsIDAsIFBJTl9ISUdIKTsKKwl2bWEg
PSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW5fd3coYm8sICZ3dywgTlVMTCwgMCwgMCwgUElOX0hJ
R0gpOwogCWlmIChJU19FUlIodm1hKSkgewogCQlyZXQgPSBQVFJfRVJSKHZtYSk7Ci0JCWdvdG8g
ZXJyX3VucmVmOworCQlnb3RvIG91dF93dzsKIAl9CiAKIAliYXRjaCA9IGNzID0gaTkxNV9nZW1f
b2JqZWN0X3Bpbl9tYXAoYm8sIEk5MTVfTUFQX1dCKTsKQEAgLTE3OTksMTIgKzE4MDYsMTkgQEAg
c3RhdGljIGludCBhbGxvY19ub2Ffd2FpdChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFt
KQogCV9faTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbWFwKGJvKTsKIAogCXN0cmVhbS0+bm9hX3dh
aXQgPSB2bWE7Ci0JcmV0dXJuIDA7CisJZ290byBvdXRfd3c7CiAKIGVycl91bnBpbjoKIAlpOTE1
X3ZtYV91bnBpbl9hbmRfcmVsZWFzZSgmdm1hLCAwKTsKLWVycl91bnJlZjoKLQlpOTE1X2dlbV9v
YmplY3RfcHV0KGJvKTsKK291dF93dzoKKwlpZiAocmV0ID09IC1FREVBRExLKSB7CisJCXJldCA9
IGk5MTVfZ2VtX3d3X2N0eF9iYWNrb2ZmKCZ3dyk7CisJCWlmICghcmV0KQorCQkJZ290byByZXRy
eTsKKwl9CisJaTkxNV9nZW1fd3dfY3R4X2ZpbmkoJnd3KTsKKwlpZiAocmV0KQorCQlpOTE1X2dl
bV9vYmplY3RfcHV0KGJvKTsKIAlyZXR1cm4gcmV0OwogfQogCkBAIC0xODQ3LDYgKzE4NjEsNyBA
QCBhbGxvY19vYV9jb25maWdfYnVmZmVyKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0s
CiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAlzdHJ1Y3QgaTkxNV9vYV9j
b25maWdfYm8gKm9hX2JvOworCXN0cnVjdCBpOTE1X2dlbV93d19jdHggd3c7CiAJc2l6ZV90IGNv
bmZpZ19sZW5ndGggPSAwOwogCXUzMiAqY3M7CiAJaW50IGVycjsKQEAgLTE4NjcsMTAgKzE4ODIs
MTYgQEAgYWxsb2Nfb2FfY29uZmlnX2J1ZmZlcihzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3Ry
ZWFtLAogCQlnb3RvIGVycl9mcmVlOwogCX0KIAorCWk5MTVfZ2VtX3d3X2N0eF9pbml0KCZ3dywg
dHJ1ZSk7CityZXRyeToKKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosICZ3dyk7CisJ
aWYgKGVycikKKwkJZ290byBvdXRfd3c7CisKIAljcyA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFw
KG9iaiwgSTkxNV9NQVBfV0IpOwogCWlmIChJU19FUlIoY3MpKSB7CiAJCWVyciA9IFBUUl9FUlIo
Y3MpOwotCQlnb3RvIGVycl9vYV9ibzsKKwkJZ290byBvdXRfd3c7CiAJfQogCiAJY3MgPSB3cml0
ZV9jc19taV9scmkoY3MsCkBAIC0xODk4LDE5ICsxOTE5LDI4IEBAIGFsbG9jX29hX2NvbmZpZ19i
dWZmZXIoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKIAkJCQkgICAgICAgTlVMTCk7
CiAJaWYgKElTX0VSUihvYV9iby0+dm1hKSkgewogCQllcnIgPSBQVFJfRVJSKG9hX2JvLT52bWEp
OwotCQlnb3RvIGVycl9vYV9ibzsKKwkJZ290byBvdXRfd3c7CiAJfQogCiAJb2FfYm8tPm9hX2Nv
bmZpZyA9IGk5MTVfb2FfY29uZmlnX2dldChvYV9jb25maWcpOwogCWxsaXN0X2FkZCgmb2FfYm8t
Pm5vZGUsICZzdHJlYW0tPm9hX2NvbmZpZ19ib3MpOwogCi0JcmV0dXJuIG9hX2JvOworb3V0X3d3
OgorCWlmIChlcnIgPT0gLUVERUFETEspIHsKKwkJZXJyID0gaTkxNV9nZW1fd3dfY3R4X2JhY2tv
ZmYoJnd3KTsKKwkJaWYgKCFlcnIpCisJCQlnb3RvIHJldHJ5OworCX0KKwlpOTE1X2dlbV93d19j
dHhfZmluaSgmd3cpOwogCi1lcnJfb2FfYm86Ci0JaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwor
CWlmIChlcnIpCisJCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIGVycl9mcmVlOgotCWtmcmVl
KG9hX2JvKTsKLQlyZXR1cm4gRVJSX1BUUihlcnIpOworCWlmIChlcnIpIHsKKwkJa2ZyZWUob2Ff
Ym8pOworCQlyZXR1cm4gRVJSX1BUUihlcnIpOworCX0KKwlyZXR1cm4gb2FfYm87CiB9CiAKIHN0
YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
