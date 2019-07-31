Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C847CB57
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 20:00:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94136E2CF;
	Wed, 31 Jul 2019 18:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B92586E2E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 18:00:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 11:00:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="191312941"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2019 11:00:45 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6VI0i04019274; Wed, 31 Jul 2019 19:00:44 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Jul 2019 18:00:35 +0000
Message-Id: <20190731180035.35940-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190730181903.17820-3-michal.wajdeczko@intel.com>
References: <20190730181903.17820-3-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915/uc: Consider enable_guc
 modparam during fw selection
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

V2UgY2FuIHVzZSB2YWx1ZSBvZiBlbmFibGVfZ3VjIG1vZHBhcmFtIGR1cmluZyBmaXJtd2FyZSBw
YXRoIHNlbGVjdGlvbgphbmQgc3RhcnQgdXNpbmcgZmlybXdhcmUgc3RhdHVzIHRvIHNlZSBpZiBH
dUMvSHVDIGlzIGJlaW5nIHVzZWQuClRoaXMgaXMgZmlyc3Qgc3RlcCB0byBtYWtlIGVuYWJsZV9n
dWMgbW9kcGFyYW0gcmVhZC1vbmx5LgoKdjI6IHJlYmFzZWQsIGRvbid0IGNhcmUgYWJvdXQgPDAg
KENocmlzKQp2Mzogb29wcwoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFs
LndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxl
LmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4gI3YxCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgg
ICB8ICA1ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuaCAgIHwg
IDUgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmggICAgfCAgNiAr
Ky0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgfCAyMyArKysr
KysrKysrKysrKysrKysrKystLQogNCBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Yy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgKaW5kZXgg
NzE0ZTk4OTJhYWZmLi41OTAxNTA2NjcyY2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Yy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Yy5oCkBAIC0xNzIsNiArMTcyLDExIEBAIGludCBpbnRlbF9ndWNfc3VzcGVuZChzdHJ1
Y3QgaW50ZWxfZ3VjICpndWMpOwogaW50IGludGVsX2d1Y19yZXN1bWUoc3RydWN0IGludGVsX2d1
YyAqZ3VjKTsKIHN0cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZ3VjX2FsbG9jYXRlX3ZtYShzdHJ1Y3Qg
aW50ZWxfZ3VjICpndWMsIHUzMiBzaXplKTsKIAorc3RhdGljIGlubGluZSBib29sIGludGVsX2d1
Y19pc19zdXBwb3J0ZWQoc3RydWN0IGludGVsX2d1YyAqZ3VjKQoreworCXJldHVybiBpbnRlbF91
Y19md19zdXBwb3J0ZWQoJmd1Yy0+ZncpOworfQorCiBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxf
Z3VjX2lzX3J1bm5pbmcoc3RydWN0IGludGVsX2d1YyAqZ3VjKQogewogCXJldHVybiBpbnRlbF91
Y19md19pc19ydW5uaW5nKCZndWMtPmZ3KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2h1Yy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
aHVjLmgKaW5kZXggNDQ2NTIwOWNlMjMzLi5hNmFlNTliOGNiNzcgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2h1Yy5oCkBAIC01NSw2ICs1NSwxMSBAQCBzdGF0aWMgaW5saW5lIGlu
dCBpbnRlbF9odWNfc2FuaXRpemUoc3RydWN0IGludGVsX2h1YyAqaHVjKQogCXJldHVybiAwOwog
fQogCitzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfaHVjX2lzX3N1cHBvcnRlZChzdHJ1Y3QgaW50
ZWxfaHVjICpodWMpCit7CisJcmV0dXJuIGludGVsX3VjX2Z3X3N1cHBvcnRlZCgmaHVjLT5mdyk7
Cit9CisKIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9odWNfaXNfYXV0aGVudGljYXRlZChzdHJ1
Y3QgaW50ZWxfaHVjICpodWMpCiB7CiAJcmV0dXJuIGludGVsX3VjX2Z3X2lzX3J1bm5pbmcoJmh1
Yy0+ZncpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmgKaW5kZXggNjZkOGIxZWU2
ZjFkLi5jZjZjNjBjZmZkZmIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuaApA
QCAtNTEsOCArNTEsNyBAQCBpbnQgaW50ZWxfdWNfcnVudGltZV9yZXN1bWUoc3RydWN0IGludGVs
X3VjICp1Yyk7CiAKIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF91Y19zdXBwb3J0c19ndWMoc3Ry
dWN0IGludGVsX3VjICp1YykKIHsKLQlHRU1fQlVHX09OKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9n
dWMgPCAwKTsKLQlyZXR1cm4gaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyA+IDA7CisJcmV0dXJu
IGludGVsX2d1Y19pc19zdXBwb3J0ZWQoJnVjLT5ndWMpOwogfQogCiBzdGF0aWMgaW5saW5lIGJv
b2wgaW50ZWxfdWNfc3VwcG9ydHNfZ3VjX3N1Ym1pc3Npb24oc3RydWN0IGludGVsX3VjICp1YykK
QEAgLTYzLDggKzYyLDcgQEAgc3RhdGljIGlubGluZSBib29sIGludGVsX3VjX3N1cHBvcnRzX2d1
Y19zdWJtaXNzaW9uKHN0cnVjdCBpbnRlbF91YyAqdWMpCiAKIHN0YXRpYyBpbmxpbmUgYm9vbCBp
bnRlbF91Y19zdXBwb3J0c19odWMoc3RydWN0IGludGVsX3VjICp1YykKIHsKLQlHRU1fQlVHX09O
KGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9ndWMgPCAwKTsKLQlyZXR1cm4gaTkxNV9tb2RwYXJhbXMu
ZW5hYmxlX2d1YyAmIEVOQUJMRV9HVUNfTE9BRF9IVUM7CisJcmV0dXJuIGludGVsX2h1Y19pc19z
dXBwb3J0ZWQoJnVjLT5odWMpOwogfQogCiAjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Y19mdy5jCmluZGV4IGFjOTFlM2VmZDAyYi4uNjUwYWQ2MDM3Yjc0IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKQEAgLTEzMiw2ICsxMzIsMjUgQEAg
X191Y19md19hdXRvX3NlbGVjdChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBlbnVtIGludGVs
X3BsYXRmb3JtIHAsIHU4IHJldikKIAkJCXVjX2Z3LT5wYXRoID0gTlVMTDsKIAkJfQogCX0KKwor
CS8qIFdlIGRvbid0IHdhbnQgdG8gZW5hYmxlIEd1Qy9IdUMgb24gcHJlLUdlbjExIGJ5IGRlZmF1
bHQgKi8KKwlpZiAoaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyA9PSAtMSAmJiBwIDwgSU5URUxf
SUNFTEFLRSkKKwkJdWNfZnctPnBhdGggPSBOVUxMOworfQorCitzdGF0aWMgY29uc3QgY2hhciAq
X19vdmVycmlkZV9ndWNfZmlybXdhcmVfcGF0aCh2b2lkKQoreworCWlmIChpOTE1X21vZHBhcmFt
cy5lbmFibGVfZ3VjICYgKEVOQUJMRV9HVUNfU1VCTUlTU0lPTiB8CisJCQkJCSBFTkFCTEVfR1VD
X0xPQURfSFVDKSkKKwkJcmV0dXJuIGk5MTVfbW9kcGFyYW1zLmd1Y19maXJtd2FyZV9wYXRoOwor
CXJldHVybiAiIjsKK30KKworc3RhdGljIGNvbnN0IGNoYXIgKl9fb3ZlcnJpZGVfaHVjX2Zpcm13
YXJlX3BhdGgodm9pZCkKK3sKKwlpZiAoaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyAmIEVOQUJM
RV9HVUNfTE9BRF9IVUMpCisJCXJldHVybiBpOTE1X21vZHBhcmFtcy5odWNfZmlybXdhcmVfcGF0
aDsKKwlyZXR1cm4gIiI7CiB9CiAKIHN0YXRpYyBib29sCkBAIC0xMzksMTAgKzE1OCwxMCBAQCBf
X3VjX2Z3X292ZXJyaWRlKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncpCiB7CiAJc3dpdGNoICh1
Y19mdy0+dHlwZSkgewogCWNhc2UgSU5URUxfVUNfRldfVFlQRV9HVUM6Ci0JCXVjX2Z3LT5wYXRo
ID0gaTkxNV9tb2RwYXJhbXMuZ3VjX2Zpcm13YXJlX3BhdGg7CisJCXVjX2Z3LT5wYXRoID0gX19v
dmVycmlkZV9ndWNfZmlybXdhcmVfcGF0aCgpOwogCQlicmVhazsKIAljYXNlIElOVEVMX1VDX0ZX
X1RZUEVfSFVDOgotCQl1Y19mdy0+cGF0aCA9IGk5MTVfbW9kcGFyYW1zLmh1Y19maXJtd2FyZV9w
YXRoOworCQl1Y19mdy0+cGF0aCA9IF9fb3ZlcnJpZGVfaHVjX2Zpcm13YXJlX3BhdGgoKTsKIAkJ
YnJlYWs7CiAJfQogCi0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
