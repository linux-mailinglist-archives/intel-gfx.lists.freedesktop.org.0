Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A987E49DF
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 13:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A6C6E9A2;
	Fri, 25 Oct 2019 11:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 894446E9A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 11:24:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 04:24:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="373530193"
Received: from cmclare-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.98])
 by orsmga005.jf.intel.com with ESMTP; 25 Oct 2019 04:24:43 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 12:24:42 +0100
Message-Id: <20191025112442.2824-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests/blt: add some kthreads into
 the mix
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

V2UgY2FuIGJlIG1vcmUgYWdncmVzc2l2ZSBpbiBvdXIgdGVzdGluZyBieSBsYXVuY2hpbmcgYSBu
dW1iZXIgb2YKa3RocmVhZHMsIHdoZXJlIGVhY2ggaXMgc3VibWl0dGluZyBpdHMgb3duIGNvcHkg
b3IgZmlsbCBiYXRjaGVzIG9uIGEgc2V0Cm9mIHJhbmRvbSBzaXplZCBvYmplY3RzLiBBbHNvIHNp
bmNlIHRoZSB1bmRlcmx5aW5nIGZpbGwgYW5kIGNvcHkgYmF0Y2hlcwpjYW4gYmUgcHJlLWVtcHRl
ZCBtaWQtYmF0Y2goZm9yIHBhcnRpY3VsYXJseSBsYXJnZSBvYmplY3RzKSwgdGhyb3cgaW4gYQpy
YW5kb20gbWl4dHVyZSBvZiBjdHggcHJpb3JpdGllcyBwZXIgdGhyZWFkIHRvIG1ha2UgcHJlLWVt
cHRpb24gYQpwb3NzaWJpbGl0eS4KClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgotLS0KIC4uLi9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fb2JqZWN0X2JsdC5jICB8
IDE0NCArKysrKysrKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMjEgaW5zZXJ0aW9ucygr
KSwgMjMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L3NlbGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3RfYmx0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX29iamVjdF9ibHQuYwppbmRleCA5ZWM1NWIzYTM4MTUuLjQx
ZTBiZDZhMTc1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9pOTE1X2dlbV9vYmplY3RfYmx0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3RfYmx0LmMKQEAgLTcsMzQgKzcsNTMgQEAKIAogI2luY2x1
ZGUgImk5MTVfc2VsZnRlc3QuaCIKIAorI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jb250ZXh0Lmgi
CiAjaW5jbHVkZSAic2VsZnRlc3RzL2lndF9mbHVzaF90ZXN0LmgiCisjaW5jbHVkZSAic2VsZnRl
c3RzL2k5MTVfcmFuZG9tLmgiCiAjaW5jbHVkZSAic2VsZnRlc3RzL21vY2tfZHJtLmgiCiAjaW5j
bHVkZSAiaHVnZV9nZW1fb2JqZWN0LmgiCiAjaW5jbHVkZSAibW9ja19jb250ZXh0LmgiCiAKLXN0
YXRpYyBpbnQgaWd0X2ZpbGxfYmx0KHZvaWQgKmFyZykKK3N0cnVjdCBpZ3RfdGhyZWFkX2FyZyB7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTU7CisJc3RydWN0IHJuZF9zdGF0ZSAqcHJu
ZzsKK307CisKK3N0YXRpYyBpbnQgaWd0X2ZpbGxfYmx0X3RocmVhZCh2b2lkICphcmcpCiB7Ci0J
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBhcmc7Ci0Jc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlID0gaTkxNS0+ZW5naW5lW0JDUzBdLT5rZXJuZWxfY29udGV4dDsKKwlzdHJ1Y3QgaWd0
X3RocmVhZF9hcmcgKnRocmVhZCA9IGFyZzsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRocmVhZC0+aTkxNTsKKwlzdHJ1Y3Qgcm5kX3N0YXRlICpwcm5nID0gdGhyZWFkLT5wcm5n
OwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Ci0Jc3RydWN0IHJuZF9zdGF0ZSBw
cm5nOworCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7CisJc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlOworCXN0cnVjdCBkcm1fZmlsZSAqZmlsZTsKKwl1bnNpZ25lZCBpbnQgcHJpbzsKIAlJ
R1RfVElNRU9VVChlbmQpOwotCXUzMiAqdmFkZHI7Ci0JaW50IGVyciA9IDA7CisJaW50IGVycjsK
KworCWZpbGUgPSBtb2NrX2ZpbGUoaTkxNSk7CisJaWYgKElTX0VSUihmaWxlKSkKKwkJcmV0dXJu
IFBUUl9FUlIoZmlsZSk7CisKKwljdHggPSBsaXZlX2NvbnRleHQoaTkxNSwgZmlsZSk7CisJaWYg
KElTX0VSUihjdHgpKSB7CisJCWVyciA9IFBUUl9FUlIoY3R4KTsKKwkJZ290byBvdXRfZmlsZTsK
Kwl9CiAKLQlwcmFuZG9tX3NlZWRfc3RhdGUoJnBybmcsIGk5MTVfc2VsZnRlc3QucmFuZG9tX3Nl
ZWQpOworCXByaW8gPSBwcmFuZG9tX3UzMl9zdGF0ZShwcm5nKSAlIEk5MTVfUFJJT1JJVFlfTUFY
OworCWN0eC0+c2NoZWQucHJpb3JpdHkgPSBJOTE1X1VTRVJfUFJJT1JJVFkocHJpbyk7CiAKLQkv
KgotCSAqIFhYWDogbmVlZHMgc29tZSB0aHJlYWRzIHRvIHNjYWxlIGFsbCB0aGVzZSB0ZXN0cywg
YWxzbyBtYXliZSB0aHJvdwotCSAqIGluIHN1Ym1pc3Npb24gZnJvbSBoaWdoZXIgcHJpb3JpdHkg
Y29udGV4dCB0byBzZWUgaWYgd2UgYXJlCi0JICogcHJlZW1wdGVkIGZvciB2ZXJ5IGxhcmdlIG9i
amVjdHMuLi4KLQkgKi8KKwljZSA9IGk5MTVfZ2VtX2NvbnRleHRfZ2V0X2VuZ2luZShjdHgsIEJD
UzApOworCUdFTV9CVUdfT04oSVNfRVJSKGNlKSk7CiAKIAlkbyB7CiAJCWNvbnN0IHUzMiBtYXhf
YmxvY2tfc2l6ZSA9IFMxNl9NQVggKiBQQUdFX1NJWkU7Ci0JCXUzMiBzeiA9IG1pbl90KHU2NCwg
Y2UtPnZtLT50b3RhbCA+PiA0LCBwcmFuZG9tX3UzMl9zdGF0ZSgmcHJuZykpOworCQl1MzIgc3og
PSBtaW5fdCh1NjQsIGNlLT52bS0+dG90YWwgPj4gNCwgcHJhbmRvbV91MzJfc3RhdGUocHJuZykp
OwogCQl1MzIgcGh5c19zeiA9IHN6ICUgKG1heF9ibG9ja19zaXplICsgMSk7Ci0JCXUzMiB2YWwg
PSBwcmFuZG9tX3UzMl9zdGF0ZSgmcHJuZyk7CisJCXUzMiB2YWwgPSBwcmFuZG9tX3UzMl9zdGF0
ZShwcm5nKTsKKwkJdTMyICp2YWRkcjsKIAkJdTMyIGk7CiAKIAkJc3ogPSByb3VuZF91cChzeiwg
UEFHRV9TSVpFKTsKQEAgLTk4LDI2ICsxMTcsNDcgQEAgc3RhdGljIGludCBpZ3RfZmlsbF9ibHQo
dm9pZCAqYXJnKQogCWlmIChlcnIgPT0gLUVOT01FTSkKIAkJZXJyID0gMDsKIAorCWludGVsX2Nv
bnRleHRfcHV0KGNlKTsKK291dF9maWxlOgorCW1vY2tfZmlsZV9mcmVlKGk5MTUsIGZpbGUpOwog
CXJldHVybiBlcnI7CiB9CiAKLXN0YXRpYyBpbnQgaWd0X2NvcHlfYmx0KHZvaWQgKmFyZykKK3N0
YXRpYyBpbnQgaWd0X2NvcHlfYmx0X3RocmVhZCh2b2lkICphcmcpCiB7Ci0Jc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSBhcmc7Ci0Jc3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gaTkx
NS0+ZW5naW5lW0JDUzBdLT5rZXJuZWxfY29udGV4dDsKKwlzdHJ1Y3QgaWd0X3RocmVhZF9hcmcg
KnRocmVhZCA9IGFyZzsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRocmVhZC0+
aTkxNTsKKwlzdHJ1Y3Qgcm5kX3N0YXRlICpwcm5nID0gdGhyZWFkLT5wcm5nOwogCXN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpzcmMsICpkc3Q7Ci0Jc3RydWN0IHJuZF9zdGF0ZSBwcm5nOwor
CXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7CisJc3RydWN0IGludGVsX2NvbnRleHQgKmNl
OworCXN0cnVjdCBkcm1fZmlsZSAqZmlsZTsKKwl1bnNpZ25lZCBpbnQgcHJpbzsKIAlJR1RfVElN
RU9VVChlbmQpOwotCXUzMiAqdmFkZHI7Ci0JaW50IGVyciA9IDA7CisJaW50IGVycjsKKworCWZp
bGUgPSBtb2NrX2ZpbGUoaTkxNSk7CisJaWYgKElTX0VSUihmaWxlKSkKKwkJcmV0dXJuIFBUUl9F
UlIoZmlsZSk7CisKKwljdHggPSBsaXZlX2NvbnRleHQoaTkxNSwgZmlsZSk7CisJaWYgKElTX0VS
UihjdHgpKSB7CisJCWVyciA9IFBUUl9FUlIoY3R4KTsKKwkJZ290byBvdXRfZmlsZTsKKwl9CiAK
LQlwcmFuZG9tX3NlZWRfc3RhdGUoJnBybmcsIGk5MTVfc2VsZnRlc3QucmFuZG9tX3NlZWQpOwor
CXByaW8gPSBwcmFuZG9tX3UzMl9zdGF0ZShwcm5nKSAlIEk5MTVfUFJJT1JJVFlfTUFYOworCWN0
eC0+c2NoZWQucHJpb3JpdHkgPSBJOTE1X1VTRVJfUFJJT1JJVFkocHJpbyk7CisKKwljZSA9IGk5
MTVfZ2VtX2NvbnRleHRfZ2V0X2VuZ2luZShjdHgsIEJDUzApOworCUdFTV9CVUdfT04oSVNfRVJS
KGNlKSk7CiAKIAlkbyB7CiAJCWNvbnN0IHUzMiBtYXhfYmxvY2tfc2l6ZSA9IFMxNl9NQVggKiBQ
QUdFX1NJWkU7Ci0JCXUzMiBzeiA9IG1pbl90KHU2NCwgY2UtPnZtLT50b3RhbCA+PiA0LCBwcmFu
ZG9tX3UzMl9zdGF0ZSgmcHJuZykpOworCQl1MzIgc3ogPSBtaW5fdCh1NjQsIGNlLT52bS0+dG90
YWwgPj4gNCwgcHJhbmRvbV91MzJfc3RhdGUocHJuZykpOwogCQl1MzIgcGh5c19zeiA9IHN6ICUg
KG1heF9ibG9ja19zaXplICsgMSk7Ci0JCXUzMiB2YWwgPSBwcmFuZG9tX3UzMl9zdGF0ZSgmcHJu
Zyk7CisJCXUzMiB2YWwgPSBwcmFuZG9tX3UzMl9zdGF0ZShwcm5nKTsKKwkJdTMyICp2YWRkcjsK
IAkJdTMyIGk7CiAKIAkJc3ogPSByb3VuZF91cChzeiwgUEFHRV9TSVpFKTsKQEAgLTIwMSw5ICsy
NDEsNjcgQEAgc3RhdGljIGludCBpZ3RfY29weV9ibHQodm9pZCAqYXJnKQogCWlmIChlcnIgPT0g
LUVOT01FTSkKIAkJZXJyID0gMDsKIAorCWludGVsX2NvbnRleHRfcHV0KGNlKTsKK291dF9maWxl
OgorCW1vY2tfZmlsZV9mcmVlKGk5MTUsIGZpbGUpOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRp
YyBpbnQgaWd0X3RocmVhZGVkX2JsdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJ
CSAgICBpbnQgKCpibHRfZm4pKHZvaWQgKmFyZykpCit7CisKKwlJOTE1X1JORF9TVEFURShwcm5n
KTsKKwlzdHJ1Y3QgaWd0X3RocmVhZF9hcmcgdGhyZWFkID0geyBpOTE1LCAmcHJuZywgfTsKKwlz
dHJ1Y3QgdGFza19zdHJ1Y3QgKip0c2s7CisJdW5zaWduZWQgaW50IG5fY3B1czsKKwl1bnNpZ25l
ZCBpbnQgaTsKKwlpbnQgZXJyID0gMDsKKworCW5fY3B1cyA9IG51bV9vbmxpbmVfY3B1cygpICsg
MTsKKworCXRzayA9IGt6YWxsb2Mobl9jcHVzICogc2l6ZW9mKHN0cnVjdCB0YXNrX3N0cnVjdCAq
KSwgR0ZQX0tFUk5FTCk7CisJaWYgKCF0c2spCisJCXJldHVybiAwOworCisJZm9yIChpID0gMDsg
aSA8IG5fY3B1czsgKytpKSB7CisJCXRza1tpXSA9IGt0aHJlYWRfcnVuKGJsdF9mbiwgJnRocmVh
ZCwgImlndC9ibHQtJWQiLCBpKTsKKwkJaWYgKElTX0VSUih0c2tbaV0pKSB7CisJCQllcnIgPSBQ
VFJfRVJSKHRza1tpXSk7CisJCQlicmVhazsKKwkJfQorCisJCWdldF90YXNrX3N0cnVjdCh0c2tb
aV0pOworCX0KKworCWZvciAoaSA9IDA7IGkgPCBuX2NwdXM7ICsraSkgeworCQlpbnQgc3RhdHVz
OworCisJCWlmIChJU19FUlJfT1JfTlVMTCh0c2tbaV0pKQorCQkJY29udGludWU7CisKKwkJc3Rh
dHVzID0ga3RocmVhZF9zdG9wKHRza1tpXSk7CisJCWlmIChzdGF0dXMgJiYgIWVycikKKwkJCWVy
ciA9IHN0YXR1czsKKworCQlwdXRfdGFza19zdHJ1Y3QodHNrW2ldKTsKKwl9CisKKwlrZnJlZSh0
c2spOworCiAJcmV0dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBpZ3RfZmlsbF9ibHQodm9pZCAq
YXJnKQoreworCXJldHVybiBpZ3RfdGhyZWFkZWRfYmx0KGFyZywgaWd0X2ZpbGxfYmx0X3RocmVh
ZCk7Cit9CisKK3N0YXRpYyBpbnQgaWd0X2NvcHlfYmx0KHZvaWQgKmFyZykKK3sKKwlyZXR1cm4g
aWd0X3RocmVhZGVkX2JsdChhcmcsIGlndF9jb3B5X2JsdF90aHJlYWQpOworfQorCiBpbnQgaTkx
NV9nZW1fb2JqZWN0X2JsdF9saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKIHsKIAlzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfc3VidGVzdCB0ZXN0c1tdID0gewot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
