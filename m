Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F14372C647E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:09:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59BBE6EC28;
	Fri, 27 Nov 2020 12:08:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F32E6EC2B;
 Fri, 27 Nov 2020 12:08:38 +0000 (UTC)
IronPort-SDR: /sFaOAiqWDVO5eUfEOGmNuoUoE+lLu3dEDDN3wr7B/1o7wiDpBpRYGtaM8v0Teha1k6DGspkW2
 OkfqVixsHbvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="168883484"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="168883484"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:08:37 -0800
IronPort-SDR: 1YGod5SdLOjmST9OaqLpb6QkGLS9rrpE8IYSwCK+qiDFInDzqO8fdZ+9C/HztMBJqTt9uikM+N
 AngcsaiqUvzA==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548028760"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:08:36 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:05:15 +0000
Message-Id: <20201127120718.454037-40-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 039/162] drm/i915: Fix pread/pwrite to work
 with new locking rules.
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
bT4KCldlIGFyZSByZW1vdmluZyBvYmotPm1tLmxvY2ssIGFuZCBuZWVkIHRvIHRha2UgdGhlIHJl
c2VydmF0aW9uIGxvY2sKYmVmb3JlIHdlIGNhbiBwaW4gcGFnZXMuIE1vdmUgdGhlIHBpbm5pbmcg
cGFnZXMgaW50byB0aGUgaGVscGVyLCBhbmQKbWVyZ2UgZ3R0IHB3cml0ZS9wcmVhZCBwcmVwYXJh
dGlvbiBhbmQgY2xlYW51cCBwYXRocy4KClRoZSBmZW5jZSBsb2NrIGlzIGFsc28gcmVtb3ZlZDsg
aXQgd2lsbCBjb25mbGljdCB3aXRoIGZlbmNlIGFubm90YXRpb25zLApiZWNhdXNlIG9mIG1lbW9y
eSBhbGxvY2F0aW9ucyBkb25lIHdoZW4gcGFnZWZhdWx0aW5nIGluc2lkZSBjb3B5XypfdXNlci4K
ClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAg
ICAgIHwgICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9mZW5jZS5jICB8
ICA5NSAtLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Qu
aCB8ICAgNSAtCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgfCAy
MjQgKysrKysrKysrKystLS0tLS0tLS0tCiA0IGZpbGVzIGNoYW5nZWQsIDExNCBpbnNlcnRpb25z
KCspLCAyMTEgZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2ZlbmNlLmMKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IDI0NDVj
Yzk5MGUxNS4uNTExMmU1ZDc5MzE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtMTM2LDcgKzEz
Niw2IEBAIGdlbS15ICs9IFwKIAlnZW0vaTkxNV9nZW1fZG1hYnVmLm8gXAogCWdlbS9pOTE1X2dl
bV9kb21haW4ubyBcCiAJZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIubyBcCi0JZ2VtL2k5MTVfZ2Vt
X2ZlbmNlLm8gXAogCWdlbS9pOTE1X2dlbV9pbnRlcm5hbC5vIFwKIAlnZW0vaTkxNV9nZW1fb2Jq
ZWN0Lm8gXAogCWdlbS9pOTE1X2dlbV9vYmplY3RfYmx0Lm8gXApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZmVuY2UuYwpkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggOGFi
ODQyYzgwZjk5Li4wMDAwMDAwMDAwMDAKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2ZlbmNlLmMKKysrIC9kZXYvbnVsbApAQCAtMSw5NSArMCwwIEBACi0vKgotICogU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAotICoKLSAqIENvcHlyaWdodCDCqSAyMDE5IEludGVs
IENvcnBvcmF0aW9uCi0gKi8KLQotI2luY2x1ZGUgImk5MTVfZHJ2LmgiCi0jaW5jbHVkZSAiaTkx
NV9nZW1fb2JqZWN0LmgiCi0KLXN0cnVjdCBzdHViX2ZlbmNlIHsKLQlzdHJ1Y3QgZG1hX2ZlbmNl
IGRtYTsKLQlzdHJ1Y3QgaTkxNV9zd19mZW5jZSBjaGFpbjsKLX07Ci0KLXN0YXRpYyBpbnQgX19p
OTE1X3N3X2ZlbmNlX2NhbGwKLXN0dWJfbm90aWZ5KHN0cnVjdCBpOTE1X3N3X2ZlbmNlICpmZW5j
ZSwgZW51bSBpOTE1X3N3X2ZlbmNlX25vdGlmeSBzdGF0ZSkKLXsKLQlzdHJ1Y3Qgc3R1Yl9mZW5j
ZSAqc3R1YiA9IGNvbnRhaW5lcl9vZihmZW5jZSwgdHlwZW9mKCpzdHViKSwgY2hhaW4pOwotCi0J
c3dpdGNoIChzdGF0ZSkgewotCWNhc2UgRkVOQ0VfQ09NUExFVEU6Ci0JCWRtYV9mZW5jZV9zaWdu
YWwoJnN0dWItPmRtYSk7Ci0JCWJyZWFrOwotCi0JY2FzZSBGRU5DRV9GUkVFOgotCQlkbWFfZmVu
Y2VfcHV0KCZzdHViLT5kbWEpOwotCQlicmVhazsKLQl9Ci0KLQlyZXR1cm4gTk9USUZZX0RPTkU7
Ci19Ci0KLXN0YXRpYyBjb25zdCBjaGFyICpzdHViX2RyaXZlcl9uYW1lKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKQotewotCXJldHVybiBEUklWRVJfTkFNRTsKLX0KLQotc3RhdGljIGNvbnN0IGNo
YXIgKnN0dWJfdGltZWxpbmVfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKLXsKLQlyZXR1
cm4gIm9iamVjdCI7Ci19Ci0KLXN0YXRpYyB2b2lkIHN0dWJfcmVsZWFzZShzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSkKLXsKLQlzdHJ1Y3Qgc3R1Yl9mZW5jZSAqc3R1YiA9IGNvbnRhaW5lcl9vZihm
ZW5jZSwgdHlwZW9mKCpzdHViKSwgZG1hKTsKLQotCWk5MTVfc3dfZmVuY2VfZmluaSgmc3R1Yi0+
Y2hhaW4pOwotCi0JQlVJTERfQlVHX09OKG9mZnNldG9mKHR5cGVvZigqc3R1YiksIGRtYSkpOwot
CWRtYV9mZW5jZV9mcmVlKCZzdHViLT5kbWEpOwotfQotCi1zdGF0aWMgY29uc3Qgc3RydWN0IGRt
YV9mZW5jZV9vcHMgc3R1Yl9mZW5jZV9vcHMgPSB7Ci0JLmdldF9kcml2ZXJfbmFtZSA9IHN0dWJf
ZHJpdmVyX25hbWUsCi0JLmdldF90aW1lbGluZV9uYW1lID0gc3R1Yl90aW1lbGluZV9uYW1lLAot
CS5yZWxlYXNlID0gc3R1Yl9yZWxlYXNlLAotfTsKLQotc3RydWN0IGRtYV9mZW5jZSAqCi1pOTE1
X2dlbV9vYmplY3RfbG9ja19mZW5jZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQot
ewotCXN0cnVjdCBzdHViX2ZlbmNlICpzdHViOwotCi0JYXNzZXJ0X29iamVjdF9oZWxkKG9iaik7
Ci0KLQlzdHViID0ga21hbGxvYyhzaXplb2YoKnN0dWIpLCBHRlBfS0VSTkVMKTsKLQlpZiAoIXN0
dWIpCi0JCXJldHVybiBOVUxMOwotCi0JaTkxNV9zd19mZW5jZV9pbml0KCZzdHViLT5jaGFpbiwg
c3R1Yl9ub3RpZnkpOwotCWRtYV9mZW5jZV9pbml0KCZzdHViLT5kbWEsICZzdHViX2ZlbmNlX29w
cywgJnN0dWItPmNoYWluLndhaXQubG9jaywKLQkJICAgICAgIDAsIDApOwotCi0JaWYgKGk5MTVf
c3dfZmVuY2VfYXdhaXRfcmVzZXJ2YXRpb24oJnN0dWItPmNoYWluLAotCQkJCQkgICAgb2JqLT5i
YXNlLnJlc3YsIE5VTEwsIHRydWUsCi0JCQkJCSAgICBpOTE1X2ZlbmNlX3RpbWVvdXQodG9faTkx
NShvYmotPmJhc2UuZGV2KSksCi0JCQkJCSAgICBJOTE1X0ZFTkNFX0dGUCkgPCAwKQotCQlnb3Rv
IGVycjsKLQotCWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKG9iai0+YmFzZS5yZXN2LCAmc3R1Yi0+
ZG1hKTsKLQotCXJldHVybiAmc3R1Yi0+ZG1hOwotCi1lcnI6Ci0Jc3R1Yl9yZWxlYXNlKCZzdHVi
LT5kbWEpOwotCXJldHVybiBOVUxMOwotfQotCi12b2lkIGk5MTVfZ2VtX29iamVjdF91bmxvY2tf
ZmVuY2Uoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKLQkJCQkgIHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlKQotewotCXN0cnVjdCBzdHViX2ZlbmNlICpzdHViID0gY29udGFpbmVyX29m
KGZlbmNlLCB0eXBlb2YoKnN0dWIpLCBkbWEpOwotCi0JaTkxNV9zd19mZW5jZV9jb21taXQoJnN0
dWItPmNoYWluKTsKLX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Qu
aAppbmRleCAwZmVjOTFhZDZmNjIuLjlhODFhODBjYTg0OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaApAQCAtMTgwLDExICsxODAsNiBAQCBzdGF0aWMgaW5s
aW5lIHZvaWQgaTkxNV9nZW1fb2JqZWN0X3VubG9jayhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKQogCWRtYV9yZXN2X3VubG9jayhvYmotPmJhc2UucmVzdik7CiB9CiAKLXN0cnVjdCBk
bWFfZmVuY2UgKgotaTkxNV9nZW1fb2JqZWN0X2xvY2tfZmVuY2Uoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaik7Ci12b2lkIGk5MTVfZ2VtX29iamVjdF91bmxvY2tfZmVuY2Uoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKLQkJCQkgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
KTsKLQogc3RhdGljIGlubGluZSB2b2lkCiBpOTE1X2dlbV9vYmplY3Rfc2V0X3JlYWRvbmx5KHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpp
bmRleCBiNTMxMWY3YWQ4NzAuLmI4MWZiZDkwNzc3NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
CkBAIC0zMDYsNyArMzA2LDYgQEAgaTkxNV9nZW1fc2htZW1fcHJlYWQoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIHsKIAl1bnNpZ25lZCBpbnQgbmVlZHNfY2xmbHVzaDsKIAl1bnNp
Z25lZCBpbnQgaWR4LCBvZmZzZXQ7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJY2hhciBf
X3VzZXIgKnVzZXJfZGF0YTsKIAl1NjQgcmVtYWluOwogCWludCByZXQ7CkBAIC0zMTUsMTkgKzMx
NCwxNyBAQCBpOTE1X2dlbV9zaG1lbV9wcmVhZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqLAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKKwlyZXQgPSBpOTE1X2dlbV9vYmplY3Rf
cGluX3BhZ2VzKG9iaik7CisJaWYgKHJldCkKKwkJZ290byBlcnJfdW5sb2NrOworCiAJcmV0ID0g
aTkxNV9nZW1fb2JqZWN0X3ByZXBhcmVfcmVhZChvYmosICZuZWVkc19jbGZsdXNoKTsKLQlpZiAo
cmV0KSB7Ci0JCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKLQkJcmV0dXJuIHJldDsKLQl9
CisJaWYgKHJldCkKKwkJZ290byBlcnJfdW5waW47CiAKLQlmZW5jZSA9IGk5MTVfZ2VtX29iamVj
dF9sb2NrX2ZlbmNlKG9iaik7CiAJaTkxNV9nZW1fb2JqZWN0X2ZpbmlzaF9hY2Nlc3Mob2JqKTsK
IAlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CiAKLQlpZiAoIWZlbmNlKQotCQlyZXR1cm4g
LUVOT01FTTsKLQogCXJlbWFpbiA9IGFyZ3MtPnNpemU7CiAJdXNlcl9kYXRhID0gdTY0X3RvX3Vz
ZXJfcHRyKGFyZ3MtPmRhdGFfcHRyKTsKIAlvZmZzZXQgPSBvZmZzZXRfaW5fcGFnZShhcmdzLT5v
ZmZzZXQpOwpAQCAtMzQ1LDcgKzM0MiwxMyBAQCBpOTE1X2dlbV9zaG1lbV9wcmVhZChzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQlvZmZzZXQgPSAwOwogCX0KIAotCWk5MTVfZ2Vt
X29iamVjdF91bmxvY2tfZmVuY2Uob2JqLCBmZW5jZSk7CisJaTkxNV9nZW1fb2JqZWN0X3VucGlu
X3BhZ2VzKG9iaik7CisJcmV0dXJuIHJldDsKKworZXJyX3VucGluOgorCWk5MTVfZ2VtX29iamVj
dF91bnBpbl9wYWdlcyhvYmopOworZXJyX3VubG9jazoKKwlpOTE1X2dlbV9vYmplY3RfdW5sb2Nr
KG9iaik7CiAJcmV0dXJuIHJldDsKIH0KIApAQCAtMzczLDUyICszNzYsMTAyIEBAIGd0dF91c2Vy
X3JlYWQoc3RydWN0IGlvX21hcHBpbmcgKm1hcHBpbmcsCiAJcmV0dXJuIHVud3JpdHRlbjsKIH0K
IAotc3RhdGljIGludAotaTkxNV9nZW1fZ3R0X3ByZWFkKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmosCi0JCSAgIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fcHJlYWQgKmFyZ3MpCitz
dGF0aWMgc3RydWN0IGk5MTVfdm1hICppOTE1X2dlbV9ndHRfcHJlcGFyZShzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJCQkgICAgIHN0cnVjdCBkcm1fbW1fbm9kZSAqbm9kZSwK
KwkJCQkJICAgICBib29sIHdyaXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gJmk5
MTUtPmdndHQ7Ci0JaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Ci0Jc3RydWN0IGRybV9tbV9ub2Rl
IG5vZGU7Ci0Jc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7Ci0Jdm9pZCBfX3VzZXIgKnVzZXJfZGF0
YTsKIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKLQl1NjQgcmVtYWluLCBvZmZzZXQ7CisJc3RydWN0
IGk5MTVfZ2VtX3d3X2N0eCB3dzsKIAlpbnQgcmV0OwogCi0Jd2FrZXJlZiA9IGludGVsX3J1bnRp
bWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1lX3BtKTsKKwlpOTE1X2dlbV93d19jdHhfaW5pdCgmd3cs
IHRydWUpOworcmV0cnk6CiAJdm1hID0gRVJSX1BUUigtRU5PREVWKTsKKwlyZXQgPSBpOTE1X2dl
bV9vYmplY3RfbG9jayhvYmosICZ3dyk7CisJaWYgKHJldCkKKwkJZ290byBlcnJfd3c7CisKKwly
ZXQgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX2d0dF9kb21haW4ob2JqLCB3cml0ZSk7CisJaWYg
KHJldCkKKwkJZ290byBlcnJfd3c7CisKIAlpZiAoIWk5MTVfZ2VtX29iamVjdF9pc190aWxlZChv
YmopKQotCQl2bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4ob2JqLCBOVUxMLCAwLCAwLAot
CQkJCQkgICAgICAgUElOX01BUFBBQkxFIHwKLQkJCQkJICAgICAgIFBJTl9OT05CTE9DSyAvKiBO
T1dBUk4gKi8gfAotCQkJCQkgICAgICAgUElOX05PRVZJQ1QpOwotCWlmICghSVNfRVJSKHZtYSkp
IHsKLQkJbm9kZS5zdGFydCA9IGk5MTVfZ2d0dF9vZmZzZXQodm1hKTsKLQkJbm9kZS5mbGFncyA9
IDA7CisJCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3Bpbl93dyhvYmosICZ3dywgTlVMTCwg
MCwgMCwKKwkJCQkJCSAgUElOX01BUFBBQkxFIHwKKwkJCQkJCSAgUElOX05PTkJMT0NLIC8qIE5P
V0FSTiAqLyB8CisJCQkJCQkgIFBJTl9OT0VWSUNUKTsKKwlpZiAodm1hID09IEVSUl9QVFIoLUVE
RUFETEspKSB7CisJCXJldCA9IC1FREVBRExLOworCQlnb3RvIGVycl93dzsKKwl9IGVsc2UgaWYg
KCFJU19FUlIodm1hKSkgeworCQlub2RlLT5zdGFydCA9IGk5MTVfZ2d0dF9vZmZzZXQodm1hKTsK
KwkJbm9kZS0+ZmxhZ3MgPSAwOwogCX0gZWxzZSB7Ci0JCXJldCA9IGluc2VydF9tYXBwYWJsZV9u
b2RlKGdndHQsICZub2RlLCBQQUdFX1NJWkUpOworCQlyZXQgPSBpbnNlcnRfbWFwcGFibGVfbm9k
ZShnZ3R0LCBub2RlLCBQQUdFX1NJWkUpOwogCQlpZiAocmV0KQotCQkJZ290byBvdXRfcnBtOwot
CQlHRU1fQlVHX09OKCFkcm1fbW1fbm9kZV9hbGxvY2F0ZWQoJm5vZGUpKTsKKwkJCWdvdG8gZXJy
X3d3OworCQlHRU1fQlVHX09OKCFkcm1fbW1fbm9kZV9hbGxvY2F0ZWQobm9kZSkpOworCQl2bWEg
PSBOVUxMOwogCX0KIAotCXJldCA9IGk5MTVfZ2VtX29iamVjdF9sb2NrX2ludGVycnVwdGlibGUo
b2JqLCBOVUxMKTsKLQlpZiAocmV0KQotCQlnb3RvIG91dF91bnBpbjsKLQotCXJldCA9IGk5MTVf
Z2VtX29iamVjdF9zZXRfdG9fZ3R0X2RvbWFpbihvYmosIGZhbHNlKTsKKwlyZXQgPSBpOTE1X2dl
bV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CiAJaWYgKHJldCkgewotCQlpOTE1X2dlbV9vYmplY3Rf
dW5sb2NrKG9iaik7Ci0JCWdvdG8gb3V0X3VucGluOworCQlpZiAoZHJtX21tX25vZGVfYWxsb2Nh
dGVkKG5vZGUpKSB7CisJCQlnZ3R0LT52bS5jbGVhcl9yYW5nZSgmZ2d0dC0+dm0sIG5vZGUtPnN0
YXJ0LCBub2RlLT5zaXplKTsKKwkJCXJlbW92ZV9tYXBwYWJsZV9ub2RlKGdndHQsIG5vZGUpOwor
CQl9IGVsc2UgeworCQkJaTkxNV92bWFfdW5waW4odm1hKTsKKwkJfQogCX0KIAotCWZlbmNlID0g
aTkxNV9nZW1fb2JqZWN0X2xvY2tfZmVuY2Uob2JqKTsKLQlpOTE1X2dlbV9vYmplY3RfdW5sb2Nr
KG9iaik7Ci0JaWYgKCFmZW5jZSkgewotCQlyZXQgPSAtRU5PTUVNOwotCQlnb3RvIG91dF91bnBp
bjsKK2Vycl93dzoKKwlpZiAocmV0ID09IC1FREVBRExLKSB7CisJCXJldCA9IGk5MTVfZ2VtX3d3
X2N0eF9iYWNrb2ZmKCZ3dyk7CisJCWlmICghcmV0KQorCQkJZ290byByZXRyeTsKKwl9CisJaTkx
NV9nZW1fd3dfY3R4X2ZpbmkoJnd3KTsKKworCXJldHVybiByZXQgPyBFUlJfUFRSKHJldCkgOiB2
bWE7Cit9CisKK3N0YXRpYyB2b2lkIGk5MTVfZ2VtX2d0dF9jbGVhbnVwKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosCisJCQkJIHN0cnVjdCBkcm1fbW1fbm9kZSAqbm9kZSwKKwkJCQkg
c3RydWN0IGk5MTVfdm1hICp2bWEpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSB0b19pOTE1KG9iai0+YmFzZS5kZXYpOworCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSAmaTkx
NS0+Z2d0dDsKKworCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOworCWlmIChkcm1f
bW1fbm9kZV9hbGxvY2F0ZWQobm9kZSkpIHsKKwkJZ2d0dC0+dm0uY2xlYXJfcmFuZ2UoJmdndHQt
PnZtLCBub2RlLT5zdGFydCwgbm9kZS0+c2l6ZSk7CisJCXJlbW92ZV9tYXBwYWJsZV9ub2RlKGdn
dHQsIG5vZGUpOworCX0gZWxzZSB7CisJCWk5MTVfdm1hX3VucGluKHZtYSk7CisJfQorfQorCitz
dGF0aWMgaW50CitpOTE1X2dlbV9ndHRfcHJlYWQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKKwkJICAgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9wcmVhZCAqYXJncykKK3sKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7CisJ
c3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9ICZpOTE1LT5nZ3R0OworCWludGVsX3dha2VyZWZfdCB3
YWtlcmVmOworCXN0cnVjdCBkcm1fbW1fbm9kZSBub2RlOworCXZvaWQgX191c2VyICp1c2VyX2Rh
dGE7CisJc3RydWN0IGk5MTVfdm1hICp2bWE7CisJdTY0IHJlbWFpbiwgb2Zmc2V0OworCWludCBy
ZXQgPSAwOworCisJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1l
X3BtKTsKKworCXZtYSA9IGk5MTVfZ2VtX2d0dF9wcmVwYXJlKG9iaiwgJm5vZGUsIGZhbHNlKTsK
KwlpZiAoSVNfRVJSKHZtYSkpIHsKKwkJcmV0ID0gUFRSX0VSUih2bWEpOworCQlnb3RvIG91dF9y
cG07CiAJfQogCiAJdXNlcl9kYXRhID0gdTY0X3RvX3VzZXJfcHRyKGFyZ3MtPmRhdGFfcHRyKTsK
QEAgLTQ1NSwxNCArNTA4LDcgQEAgaTkxNV9nZW1fZ3R0X3ByZWFkKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmosCiAJCW9mZnNldCArPSBwYWdlX2xlbmd0aDsKIAl9CiAKLQlpOTE1X2dl
bV9vYmplY3RfdW5sb2NrX2ZlbmNlKG9iaiwgZmVuY2UpOwotb3V0X3VucGluOgotCWlmIChkcm1f
bW1fbm9kZV9hbGxvY2F0ZWQoJm5vZGUpKSB7Ci0JCWdndHQtPnZtLmNsZWFyX3JhbmdlKCZnZ3R0
LT52bSwgbm9kZS5zdGFydCwgbm9kZS5zaXplKTsKLQkJcmVtb3ZlX21hcHBhYmxlX25vZGUoZ2d0
dCwgJm5vZGUpOwotCX0gZWxzZSB7Ci0JCWk5MTVfdm1hX3VucGluKHZtYSk7Ci0JfQorCWk5MTVf
Z2VtX2d0dF9jbGVhbnVwKG9iaiwgJm5vZGUsIHZtYSk7CiBvdXRfcnBtOgogCWludGVsX3J1bnRp
bWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKIAlyZXR1cm4gcmV0OwpAQCAt
NTE1LDE1ICs1NjEsMTAgQEAgaTkxNV9nZW1fcHJlYWRfaW9jdGwoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwKIAlpZiAocmV0KQogCQlnb3RvIG91dDsKIAotCXJldCA9IGk5MTVf
Z2VtX29iamVjdF9waW5fcGFnZXMob2JqKTsKLQlpZiAocmV0KQotCQlnb3RvIG91dDsKLQogCXJl
dCA9IGk5MTVfZ2VtX3NobWVtX3ByZWFkKG9iaiwgYXJncyk7CiAJaWYgKHJldCA9PSAtRUZBVUxU
IHx8IHJldCA9PSAtRU5PREVWKQogCQlyZXQgPSBpOTE1X2dlbV9ndHRfcHJlYWQob2JqLCBhcmdz
KTsKIAotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOwogb3V0OgogCWk5MTVfZ2Vt
X29iamVjdF9wdXQob2JqKTsKIAlyZXR1cm4gcmV0OwpAQCAtNTcxLDExICs2MTIsMTAgQEAgaTkx
NV9nZW1fZ3R0X3B3cml0ZV9mYXN0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJ
c3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwogCWludGVs
X3dha2VyZWZfdCB3YWtlcmVmOwogCXN0cnVjdCBkcm1fbW1fbm9kZSBub2RlOwotCXN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCXU2NCByZW1haW4sIG9m
ZnNldDsKIAl2b2lkIF9fdXNlciAqdXNlcl9kYXRhOwotCWludCByZXQ7CisJaW50IHJldCA9IDA7
CiAKIAlpZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19zdHJ1Y3RfcGFnZShvYmopKSB7CiAJCS8qCkBA
IC01OTMsMzcgKzYzMywxMCBAQCBpOTE1X2dlbV9ndHRfcHdyaXRlX2Zhc3Qoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KHJw
bSk7CiAJfQogCi0Jdm1hID0gRVJSX1BUUigtRU5PREVWKTsKLQlpZiAoIWk5MTVfZ2VtX29iamVj
dF9pc190aWxlZChvYmopKQotCQl2bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4ob2JqLCBO
VUxMLCAwLCAwLAotCQkJCQkgICAgICAgUElOX01BUFBBQkxFIHwKLQkJCQkJICAgICAgIFBJTl9O
T05CTE9DSyAvKiBOT1dBUk4gKi8gfAotCQkJCQkgICAgICAgUElOX05PRVZJQ1QpOwotCWlmICgh
SVNfRVJSKHZtYSkpIHsKLQkJbm9kZS5zdGFydCA9IGk5MTVfZ2d0dF9vZmZzZXQodm1hKTsKLQkJ
bm9kZS5mbGFncyA9IDA7Ci0JfSBlbHNlIHsKLQkJcmV0ID0gaW5zZXJ0X21hcHBhYmxlX25vZGUo
Z2d0dCwgJm5vZGUsIFBBR0VfU0laRSk7Ci0JCWlmIChyZXQpCi0JCQlnb3RvIG91dF9ycG07Ci0J
CUdFTV9CVUdfT04oIWRybV9tbV9ub2RlX2FsbG9jYXRlZCgmbm9kZSkpOwotCX0KLQotCXJldCA9
IGk5MTVfZ2VtX29iamVjdF9sb2NrX2ludGVycnVwdGlibGUob2JqLCBOVUxMKTsKLQlpZiAocmV0
KQotCQlnb3RvIG91dF91bnBpbjsKLQotCXJldCA9IGk5MTVfZ2VtX29iamVjdF9zZXRfdG9fZ3R0
X2RvbWFpbihvYmosIHRydWUpOwotCWlmIChyZXQpIHsKLQkJaTkxNV9nZW1fb2JqZWN0X3VubG9j
ayhvYmopOwotCQlnb3RvIG91dF91bnBpbjsKLQl9Ci0KLQlmZW5jZSA9IGk5MTVfZ2VtX29iamVj
dF9sb2NrX2ZlbmNlKG9iaik7Ci0JaTkxNV9nZW1fb2JqZWN0X3VubG9jayhvYmopOwotCWlmICgh
ZmVuY2UpIHsKLQkJcmV0ID0gLUVOT01FTTsKLQkJZ290byBvdXRfdW5waW47CisJdm1hID0gaTkx
NV9nZW1fZ3R0X3ByZXBhcmUob2JqLCAmbm9kZSwgdHJ1ZSk7CisJaWYgKElTX0VSUih2bWEpKSB7
CisJCXJldCA9IFBUUl9FUlIodm1hKTsKKwkJZ290byBvdXRfcnBtOwogCX0KIAogCWk5MTVfZ2Vt
X29iamVjdF9pbnZhbGlkYXRlX2Zyb250YnVmZmVyKG9iaiwgT1JJR0lOX0NQVSk7CkBAIC02NzIs
MTQgKzY4NSw3IEBAIGk5MTVfZ2VtX2d0dF9wd3JpdGVfZmFzdChzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqLAogCWludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKGdndHQtPnZtLmd0KTsK
IAlpOTE1X2dlbV9vYmplY3RfZmx1c2hfZnJvbnRidWZmZXIob2JqLCBPUklHSU5fQ1BVKTsKIAot
CWk5MTVfZ2VtX29iamVjdF91bmxvY2tfZmVuY2Uob2JqLCBmZW5jZSk7Ci1vdXRfdW5waW46Ci0J
aWYgKGRybV9tbV9ub2RlX2FsbG9jYXRlZCgmbm9kZSkpIHsKLQkJZ2d0dC0+dm0uY2xlYXJfcmFu
Z2UoJmdndHQtPnZtLCBub2RlLnN0YXJ0LCBub2RlLnNpemUpOwotCQlyZW1vdmVfbWFwcGFibGVf
bm9kZShnZ3R0LCAmbm9kZSk7Ci0JfSBlbHNlIHsKLQkJaTkxNV92bWFfdW5waW4odm1hKTsKLQl9
CisJaTkxNV9nZW1fZ3R0X2NsZWFudXAob2JqLCAmbm9kZSwgdm1hKTsKIG91dF9ycG06CiAJaW50
ZWxfcnVudGltZV9wbV9wdXQocnBtLCB3YWtlcmVmKTsKIAlyZXR1cm4gcmV0OwpAQCAtNzE5LDcg
KzcyNSw2IEBAIGk5MTVfZ2VtX3NobWVtX3B3cml0ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqLAogCXVuc2lnbmVkIGludCBwYXJ0aWFsX2NhY2hlbGluZV93cml0ZTsKIAl1bnNpZ25l
ZCBpbnQgbmVlZHNfY2xmbHVzaDsKIAl1bnNpZ25lZCBpbnQgb2Zmc2V0LCBpZHg7Ci0Jc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2U7CiAJdm9pZCBfX3VzZXIgKnVzZXJfZGF0YTsKIAl1NjQgcmVtYWlu
OwogCWludCByZXQ7CkBAIC03MjgsMTkgKzczMywxNyBAQCBpOTE1X2dlbV9zaG1lbV9wd3JpdGUo
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0
OwogCisJcmV0ID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOworCWlmIChyZXQpCisJ
CWdvdG8gZXJyX3VubG9jazsKKwogCXJldCA9IGk5MTVfZ2VtX29iamVjdF9wcmVwYXJlX3dyaXRl
KG9iaiwgJm5lZWRzX2NsZmx1c2gpOwotCWlmIChyZXQpIHsKLQkJaTkxNV9nZW1fb2JqZWN0X3Vu
bG9jayhvYmopOwotCQlyZXR1cm4gcmV0OwotCX0KKwlpZiAocmV0KQorCQlnb3RvIGVycl91bnBp
bjsKIAotCWZlbmNlID0gaTkxNV9nZW1fb2JqZWN0X2xvY2tfZmVuY2Uob2JqKTsKIAlpOTE1X2dl
bV9vYmplY3RfZmluaXNoX2FjY2VzcyhvYmopOwogCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2Jq
KTsKIAotCWlmICghZmVuY2UpCi0JCXJldHVybiAtRU5PTUVNOwotCiAJLyogSWYgd2UgZG9uJ3Qg
b3ZlcndyaXRlIGEgY2FjaGVsaW5lIGNvbXBsZXRlbHkgd2UgbmVlZCB0byBiZQogCSAqIGNhcmVm
dWwgdG8gaGF2ZSB1cC10by1kYXRlIGRhdGEgYnkgZmlyc3QgY2xmbHVzaGluZy4gRG9uJ3QKIAkg
KiBvdmVyY29tcGxpY2F0ZSB0aGluZ3MgYW5kIGZsdXNoIHRoZSBlbnRpcmUgcGF0Y2guCkBAIC03
NjgsOCArNzcxLDE0IEBAIGk5MTVfZ2VtX3NobWVtX3B3cml0ZShzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqLAogCX0KIAogCWk5MTVfZ2VtX29iamVjdF9mbHVzaF9mcm9udGJ1ZmZlcihv
YmosIE9SSUdJTl9DUFUpOwotCWk5MTVfZ2VtX29iamVjdF91bmxvY2tfZmVuY2Uob2JqLCBmZW5j
ZSk7CiAKKwlpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMob2JqKTsKKwlyZXR1cm4gcmV0Owor
CitlcnJfdW5waW46CisJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7CitlcnJfdW5s
b2NrOgorCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKIAlyZXR1cm4gcmV0OwogfQogCkBA
IC04MjYsMTAgKzgzNSw2IEBAIGk5MTVfZ2VtX3B3cml0ZV9pb2N0bChzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LCB2b2lkICpkYXRhLAogCWlmIChyZXQpCiAJCWdvdG8gZXJyOwogCi0JcmV0ID0gaTkx
NV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOwotCWlmIChyZXQpCi0JCWdvdG8gZXJyOwotCiAJ
cmV0ID0gLUVGQVVMVDsKIAkvKiBXZSBjYW4gb25seSBkbyB0aGUgR1RUIHB3cml0ZSBvbiB1bnRp
bGVkIGJ1ZmZlcnMsIGFzIG90aGVyd2lzZQogCSAqIGl0IHdvdWxkIGVuZCB1cCBnb2luZyB0aHJv
dWdoIHRoZSBmZW5jZWQgYWNjZXNzLCBhbmQgd2UnbGwgZ2V0CkBAIC04NTAsNyArODU1LDYgQEAg
aTkxNV9nZW1fcHdyaXRlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEs
CiAJCQlyZXQgPSBpOTE1X2dlbV9zaG1lbV9wd3JpdGUob2JqLCBhcmdzKTsKIAl9CiAKLQlpOTE1
X2dlbV9vYmplY3RfdW5waW5fcGFnZXMob2JqKTsKIGVycjoKIAlpOTE1X2dlbV9vYmplY3RfcHV0
KG9iaik7CiAJcmV0dXJuIHJldDsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
