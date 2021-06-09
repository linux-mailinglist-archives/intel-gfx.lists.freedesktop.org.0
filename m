Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 941793A0C78
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 08:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 557876E0E8;
	Wed,  9 Jun 2021 06:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FFD66E0F0;
 Wed,  9 Jun 2021 06:34:49 +0000 (UTC)
IronPort-SDR: KRHKNDur1eqLllg6PV6dKZNslBSRuSyTORkC4QJXzwq781r0hfxrZ3a8v4wdMV0gL3crOld7Dl
 Iac/azKB5kiA==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="268868878"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="268868878"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 23:34:49 -0700
IronPort-SDR: 3XNMiaRNqGnqwhCFvWHSODuOYSBdd0UcYUT9aLj54Vnt2daGV7h6WFfkDv9kDqH+/vl4srAHqe
 pWh9RRLfYmHA==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="482265769"
Received: from ekolpasx-mobl.ccr.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.109])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 23:34:47 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed,  9 Jun 2021 08:34:28 +0200
Message-Id: <20210609063436.284332-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915: Reference objects on the ww
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
w7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggfCA4ICsrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jICAgICAgICAgICAgfCA0ICsrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmgKaW5kZXggN2MwZWI0MjVjYjNiLi4xZmFmY2M4OWVjZWUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKQEAgLTE2OSwxMyArMTY5LDE3
IEBAIHN0YXRpYyBpbmxpbmUgaW50IF9faTkxNV9nZW1fb2JqZWN0X2xvY2soc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKIAllbHNlCiAJCXJldCA9IGRtYV9yZXN2X2xvY2sob2JqLT5i
YXNlLnJlc3YsIHd3ID8gJnd3LT5jdHggOiBOVUxMKTsKIAotCWlmICghcmV0ICYmIHd3KQorCWlm
ICghcmV0ICYmIHd3KSB7CisJCWk5MTVfZ2VtX29iamVjdF9nZXQob2JqKTsKIAkJbGlzdF9hZGRf
dGFpbCgmb2JqLT5vYmpfbGluaywgJnd3LT5vYmpfbGlzdCk7CisJfQogCWlmIChyZXQgPT0gLUVB
TFJFQURZKQogCQlyZXQgPSAwOwogCi0JaWYgKHJldCA9PSAtRURFQURMSykKKwlpZiAocmV0ID09
IC1FREVBRExLKSB7CisJCWk5MTVfZ2VtX29iamVjdF9nZXQob2JqKTsKIAkJd3ctPmNvbnRlbmRl
ZCA9IG9iajsKKwl9CiAKIAlyZXR1cm4gcmV0OwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5k
ZXggNTg5Mzg4ZGVjNDhhLi4zZjA2MGFiNThjNWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpA
QCAtMTIxOSw2ICsxMjE5LDcgQEAgc3RhdGljIHZvaWQgaTkxNV9nZW1fd3dfY3R4X3VubG9ja19h
bGwoc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3cpCiAJd2hpbGUgKChvYmogPSBsaXN0X2ZpcnN0
X2VudHJ5X29yX251bGwoJnd3LT5vYmpfbGlzdCwgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qs
IG9ial9saW5rKSkpIHsKIAkJbGlzdF9kZWwoJm9iai0+b2JqX2xpbmspOwogCQlpOTE1X2dlbV9v
YmplY3RfdW5sb2NrKG9iaik7CisJCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIAl9CiB9CiAK
QEAgLTEyMjYsNiArMTIyNyw3IEBAIHZvaWQgaTkxNV9nZW1fd3dfdW5sb2NrX3NpbmdsZShzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogewogCWxpc3RfZGVsKCZvYmotPm9ial9saW5r
KTsKIAlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CisJaTkxNV9nZW1fb2JqZWN0X3B1dChv
YmopOwogfQogCiB2b2lkIGk5MTVfZ2VtX3d3X2N0eF9maW5pKHN0cnVjdCBpOTE1X2dlbV93d19j
dHggKnd3KQpAQCAtMTI1MCw2ICsxMjUyLDggQEAgaW50IF9fbXVzdF9jaGVjayBpOTE1X2dlbV93
d19jdHhfYmFja29mZihzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dykKIAogCWlmICghcmV0KQog
CQlsaXN0X2FkZF90YWlsKCZ3dy0+Y29udGVuZGVkLT5vYmpfbGluaywgJnd3LT5vYmpfbGlzdCk7
CisJZWxzZQorCQlpOTE1X2dlbV9vYmplY3RfcHV0KHd3LT5jb250ZW5kZWQpOwogCiAJd3ctPmNv
bnRlbmRlZCA9IE5VTEw7CiAKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
