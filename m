Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7802778B3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 20:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D6236EB46;
	Thu, 24 Sep 2020 18:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B3046EB46
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 18:48:38 +0000 (UTC)
IronPort-SDR: k6PHpBIj54dM/J/JSylmhisWTE4jWLWnm9gqmMtoM/z5MFogGR4Ql8cHm/6uDuRF6gXQMXlnwN
 Kuf2P0jCho4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="141321228"
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="141321228"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 11:48:37 -0700
IronPort-SDR: HV3wwGvLQaifJdaTEqnZ07fbhjsPAWCs4PNKuudLIAbxkNprjM43xAO1L1euBby0HgxF+iBaxV
 HlKyURzHwJHg==
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="455469107"
Received: from ideak-desk.fi.intel.com (HELO localhost) ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 11:48:36 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Sep 2020 21:48:01 +0300
Message-Id: <20200924184805.294493-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200924184805.294493-1-imre.deak@intel.com>
References: <20200924184805.294493-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915: Simplify the link training
 functions
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

U3BsaXQgdGhlIHByZXBhcmUsIGxpbmsgdHJhaW5pbmcsIGZhbGxiYWNrLWhhbmRsaW5nIHN0ZXBz
IGludG8gdGhlaXIgb3duCmZ1bmN0aW9ucyBmb3IgY2xhcml0eSBhbmQgYXMgYSBwcmVwYXJhdGlv
biBmb3IgdGhlIHVwY29taW5nIExUVFBSCmNoYW5nZXMuCgpXaGlsZSBhdCBpdCBhbHNvOgotIFVu
ZXhwb3J0IGFuZCBpbmxpbmUgaW50ZWxfZHBfc2V0X2lkbGVfbGlua190cmFpbigpLCB3aGljaCBp
cyB1c2VkIGF0IGEKICBzaW5nbGUgcGxhY2UuCi0gQWRkIHNvbWUgZG9jdW1lbnRhdGlvbiB0byBm
dW5jdGlvbnMgdGhhdCBhcmUgZXhwb3J0ZWQgb3IgdGhhdCBjYW4gdXNlCiAgYSBiZXR0ZXIgZGVz
Y3JpcHRpb24gYWJvdXQgd2hpY2ggcGFydCBvZiB0aGUgTFQgc2VxdWVuY2UgdGhleQogIGltcGxl
bWVudC4KCnYyOiAoVmlsbGUpCi0gVW5leHBvcnQvaW5saW5lIGludGVsX2RwX3NldF9pZGxlX2xp
bmtfdHJhaW4oKQotIE1ha2UgdGhlIGRvY3VtZW50YXRpb24gb2YKICBpbnRlbF9kcF9wcmVwYXJl
X2xpbmtfdHJhaW4oKS9pbnRlbF9kcF9zdG9wX2xpbmtfdHJhaW4oKSBtb3JlIGFjY3VyYXRlCiAg
d3J0LiBIVyBzcGVjaWZpYyBkZXRhaWxzLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jICAgICAgIHwgIDYgLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
aCAgICAgICB8ICAxIC0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5p
bmcuYyB8IDkwICsrKysrKysrKysrKysrLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgNzAgaW5zZXJ0
aW9ucygrKSwgMjcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCmluZGV4IGJiYTk2NjllMGU1Ny4uYjIxZjQyMTkzYTExIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC00NTA4LDEyICs0NTA4LDYgQEAgaW50ZWxfZHBf
cHJvZ3JhbV9saW5rX3RyYWluaW5nX3BhdHRlcm4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
IAlpbnRlbF9kcC0+c2V0X2xpbmtfdHJhaW4oaW50ZWxfZHAsIGRwX3RyYWluX3BhdCk7CiB9CiAK
LXZvaWQgaW50ZWxfZHBfc2V0X2lkbGVfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQotewotCWlmIChpbnRlbF9kcC0+c2V0X2lkbGVfbGlua190cmFpbikKLQkJaW50ZWxfZHAt
PnNldF9pZGxlX2xpbmtfdHJhaW4oaW50ZWxfZHApOwotfQotCiBzdGF0aWMgdm9pZAogaW50ZWxf
ZHBfbGlua19kb3duKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkgICBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUpCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmgKaW5kZXggMDhhMWMwYWE4Yjk0Li5jYTgzMTlkNmM2M2MgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKQEAgLTk1LDcgKzk1LDYgQEAg
aW50ZWxfZHBfcHJvZ3JhbV9saW5rX3RyYWluaW5nX3BhdHRlcm4oc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwKIAkJCQkgICAgICAgdTggZHBfdHJhaW5fcGF0KTsKIHZvaWQKIGludGVsX2RwX3Nl
dF9zaWduYWxfbGV2ZWxzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOwotdm9pZCBpbnRlbF9k
cF9zZXRfaWRsZV9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOwogdm9pZCBp
bnRlbF9kcF9jb21wdXRlX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IHBvcnRf
Y2xvY2ssCiAJCQkgICB1OCAqbGlua19idywgdTggKnJhdGVfc2VsZWN0KTsKIGJvb2wgaW50ZWxf
ZHBfc291cmNlX3N1cHBvcnRzX2hicjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5p
bmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmlu
Zy5jCmluZGV4IDBlMTQ3MmIxZjg2OC4uNzhiMGYxNjVmYWRkIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwpAQCAtMTQ2
LDE0ICsxNDYsMTMgQEAgc3RhdGljIGJvb2wgaW50ZWxfZHBfbGlua19tYXhfdnN3aW5nX3JlYWNo
ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlyZXR1cm4gdHJ1ZTsKIH0KIAotLyogRW5h
YmxlIGNvcnJlc3BvbmRpbmcgcG9ydCBhbmQgc3RhcnQgdHJhaW5pbmcgcGF0dGVybiAxICovCi1z
dGF0aWMgYm9vbAotaW50ZWxfZHBfbGlua190cmFpbmluZ19jbG9ja19yZWNvdmVyeShzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKQorLyoKKyAqIFByZXBhcmUgbGluayB0cmFpbmluZyBieSBjb25m
aWd1cmluZyB0aGUgbGluayBwYXJhbWV0ZXJzLiBPbiBEREkgcGxhdGZvcm1zCisgKiBhbHNvIGVu
YWJsZSB0aGUgcG9ydCBoZXJlLgorICovCitzdGF0aWMgdm9pZCBpbnRlbF9kcF9wcmVwYXJlX2xp
bmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwotCXU4IHZvbHRhZ2U7Ci0JaW50
IHZvbHRhZ2VfdHJpZXMsIGNyX3RyaWVzLCBtYXhfY3JfdHJpZXM7Ci0JYm9vbCBtYXhfdnN3aW5n
X3JlYWNoZWQgPSBmYWxzZTsKIAl1OCBsaW5rX2NvbmZpZ1syXTsKIAl1OCBsaW5rX2J3LCByYXRl
X3NlbGVjdDsKIApAQCAtMTg3LDYgKzE4NiwxNiBAQCBpbnRlbF9kcF9saW5rX3RyYWluaW5nX2Ns
b2NrX3JlY292ZXJ5KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJZHJtX2RwX2RwY2Rfd3Jp
dGUoJmludGVsX2RwLT5hdXgsIERQX0RPV05TUFJFQURfQ1RSTCwgbGlua19jb25maWcsIDIpOwog
CiAJaW50ZWxfZHAtPkRQIHw9IERQX1BPUlRfRU47Cit9CisKKy8qIFBlcmZvcm0gdGhlIGxpbmsg
dHJhaW5pbmcgY2xvY2sgcmVjb3ZlcnkgcGhhc2UgdXNpbmcgdHJhaW5pbmcgcGF0dGVybiAxLiAq
Lworc3RhdGljIGJvb2wKK2ludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2xvY2tfcmVjb3Zlcnkoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOworCXU4IHZvbHRhZ2U7CisJaW50IHZvbHRhZ2VfdHJp
ZXMsIGNyX3RyaWVzLCBtYXhfY3JfdHJpZXM7CisJYm9vbCBtYXhfdnN3aW5nX3JlYWNoZWQgPSBm
YWxzZTsKIAogCS8qIGNsb2NrIHJlY292ZXJ5ICovCiAJaWYgKCFpbnRlbF9kcF9yZXNldF9saW5r
X3RyYWluKGludGVsX2RwLApAQCAtMzA5LDYgKzMxOCwxMCBAQCBzdGF0aWMgdTMyIGludGVsX2Rw
X3RyYWluaW5nX3BhdHRlcm4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlyZXR1cm4gRFBf
VFJBSU5JTkdfUEFUVEVSTl8yOwogfQogCisvKgorICogUGVyZm9ybSB0aGUgbGluayB0cmFpbmlu
ZyBjaGFubmVsIGVxdWFsaXphdGlvbiBwaGFzZSB1c2luZyBvbmUgb2YgdHJhaW5pbmcKKyAqIHBh
dHRlcm4gMiwgMyBvciA0IGRlcGVuZGluZyBvbiB0aGUgc291cmNlIGFuZCBzaW5rIGNhcGFiaWxp
dGllcy4KKyAqLwogc3RhdGljIGJvb2wKIGludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2hhbm5lbF9l
cXVhbGl6YXRpb24oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIHsKQEAgLTM3MywxMiArMzg2
LDI3IEBAIGludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2hhbm5lbF9lcXVhbGl6YXRpb24oc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkKIAkJCSAgICAiQ2hhbm5lbCBlcXVhbGl6YXRpb24gZmFpbGVk
IDUgdGltZXNcbiIpOwogCX0KIAotCWludGVsX2RwX3NldF9pZGxlX2xpbmtfdHJhaW4oaW50ZWxf
ZHApOworCWlmIChpbnRlbF9kcC0+c2V0X2lkbGVfbGlua190cmFpbikKKwkJaW50ZWxfZHAtPnNl
dF9pZGxlX2xpbmtfdHJhaW4oaW50ZWxfZHApOwogCiAJcmV0dXJuIGNoYW5uZWxfZXE7Ci0KIH0K
IAorLyoqCisgKiBpbnRlbF9kcF9zdG9wX2xpbmtfdHJhaW4gLSBzdG9wIGxpbmsgdHJhaW5pbmcK
KyAqIEBpbnRlbF9kcDogRFAgc3RydWN0CisgKgorICogU3RvcCB0aGUgbGluayB0cmFpbmluZyBv
ZiB0aGUgQGludGVsX2RwIHBvcnQsIGRpc2FibGluZyB0aGUgdGVzdCBwYXR0ZXJuCisgKiBzeW1i
b2wgZ2VuZXJhdGlvbiBvbiB0aGUgcG9ydCBhbmQgZGlzYWJsaW5nIHRoZSB0cmFpbmluZyBwYXR0
ZXJuIGluCisgKiB0aGUgc2luaydzIERQQ0QuCisgKgorICogV2hhdCBzeW1ib2xzIGFyZSBvdXRw
dXQgb24gdGhlIHBvcnQgYWZ0ZXIgdGhpcyBwb2ludCBpcworICogcGxhdGZvcm0gc3BlY2lmaWM6
IE9uIERESS9WTFYvQ0hWIHBsYXRmb3JtcyBpdCB3aWxsIGJlIHRoZSBpZGxlIHBhdHRlcm4KKyAq
IHdpdGggdGhlIHBpcGUgYmVpbmcgZGlzYWJsZWQsIG9uIG9sZGVyIHBsYXRmb3JtcyBpdCdzIEhX
IHNwZWNpZmljIGlmL2hvdyBhbgorICogaWRsZSBwYXR0ZXJuIGlzIGdlbmVyYXRlZCwgYXMgdGhl
IHBpcGUgaXMgYWxyZWFkeSBlbmFibGVkIGhlcmUgZm9yIHRob3NlLgorICoKKyAqIFRoaXMgZnVu
Y3Rpb24gbXVzdCBiZSBjYWxsZWQgYWZ0ZXIgaW50ZWxfZHBfc3RhcnRfbGlua190cmFpbigpLgor
ICovCiB2b2lkIGludGVsX2RwX3N0b3BfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKQogewogCWludGVsX2RwLT5saW5rX3RyYWluZWQgPSB0cnVlOwpAQCAtMzg3LDMwICs0MTUs
MzcgQEAgdm9pZCBpbnRlbF9kcF9zdG9wX2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkKIAkJCQlEUF9UUkFJTklOR19QQVRURVJOX0RJU0FCTEUpOwogfQogCi12b2lkCi1pbnRl
bF9kcF9zdGFydF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCitzdGF0aWMg
Ym9vbAoraW50ZWxfZHBfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogewog
CXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3RvciA9IGludGVsX2RwLT5hdHRh
Y2hlZF9jb25uZWN0b3I7CisJYm9vbCByZXQgPSBmYWxzZTsKKworCWludGVsX2RwX3ByZXBhcmVf
bGlua190cmFpbihpbnRlbF9kcCk7CiAKIAlpZiAoIWludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2xv
Y2tfcmVjb3ZlcnkoaW50ZWxfZHApKQotCQlnb3RvIGZhaWx1cmVfaGFuZGxpbmc7CisJCWdvdG8g
b3V0OworCiAJaWYgKCFpbnRlbF9kcF9saW5rX3RyYWluaW5nX2NoYW5uZWxfZXF1YWxpemF0aW9u
KGludGVsX2RwKSkKLQkJZ290byBmYWlsdXJlX2hhbmRsaW5nOworCQlnb3RvIG91dDsKIAotCWRy
bV9kYmdfa21zKCZkcF90b19pOTE1KGludGVsX2RwKS0+ZHJtLAotCQkgICAgIltDT05ORUNUT1I6
JWQ6JXNdIExpbmsgVHJhaW5pbmcgUGFzc2VkIGF0IExpbmsgUmF0ZSA9ICVkLCBMYW5lIGNvdW50
ID0gJWQiLAotCQkgICAgaW50ZWxfY29ubmVjdG9yLT5iYXNlLmJhc2UuaWQsCi0JCSAgICBpbnRl
bF9jb25uZWN0b3ItPmJhc2UubmFtZSwKLQkJICAgIGludGVsX2RwLT5saW5rX3JhdGUsIGludGVs
X2RwLT5sYW5lX2NvdW50KTsKLQlyZXR1cm47CisJcmV0ID0gdHJ1ZTsKIAotIGZhaWx1cmVfaGFu
ZGxpbmc6CitvdXQ6CiAJZHJtX2RiZ19rbXMoJmRwX3RvX2k5MTUoaW50ZWxfZHApLT5kcm0sCi0J
CSAgICAiW0NPTk5FQ1RPUjolZDolc10gTGluayBUcmFpbmluZyBmYWlsZWQgYXQgbGluayByYXRl
ID0gJWQsIGxhbmUgY291bnQgPSAlZCIsCisJCSAgICAiW0NPTk5FQ1RPUjolZDolc10gTGluayBU
cmFpbmluZyAlcyBhdCBMaW5rIFJhdGUgPSAlZCwgTGFuZSBjb3VudCA9ICVkIiwKIAkJICAgIGlu
dGVsX2Nvbm5lY3Rvci0+YmFzZS5iYXNlLmlkLAogCQkgICAgaW50ZWxfY29ubmVjdG9yLT5iYXNl
Lm5hbWUsCisJCSAgICByZXQgPyAicGFzc2VkIiA6ICJmYWlsZWQiLAogCQkgICAgaW50ZWxfZHAt
PmxpbmtfcmF0ZSwgaW50ZWxfZHAtPmxhbmVfY291bnQpOwogCisJcmV0dXJuIHJldDsKK30KKwor
c3RhdGljIHZvaWQgaW50ZWxfZHBfc2NoZWR1bGVfZmFsbGJhY2tfbGlua190cmFpbmluZyhzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQoreworCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVs
X2Nvbm5lY3RvciA9IGludGVsX2RwLT5hdHRhY2hlZF9jb25uZWN0b3I7CisKIAlpZiAoaW50ZWxf
ZHAtPmhvYmxfYWN0aXZlKSB7CiAJCWRybV9kYmdfa21zKCZkcF90b19pOTE1KGludGVsX2RwKS0+
ZHJtLAogCQkJICAgICJMaW5rIFRyYWluaW5nIGZhaWxlZCB3aXRoIEhPQkwgYWN0aXZlLCBub3Qg
ZW5hYmxpbmcgaXQgZnJvbSBub3cgb24iKTsKQEAgLTQyNCwzICs0NTksMTggQEAgaW50ZWxfZHBf
c3RhcnRfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCS8qIFNjaGVkdWxl
IGEgSG90cGx1ZyBVZXZlbnQgdG8gdXNlcnNwYWNlIHRvIHN0YXJ0IG1vZGVzZXQgKi8KIAlzY2hl
ZHVsZV93b3JrKCZpbnRlbF9jb25uZWN0b3ItPm1vZGVzZXRfcmV0cnlfd29yayk7CiB9CisKKy8q
KgorICogaW50ZWxfZHBfc3RhcnRfbGlua190cmFpbiAtIHN0YXJ0IGxpbmsgdHJhaW5pbmcKKyAq
IEBpbnRlbF9kcDogRFAgc3RydWN0CisgKgorICogU3RhcnQgdGhlIGxpbmsgdHJhaW5pbmcgb2Yg
dGhlIEBpbnRlbF9kcCBwb3J0LCBzY2hlZHVsaW5nIGEgZmFsbGJhY2sKKyAqIHJldHJhaW5pbmcg
d2l0aCByZWR1Y2VkIGxpbmsgcmF0ZS9sYW5lIHBhcmFtZXRlcnMgaWYgdGhlIGxpbmsgdHJhaW5p
bmcKKyAqIGZhaWxzLgorICogQWZ0ZXIgY2FsbGluZyB0aGlzIGZ1bmN0aW9uIGludGVsX2RwX3N0
b3BfbGlua190cmFpbigpIG11c3QgYmUgY2FsbGVkLgorICovCit2b2lkIGludGVsX2RwX3N0YXJ0
X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKK3sKKwlpZiAoIWludGVsX2Rw
X2xpbmtfdHJhaW4oaW50ZWxfZHApKQorCQlpbnRlbF9kcF9zY2hlZHVsZV9mYWxsYmFja19saW5r
X3RyYWluaW5nKGludGVsX2RwKTsKK30KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
