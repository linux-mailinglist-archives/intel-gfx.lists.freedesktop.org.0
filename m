Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF5C2C6459
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:08:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D84556EC21;
	Fri, 27 Nov 2020 12:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38FE06EBF6;
 Fri, 27 Nov 2020 12:07:53 +0000 (UTC)
IronPort-SDR: pcI1oBSaByOP6IQ/K1N3dhv7Qq2pxtlS8EtCAPYj1a4bJS3+xRlLjuyERJqIMja0+pzJGBfZ/o
 SNaukOpoRNSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="168883368"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="168883368"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:07:45 -0800
IronPort-SDR: t8iQApAwLRUi8rHu9pCqE+px5SKZpsteCC80aog2345JW5Z/K7UbcmJeQffopRVBGqIoAxlSOL
 KLcWHPjn7ukQ==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548028553"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:07:43 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:04:46 +0000
Message-Id: <20201127120718.454037-11-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 010/162] drm/i915: Lock hwsp objects
 isolated for pinning at create time
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKV2Ug
bWF5IG5lZWQgdG8gY3JlYXRlIGh3c3Agb2JqZWN0cyBhdCByZXF1ZXN0IHRyZWF0ZSB0aW1lIGlu
IHRoZQptaWRkbGUgb2YgYSB3dyB0cmFuc2FjdGlvbi4gU2luY2Ugd2UgdHlwaWNhbGx5IGRvbid0
IGhhdmUgZWFzeQphY2Nlc3MgdG8gdGhlIHd3X2FjcXVpcmVfY29udGV4dCwgbG9jayB0aGUgaHdz
cCBvYmplY3RzIGlzb2xhdGVkCmZvciBwaW5uaW5nL21hcHBpbmcgb25seSBhdCBjcmVhdGUgdGlt
ZS4KRm9yIGxhdGVyIGJpbmRpbmcgdG8gdGhlIGdndHQsIG1ha2Ugc3VyZSBsb2NrZGVwIGFsbG93
cwpiaW5kaW5nIG9mIGFscmVhZHkgcGlubmVkIHBhZ2VzIHRvIHRoZSBnZ3R0IHdpdGhvdXQgdGhl
CnVuZGVybHlpbmcgb2JqZWN0IGxvY2sgaGVsZC4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxs
c3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0
dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90
aW1lbGluZS5jIHwgNTggKysrKysrKysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3ZtYS5jICAgICAgICAgIHwgMTMgKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDQ0
IGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF90aW1lbGluZS5jCmluZGV4IDUxMmFmYWNkMmJkYy4uYTU4MjI4ZDFjZDNiIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKQEAgLTI0LDI1ICsyNCw0MyBAQCBz
dHJ1Y3QgaW50ZWxfdGltZWxpbmVfaHdzcCB7CiAJc3RydWN0IGxpc3RfaGVhZCBmcmVlX2xpbms7
CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7CiAJdTY0IGZyZWVfYml0bWFwOworCXZvaWQgKnZhZGRy
OwogfTsKIAotc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqX19od3NwX2FsbG9jKHN0cnVjdCBpbnRl
bF9ndCAqZ3QpCitzdGF0aWMgaW50IF9faHdzcF9hbGxvYyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBz
dHJ1Y3QgaW50ZWxfdGltZWxpbmVfaHdzcCAqaHdzcCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IGd0LT5pOTE1OwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7
Ci0Jc3RydWN0IGk5MTVfdm1hICp2bWE7CisJaW50IHJldDsKIAogCW9iaiA9IGk5MTVfZ2VtX29i
amVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgUEFHRV9TSVpFKTsKIAlpZiAoSVNfRVJSKG9iaikp
Ci0JCXJldHVybiBFUlJfQ0FTVChvYmopOworCQlyZXR1cm4gUFRSX0VSUihvYmopOwogCisJaTkx
NV9nZW1fb2JqZWN0X2xvY2tfaXNvbGF0ZWQob2JqKTsKIAlpOTE1X2dlbV9vYmplY3Rfc2V0X2Nh
Y2hlX2NvaGVyZW5jeShvYmosIEk5MTVfQ0FDSEVfTExDKTsKIAotCXZtYSA9IGk5MTVfdm1hX2lu
c3RhbmNlKG9iaiwgJmd0LT5nZ3R0LT52bSwgTlVMTCk7Ci0JaWYgKElTX0VSUih2bWEpKQotCQlp
OTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CisJaHdzcC0+dm1hID0gaTkxNV92bWFfaW5zdGFuY2Uo
b2JqLCAmZ3QtPmdndHQtPnZtLCBOVUxMKTsKKwlpZiAoSVNfRVJSKGh3c3AtPnZtYSkpIHsKKwkJ
cmV0ID0gUFRSX0VSUihod3NwLT52bWEpOworCQlnb3RvIG91dF91bmxvY2s7CisJfQorCisJLyog
UGluIGVhcmx5IHNvIHdlIGNhbiBjYWxsIGk5MTVfZ2d0dF9waW4gdW5sb2NrZWQuICovCisJaHdz
cC0+dmFkZHIgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChvYmosIEk5MTVfTUFQX1dCKTsKKwlp
ZiAoSVNfRVJSKGh3c3AtPnZhZGRyKSkgeworCQlyZXQgPSBQVFJfRVJSKGh3c3AtPnZhZGRyKTsK
KwkJZ290byBvdXRfdW5sb2NrOworCX0KKworCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsK
KwlyZXR1cm4gMDsKKworb3V0X3VubG9jazoKKwlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7
CisJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwogCi0JcmV0dXJuIHZtYTsKKwlyZXR1cm4gcmV0
OwogfQogCiBzdGF0aWMgc3RydWN0IGk5MTVfdm1hICoKQEAgLTU5LDcgKzc3LDcgQEAgaHdzcF9h
bGxvYyhzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRpbWVsaW5lLCB1bnNpZ25lZCBpbnQgKmNhY2hl
bGluZSkKIAlod3NwID0gbGlzdF9maXJzdF9lbnRyeV9vcl9udWxsKCZndC0+aHdzcF9mcmVlX2xp
c3QsCiAJCQkJCXR5cGVvZigqaHdzcCksIGZyZWVfbGluayk7CiAJaWYgKCFod3NwKSB7Ci0JCXN0
cnVjdCBpOTE1X3ZtYSAqdm1hOworCQlpbnQgcmV0OwogCiAJCXNwaW5fdW5sb2NrX2lycSgmZ3Qt
Pmh3c3BfbG9jayk7CiAKQEAgLTY3LDE3ICs4NSwxNiBAQCBod3NwX2FsbG9jKHN0cnVjdCBpbnRl
bF90aW1lbGluZSAqdGltZWxpbmUsIHVuc2lnbmVkIGludCAqY2FjaGVsaW5lKQogCQlpZiAoIWh3
c3ApCiAJCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKIAotCQl2bWEgPSBfX2h3c3BfYWxsb2Mo
dGltZWxpbmUtPmd0KTsKLQkJaWYgKElTX0VSUih2bWEpKSB7CisJCXJldCA9IF9faHdzcF9hbGxv
Yyh0aW1lbGluZS0+Z3QsIGh3c3ApOworCQlpZiAocmV0KSB7CiAJCQlrZnJlZShod3NwKTsKLQkJ
CXJldHVybiB2bWE7CisJCQlyZXR1cm4gRVJSX1BUUihyZXQpOwogCQl9CiAKIAkJR1RfVFJBQ0Uo
dGltZWxpbmUtPmd0LCAibmV3IEhXU1AgYWxsb2NhdGVkXG4iKTsKIAotCQl2bWEtPnByaXZhdGUg
PSBod3NwOworCQlod3NwLT52bWEtPnByaXZhdGUgPSBod3NwOwogCQlod3NwLT5ndCA9IHRpbWVs
aW5lLT5ndDsKLQkJaHdzcC0+dm1hID0gdm1hOwogCQlod3NwLT5mcmVlX2JpdG1hcCA9IH4wdWxs
OwogCQlod3NwLT5ndF90aW1lbGluZXMgPSBndDsKIApAQCAtMTEzLDkgKzEzMCwxMiBAQCBzdGF0
aWMgdm9pZCBfX2lkbGVfaHdzcF9mcmVlKHN0cnVjdCBpbnRlbF90aW1lbGluZV9od3NwICpod3Nw
LCBpbnQgY2FjaGVsaW5lKQogCiAJLyogQW5kIGlmIG5vIG9uZSBpcyBsZWZ0IHVzaW5nIGl0LCBn
aXZlIHRoZSBwYWdlIGJhY2sgdG8gdGhlIHN5c3RlbSAqLwogCWlmIChod3NwLT5mcmVlX2JpdG1h
cCA9PSB+MHVsbCkgewotCQlpOTE1X3ZtYV9wdXQoaHdzcC0+dm1hKTsKIAkJbGlzdF9kZWwoJmh3
c3AtPmZyZWVfbGluayk7CisJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmd0LT5od3NwX2xvY2ss
IGZsYWdzKTsKKwkJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChod3NwLT52bWEtPm9iaik7CisJ
CWk5MTVfdm1hX3B1dChod3NwLT52bWEpOwogCQlrZnJlZShod3NwKTsKKwkJcmV0dXJuOwogCX0K
IAogCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmd0LT5od3NwX2xvY2ssIGZsYWdzKTsKQEAgLTEz
NCw3ICsxNTQsNiBAQCBzdGF0aWMgdm9pZCBfX2lkbGVfY2FjaGVsaW5lX2ZyZWUoc3RydWN0IGlu
dGVsX3RpbWVsaW5lX2NhY2hlbGluZSAqY2wpCiB7CiAJR0VNX0JVR19PTighaTkxNV9hY3RpdmVf
aXNfaWRsZSgmY2wtPmFjdGl2ZSkpOwogCi0JaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChjbC0+
aHdzcC0+dm1hLT5vYmopOwogCWk5MTVfdm1hX3B1dChjbC0+aHdzcC0+dm1hKTsKIAlfX2lkbGVf
aHdzcF9mcmVlKGNsLT5od3NwLCBwdHJfdW5tYXNrX2JpdHMoY2wtPnZhZGRyLCBDQUNIRUxJTkVf
QklUUykpOwogCkBAIC0xNjUsNyArMTg0LDYgQEAgc3RhdGljIHN0cnVjdCBpbnRlbF90aW1lbGlu
ZV9jYWNoZWxpbmUgKgogY2FjaGVsaW5lX2FsbG9jKHN0cnVjdCBpbnRlbF90aW1lbGluZV9od3Nw
ICpod3NwLCB1bnNpZ25lZCBpbnQgY2FjaGVsaW5lKQogewogCXN0cnVjdCBpbnRlbF90aW1lbGlu
ZV9jYWNoZWxpbmUgKmNsOwotCXZvaWQgKnZhZGRyOwogCiAJR0VNX0JVR19PTihjYWNoZWxpbmUg
Pj0gQklUKENBQ0hFTElORV9CSVRTKSk7CiAKQEAgLTE3MywxNSArMTkxLDkgQEAgY2FjaGVsaW5l
X2FsbG9jKHN0cnVjdCBpbnRlbF90aW1lbGluZV9od3NwICpod3NwLCB1bnNpZ25lZCBpbnQgY2Fj
aGVsaW5lKQogCWlmICghY2wpCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCi0JdmFkZHIg
PSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChod3NwLT52bWEtPm9iaiwgSTkxNV9NQVBfV0IpOwot
CWlmIChJU19FUlIodmFkZHIpKSB7Ci0JCWtmcmVlKGNsKTsKLQkJcmV0dXJuIEVSUl9DQVNUKHZh
ZGRyKTsKLQl9Ci0KIAlpOTE1X3ZtYV9nZXQoaHdzcC0+dm1hKTsKIAljbC0+aHdzcCA9IGh3c3A7
Ci0JY2wtPnZhZGRyID0gcGFnZV9wYWNrX2JpdHModmFkZHIsIGNhY2hlbGluZSk7CisJY2wtPnZh
ZGRyID0gcGFnZV9wYWNrX2JpdHMoaHdzcC0+dmFkZHIsIGNhY2hlbGluZSk7CiAKIAlpOTE1X2Fj
dGl2ZV9pbml0KCZjbC0+YWN0aXZlLCBfX2NhY2hlbGluZV9hY3RpdmUsIF9fY2FjaGVsaW5lX3Jl
dGlyZSk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCmluZGV4IGNhYTliMDQxNjE2Yi4uOGU4Yzgw
Y2NiZTMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKQEAgLTg2MiwxMCArODYyLDE1IEBAIGlu
dCBpOTE1X3ZtYV9waW5fd3coc3RydWN0IGk5MTVfdm1hICp2bWEsIHN0cnVjdCBpOTE1X2dlbV93
d19jdHggKnd3LAogCXVuc2lnbmVkIGludCBib3VuZDsKIAlpbnQgZXJyOwogCi0jaWZkZWYgQ09O
RklHX1BST1ZFX0xPQ0tJTkcKLQlpZiAoZGVidWdfbG9ja3MgJiYgbG9ja2RlcF9pc19oZWxkKCZ2
bWEtPnZtLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KSkKLQkJV0FSTl9PTighd3cpOwotI2VuZGlm
CisJaWYgKElTX0VOQUJMRUQoQ09ORklHX1BST1ZFX0xPQ0tJTkcpICYmIGRlYnVnX2xvY2tzKSB7
CisJCWJvb2wgcGlubmVkX2JpbmRfd29fYWxsb2MgPQorCQkJdm1hLT5vYmogJiYgaTkxNV9nZW1f
b2JqZWN0X2hhc19waW5uZWRfcGFnZXModm1hLT5vYmopICYmCisJCQkhdm1hLT52bS0+YWxsb2Nh
dGVfdmFfcmFuZ2U7CisKKwkJaWYgKGxvY2tkZXBfaXNfaGVsZCgmdm1hLT52bS0+aTkxNS0+ZHJt
LnN0cnVjdF9tdXRleCkgJiYKKwkJICAgICFwaW5uZWRfYmluZF93b19hbGxvYykKKwkJCVdBUk5f
T04oIXd3KTsKKwl9CiAKIAlCVUlMRF9CVUdfT04oUElOX0dMT0JBTCAhPSBJOTE1X1ZNQV9HTE9C
QUxfQklORCk7CiAJQlVJTERfQlVHX09OKFBJTl9VU0VSICE9IEk5MTVfVk1BX0xPQ0FMX0JJTkQp
OwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
