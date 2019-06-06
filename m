Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EDD37006
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 11:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFF8889402;
	Thu,  6 Jun 2019 09:36:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0323893ED
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 09:36:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 02:36:49 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga006.jf.intel.com with ESMTP; 06 Jun 2019 02:36:48 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 10:36:20 +0100
Message-Id: <20190606093639.9372-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
References: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/21] drm/i915: Tidy engine mask types in
 hangcheck
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCldlIGNhbiB1
c2UgaW50ZWxfZW5naW5lX21hc2tfdCB0byBhbGlnbiB3aXRoIHRoZSByZXN0IG9mIHRoZSBjb2Rl
YmFzZS4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNrLmMgfCA2
ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2hhbmdjaGVjay5jCmluZGV4IDNhNGQwOWI4
MGZhMC4uMTc0YmIwYTYwMzA5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9oYW5nY2hlY2suYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9oYW5n
Y2hlY2suYwpAQCAtMjIzLDggKzIyMyw4IEBAIHN0YXRpYyB2b2lkIGhhbmdjaGVja19hY2N1bXVs
YXRlX3NhbXBsZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiB9CiAKIHN0YXRpYyB2
b2lkIGhhbmdjaGVja19kZWNsYXJlX2hhbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
Ci0JCQkJICAgdW5zaWduZWQgaW50IGh1bmcsCi0JCQkJICAgdW5zaWduZWQgaW50IHN0dWNrKQor
CQkJCSAgIGludGVsX2VuZ2luZV9tYXNrX3QgaHVuZywKKwkJCQkgICBpbnRlbF9lbmdpbmVfbWFz
a190IHN0dWNrKQogewogCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKIAlpbnRlbF9l
bmdpbmVfbWFza190IHRtcDsKQEAgLTI1OSw5ICsyNTksOSBAQCBzdGF0aWMgdm9pZCBpOTE1X2hh
bmdjaGVja19lbGFwc2VkKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPQogCQljb250YWluZXJfb2Yod29yaywgdHlwZW9mKCpkZXZf
cHJpdiksCiAJCQkgICAgIGdwdV9lcnJvci5oYW5nY2hlY2tfd29yay53b3JrKTsKKwlpbnRlbF9l
bmdpbmVfbWFza190IGh1bmcgPSAwLCBzdHVjayA9IDAsIHdlZGdlZCA9IDA7CiAJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwotCXVuc2ln
bmVkIGludCBodW5nID0gMCwgc3R1Y2sgPSAwLCB3ZWRnZWQgPSAwOwogCWludGVsX3dha2VyZWZf
dCB3YWtlcmVmOwogCiAJaWYgKCFpOTE1X21vZHBhcmFtcy5lbmFibGVfaGFuZ2NoZWNrKQotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
