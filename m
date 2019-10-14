Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F80AD6153
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 13:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5528E6E288;
	Mon, 14 Oct 2019 11:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0668A6E282
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 11:30:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 04:30:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185465882"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga007.jf.intel.com with ESMTP; 14 Oct 2019 04:30:46 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 16:31:19 +0530
Message-Id: <20191014110122.31923-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191014110122.31923-1-vandita.kulkarni@intel.com>
References: <20191014110122.31923-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 4/7] drm/i915/dsi: Helper to find dsi encoder in
 cmd mode
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWFkaGF2IENoYXVoYW4gPG1hZGhhdi5jaGF1aGFuQGludGVsLmNvbT4KClRoaXMgcGF0
Y2ggYWRkcyBhIGhlbHBlciBmdW5jdGlvbiB0byBmaW5kIGVuY29kZXIKaWYgRFNJIGlzIG9wZXJh
dGluZyBpbiBjb21tYW5kIG1vZGUuIFRoaXMgZnVuY3Rpb24Kd2lsbCBiZSB1c2VkIHdoaWxlIGVu
YWJsaW5nL2Rpc2FibGluZyBURSBpbnRlcnJ1cHRzCmZvciBEU0kuCgpTaWduZWQtb2ZmLWJ5OiBN
YWRoYXYgQ2hhdWhhbiA8bWFkaGF2LmNoYXVoYW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBW
YW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgIHwgMTcgKysrKysrKysrKysrKysrKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNpLmggfCAgMyArKysKIDIgZmls
ZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
Y2xfZHNpLmMKaW5kZXggNWRkOWVlYmFiNmIxLi44Nzc3NDY0MTZlNTIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC03Myw2ICs3MywyMyBAQCBzdGF0aWMgZW51bSB0
cmFuc2NvZGVyIGRzaV9wb3J0X3RvX3RyYW5zY29kZXIoZW51bSBwb3J0IHBvcnQpCiAJCXJldHVy
biBUUkFOU0NPREVSX0RTSV8xOwogfQogCitzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZ2VuMTFfZHNp
X2ZpbmRfY21kX21vZGVfZW5jb2RlcihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKK3sKKwlzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7CisJc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXI7CisJc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpOworCisJZm9yX2VhY2hf
ZW5jb2Rlcl9vbl9jcnRjKGRldiwgJmNydGMtPmJhc2UsIGVuY29kZXIpIHsKKwkJaWYgKGVuY29k
ZXItPnR5cGUgIT0gSU5URUxfT1VUUFVUX0RTSSkKKwkJCWNvbnRpbnVlOworCQlpbnRlbF9kc2kg
PSBlbmNfdG9faW50ZWxfZHNpKCZlbmNvZGVyLT5iYXNlKTsKKwkJaWYgKGludGVsX2RzaS0+b3Bl
cmF0aW9uX21vZGUgPT0gSU5URUxfRFNJX0NPTU1BTkRfTU9ERSkKKwkJCXJldHVybiBlbmNvZGVy
OworCX0KKworCXJldHVybiBOVUxMOworfQorCiBzdGF0aWMgdm9pZCB3YWl0X2Zvcl9jbWRzX2Rp
c3BhdGNoZWRfdG9fcGFuZWwoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiB7CiAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRl
dik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaS5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2kuaAppbmRleCBiMTViZTU4
MTQ1OTkuLjA3MWRhZDdlZTA0YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2kuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzaS5oCkBAIC0yMDEsNiArMjAxLDkgQEAgdTMyIGJ4dF9kc2lfZ2V0X3BjbGsoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCSAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNv
bmZpZyk7CiB2b2lkIGJ4dF9kc2lfcmVzZXRfY2xvY2tzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLCBlbnVtIHBvcnQgcG9ydCk7CiAKKy8qIGljbF9kc2kuYyAqLworc3RydWN0IGludGVs
X2VuY29kZXIgKmdlbjExX2RzaV9maW5kX2NtZF9tb2RlX2VuY29kZXIoc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpOworCiAvKiBpbnRlbF9kc2lfdmJ0LmMgKi8KIGJvb2wgaW50ZWxfZHNpX3ZidF9p
bml0KHN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSwgdTE2IHBhbmVsX2lkKTsKIHZvaWQgaW50
ZWxfZHNpX3ZidF9leGVjX3NlcXVlbmNlKHN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSwKLS0g
CjIuMjEuMC41LmdhZWI1ODJhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
