Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A417D358E68
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 22:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375086E24E;
	Thu,  8 Apr 2021 20:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE83E6E24E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 20:29:59 +0000 (UTC)
IronPort-SDR: Tsp8updV8FLyaEzc79E+C+UBR4ngXDMT5kUz8OeNd6Hl17nQ2fWcvf74kTZPIDIY/czZVlMeVO
 9xUpeFUPIFBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="193741507"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="193741507"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 13:29:58 -0700
IronPort-SDR: SkAsoodmh8N2Gs+qvqN1YJ7dwKpXj7QdeaTe22GHNqIs2wrJKJ3y3RE1hfmChoe2VABhFR0CMH
 857rl77psFiA==
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="520009042"
Received: from muweizha-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.2.85])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 13:29:58 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Apr 2021 13:31:50 -0700
Message-Id: <20210408203150.237947-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210408203150.237947-1-jose.souza@intel.com>
References: <20210408203150.237947-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 3/3] drm/i915: skip display initialization
 when there is no display
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGlzcGxheSBmZWF0dXJlcyBzaG91bGQgbm90IGJlIGluaXRpYWxpemVkIG9yIGRlLWluaXRpYWxp
emVkIHdoZW4gdGhlcmUKaXMgbm8gZGlzcGxheS4gU2tpcCBtb2Rlc2V0IGluaXRpYWxpemF0aW9u
LCBvdXRwdXQgc2V0dXAsIHBsYW5lLCBjcnRjLAplbmNvZGVyLCBjb25uZWN0b3IgcmVnaXN0cmF0
aW9uLCBkaXNwbGF5IGNkY2xrIGFuZCByYXdjbGsKaW5pdGlhbGl6YXRpb24sIGRpc3BsYXkgY29y
ZSBpbml0aWFsaXphdGlvbiwgZXRjLgoKU2tpcCB0aGUgZnVuY3Rpb25hbGl0eSBhdCBhcyBoaWdo
IGxldmVsIGFzIHBvc3NpYmxlLCBhbmQgcmVtb3ZlIGFueQpyZWR1bmRhbnQgY2hlY2tzLiBJZiB0
aGUgZnVuY3Rpb25hbGl0eSBpcyBjb25kaXRpb25hbCB0byAqb3RoZXIqIGRpc3BsYXkKY2hlY2tz
LCBkbyBub3QgYWRkIG1vcmUuIElmIHRoZSB1bi1pbml0aWFsaXphdGlvbiBoYXMgY2hlY2tzIGZv
cgppbml0aWFsaXphdGlvbiwgZG8gbm90IGFkZCBtb3JlLgoKV2UgZXhwbGljaXRseSBkbyBub3Qg
Y2FyZSBhYm91dCBhbnkgR01DSC9WTFYvQ0hWIGNvZGUgcGF0aHMsIGFzIHRoZXkndmUKYWx3YXlz
IGhhZCBhbmQgd2lsbCBoYXZlIGRpc3BsYXkuCgpSZXZpZXdlZC1ieTogUmFkaGFrcmlzaG5hIFNy
aXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCA0NCArKysrKysrKysrKysrKystLS0tCiAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgICAgfCAzNiArKysrKysrKysr
KysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8ICA2
ICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jICAgIHwgIDMg
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jICB8IDEyICsr
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bwcy5jICAgICAgfCAgNSAr
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8IDI4ICsr
KysrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMgICAgICAgICAg
IHwgIDYgKysrCiA4IGZpbGVzIGNoYW5nZWQsIDEyMCBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmlu
ZGV4IDRmOGY5OTRhNjM5Zi4uNDExYjQ2YzAxMmY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTMzNSw2ICsxMzM1LDkgQEAgdTMyIGludGVs
X3BsYW5lX2ZiX21heF9zdHJpZGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAog
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwogCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7CiAK
KwlpZiAoIUhBU19ESVNQTEFZKGRldl9wcml2KSkKKwkJcmV0dXJuIDA7CisKIAkvKgogCSAqIFdl
IGFzc3VtZSB0aGUgcHJpbWFyeSBwbGFuZSBmb3IgcGlwZSBBIGhhcwogCSAqIHRoZSBoaWdoZXN0
IHN0cmlkZSBsaW1pdHMgb2YgdGhlbSBhbGwsCkBAIC0zODM4LDYgKzM4NDEsOSBAQCBpbnQgaW50
ZWxfZGlzcGxheV9zdXNwZW5kKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJc3RydWN0IGRybV9h
dG9taWNfc3RhdGUgKnN0YXRlOwogCWludCByZXQ7CiAKKwlpZiAoIUhBU19ESVNQTEFZKGRldl9w
cml2KSkKKwkJcmV0dXJuIDA7CisKIAlzdGF0ZSA9IGRybV9hdG9taWNfaGVscGVyX3N1c3BlbmQo
ZGV2KTsKIAlyZXQgPSBQVFJfRVJSX09SX1pFUk8oc3RhdGUpOwogCWlmIChyZXQpCkBAIC0xMTQy
OSw2ICsxMTQzNSw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfY29uZmlnX2Z1bmNz
IGludGVsX21vZGVfZnVuY3MgPSB7CiAgKi8KIHZvaWQgaW50ZWxfaW5pdF9kaXNwbGF5X2hvb2tz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKKwlpZiAoIUhBU19ESVNQTEFZ
KGRldl9wcml2KSkKKwkJcmV0dXJuOworCiAJaW50ZWxfaW5pdF9jZGNsa19ob29rcyhkZXZfcHJp
dik7CiAJaW50ZWxfaW5pdF9hdWRpb19ob29rcyhkZXZfcHJpdik7CiAKQEAgLTExNDcxLDggKzEx
NDgwLDEyIEBAIHZvaWQgaW50ZWxfaW5pdF9kaXNwbGF5X2hvb2tzKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAogdm9pZCBpbnRlbF9tb2Rlc2V0X2luaXRfaHcoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7Ci0Jc3RydWN0IGludGVsX2NkY2xrX3N0YXRlICpjZGNs
a19zdGF0ZSA9Ci0JCXRvX2ludGVsX2NkY2xrX3N0YXRlKGk5MTUtPmNkY2xrLm9iai5zdGF0ZSk7
CisJc3RydWN0IGludGVsX2NkY2xrX3N0YXRlICpjZGNsa19zdGF0ZTsKKworCWlmICghSEFTX0RJ
U1BMQVkoaTkxNSkpCisJCXJldHVybjsKKworCWNkY2xrX3N0YXRlID0gdG9faW50ZWxfY2RjbGtf
c3RhdGUoaTkxNS0+Y2RjbGsub2JqLnN0YXRlKTsKIAogCWludGVsX3VwZGF0ZV9jZGNsayhpOTE1
KTsKIAlpbnRlbF9kdW1wX2NkY2xrX2NvbmZpZygmaTkxNS0+Y2RjbGsuaHcsICJDdXJyZW50IENE
Q0xLIik7CkBAIC0xMTc4OCw2ICsxMTgwMSw5IEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXRfbm9p
cnEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJLyogRklYTUU6IGNvbXBsZXRlbHkg
b24gdGhlIHdyb25nIGFic3RyYWN0aW9uIGxheWVyICovCiAJaW50ZWxfcG93ZXJfZG9tYWluc19p
bml0X2h3KGk5MTUsIGZhbHNlKTsKIAorCWlmICghSEFTX0RJU1BMQVkoaTkxNSkpCisJCXJldHVy
biAwOworCiAJaW50ZWxfY3NyX3Vjb2RlX2luaXQoaTkxNSk7CiAKIAlpOTE1LT5tb2Rlc2V0X3dx
ID0gYWxsb2Nfb3JkZXJlZF93b3JrcXVldWUoImk5MTVfbW9kZXNldCIsIDApOwpAQCAtMTE4Mzgs
NiArMTE4NTQsOSBAQCBpbnQgaW50ZWxfbW9kZXNldF9pbml0X25vZ2VtKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwogCWludCByZXQ7CiAK
KwlpZiAoIUhBU19ESVNQTEFZKGk5MTUpKQorCQlyZXR1cm4gMDsKKwogCWludGVsX2luaXRfcG0o
aTkxNSk7CiAKIAlpbnRlbF9wYW5lbF9zYW5pdGl6ZV9zc2MoaTkxNSk7CkBAIC0xMTg1MCwxMyAr
MTE4NjksMTEgQEAgaW50IGludGVsX21vZGVzZXRfaW5pdF9ub2dlbShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIAkJICAgIElOVEVMX05VTV9QSVBFUyhpOTE1KSwKIAkJICAgIElOVEVM
X05VTV9QSVBFUyhpOTE1KSA+IDEgPyAicyIgOiAiIik7CiAKLQlpZiAoSEFTX0RJU1BMQVkoaTkx
NSkpIHsKLQkJZm9yX2VhY2hfcGlwZShpOTE1LCBwaXBlKSB7Ci0JCQlyZXQgPSBpbnRlbF9jcnRj
X2luaXQoaTkxNSwgcGlwZSk7Ci0JCQlpZiAocmV0KSB7Ci0JCQkJaW50ZWxfbW9kZV9jb25maWdf
Y2xlYW51cChpOTE1KTsKLQkJCQlyZXR1cm4gcmV0OwotCQkJfQorCWZvcl9lYWNoX3BpcGUoaTkx
NSwgcGlwZSkgeworCQlyZXQgPSBpbnRlbF9jcnRjX2luaXQoaTkxNSwgcGlwZSk7CisJCWlmIChy
ZXQpIHsKKwkJCWludGVsX21vZGVfY29uZmlnX2NsZWFudXAoaTkxNSk7CisJCQlyZXR1cm4gcmV0
OwogCQl9CiAJfQogCkBAIC0xMjc5MSw2ICsxMjgwOCw5IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9y
ZXN1bWUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAlzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWly
ZV9jdHggY3R4OwogCWludCByZXQ7CiAKKwlpZiAoIUhBU19ESVNQTEFZKGRldl9wcml2KSkKKwkJ
cmV0dXJuOworCiAJZGV2X3ByaXYtPm1vZGVzZXRfcmVzdG9yZV9zdGF0ZSA9IE5VTEw7CiAJaWYg
KHN0YXRlKQogCQlzdGF0ZS0+YWNxdWlyZV9jdHggPSAmY3R4OwpAQCAtMTI4NDAsNiArMTI4NjAs
OSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9ocGRfcG9sbF9maW5pKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogLyogcGFydCAjMTogY2FsbCBiZWZvcmUgaXJxIHVuaW5zdGFsbCAqLwogdm9p
ZCBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCiB7CisJaWYgKCFIQVNfRElTUExBWShpOTE1KSkKKwkJcmV0dXJuOworCiAJZmx1c2hfd29y
a3F1ZXVlKGk5MTUtPmZsaXBfd3EpOwogCWZsdXNoX3dvcmtxdWV1ZShpOTE1LT5tb2Rlc2V0X3dx
KTsKIApAQCAtMTI4NTAsNiArMTI4NzMsOSBAQCB2b2lkIGludGVsX21vZGVzZXRfZHJpdmVyX3Jl
bW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIC8qIHBhcnQgIzI6IGNhbGwgYWZ0
ZXIgaXJxIHVuaW5zdGFsbCAqLwogdm9pZCBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmVfbm9p
cnEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CisJaWYgKCFIQVNfRElTUExBWShp
OTE1KSkKKwkJcmV0dXJuOworCiAJLyoKIAkgKiBEdWUgdG8gdGhlIGhwZCBpcnEgc3Rvcm0gaGFu
ZGxpbmcgdGhlIGhvdHBsdWcgd29yayBjYW4gcmUtYXJtIHRoZQogCSAqIHBvbGwgaGFuZGxlcnMu
IEhlbmNlIGRpc2FibGUgcG9sbGluZyBhZnRlciBocGQgaGFuZGxpbmcgaXMgc2h1dCBkb3duLgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
YwppbmRleCA1MzMxMWI5NzY0ZGMuLmFkMzA5NDdjNThhMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTgyMSw2ICs4MjEs
OSBAQCBzdGF0aWMgdm9pZCBnZW45X3Nhbml0aXplX2RjX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIHsKIAl1MzIgdmFsOwogCisJaWYgKCFIQVNfRElTUExBWShkZXZf
cHJpdikpCisJCXJldHVybjsKKwogCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERDX1NU
QVRFX0VOKSAmIGdlbjlfZGNfbWFzayhkZXZfcHJpdik7CiAKIAlkcm1fZGJnX2ttcygmZGV2X3By
aXYtPmRybSwKQEAgLTg1Nyw2ICs4NjAsOSBAQCBzdGF0aWMgdm9pZCBnZW45X3NldF9kY19zdGF0
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBzdGF0ZSkKIAl1MzIgdmFs
OwogCXUzMiBtYXNrOwogCisJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpCisJCXJldHVybjsK
KwogCWlmIChkcm1fV0FSTl9PTl9PTkNFKCZkZXZfcHJpdi0+ZHJtLAogCQkJICAgICBzdGF0ZSAm
IH5kZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzaykpCiAJCXN0YXRlICY9IGRldl9wcml2LT5j
c3IuYWxsb3dlZF9kY19tYXNrOwpAQCAtMTE4MSw2ICsxMTg3LDkgQEAgc3RhdGljIHZvaWQgZ2Vu
OV9kaXNhYmxlX2RjX3N0YXRlcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAK
IAlnZW45X3NldF9kY19zdGF0ZShkZXZfcHJpdiwgRENfU1RBVEVfRElTQUJMRSk7CiAKKwlpZiAo
IUhBU19ESVNQTEFZKGRldl9wcml2KSkKKwkJcmV0dXJuOworCiAJZGV2X3ByaXYtPmRpc3BsYXku
Z2V0X2NkY2xrKGRldl9wcml2LCAmY2RjbGtfY29uZmlnKTsKIAkvKiBDYW4ndCByZWFkIG91dCB2
b2x0YWdlX2xldmVsIHNvIGNhbid0IHVzZSBpbnRlbF9jZGNsa19jaGFuZ2VkKCkgKi8KIAlkcm1f
V0FSTl9PTigmZGV2X3ByaXYtPmRybSwKQEAgLTQ1MzMsNiArNDU0Miw5IEBAIHN0YXRpYyB1MzIg
Z2V0X2FsbG93ZWRfZGNfbWFzayhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJaW50IHJlcXVlc3RlZF9kYzsKIAlpbnQgbWF4X2RjOwogCisJaWYgKCFIQVNfRElTUExB
WShkZXZfcHJpdikpCisJCXJldHVybiAwOworCiAJaWYgKElTX0RHMShkZXZfcHJpdikpCiAJCW1h
eF9kYyA9IDM7CiAJZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKQpAQCAtNTEy
Niw2ICs1MTM4LDkgQEAgc3RhdGljIHZvaWQgc2tsX2Rpc3BsYXlfY29yZV9pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkvKiBlbmFibGUgUENIIHJlc2V0IGhhbmRzaGFr
ZSAqLwogCWludGVsX3BjaF9yZXNldF9oYW5kc2hha2UoZGV2X3ByaXYsICFIQVNfUENIX05PUChk
ZXZfcHJpdikpOwogCisJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpCisJCXJldHVybjsKKwog
CS8qIGVuYWJsZSBQRzEgYW5kIE1pc2MgSS9PICovCiAJbXV0ZXhfbG9jaygmcG93ZXJfZG9tYWlu
cy0+bG9jayk7CiAKQEAgLTUxNTAsNiArNTE2NSw5IEBAIHN0YXRpYyB2b2lkIHNrbF9kaXNwbGF5
X2NvcmVfdW5pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzdHJ1Y3Qg
aTkxNV9wb3dlcl9kb21haW5zICpwb3dlcl9kb21haW5zID0gJmRldl9wcml2LT5wb3dlcl9kb21h
aW5zOwogCXN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKndlbGw7CiAKKwlpZiAoIUhBU19ESVNQTEFZ
KGRldl9wcml2KSkKKwkJcmV0dXJuOworCiAJZ2VuOV9kaXNhYmxlX2RjX3N0YXRlcyhkZXZfcHJp
dik7CiAKIAlnZW45X2RidWZfZGlzYWJsZShkZXZfcHJpdik7CkBAIC01MTkwLDYgKzUyMDgsOSBA
QCBzdGF0aWMgdm9pZCBieHRfZGlzcGxheV9jb3JlX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LCBib29sIHJlc3VtZQogCSAqLwogCWludGVsX3BjaF9yZXNldF9oYW5kc2hh
a2UoZGV2X3ByaXYsIGZhbHNlKTsKIAorCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQorCQly
ZXR1cm47CisKIAkvKiBFbmFibGUgUEcxICovCiAJbXV0ZXhfbG9jaygmcG93ZXJfZG9tYWlucy0+
bG9jayk7CiAKQEAgLTUyMTEsNiArNTIzMiw5IEBAIHN0YXRpYyB2b2lkIGJ4dF9kaXNwbGF5X2Nv
cmVfdW5pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzdHJ1Y3QgaTkx
NV9wb3dlcl9kb21haW5zICpwb3dlcl9kb21haW5zID0gJmRldl9wcml2LT5wb3dlcl9kb21haW5z
OwogCXN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKndlbGw7CiAKKwlpZiAoIUhBU19ESVNQTEFZKGRl
dl9wcml2KSkKKwkJcmV0dXJuOworCiAJZ2VuOV9kaXNhYmxlX2RjX3N0YXRlcyhkZXZfcHJpdik7
CiAKIAlnZW45X2RidWZfZGlzYWJsZShkZXZfcHJpdik7CkBAIC01MjQ0LDYgKzUyNjgsOSBAQCBz
dGF0aWMgdm9pZCBjbmxfZGlzcGxheV9jb3JlX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBib29sIHJlc3VtZQogCS8qIDEuIEVuYWJsZSBQQ0ggUmVzZXQgSGFuZHNoYWtl
ICovCiAJaW50ZWxfcGNoX3Jlc2V0X2hhbmRzaGFrZShkZXZfcHJpdiwgIUhBU19QQ0hfTk9QKGRl
dl9wcml2KSk7CiAKKwlpZiAoIUhBU19ESVNQTEFZKGRldl9wcml2KSkKKwkJcmV0dXJuOworCiAJ
LyogMi0zLiAqLwogCWludGVsX2NvbWJvX3BoeV9pbml0KGRldl9wcml2KTsKIApAQCAtNTI3MSw2
ICs1Mjk4LDkgQEAgc3RhdGljIHZvaWQgY25sX2Rpc3BsYXlfY29yZV91bmluaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXN0cnVjdCBpOTE1X3Bvd2VyX2RvbWFpbnMgKnBv
d2VyX2RvbWFpbnMgPSAmZGV2X3ByaXYtPnBvd2VyX2RvbWFpbnM7CiAJc3RydWN0IGk5MTVfcG93
ZXJfd2VsbCAqd2VsbDsKIAorCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQorCQlyZXR1cm47
CisKIAlnZW45X2Rpc2FibGVfZGNfc3RhdGVzKGRldl9wcml2KTsKIAogCS8qIDEuIERpc2FibGUg
YWxsIGRpc3BsYXkgZW5naW5lIGZ1bmN0aW9ucyAtPiBhcmVhZHkgZG9uZSAqLwpAQCAtNTM4NSw2
ICs1NDE1LDkgQEAgc3RhdGljIHZvaWQgaWNsX2Rpc3BsYXlfY29yZV9pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkvKiAxLiBFbmFibGUgUENIIHJlc2V0IGhhbmRzaGFr
ZS4gKi8KIAlpbnRlbF9wY2hfcmVzZXRfaGFuZHNoYWtlKGRldl9wcml2LCAhSEFTX1BDSF9OT1Ao
ZGV2X3ByaXYpKTsKIAorCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQorCQlyZXR1cm47CisK
IAkvKiAyLiBJbml0aWFsaXplIGFsbCBjb21ibyBwaHlzICovCiAJaW50ZWxfY29tYm9fcGh5X2lu
aXQoZGV2X3ByaXYpOwogCkBAIC01NDI5LDYgKzU0NjIsOSBAQCBzdGF0aWMgdm9pZCBpY2xfZGlz
cGxheV9jb3JlX3VuaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJc3Ry
dWN0IGk5MTVfcG93ZXJfZG9tYWlucyAqcG93ZXJfZG9tYWlucyA9ICZkZXZfcHJpdi0+cG93ZXJf
ZG9tYWluczsKIAlzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsICp3ZWxsOwogCisJaWYgKCFIQVNfRElT
UExBWShkZXZfcHJpdikpCisJCXJldHVybjsKKwogCWdlbjlfZGlzYWJsZV9kY19zdGF0ZXMoZGV2
X3ByaXYpOwogCiAJLyogMS4gRGlzYWJsZSBhbGwgZGlzcGxheSBlbmdpbmUgZnVuY3Rpb25zIC0+
IGFyZWFkeSBkb25lICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5k
ZXggYTUyMzFhYzM0NDNhLi42NzUwOTQ5YWEyNjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKQEAgLTU0MzAsNiArNTQzMCw5IEBAIHZvaWQgaW50ZWxfZHBfbXN0X3N1
c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyOwogCisJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpCisJCXJl
dHVybjsKKwogCWZvcl9lYWNoX2ludGVsX2VuY29kZXIoJmRldl9wcml2LT5kcm0sIGVuY29kZXIp
IHsKIAkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcDsKIApAQCAtNTQ1MCw2ICs1NDUzLDkgQEAg
dm9pZCBpbnRlbF9kcF9tc3RfcmVzdW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIHsKIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKIAorCWlmICghSEFTX0RJU1BM
QVkoZGV2X3ByaXYpKQorCQlyZXR1cm47CisKIAlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyKCZkZXZf
cHJpdi0+ZHJtLCBlbmNvZGVyKSB7CiAJCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHA7CiAJCWlu
dCByZXQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dt
YnVzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dtYnVzLmMKaW5kZXgg
MTNiYTI4MGQwMjI4Li4yZWE2YWRjM2JkM2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZ21idXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2dtYnVzLmMKQEAgLTg0NSw5ICs4NDUsNiBAQCBpbnQgaW50ZWxfZ21idXNfc2V0
dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXVuc2lnbmVkIGludCBwaW47
CiAJaW50IHJldDsKIAotCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQotCQlyZXR1cm4gMDsK
LQogCWlmIChJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9wcml2
KSkKIAkJZGV2X3ByaXYtPmdwaW9fbW1pb19iYXNlID0gVkxWX0RJU1BMQVlfQkFTRTsKIAllbHNl
IGlmICghSEFTX0dNQ0goZGV2X3ByaXYpKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hvdHBsdWcuYwppbmRleCBmNDZhMWI3MTkwYjguLjQ3Yzg1YWM5N2M4NyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKQEAgLTU5NSw2ICs1
OTUsOSBAQCB2b2lkIGludGVsX2hwZF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIHsKIAlpbnQgaTsKIAorCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQorCQlyZXR1
cm47CisKIAlmb3JfZWFjaF9ocGRfcGluKGkpIHsKIAkJZGV2X3ByaXYtPmhvdHBsdWcuc3RhdHNb
aV0uY291bnQgPSAwOwogCQlkZXZfcHJpdi0+aG90cGx1Zy5zdGF0c1tpXS5zdGF0ZSA9IEhQRF9F
TkFCTEVEOwpAQCAtNjcwLDYgKzY3Myw5IEBAIHN0YXRpYyB2b2lkIGk5MTVfaHBkX3BvbGxfaW5p
dF93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKICAqLwogdm9pZCBpbnRlbF9ocGRfcG9s
bF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogeworCWlmICghSEFT
X0RJU1BMQVkoZGV2X3ByaXYpKQorCQlyZXR1cm47CisKIAlXUklURV9PTkNFKGRldl9wcml2LT5o
b3RwbHVnLnBvbGxfZW5hYmxlZCwgdHJ1ZSk7CiAKIAkvKgpAQCAtNzAyLDYgKzcwOCw5IEBAIHZv
aWQgaW50ZWxfaHBkX3BvbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKICAqLwogdm9pZCBpbnRlbF9ocGRfcG9sbF9kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIHsKKwlpZiAoIUhBU19ESVNQTEFZKGRldl9wcml2KSkKKwkJcmV0dXJu
OworCiAJV1JJVEVfT05DRShkZXZfcHJpdi0+aG90cGx1Zy5wb2xsX2VuYWJsZWQsIGZhbHNlKTsK
IAlzY2hlZHVsZV93b3JrKCZkZXZfcHJpdi0+aG90cGx1Zy5wb2xsX2luaXRfd29yayk7CiB9CkBA
IC03MTgsNiArNzI3LDkgQEAgdm9pZCBpbnRlbF9ocGRfaW5pdF93b3JrKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIAogdm9pZCBpbnRlbF9ocGRfY2FuY2VsX3dvcmsoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogeworCWlmICghSEFTX0RJU1BMQVkoZGV2X3By
aXYpKQorCQlyZXR1cm47CisKIAlzcGluX2xvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2spOwog
CiAJZGV2X3ByaXYtPmhvdHBsdWcubG9uZ19wb3J0X21hc2sgPSAwOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMKaW5kZXggM2EwOTg1ZjFmNTMxLi4wZmQyODkwMmQ3Nzkg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYwpAQCAtMzE2LDYgKzMx
Niw5IEBAIHZvaWQgaW50ZWxfcHBzX3Jlc2V0X2FsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiAJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhSVNfTFAoZGV2X3By
aXYpKSkKIAkJcmV0dXJuOwogCisJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpCisJCXJldHVy
bjsKKwogCS8qCiAJICogV2UgY2FuJ3QgZ3JhYiBwcHNfbXV0ZXggaGVyZSBkdWUgdG8gZGVhZGxv
Y2sgd2l0aCBwb3dlcl9kb21haW4KIAkgKiBtdXRleCB3aGVuIHBvd2VyX2RvbWFpbiBmdW5jdGlv
bnMgYXJlIGNhbGxlZCB3aGlsZSBob2xkaW5nIHBwc19tdXRleC4KQEAgLTEzNzYsNyArMTM3OSw3
IEBAIHZvaWQgaW50ZWxfcHBzX3VubG9ja19yZWdzX3dhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKIAlpbnQgcHBzX251bTsKIAlpbnQgcHBzX2lkeDsKIAotCWlmIChIQVNfRERJ
KGRldl9wcml2KSkKKwlpZiAoIUhBU19ESVNQTEFZKGRldl9wcml2KSB8fCBIQVNfRERJKGRldl9w
cml2KSkKIAkJcmV0dXJuOwogCS8qCiAJICogVGhpcyB3L2EgaXMgbmVlZGVkIGF0IGxlYXN0IG9u
IENQVC9QUFQsIGJ1dCB0byBiZSBzdXJlIGFwcGx5IGl0CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpp
bmRleCAyNDgzNDQ3ZmY4ZGMuLjMwNTU1N2UxOTQyYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CkBAIC05NzMsOCArOTczLDEyIEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfb3BlbihzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCiAgKi8KIHN0YXRpYyB2b2lk
IGk5MTVfZHJpdmVyX2xhc3RjbG9zZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogeworCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkZXYpOworCiAJaW50ZWxfZmJkZXZf
cmVzdG9yZV9tb2RlKGRldik7Ci0JdmdhX3N3aXRjaGVyb29fcHJvY2Vzc19kZWxheWVkX3N3aXRj
aCgpOworCisJaWYgKEhBU19ESVNQTEFZKGk5MTUpKQorCQl2Z2Ffc3dpdGNoZXJvb19wcm9jZXNz
X2RlbGF5ZWRfc3dpdGNoKCk7CiB9CiAKIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3Bvc3RjbG9z
ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCkBAIC05OTQs
NiArOTk4LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfc3VzcGVuZF9lbmNvZGVycyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZf
cHJpdi0+ZHJtOwogCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOwogCisJaWYgKCFIQVNf
RElTUExBWShkZXZfcHJpdikpCisJCXJldHVybjsKKwogCWRybV9tb2Rlc2V0X2xvY2tfYWxsKGRl
dik7CiAJZm9yX2VhY2hfaW50ZWxfZW5jb2RlcihkZXYsIGVuY29kZXIpCiAJCWlmIChlbmNvZGVy
LT5zdXNwZW5kKQpAQCAtMTAwNiw2ICsxMDEzLDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2h1dGRv
d25fZW5jb2RlcnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXN0cnVjdCBk
cm1fZGV2aWNlICpkZXYgPSAmZGV2X3ByaXYtPmRybTsKIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlcjsKIAorCWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQorCQlyZXR1cm47CisKIAlk
cm1fbW9kZXNldF9sb2NrX2FsbChkZXYpOwogCWZvcl9lYWNoX2ludGVsX2VuY29kZXIoZGV2LCBl
bmNvZGVyKQogCQlpZiAoZW5jb2Rlci0+c2h1dGRvd24pCkBAIC0xMDIxLDkgKzEwMzEsMTEgQEAg
dm9pZCBpOTE1X2RyaXZlcl9zaHV0ZG93bihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IAogCWk5MTVfZ2VtX3N1c3BlbmQoaTkxNSk7CiAKLQlkcm1fa21zX2hlbHBlcl9wb2xsX2Rpc2Fi
bGUoJmk5MTUtPmRybSk7CisJaWYgKEhBU19ESVNQTEFZKGk5MTUpKSB7CisJCWRybV9rbXNfaGVs
cGVyX3BvbGxfZGlzYWJsZSgmaTkxNS0+ZHJtKTsKIAotCWRybV9hdG9taWNfaGVscGVyX3NodXRk
b3duKCZpOTE1LT5kcm0pOworCQlkcm1fYXRvbWljX2hlbHBlcl9zaHV0ZG93bigmaTkxNS0+ZHJt
KTsKKwl9CiAKIAlpbnRlbF9kcF9tc3Rfc3VzcGVuZChpOTE1KTsKIApAQCAtMTA4Nyw4ICsxMDk5
LDggQEAgc3RhdGljIGludCBpOTE1X2RybV9zdXNwZW5kKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYp
CiAJLyogV2UgZG8gYSBsb3Qgb2YgcG9raW5nIGluIGEgbG90IG9mIHJlZ2lzdGVycywgbWFrZSBz
dXJlIHRoZXkgd29yawogCSAqIHByb3Blcmx5LiAqLwogCWludGVsX3Bvd2VyX2RvbWFpbnNfZGlz
YWJsZShkZXZfcHJpdik7Ci0KLQlkcm1fa21zX2hlbHBlcl9wb2xsX2Rpc2FibGUoZGV2KTsKKwlp
ZiAoSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQorCQlkcm1fa21zX2hlbHBlcl9wb2xsX2Rpc2FibGUo
ZGV2KTsKIAogCXBjaV9zYXZlX3N0YXRlKHBkZXYpOwogCkBAIC0xMjM1LDcgKzEyNDcsOCBAQCBz
dGF0aWMgaW50IGk5MTVfZHJtX3Jlc3VtZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCSAqLwog
CWludGVsX3J1bnRpbWVfcG1fZW5hYmxlX2ludGVycnVwdHMoZGV2X3ByaXYpOwogCi0JZHJtX21v
ZGVfY29uZmlnX3Jlc2V0KGRldik7CisJaWYgKEhBU19ESVNQTEFZKGRldl9wcml2KSkKKwkJZHJt
X21vZGVfY29uZmlnX3Jlc2V0KGRldik7CiAKIAlpOTE1X2dlbV9yZXN1bWUoZGV2X3ByaXYpOwog
CkBAIC0xMjQ4LDcgKzEyNjEsOCBAQCBzdGF0aWMgaW50IGk5MTVfZHJtX3Jlc3VtZShzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2KQogCWludGVsX2Rpc3BsYXlfcmVzdW1lKGRldik7CiAKIAlpbnRlbF9o
cGRfcG9sbF9kaXNhYmxlKGRldl9wcml2KTsKLQlkcm1fa21zX2hlbHBlcl9wb2xsX2VuYWJsZShk
ZXYpOworCWlmIChIQVNfRElTUExBWShkZXZfcHJpdikpCisJCWRybV9rbXNfaGVscGVyX3BvbGxf
ZW5hYmxlKGRldik7CiAKIAlpbnRlbF9vcHJlZ2lvbl9yZXN1bWUoZGV2X3ByaXYpOwogCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jCmluZGV4IDBiYzdiNDlmODQzYy4uNWZjYzMyODIxZTE4
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYwpAQCAtODcsNiArODcsOSBAQCB2b2lk
IGk5MTVfc2F2ZV9kaXNwbGF5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsK
IAlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IHRvX3BjaV9kZXYoZGV2X3ByaXYtPmRybS5kZXYpOwog
CisJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpCisJCXJldHVybjsKKwogCS8qIERpc3BsYXkg
YXJiaXRyYXRpb24gY29udHJvbCAqLwogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDw9IDQpCiAJ
CWRldl9wcml2LT5yZWdmaWxlLnNhdmVEU1BBUkIgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBE
U1BBUkIpOwpAQCAtMTAyLDYgKzEwNSw5IEBAIHZvaWQgaTkxNV9yZXN0b3JlX2Rpc3BsYXkoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXN0cnVjdCBwY2lfZGV2ICpwZGV2
ID0gdG9fcGNpX2RldihkZXZfcHJpdi0+ZHJtLmRldik7CiAKKwlpZiAoIUhBU19ESVNQTEFZKGRl
dl9wcml2KSkKKwkJcmV0dXJuOworCiAJaW50ZWxfcmVzdG9yZV9zd2YoZGV2X3ByaXYpOwogCiAJ
aWYgKElTX0dFTihkZXZfcHJpdiwgNCkpCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
