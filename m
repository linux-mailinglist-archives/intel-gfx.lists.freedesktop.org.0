Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 329F7E010A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 11:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 774376E4E8;
	Tue, 22 Oct 2019 09:47:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 461826E4E3
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 09:47:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 02:47:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="281235400"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.81.75])
 by orsmga001.jf.intel.com with ESMTP; 22 Oct 2019 02:47:40 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 10:47:23 +0100
Message-Id: <20191022094726.3001-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
References: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/12] drm/i915/selftests: Use GT engines in
 mock_gem_device
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkp1c3QgZnJl
ZWluZyB1cCB0d28gbW9yZSBjYWxsIHNpdGVzIGZyb20gcGFzc2luZyBpbiBpOTE1IHRvCmZvcl9l
YWNoX2VuZ2luZS4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2Vt
X2RldmljZS5jIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvbW9ja19nZW1fZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9j
a19nZW1fZGV2aWNlLmMKaW5kZXggY2I4YzNhNTAxY2M3Li4xM2QwMzgwYzA4YjUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKQEAgLTQw
LDE0ICs0MCwxNCBAQAogCiB2b2lkIG1vY2tfZGV2aWNlX2ZsdXNoKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQogeworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSAmaTkxNS0+Z3Q7CiAJc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwog
CiAJZG8gewotCQlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1LCBpZCkKKwkJZm9yX2VhY2hf
ZW5naW5lKGVuZ2luZSwgZ3QsIGlkKQogCQkJbW9ja19lbmdpbmVfZmx1c2goZW5naW5lKTsKLQl9
IHdoaWxlIChpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHNfdGltZW91dCgmaTkxNS0+Z3QsCi0JCQkJ
CQkgIE1BWF9TQ0hFRFVMRV9USU1FT1VUKSk7CisJfSB3aGlsZSAoaW50ZWxfZ3RfcmV0aXJlX3Jl
cXVlc3RzX3RpbWVvdXQoZ3QsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKSk7CiB9CiAKIHN0YXRpYyB2
b2lkIG1vY2tfZGV2aWNlX3JlbGVhc2Uoc3RydWN0IGRybV9kZXZpY2UgKmRldikKQEAgLTYwLDcg
KzYwLDcgQEAgc3RhdGljIHZvaWQgbW9ja19kZXZpY2VfcmVsZWFzZShzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2KQogCiAJaTkxNV9nZW1fZHJhaW5fd29ya3F1ZXVlKGk5MTUpOwogCi0JZm9yX2VhY2hf
ZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpCisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgJmk5MTUt
Pmd0LCBpZCkKIAkJbW9ja19lbmdpbmVfZnJlZShlbmdpbmUpOwogCWk5MTVfZ2VtX2RyaXZlcl9y
ZWxlYXNlX19jb250ZXh0cyhpOTE1KTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
