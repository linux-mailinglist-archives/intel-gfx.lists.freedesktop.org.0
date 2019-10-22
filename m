Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D763E0107
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 11:47:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 758526E4DD;
	Tue, 22 Oct 2019 09:47:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C70F36E4D0
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 09:47:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 02:47:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="281235356"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.81.75])
 by orsmga001.jf.intel.com with ESMTP; 22 Oct 2019 02:47:32 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 10:47:16 +0100
Message-Id: <20191022094726.3001-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
References: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/12] drm/i915: Pass intel_gt to
 intel_setup_engine_capabilities
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkVuZ2luZXMg
YmVsb25nIHRvIHRoZSBHVCBzbyBtYWtlIGl0IGluZGljYXRpdmUgaW4gdGhlIEFQSS4KClNpZ25l
ZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCA2ICsrKy0tLQogMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IDczNTAzN2YxMWNjNS4uYTQ2YmEy
NGJhMmUxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
Y3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwpAQCAt
MzcwLDEyICszNzAsMTIgQEAgc3RhdGljIHZvaWQgX19zZXR1cF9lbmdpbmVfY2FwYWJpbGl0aWVz
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAl9CiB9CiAKLXN0YXRpYyB2b2lkIGlu
dGVsX3NldHVwX2VuZ2luZV9jYXBhYmlsaXRpZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCitzdGF0aWMgdm9pZCBpbnRlbF9zZXR1cF9lbmdpbmVfY2FwYWJpbGl0aWVzKHN0cnVjdCBp
bnRlbF9ndCAqZ3QpCiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCWVudW0g
aW50ZWxfZW5naW5lX2lkIGlkOwogCi0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQp
CisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKQogCQlfX3NldHVwX2VuZ2luZV9jYXBh
YmlsaXRpZXMoZW5naW5lKTsKIH0KIApAQCAtNDM5LDcgKzQzOSw3IEBAIGludCBpbnRlbF9lbmdp
bmVzX2luaXRfbW1pbyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCiAJaW50ZWxfZ3RfY2hlY2tfYW5k
X2NsZWFyX2ZhdWx0cyhndCk7CiAKLQlpbnRlbF9zZXR1cF9lbmdpbmVfY2FwYWJpbGl0aWVzKGk5
MTUpOworCWludGVsX3NldHVwX2VuZ2luZV9jYXBhYmlsaXRpZXMoZ3QpOwogCiAJcmV0dXJuIDA7
CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
