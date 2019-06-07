Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 557F738618
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 10:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04260892BE;
	Fri,  7 Jun 2019 08:26:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DAA2892BE
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 08:26:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 01:26:02 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga008.jf.intel.com with ESMTP; 07 Jun 2019 01:26:01 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 09:25:56 +0100
Message-Id: <20190607082557.31670-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607082557.31670-1-tvrtko.ursulin@linux.intel.com>
References: <20190607082557.31670-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/5] drm/i915: Extract engine fault reset to a
 helper
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkp1c3QgdGlk
eWluZyB0aGUgZmxvdyBhIGJpdC4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNl
dC5jIHwgMTIgKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCmluZGV4IGRl
NTM5MjdjNTgzZi4uYTZlY2ZkYzczNWM0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yZXNldC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jl
c2V0LmMKQEAgLTExNjAsNiArMTE2MCwxMiBAQCBzdGF0aWMgdm9pZCBjbGVhcl9yZWdpc3Rlcihz
dHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsIGk5MTVfcmVnX3QgcmVnKQogCWludGVsX3VuY29y
ZV9ybXcodW5jb3JlLCByZWcsIDAsIDApOwogfQogCitzdGF0aWMgdm9pZCBnZW44X2NsZWFyX2Vu
Z2luZV9lcnJvcl9yZWdpc3RlcihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJ
R0VONl9SSU5HX0ZBVUxUX1JFR19STVcoZW5naW5lLCBSSU5HX0ZBVUxUX1ZBTElELCAwKTsKKwlH
RU42X1JJTkdfRkFVTFRfUkVHX1BPU1RJTkdfUkVBRChlbmdpbmUpOworfQorCiB2b2lkIGk5MTVf
Y2xlYXJfZXJyb3JfcmVnaXN0ZXJzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQkJ
CWludGVsX2VuZ2luZV9tYXNrX3QgZW5naW5lX21hc2spCiB7CkBAIC0xMTk0LDEwICsxMjAwLDgg
QEAgdm9pZCBpOTE1X2NsZWFyX2Vycm9yX3JlZ2lzdGVycyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKIAkJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCQllbnVtIGludGVs
X2VuZ2luZV9pZCBpZDsKIAotCQlmb3JfZWFjaF9lbmdpbmVfbWFza2VkKGVuZ2luZSwgaTkxNSwg
ZW5naW5lX21hc2ssIGlkKSB7Ci0JCQlHRU42X1JJTkdfRkFVTFRfUkVHX1JNVyhlbmdpbmUsIFJJ
TkdfRkFVTFRfVkFMSUQsIDApOwotCQkJR0VONl9SSU5HX0ZBVUxUX1JFR19QT1NUSU5HX1JFQUQo
ZW5naW5lKTsKLQkJfQorCQlmb3JfZWFjaF9lbmdpbmVfbWFza2VkKGVuZ2luZSwgaTkxNSwgZW5n
aW5lX21hc2ssIGlkKQorCQkJZ2VuOF9jbGVhcl9lbmdpbmVfZXJyb3JfcmVnaXN0ZXIoZW5naW5l
KTsKIAl9CiB9CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
