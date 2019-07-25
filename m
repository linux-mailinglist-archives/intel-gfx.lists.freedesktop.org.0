Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D947D74E84
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 14:51:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D0D689CC9;
	Thu, 25 Jul 2019 12:51:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCBB389CC9
 for <Intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 12:51:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 05:51:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,306,1559545200"; d="scan'208";a="253922059"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.1.47])
 by orsmga001.jf.intel.com with ESMTP; 25 Jul 2019 05:51:00 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 13:50:56 +0100
Message-Id: <20190725125056.11942-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Do not rely on for loop caching the
 mask
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCmZvcl9lYWNo
X2VuZ2luZV9tYXNrZWQgY2FjaGVzIHRoZSBlbmdpbmUgbWFzayBidXQgd2hhdCBkb2VzIHRoZSBj
YWxsZXIKa25vdy4KCkNhY2hlIGl0IGV4cGxpY2l0bHkgZm9yIGNsYXJpdHkgYW5kIHdoaWxlIGF0
IGl0IGNvcnJlY3QgdGhlIHR5cGUgdG8gbWF0Y2guCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUu
YyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCmluZGV4IDEzZjMwNGEyOWZjOC4uOTA4
MzYzNGE5MDI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKQEAgLTM0NiwxMiArMzQ2
LDEyIEBAIGludCBpOTE1X2FjdGl2ZV9hY3F1aXJlX3ByZWFsbG9jYXRlX2JhcnJpZXIoc3RydWN0
IGk5MTVfYWN0aXZlICpyZWYsCiAJCQkJCSAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBlbmdpbmUtPmk5MTU7CisJ
aW50ZWxfZW5naW5lX21hc2tfdCB0bXAsIG1hc2sgPSBlbmdpbmUtPm1hc2s7CiAJc3RydWN0IGxs
aXN0X25vZGUgKnBvcywgKm5leHQ7Ci0JdW5zaWduZWQgbG9uZyB0bXA7CiAJaW50IGVycjsKIAot
CUdFTV9CVUdfT04oIWVuZ2luZS0+bWFzayk7Ci0JZm9yX2VhY2hfZW5naW5lX21hc2tlZChlbmdp
bmUsIGk5MTUsIGVuZ2luZS0+bWFzaywgdG1wKSB7CisJR0VNX0JVR19PTighbWFzayk7CisJZm9y
X2VhY2hfZW5naW5lX21hc2tlZChlbmdpbmUsIGk5MTUsIG1hc2ssIHRtcCkgewogCQlzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqa2N0eCA9IGVuZ2luZS0+a2VybmVsX2NvbnRleHQ7CiAJCXN0cnVjdCBh
Y3RpdmVfbm9kZSAqbm9kZTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
