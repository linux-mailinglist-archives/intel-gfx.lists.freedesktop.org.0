Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6705E010B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 11:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC91A6E4EA;
	Tue, 22 Oct 2019 09:47:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57E516E4E3
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 09:47:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 02:47:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="281235412"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.81.75])
 by orsmga001.jf.intel.com with ESMTP; 22 Oct 2019 02:47:41 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 10:47:24 +0100
Message-Id: <20191022094726.3001-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
References: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/12] drm/i915/selftests: Use GT engines in
 igt_live_test
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkZyZWVzIHVw
IHR3byBjYWxsIHNpdGVzIGZyb20gcGFzc2luZyBpOTE1IHRvIGZvcl9lYWNoX2VuZ2luZS4KClNp
Z25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9saXZlX3Rlc3QuYyB8IDcgKysr
Ky0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2xpdmVfdGVzdC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9saXZlX3Rlc3QuYwppbmRleCA4
MTBiNjAxMDBjMmMuLmMxMzAwMTBhNzAzMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL2lndF9saXZlX3Rlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaWd0X2xpdmVfdGVzdC5jCkBAIC0xNiw2ICsxNiw3IEBAIGludCBpZ3RfbGl2ZV90
ZXN0X2JlZ2luKHN0cnVjdCBpZ3RfbGl2ZV90ZXN0ICp0LAogCQkJY29uc3QgY2hhciAqZnVuYywK
IAkJCWNvbnN0IGNoYXIgKm5hbWUpCiB7CisJc3RydWN0IGludGVsX2d0ICpndCA9ICZpOTE1LT5n
dDsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CiAJZW51bSBpbnRlbF9lbmdpbmVf
aWQgaWQ7CiAJaW50IGVycjsKQEAgLTI0LDcgKzI1LDcgQEAgaW50IGlndF9saXZlX3Rlc3RfYmVn
aW4oc3RydWN0IGlndF9saXZlX3Rlc3QgKnQsCiAJdC0+ZnVuYyA9IGZ1bmM7CiAJdC0+bmFtZSA9
IG5hbWU7CiAKLQllcnIgPSBpbnRlbF9ndF93YWl0X2Zvcl9pZGxlKCZpOTE1LT5ndCwgTUFYX1ND
SEVEVUxFX1RJTUVPVVQpOworCWVyciA9IGludGVsX2d0X3dhaXRfZm9yX2lkbGUoZ3QsIE1BWF9T
Q0hFRFVMRV9USU1FT1VUKTsKIAlpZiAoZXJyKSB7CiAJCXByX2VycigiJXMoJXMpOiBmYWlsZWQg
dG8gaWRsZSBiZWZvcmUsIHdpdGggZXJyPSVkISIsCiAJCSAgICAgICBmdW5jLCBuYW1lLCBlcnIp
OwpAQCAtMzMsNyArMzQsNyBAQCBpbnQgaWd0X2xpdmVfdGVzdF9iZWdpbihzdHJ1Y3QgaWd0X2xp
dmVfdGVzdCAqdCwKIAogCXQtPnJlc2V0X2dsb2JhbCA9IGk5MTVfcmVzZXRfY291bnQoJmk5MTUt
PmdwdV9lcnJvcik7CiAKLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBpZCkKKwlmb3Jf
ZWFjaF9lbmdpbmUoZW5naW5lLCBndCwgaWQpCiAJCXQtPnJlc2V0X2VuZ2luZVtpZF0gPQogCQkJ
aTkxNV9yZXNldF9lbmdpbmVfY291bnQoJmk5MTUtPmdwdV9lcnJvciwgZW5naW5lKTsKIApAQCAt
NTYsNyArNTcsNyBAQCBpbnQgaWd0X2xpdmVfdGVzdF9lbmQoc3RydWN0IGlndF9saXZlX3Rlc3Qg
KnQpCiAJCXJldHVybiAtRUlPOwogCX0KIAotCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUs
IGlkKSB7CisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgJmk5MTUtPmd0LCBpZCkgewogCQlpZiAo
dC0+cmVzZXRfZW5naW5lW2lkXSA9PQogCQkgICAgaTkxNV9yZXNldF9lbmdpbmVfY291bnQoJmk5
MTUtPmdwdV9lcnJvciwgZW5naW5lKSkKIAkJCWNvbnRpbnVlOwotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
