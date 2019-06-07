Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E1538616
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 10:26:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C2889C59;
	Fri,  7 Jun 2019 08:26:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE830890A2
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 08:26:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 01:26:00 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga008.jf.intel.com with ESMTP; 07 Jun 2019 01:25:59 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 09:25:54 +0100
Message-Id: <20190607082557.31670-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607082557.31670-1-tvrtko.ursulin@linux.intel.com>
References: <20190607082557.31670-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/5] drm/i915: Tidy engine mask types in hangcheck
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
bC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9oYW5nY2hlY2suYyB8IDYgKysr
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2hhbmdjaGVjay5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNrLmMKaW5kZXggM2E0ZDA5YjgwZmEw
Li4xNzRiYjBhNjAzMDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2hhbmdjaGVjay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2hhbmdjaGVj
ay5jCkBAIC0yMjMsOCArMjIzLDggQEAgc3RhdGljIHZvaWQgaGFuZ2NoZWNrX2FjY3VtdWxhdGVf
c2FtcGxlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIH0KIAogc3RhdGljIHZvaWQg
aGFuZ2NoZWNrX2RlY2xhcmVfaGFuZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKLQkJ
CQkgICB1bnNpZ25lZCBpbnQgaHVuZywKLQkJCQkgICB1bnNpZ25lZCBpbnQgc3R1Y2spCisJCQkJ
ICAgaW50ZWxfZW5naW5lX21hc2tfdCBodW5nLAorCQkJCSAgIGludGVsX2VuZ2luZV9tYXNrX3Qg
c3R1Y2spCiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCWludGVsX2VuZ2lu
ZV9tYXNrX3QgdG1wOwpAQCAtMjU5LDkgKzI1OSw5IEBAIHN0YXRpYyB2b2lkIGk5MTVfaGFuZ2No
ZWNrX2VsYXBzZWQoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9CiAJCWNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmRldl9wcml2
KSwKIAkJCSAgICAgZ3B1X2Vycm9yLmhhbmdjaGVja193b3JrLndvcmspOworCWludGVsX2VuZ2lu
ZV9tYXNrX3QgaHVuZyA9IDAsIHN0dWNrID0gMCwgd2VkZ2VkID0gMDsKIAlzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmU7CiAJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Ci0JdW5zaWduZWQg
aW50IGh1bmcgPSAwLCBzdHVjayA9IDAsIHdlZGdlZCA9IDA7CiAJaW50ZWxfd2FrZXJlZl90IHdh
a2VyZWY7CiAKIAlpZiAoIWk5MTVfbW9kcGFyYW1zLmVuYWJsZV9oYW5nY2hlY2spCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
