Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DA339F253
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 11:29:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13EDA6EB61;
	Tue,  8 Jun 2021 09:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A69826EB5F;
 Tue,  8 Jun 2021 09:29:03 +0000 (UTC)
IronPort-SDR: f/LsqrneOAIkNDTXre8aq/zwTXPAkcmaWN8xVbcugHKd3wTlMfzNUTj//CafST94Xk1n0pXI30
 SpeRlzhtIdFw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="226150949"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="226150949"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 02:29:03 -0700
IronPort-SDR: 3xpqC+8ivZPfIy1baRS4/OEeQKCwmebHkmaC72DLhsBSUwUYv2Ls95WOnGZBffmzGvGSxO3HGE
 f6Wkx8LZKd+w==
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="551544350"
Received: from mkayyal-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.115])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 02:29:01 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  8 Jun 2021 11:28:38 +0200
Message-Id: <20210608092846.64198-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210608092846.64198-1-thomas.hellstrom@linux.intel.com>
References: <20210608092846.64198-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Reference objects on the ww
 object list
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
Cc: matthew.auld@intel.com,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgdGhlIHd3IHRyYW5zYWN0aW9uIGVuZHBvaW50IGVhc2lseSBlbmQgdXAgZmFyIG91dC1v
Zi1zY29wZSBvZgp0aGUgb2JqZWN0cyBvbiB0aGUgd3cgb2JqZWN0IGxpc3QsIHBhcnRpY3VsYXJs
eSBmb3IgY29udGVuZGluZyBsb2NrCm9iamVjdHMsIG1ha2Ugc3VyZSB3ZSByZWZlcmVuY2Ugb2Jq
ZWN0cyBvbiB0aGUgbGlzdCBzbyB0aGV5IGRvbid0CmRpc2FwcGVhciB1bmRlciB1cy4KClRoaXMg
Y29tZXMgd2l0aCBhIHBlcmZvcm1hbmNlIHBlbmFsdHkgc28gaXQncyBiZWVuIGRlYmF0ZWQgd2hl
dGhlciB0aGlzCmlzIHJlYWxseSBuZWVkZWQuIEJ1dCBJIHRoaW5rIHRoaXMgaXMgbW90aXZhdGVk
IGJ5IHRoZSBmYWN0IHRoYXQgbG9ja2luZwppcyB0eXBpY2FsbHkgZGlmZmljdWx0IHRvIGdldCBy
aWdodCwgYW5kIHdoYXRldmVyIHdlIGNhbiBkbyB0byBtYWtlIGl0CnNpbXBsZXIgZm9yIGRldmVs
b3BlcnMgbW92aW5nIGZvcndhcmQgc2hvdWxkIGJlIGRvbmUsIHVubGVzcyB0aGUKcGVyZm9ybWFu
Y2UgaW1wYWN0IGlzIGZhciB0b28gaGlnaC4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ry
w7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggfCA4ICsrKysrKy0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgfCA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmgKaW5kZXggN2MwZWI0MjVjYjNiLi4xZmFmY2M4OWVjZWUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKQEAgLTE2OSwxMyAr
MTY5LDE3IEBAIHN0YXRpYyBpbmxpbmUgaW50IF9faTkxNV9nZW1fb2JqZWN0X2xvY2soc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAllbHNlCiAJCXJldCA9IGRtYV9yZXN2X2xvY2so
b2JqLT5iYXNlLnJlc3YsIHd3ID8gJnd3LT5jdHggOiBOVUxMKTsKIAotCWlmICghcmV0ICYmIHd3
KQorCWlmICghcmV0ICYmIHd3KSB7CisJCWk5MTVfZ2VtX29iamVjdF9nZXQob2JqKTsKIAkJbGlz
dF9hZGRfdGFpbCgmb2JqLT5vYmpfbGluaywgJnd3LT5vYmpfbGlzdCk7CisJfQogCWlmIChyZXQg
PT0gLUVBTFJFQURZKQogCQlyZXQgPSAwOwogCi0JaWYgKHJldCA9PSAtRURFQURMSykKKwlpZiAo
cmV0ID09IC1FREVBRExLKSB7CisJCWk5MTVfZ2VtX29iamVjdF9nZXQob2JqKTsKIAkJd3ctPmNv
bnRlbmRlZCA9IG9iajsKKwl9CiAKIAlyZXR1cm4gcmV0OwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMKaW5kZXggNTg5Mzg4ZGVjNDhhLi4zZjA2MGFiNThjNWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYwpAQCAtMTIxOSw2ICsxMjE5LDcgQEAgc3RhdGljIHZvaWQgaTkxNV9nZW1fd3dfY3R4X3Vu
bG9ja19hbGwoc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3cpCiAJd2hpbGUgKChvYmogPSBsaXN0
X2ZpcnN0X2VudHJ5X29yX251bGwoJnd3LT5vYmpfbGlzdCwgc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QsIG9ial9saW5rKSkpIHsKIAkJbGlzdF9kZWwoJm9iai0+b2JqX2xpbmspOwogCQlpOTE1
X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CisJCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIAl9
CiB9CiAKQEAgLTEyMjYsNiArMTIyNyw3IEBAIHZvaWQgaTkxNV9nZW1fd3dfdW5sb2NrX3Npbmds
ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogewogCWxpc3RfZGVsKCZvYmotPm9i
al9saW5rKTsKIAlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CisJaTkxNV9nZW1fb2JqZWN0
X3B1dChvYmopOwogfQogCiB2b2lkIGk5MTVfZ2VtX3d3X2N0eF9maW5pKHN0cnVjdCBpOTE1X2dl
bV93d19jdHggKnd3KQpAQCAtMTI1MCw2ICsxMjUyLDggQEAgaW50IF9fbXVzdF9jaGVjayBpOTE1
X2dlbV93d19jdHhfYmFja29mZihzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dykKIAogCWlmICgh
cmV0KQogCQlsaXN0X2FkZF90YWlsKCZ3dy0+Y29udGVuZGVkLT5vYmpfbGluaywgJnd3LT5vYmpf
bGlzdCk7CisJZWxzZQorCQlpOTE1X2dlbV9vYmplY3RfcHV0KHd3LT5jb250ZW5kZWQpOwogCiAJ
d3ctPmNvbnRlbmRlZCA9IE5VTEw7CiAKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
