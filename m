Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 524A528658B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 19:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0576E946;
	Wed,  7 Oct 2020 17:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87BAE6E946
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 17:09:55 +0000 (UTC)
IronPort-SDR: 43R/qigoF0UX9eHvm91/z9POt/2u/OTQMRMAUCi8ljgUP4ZoyWD2svSMfP+MGQOOp0mVE8JPdU
 2caJQ2Tej+dw==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="164254652"
X-IronPort-AV: E=Sophos;i="5.77,347,1596524400"; d="scan'208";a="164254652"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 10:09:23 -0700
IronPort-SDR: R649vG+4TimBYCqNs98YZK4ijAB9imT2sP7GM9ZKs/VwHvdqPPCT90nPJDBACd7lw/Rx6vHrsv
 8d4EwW9wFtVg==
X-IronPort-AV: E=Sophos;i="5.77,347,1596524400"; d="scan'208";a="528056856"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 10:09:22 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Oct 2020 20:09:13 +0300
Message-Id: <20201007170917.1764556-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201007170917.1764556-1-imre.deak@intel.com>
References: <20201007170917.1764556-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/6] drm/i915: Simplify the link training
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
cC5jICAgICAgIHwgICA3IC0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmggICAgICAgfCAgIDIgLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFp
bmluZy5jIHwgMTAwICsrKysrKysrKysrKysrLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCA3OSBpbnNl
cnRpb25zKCspLCAzMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKaW5kZXggODEyNGMzZDU1MWY1Li4wNDY5NThiZjM3MDcgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTQ1OTksMTMgKzQ1OTksNiBAQCBpbnRlbF9k
cF9wcm9ncmFtX2xpbmtfdHJhaW5pbmdfcGF0dGVybihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LAogCWludGVsX2RwLT5zZXRfbGlua190cmFpbihpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgZHBfdHJh
aW5fcGF0KTsKIH0KIAotdm9pZCBpbnRlbF9kcF9zZXRfaWRsZV9saW5rX3RyYWluKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsCi0JCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkKLXsKLQlpZiAoaW50ZWxfZHAtPnNldF9pZGxlX2xpbmtfdHJhaW4pCi0JCWlu
dGVsX2RwLT5zZXRfaWRsZV9saW5rX3RyYWluKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKLX0KLQog
c3RhdGljIHZvaWQKIGludGVsX2RwX2xpbmtfZG93bihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIAkJICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRl
KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCmluZGV4IDZjMjAxMzc3ZmRj
MC4uMTFkMDVjYTc0ZGQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5o
CkBAIC05Nyw4ICs5Nyw2IEBAIGludGVsX2RwX3Byb2dyYW1fbGlua190cmFpbmluZ19wYXR0ZXJu
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiB2b2lkCiBpbnRlbF9kcF9zZXRfc2lnbmFsX2xl
dmVscyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJICAgY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwotdm9pZCBpbnRlbF9kcF9zZXRfaWRsZV9saW5rX3Ry
YWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCi0JCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiB2b2lkIGludGVsX2RwX2NvbXB1dGVfcmF0ZShzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBpbnQgcG9ydF9jbG9jaywKIAkJCSAgIHU4ICpsaW5rX2J3
LCB1OCAqcmF0ZV9zZWxlY3QpOwogYm9vbCBpbnRlbF9kcF9zb3VyY2Vfc3VwcG9ydHNfaGJyMihz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMKaW5kZXggYjJmZjg4YTE1MmNkLi41
MWQxMzE2YzM3ZDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua190cmFpbmluZy5jCkBAIC0xNTMsMTUgKzE1MywxNSBAQCBzdGF0aWMgYm9v
bCBpbnRlbF9kcF9saW5rX21heF92c3dpbmdfcmVhY2hlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLAogCXJldHVybiB0cnVlOwogfQogCi0vKiBFbmFibGUgY29ycmVzcG9uZGluZyBwb3J0IGFu
ZCBzdGFydCB0cmFpbmluZyBwYXR0ZXJuIDEgKi8KKy8qCisgKiBQcmVwYXJlIGxpbmsgdHJhaW5p
bmcgYnkgY29uZmlndXJpbmcgdGhlIGxpbmsgcGFyYW1ldGVycy4gT24gRERJIHBsYXRmb3Jtcwor
ICogYWxzbyBlbmFibGUgdGhlIHBvcnQgaGVyZS4KKyAqLwogc3RhdGljIGJvb2wKLWludGVsX2Rw
X2xpbmtfdHJhaW5pbmdfY2xvY2tfcmVjb3Zlcnkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
LQkJCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK2lu
dGVsX2RwX3ByZXBhcmVfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAorCQkJ
ICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7Ci0JdTggdm9s
dGFnZTsKLQlpbnQgdm9sdGFnZV90cmllcywgY3JfdHJpZXMsIG1heF9jcl90cmllczsKLQlib29s
IG1heF92c3dpbmdfcmVhY2hlZCA9IGZhbHNlOwogCXU4IGxpbmtfY29uZmlnWzJdOwogCXU4IGxp
bmtfYncsIHJhdGVfc2VsZWN0OwogCkBAIC0xOTYsNiArMTk2LDE5IEBAIGludGVsX2RwX2xpbmtf
dHJhaW5pbmdfY2xvY2tfcmVjb3Zlcnkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAogCWlu
dGVsX2RwLT5EUCB8PSBEUF9QT1JUX0VOOwogCisJcmV0dXJuIHRydWU7Cit9CisKKy8qIFBlcmZv
cm0gdGhlIGxpbmsgdHJhaW5pbmcgY2xvY2sgcmVjb3ZlcnkgcGhhc2UgdXNpbmcgdHJhaW5pbmcg
cGF0dGVybiAxLiAqLworc3RhdGljIGJvb2wKK2ludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2xvY2tf
cmVjb3Zlcnkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkgICAgICBjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOworCXU4IHZvbHRhZ2U7CisJaW50IHZv
bHRhZ2VfdHJpZXMsIGNyX3RyaWVzLCBtYXhfY3JfdHJpZXM7CisJYm9vbCBtYXhfdnN3aW5nX3Jl
YWNoZWQgPSBmYWxzZTsKKwogCS8qIGNsb2NrIHJlY292ZXJ5ICovCiAJaWYgKCFpbnRlbF9kcF9y
ZXNldF9saW5rX3RyYWluKGludGVsX2RwLCBjcnRjX3N0YXRlLAogCQkJCSAgICAgICBEUF9UUkFJ
TklOR19QQVRURVJOXzEgfApAQCAtMzE4LDYgKzMzMSwxMCBAQCBzdGF0aWMgdTMyIGludGVsX2Rw
X3RyYWluaW5nX3BhdHRlcm4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlyZXR1cm4gRFBf
VFJBSU5JTkdfUEFUVEVSTl8yOwogfQogCisvKgorICogUGVyZm9ybSB0aGUgbGluayB0cmFpbmlu
ZyBjaGFubmVsIGVxdWFsaXphdGlvbiBwaGFzZSB1c2luZyBvbmUgb2YgdHJhaW5pbmcKKyAqIHBh
dHRlcm4gMiwgMyBvciA0IGRlcGVuZGluZyBvbiB0aGUgc291cmNlIGFuZCBzaW5rIGNhcGFiaWxp
dGllcy4KKyAqLwogc3RhdGljIGJvb2wKIGludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2hhbm5lbF9l
cXVhbGl6YXRpb24oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJCQkJICAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQpAQCAtMzgzLDEyICs0MDAsMjggQEAg
aW50ZWxfZHBfbGlua190cmFpbmluZ19jaGFubmVsX2VxdWFsaXphdGlvbihzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLAogCQkJICAgICJDaGFubmVsIGVxdWFsaXphdGlvbiBmYWlsZWQgNSB0aW1l
c1xuIik7CiAJfQogCi0JaW50ZWxfZHBfc2V0X2lkbGVfbGlua190cmFpbihpbnRlbF9kcCwgY3J0
Y19zdGF0ZSk7CisJaWYgKGludGVsX2RwLT5zZXRfaWRsZV9saW5rX3RyYWluKQorCQlpbnRlbF9k
cC0+c2V0X2lkbGVfbGlua190cmFpbihpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7CiAKIAlyZXR1cm4g
Y2hhbm5lbF9lcTsKLQogfQogCisvKioKKyAqIGludGVsX2RwX3N0b3BfbGlua190cmFpbiAtIHN0
b3AgbGluayB0cmFpbmluZworICogQGludGVsX2RwOiBEUCBzdHJ1Y3QKKyAqIEBjcnRjX3N0YXRl
OiBzdGF0ZSBmb3IgQ1JUQyBhdHRhY2hlZCB0byB0aGUgZW5jb2RlcgorICoKKyAqIFN0b3AgdGhl
IGxpbmsgdHJhaW5pbmcgb2YgdGhlIEBpbnRlbF9kcCBwb3J0LCBkaXNhYmxpbmcgdGhlIHRlc3Qg
cGF0dGVybgorICogc3ltYm9sIGdlbmVyYXRpb24gb24gdGhlIHBvcnQgYW5kIGRpc2FibGluZyB0
aGUgdHJhaW5pbmcgcGF0dGVybiBpbgorICogdGhlIHNpbmsncyBEUENELgorICoKKyAqIFdoYXQg
c3ltYm9scyBhcmUgb3V0cHV0IG9uIHRoZSBwb3J0IGFmdGVyIHRoaXMgcG9pbnQgaXMKKyAqIHBs
YXRmb3JtIHNwZWNpZmljOiBPbiBEREkvVkxWL0NIViBwbGF0Zm9ybXMgaXQgd2lsbCBiZSB0aGUg
aWRsZSBwYXR0ZXJuCisgKiB3aXRoIHRoZSBwaXBlIGJlaW5nIGRpc2FibGVkLCBvbiBvbGRlciBw
bGF0Zm9ybXMgaXQncyBIVyBzcGVjaWZpYyBpZi9ob3cgYW4KKyAqIGlkbGUgcGF0dGVybiBpcyBn
ZW5lcmF0ZWQsIGFzIHRoZSBwaXBlIGlzIGFscmVhZHkgZW5hYmxlZCBoZXJlIGZvciB0aG9zZS4K
KyAqCisgKiBUaGlzIGZ1bmN0aW9uIG11c3QgYmUgY2FsbGVkIGFmdGVyIGludGVsX2RwX3N0YXJ0
X2xpbmtfdHJhaW4oKS4KKyAqLwogdm9pZCBpbnRlbF9kcF9zdG9wX2xpbmtfdHJhaW4oc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwKIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQogewpAQCAtMzk4LDMxICs0MzEsMzkgQEAgdm9pZCBpbnRlbF9kcF9z
dG9wX2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJCQlEUF9UUkFJTklO
R19QQVRURVJOX0RJU0FCTEUpOwogfQogCi12b2lkCi1pbnRlbF9kcF9zdGFydF9saW5rX3RyYWlu
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCi0JCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQorc3RhdGljIGJvb2wKK2ludGVsX2RwX2xpbmtfdHJhaW4oc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5l
Y3RvciA9IGludGVsX2RwLT5hdHRhY2hlZF9jb25uZWN0b3I7CisJYm9vbCByZXQgPSBmYWxzZTsK
KworCWludGVsX2RwX3ByZXBhcmVfbGlua190cmFpbihpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7CiAK
IAlpZiAoIWludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2xvY2tfcmVjb3ZlcnkoaW50ZWxfZHAsIGNy
dGNfc3RhdGUpKQotCQlnb3RvIGZhaWx1cmVfaGFuZGxpbmc7CisJCWdvdG8gb3V0OworCiAJaWYg
KCFpbnRlbF9kcF9saW5rX3RyYWluaW5nX2NoYW5uZWxfZXF1YWxpemF0aW9uKGludGVsX2RwLCBj
cnRjX3N0YXRlKSkKLQkJZ290byBmYWlsdXJlX2hhbmRsaW5nOworCQlnb3RvIG91dDsKIAotCWRy
bV9kYmdfa21zKCZkcF90b19pOTE1KGludGVsX2RwKS0+ZHJtLAotCQkgICAgIltDT05ORUNUT1I6
JWQ6JXNdIExpbmsgVHJhaW5pbmcgUGFzc2VkIGF0IExpbmsgUmF0ZSA9ICVkLCBMYW5lIGNvdW50
ID0gJWQiLAotCQkgICAgaW50ZWxfY29ubmVjdG9yLT5iYXNlLmJhc2UuaWQsCi0JCSAgICBpbnRl
bF9jb25uZWN0b3ItPmJhc2UubmFtZSwKLQkJICAgIGNydGNfc3RhdGUtPnBvcnRfY2xvY2ssIGNy
dGNfc3RhdGUtPmxhbmVfY291bnQpOwotCXJldHVybjsKKwlyZXQgPSB0cnVlOwogCi0gZmFpbHVy
ZV9oYW5kbGluZzoKK291dDoKIAlkcm1fZGJnX2ttcygmZHBfdG9faTkxNShpbnRlbF9kcCktPmRy
bSwKLQkJICAgICJbQ09OTkVDVE9SOiVkOiVzXSBMaW5rIFRyYWluaW5nIGZhaWxlZCBhdCBsaW5r
IHJhdGUgPSAlZCwgbGFuZSBjb3VudCA9ICVkIiwKKwkJICAgICJbQ09OTkVDVE9SOiVkOiVzXSBM
aW5rIFRyYWluaW5nICVzIGF0IGxpbmsgcmF0ZSA9ICVkLCBsYW5lIGNvdW50ID0gJWQiLAogCQkg
ICAgaW50ZWxfY29ubmVjdG9yLT5iYXNlLmJhc2UuaWQsCiAJCSAgICBpbnRlbF9jb25uZWN0b3It
PmJhc2UubmFtZSwKKwkJICAgIHJldCA/ICJwYXNzZWQiIDogImZhaWxlZCIsCiAJCSAgICBjcnRj
X3N0YXRlLT5wb3J0X2Nsb2NrLCBjcnRjX3N0YXRlLT5sYW5lX2NvdW50KTsKIAorCXJldHVybiBy
ZXQ7Cit9CisKK3N0YXRpYyB2b2lkIGludGVsX2RwX3NjaGVkdWxlX2ZhbGxiYWNrX2xpbmtfdHJh
aW5pbmcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkJCSAgICAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqaW50ZWxfY29ubmVjdG9yID0gaW50ZWxfZHAtPmF0dGFjaGVkX2Nvbm5lY3RvcjsKKwogCWlm
IChpbnRlbF9kcC0+aG9ibF9hY3RpdmUpIHsKIAkJZHJtX2RiZ19rbXMoJmRwX3RvX2k5MTUoaW50
ZWxfZHApLT5kcm0sCiAJCQkgICAgIkxpbmsgVHJhaW5pbmcgZmFpbGVkIHdpdGggSE9CTCBhY3Rp
dmUsIG5vdCBlbmFibGluZyBpdCBmcm9tIG5vdyBvbiIpOwpAQCAtNDM2LDMgKzQ3NywyMCBAQCBp
bnRlbF9kcF9zdGFydF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJLyog
U2NoZWR1bGUgYSBIb3RwbHVnIFVldmVudCB0byB1c2Vyc3BhY2UgdG8gc3RhcnQgbW9kZXNldCAq
LwogCXNjaGVkdWxlX3dvcmsoJmludGVsX2Nvbm5lY3Rvci0+bW9kZXNldF9yZXRyeV93b3JrKTsK
IH0KKworLyoqCisgKiBpbnRlbF9kcF9zdGFydF9saW5rX3RyYWluIC0gc3RhcnQgbGluayB0cmFp
bmluZworICogQGludGVsX2RwOiBEUCBzdHJ1Y3QKKyAqIEBjcnRjX3N0YXRlOiBzdGF0ZSBmb3Ig
Q1JUQyBhdHRhY2hlZCB0byB0aGUgZW5jb2RlcgorICoKKyAqIFN0YXJ0IHRoZSBsaW5rIHRyYWlu
aW5nIG9mIHRoZSBAaW50ZWxfZHAgcG9ydCwgc2NoZWR1bGluZyBhIGZhbGxiYWNrCisgKiByZXRy
YWluaW5nIHdpdGggcmVkdWNlZCBsaW5rIHJhdGUvbGFuZSBwYXJhbWV0ZXJzIGlmIHRoZSBsaW5r
IHRyYWluaW5nCisgKiBmYWlscy4KKyAqIEFmdGVyIGNhbGxpbmcgdGhpcyBmdW5jdGlvbiBpbnRl
bF9kcF9zdG9wX2xpbmtfdHJhaW4oKSBtdXN0IGJlIGNhbGxlZC4KKyAqLwordm9pZCBpbnRlbF9k
cF9zdGFydF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCisJCQkgICAgICAg
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJaWYgKCFpbnRl
bF9kcF9saW5rX3RyYWluKGludGVsX2RwLCBjcnRjX3N0YXRlKSkKKwkJaW50ZWxfZHBfc2NoZWR1
bGVfZmFsbGJhY2tfbGlua190cmFpbmluZyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7Cit9Ci0tIAoy
LjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
