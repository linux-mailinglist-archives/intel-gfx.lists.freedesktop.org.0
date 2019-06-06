Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D93F3700F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 11:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8BE896AF;
	Thu,  6 Jun 2019 09:37:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52AF78961E
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 09:37:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 02:37:01 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga006.jf.intel.com with ESMTP; 06 Jun 2019 02:37:00 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 10:36:28 +0100
Message-Id: <20190606093639.9372-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
References: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/21] drm/i915: Move scheduler caps init to
 i915_gem_init
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoaXMgc3Rl
cCBpcyBtb3JlIGFib3V0IHRoZSBHRU0gYW5kIGxlc3MgYWJvdXQgdGhlIGhhcmR3YXJlIHNvIG1v
dmUgaXQgdG8KdGhlIG1vcmUgYXBwcm9wcmlhdGUgcGxhY2UuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDQ3MzlhNjMwN2Mz
Mi4uOGVlZTllY2YwYWRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTEzMTEsNyArMTMx
MSw2IEBAIGludCBpOTE1X2dlbV9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIAogCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KCZkZXZfcHJpdi0+dW5jb3JlLCBG
T1JDRVdBS0VfQUxMKTsKIAotCWludGVsX2VuZ2luZXNfc2V0X3NjaGVkdWxlcl9jYXBzKGRldl9w
cml2KTsKIAlyZXR1cm4gMDsKIAogY2xlYW51cF91YzoKQEAgLTE1NjcsNiArMTU2Niw4IEBAIGlu
dCBpOTE1X2dlbV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJZ290
byBlcnJfY29udGV4dDsKIAl9CiAKKwlpbnRlbF9lbmdpbmVzX3NldF9zY2hlZHVsZXJfY2Fwcyhk
ZXZfcHJpdik7CisKIAlpbnRlbF9pbml0X2d0X3Bvd2Vyc2F2ZShkZXZfcHJpdik7CiAKIAlyZXQg
PSBpbnRlbF91Y19pbml0KGRldl9wcml2KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
