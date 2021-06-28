Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9351D3B62AA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 16:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ABD96E463;
	Mon, 28 Jun 2021 14:46:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F8D6E463;
 Mon, 28 Jun 2021 14:46:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="271825218"
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="271825218"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 07:46:43 -0700
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="408091033"
Received: from danielmi-mobl2.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.242])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 07:46:41 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 28 Jun 2021 16:46:23 +0200
Message-Id: <20210628144626.76126-3-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210628144626.76126-1-thomas.hellstrom@linux.intel.com>
References: <20210628144626.76126-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/5] drm/i915/gem: Introduce a selftest for
 the gem object migrate functionality
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKQSBzZWxmdGVzdCBm
b3IgdGhlIGdlbSBvYmplY3QgbWlncmF0ZSBmdW5jdGlvbmFsaXR5LiBTbGlnaHRseSBhZGFwdGVk
CmZyb20gdGhlIG9yaWdpbmFsIGJ5IE1hdHRoZXcgdG8gdGhlIG5ldyBpbnRlcmZhY2UgYW5kIG5l
dyBmaWxsIGJsaXQKY29kZS4KCkNvLWRldmVsb3BlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRo
b21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVs
bHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgICAgfCAgIDEgKwogLi4uL2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaTkxNV9nZW1fbWlncmF0ZS5jIHwgMjM3ICsrKysrKysrKysrKysrKysrKwog
Li4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmggIHwgICAxICsKIDMg
ZmlsZXMgY2hhbmdlZCwgMjM5IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21pZ3JhdGUuYwoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwppbmRleCAxYzE4YmUwNjdiNTgu
LmZmMTQ3ZmQ1OTg3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3QuYwpAQCAtNjQ5LDYgKzY0OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3RfZnVuY3MgaTkxNV9nZW1fb2JqZWN0X2Z1bmNzID0gewogI2lmIElTX0VOQUJMRUQoQ09ORklH
X0RSTV9JOTE1X1NFTEZURVNUKQogI2luY2x1ZGUgInNlbGZ0ZXN0cy9odWdlX2dlbV9vYmplY3Qu
YyIKICNpbmNsdWRlICJzZWxmdGVzdHMvaHVnZV9wYWdlcy5jIgorI2luY2x1ZGUgInNlbGZ0ZXN0
cy9pOTE1X2dlbV9taWdyYXRlLmMiCiAjaW5jbHVkZSAic2VsZnRlc3RzL2k5MTVfZ2VtX29iamVj
dC5jIgogI2luY2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X2dlbV9jb2hlcmVuY3kuYyIKICNlbmRpZgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9t
aWdyYXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21p
Z3JhdGUuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmE0MzdiNjZm
NjRkOQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fbWlncmF0ZS5jCkBAIC0wLDAgKzEsMjM3IEBACisvLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogTUlUCisvKgorICogQ29weXJpZ2h0IMKpIDIwMjAtMjAyMSBJbnRlbCBDb3Jw
b3JhdGlvbgorICovCisKKyNpbmNsdWRlICJndC9pbnRlbF9taWdyYXRlLmgiCisKK3N0YXRpYyBp
bnQgaWd0X3NtZW1fY3JlYXRlX21pZ3JhdGUodm9pZCAqYXJnKQoreworCXN0cnVjdCBpbnRlbF9n
dCAqZ3QgPSBhcmc7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsK
KwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCXN0cnVjdCBpOTE1X2dlbV93d19j
dHggd3c7CisJaW50IGVyciA9IDA7CisKKwkvKiBTd2l0Y2ggb2JqZWN0IGJhY2tpbmctc3RvcmUg
b24gY3JlYXRlICovCisJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKGk5MTUsIFBB
R0VfU0laRSwgMCk7CisJaWYgKElTX0VSUihvYmopKQorCQlyZXR1cm4gUFRSX0VSUihvYmopOwor
CisJZm9yX2k5MTVfZ2VtX3d3KCZ3dywgZXJyLCB0cnVlKSB7CisJCWVyciA9IGk5MTVfZ2VtX29i
amVjdF9sb2NrKG9iaiwgJnd3KTsKKwkJaWYgKGVycikKKwkJCWNvbnRpbnVlOworCisJCWlmICgh
aTkxNV9nZW1fb2JqZWN0X2Nhbl9taWdyYXRlKG9iaiwgSU5URUxfUkVHSU9OX1NNRU0pKSB7CisJ
CQllcnIgPSAtRUlOVkFMOworCQkJY29udGludWU7CisJCX0KKworCQllcnIgPSBpOTE1X2dlbV9v
YmplY3RfbWlncmF0ZShvYmosICZ3dywgSU5URUxfUkVHSU9OX1NNRU0pOworCQlpZiAoZXJyKQor
CQkJY29udGludWU7CisKKwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOwor
CQlpZiAoZXJyKQorCQkJY29udGludWU7CisKKwkJaWYgKGk5MTVfZ2VtX29iamVjdF9jYW5fbWln
cmF0ZShvYmosIElOVEVMX1JFR0lPTl9MTUVNKSkKKwkJCWVyciA9IC1FSU5WQUw7CisKKwkJaTkx
NV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CisJfQorCWk5MTVfZ2VtX29iamVjdF9wdXQo
b2JqKTsKKworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQgaWd0X2xtZW1fY3JlYXRlX21p
Z3JhdGUodm9pZCAqYXJnKQoreworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7CisJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqOworCXN0cnVjdCBpOTE1X2dlbV93d19jdHggd3c7CisJaW50IGVyciA9IDA7
CisKKwkvKiBTd2l0Y2ggb2JqZWN0IGJhY2tpbmctc3RvcmUgb24gY3JlYXRlICovCisJb2JqID0g
aTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShpOTE1LCBQQUdFX1NJWkUpOworCWlmIChJU19F
UlIob2JqKSkKKwkJcmV0dXJuIFBUUl9FUlIob2JqKTsKKworCWZvcl9pOTE1X2dlbV93dygmd3cs
IGVyciwgdHJ1ZSkgeworCQllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosICZ3dyk7CisJ
CWlmIChlcnIpCisJCQljb250aW51ZTsKKworCQlpZiAoIWk5MTVfZ2VtX29iamVjdF9jYW5fbWln
cmF0ZShvYmosIElOVEVMX1JFR0lPTl9MTUVNKSkgeworCQkJZXJyID0gLUVJTlZBTDsKKwkJCWNv
bnRpbnVlOworCQl9CisKKwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGUob2JqLCAmd3cs
IElOVEVMX1JFR0lPTl9MTUVNKTsKKwkJaWYgKGVycikKKwkJCWNvbnRpbnVlOworCisJCWVyciA9
IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMob2JqKTsKKwkJaWYgKGVycikKKwkJCWNvbnRpbnVl
OworCisJCWlmIChpOTE1X2dlbV9vYmplY3RfY2FuX21pZ3JhdGUob2JqLCBJTlRFTF9SRUdJT05f
U01FTSkpCisJCQllcnIgPSAtRUlOVkFMOworCisJCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdl
cyhvYmopOworCX0KKwlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CisKKwlyZXR1cm4gZXJyOwor
fQorCitzdGF0aWMgaW50IGxtZW1fcGFnZXNfbWlncmF0ZV9vbmUoc3RydWN0IGk5MTVfZ2VtX3d3
X2N0eCAqd3csCisJCQkJICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQoreworCWlu
dCBlcnI7CisKKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosIHd3KTsKKwlpZiAoZXJy
KQorCQlyZXR1cm4gZXJyOworCisJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3dhaXQob2JqLAorCQkJ
CSAgIEk5MTVfV0FJVF9JTlRFUlJVUFRJQkxFIHwKKwkJCQkgICBJOTE1X1dBSVRfUFJJT1JJVFkg
fAorCQkJCSAgIEk5MTVfV0FJVF9BTEwsCisJCQkJICAgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOwor
CWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKKwlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0o
b2JqKSkgeworCQlpZiAoIWk5MTVfZ2VtX29iamVjdF9jYW5fbWlncmF0ZShvYmosIElOVEVMX1JF
R0lPTl9TTUVNKSkgeworCQkJcHJfZXJyKCJvYmplY3QgY2FuJ3QgbWlncmF0ZSB0byBzbWVtLlxu
Iik7CisJCQlyZXR1cm4gLUVJTlZBTDsKKwkJfQorCisJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9t
aWdyYXRlKG9iaiwgd3csIElOVEVMX1JFR0lPTl9TTUVNKTsKKwkJaWYgKGVycikgeworCQkJcHJf
ZXJyKCJPYmplY3QgZmFpbGVkIG1pZ3JhdGlvbiB0byBzbWVtXG4iKTsKKwkJCWlmIChlcnIpCisJ
CQkJcmV0dXJuIGVycjsKKwkJfQorCisJCWlmIChpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShvYmop
KSB7CisJCQlwcl9lcnIoIm9iamVjdCBzdGlsbCBiYWNrZWQgYnkgbG1lbVxuIik7CisJCQllcnIg
PSAtRUlOVkFMOworCQl9CisKKwkJaWYgKCFpOTE1X2dlbV9vYmplY3RfaGFzX3N0cnVjdF9wYWdl
KG9iaikpIHsKKwkJCXByX2Vycigib2JqZWN0IG5vdCBiYWNrZWQgYnkgc3RydWN0IHBhZ2VcbiIp
OworCQkJZXJyID0gLUVJTlZBTDsKKwkJfQorCisJfSBlbHNlIHsKKwkJaWYgKCFpOTE1X2dlbV9v
YmplY3RfY2FuX21pZ3JhdGUob2JqLCBJTlRFTF9SRUdJT05fTE1FTSkpIHsKKwkJCXByX2Vycigi
b2JqZWN0IGNhbid0IG1pZ3JhdGUgdG8gbG1lbS5cbiIpOworCQkJcmV0dXJuIC1FSU5WQUw7CisJ
CX0KKworCQllcnIgPSBpOTE1X2dlbV9vYmplY3RfbWlncmF0ZShvYmosIHd3LCBJTlRFTF9SRUdJ
T05fTE1FTSk7CisJCWlmIChlcnIpIHsKKwkJCXByX2VycigiT2JqZWN0IGZhaWxlZCBtaWdyYXRp
b24gdG8gbG1lbVxuIik7CisJCQlpZiAoZXJyKQorCQkJCXJldHVybiBlcnI7CisJCX0KKworCQlp
ZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19zdHJ1Y3RfcGFnZShvYmopKSB7CisJCQlwcl9lcnIoIm9i
amVjdCBzdGlsbCBiYWNrZWQgYnkgc3RydWN0IHBhZ2VcbiIpOworCQkJZXJyID0gLUVJTlZBTDsK
KwkJfQorCisJCWlmICghaTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0ob2JqKSkgeworCQkJcHJfZXJy
KCJvYmplY3Qgbm90IGJhY2tlZCBieSBsbWVtXG4iKTsKKwkJCWVyciA9IC1FSU5WQUw7CisJCX0K
Kwl9CisKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50IGlndF9sbWVtX3BhZ2VzX21pZ3Jh
dGUodm9pZCAqYXJnKQoreworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7CisJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqOworCXN0cnVjdCBpOTE1X2dlbV93d19jdHggd3c7CisJc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnE7CisJaW50IGVycjsKKwlpbnQgaTsKKworCS8qIEZyb20gTE1FTSB0byBzaG1lbSBh
bmQgYmFjayBhZ2FpbiAqLworCisJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKGk5
MTUsIFNaXzJNLCAwKTsKKwlpZiAoSVNfRVJSKG9iaikpCisJCXJldHVybiBQVFJfRVJSKG9iaik7
CisKKwllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosIE5VTEwpOworCWlmIChlcnIpCisJ
CWdvdG8gb3V0X3B1dDsKKworCWVyciA9IF9fX19pOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzKG9i
aik7CisJaWYgKGVycikgeworCQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CisJCWdvdG8g
b3V0X3B1dDsKKwl9CisKKwllcnIgPSBpbnRlbF9jb250ZXh0X21pZ3JhdGVfY2xlYXIoZ3QtPm1p
Z3JhdGUuY29udGV4dCwgTlVMTCwKKwkJCQkJICBvYmotPm1tLnBhZ2VzLT5zZ2wsIG9iai0+Y2Fj
aGVfbGV2ZWwsCisJCQkJCSAgaTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0ob2JqKSwKKwkJCQkJICAw
LCAmcnEpOworCWlmIChycSkgeworCQlkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZShvYmotPmJhc2Uu
cmVzdiwgJnJxLT5mZW5jZSk7CisJCWk5MTVfcmVxdWVzdF9wdXQocnEpOworCX0KKwlpOTE1X2dl
bV9vYmplY3RfdW5sb2NrKG9iaik7CisJaWYgKGVycikKKwkJZ290byBvdXRfcHV0OworCisJZm9y
IChpID0gMTsgaSA8PSA0OyArK2kpIHsKKwkJZm9yX2k5MTVfZ2VtX3d3KCZ3dywgZXJyLCB0cnVl
KSB7CisJCQllcnIgPSBsbWVtX3BhZ2VzX21pZ3JhdGVfb25lKCZ3dywgb2JqKTsKKwkJCWlmIChl
cnIpCisJCQkJY29udGludWU7CisKKwkJCWVyciA9IGk5MTVfZ2VtX29iamVjdF93YWl0X21pZ3Jh
dGlvbihvYmosIHRydWUpOworCQkJaWYgKGVycikKKwkJCQljb250aW51ZTsKKworCQkJZXJyID0g
aW50ZWxfbWlncmF0ZV9jbGVhcigmZ3QtPm1pZ3JhdGUsICZ3dywgTlVMTCwKKwkJCQkJCSAgb2Jq
LT5tbS5wYWdlcy0+c2dsLAorCQkJCQkJICBvYmotPmNhY2hlX2xldmVsLAorCQkJCQkJICBpOTE1
X2dlbV9vYmplY3RfaXNfbG1lbShvYmopLAorCQkJCQkJICAweGRlYWRiZWFmLCAmcnEpOworCQkJ
aWYgKHJxKSB7CisJCQkJZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2Uob2JqLT5iYXNlLnJlc3YsCisJ
CQkJCQkJJnJxLT5mZW5jZSk7CisJCQkJaTkxNV9yZXF1ZXN0X3B1dChycSk7CisJCQl9CisJCX0K
KwkJaWYgKGVycikKKwkJCWJyZWFrOworCX0KK291dF9wdXQ6CisJaTkxNV9nZW1fb2JqZWN0X3B1
dChvYmopOworCisJcmV0dXJuIGVycjsKK30KKworaW50IGk5MTVfZ2VtX21pZ3JhdGVfbGl2ZV9z
ZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJc3RhdGljIGNvbnN0
IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKKwkJU1VCVEVTVChpZ3Rfc21lbV9jcmVh
dGVfbWlncmF0ZSksCisJCVNVQlRFU1QoaWd0X2xtZW1fY3JlYXRlX21pZ3JhdGUpLAorCQlTVUJU
RVNUKGlndF9sbWVtX3BhZ2VzX21pZ3JhdGUpLAorCX07CisKKwlpZiAoIUhBU19MTUVNKGk5MTUp
KQorCQlyZXR1cm4gMDsKKworCXJldHVybiBpbnRlbF9ndF9saXZlX3N1YnRlc3RzKHRlc3RzLCAm
aTkxNS0+Z3QpOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfbGl2ZV9zZWxmdGVzdHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
OTE1X2xpdmVfc2VsZnRlc3RzLmgKaW5kZXggYTY4MTk3Y2YxMDQ0Li5lMmZkMWI2MWFmNzEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRl
c3RzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxm
dGVzdHMuaApAQCAtNDAsNiArNDAsNyBAQCBzZWxmdGVzdChodWdlcGFnZXMsIGk5MTVfZ2VtX2h1
Z2VfcGFnZV9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGdlbV9jb250ZXh0cywgaTkxNV9nZW1f
Y29udGV4dF9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGdlbV9leGVjYnVmLCBpOTE1X2dlbV9l
eGVjYnVmZmVyX2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoY2xpZW50LCBpOTE1X2dlbV9jbGll
bnRfYmx0X2xpdmVfc2VsZnRlc3RzKQorc2VsZnRlc3QoZ2VtX21pZ3JhdGUsIGk5MTVfZ2VtX21p
Z3JhdGVfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChyZXNldCwgaW50ZWxfcmVzZXRfbGl2ZV9z
ZWxmdGVzdHMpCiBzZWxmdGVzdChtZW1vcnlfcmVnaW9uLCBpbnRlbF9tZW1vcnlfcmVnaW9uX2xp
dmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoaGFuZ2NoZWNrLCBpbnRlbF9oYW5nY2hlY2tfbGl2ZV9z
ZWxmdGVzdHMpCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
