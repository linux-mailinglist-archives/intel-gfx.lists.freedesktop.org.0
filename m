Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C152651A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 15:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD76C89AC6;
	Wed, 22 May 2019 13:51:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC1C89A98;
 Wed, 22 May 2019 13:51:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 06:51:11 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 22 May 2019 06:51:10 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 14:50:55 +0100
Message-Id: <20190522135104.26930-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
References: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI i-g-t 05/14] lib: igt_dummyload: use
 for_each_context_engine()
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpXaXRoIHRoZSBuZXcgZ2V0
cGFyYW0vc2V0cGFyYW0gYXBpLCBlbmdpbmVzIGFyZSBtYXBwZWQgdG8KY29udGV4dC4gVXNlIGZv
cl9lYWNoX2NvbnRleHRfZW5naW5lKCkgdG8gbG9vcCB0aHJvdWdoIGV4aXN0aW5nCmVuZ2luZXMu
CgpTdWdnZXN0ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBsaWIv
aWd0X2R1bW15bG9hZC5jIHwgMjkgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2xpYi9pZ3RfZHVtbXlsb2FkLmMgYi9saWIvaWd0X2R1bW15bG9hZC5jCmluZGV4IDE1ZDY0ZmFk
YzExNS4uMWUxMWNjZDNkZTMzIDEwMDY0NAotLS0gYS9saWIvaWd0X2R1bW15bG9hZC5jCisrKyBi
L2xpYi9pZ3RfZHVtbXlsb2FkLmMKQEAgLTM5LDYgKzM5LDcgQEAKICNpbmNsdWRlICJpb2N0bF93
cmFwcGVycy5oIgogI2luY2x1ZGUgInN3X3N5bmMuaCIKICNpbmNsdWRlICJpZ3RfdmdlbS5oIgor
I2luY2x1ZGUgImk5MTUvZ2VtX2VuZ2luZV90b3BvbG9neS5oIgogI2luY2x1ZGUgImk5MTUvZ2Vt
X21tYW4uaCIKIAogLyoqCkBAIC03Nyw3ICs3OCw3IEBAIGVtaXRfcmVjdXJzaXZlX2JhdGNoKGln
dF9zcGluX3QgKnNwaW4sCiAJc3RydWN0IGRybV9pOTE1X2dlbV9yZWxvY2F0aW9uX2VudHJ5IHJl
bG9jc1syXSwgKnI7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiAqZXhlY2J1ZjsK
IAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqb2JqOwotCXVuc2lnbmVkIGludCBl
bmdpbmVzWzE2XTsKKwl1bnNpZ25lZCBpbnQgZmxhZ3NbR0VNX01BWF9FTkdJTkVTXTsKIAl1bnNp
Z25lZCBpbnQgbmVuZ2luZTsKIAlpbnQgZmVuY2VfZmQgPSAtMTsKIAl1aW50MzJfdCAqY3MsICpi
YXRjaDsKQEAgLTg1LDE3ICs4NiwxNyBAQCBlbWl0X3JlY3Vyc2l2ZV9iYXRjaChpZ3Rfc3Bpbl90
ICpzcGluLAogCiAJbmVuZ2luZSA9IDA7CiAJaWYgKG9wdHMtPmVuZ2luZSA9PSBBTExfRU5HSU5F
UykgewotCQl1bnNpZ25lZCBpbnQgZW5naW5lOworCQlzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2Vu
Z2luZTIgKmVuZ2luZTsKIAotCQlmb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUoZmQsIGVuZ2luZSkg
eworCQlmb3JfZWFjaF9jb250ZXh0X2VuZ2luZShmZCwgb3B0cy0+Y3R4LCBlbmdpbmUpIHsKIAkJ
CWlmIChvcHRzLT5mbGFncyAmIElHVF9TUElOX1BPTExfUlVOICYmCi0JCQkgICAgIWdlbV9jYW5f
c3RvcmVfZHdvcmQoZmQsIGVuZ2luZSkpCisJCQkgICAgIWdlbV9jbGFzc19jYW5fc3RvcmVfZHdv
cmQoZmQsIGVuZ2luZS0+Y2xhc3MpKQogCQkJCWNvbnRpbnVlOwogCi0JCQllbmdpbmVzW25lbmdp
bmUrK10gPSBlbmdpbmU7CisJCQlmbGFnc1tuZW5naW5lKytdID0gZW5naW5lLT5mbGFnczsKIAkJ
fQogCX0gZWxzZSB7Ci0JCWVuZ2luZXNbbmVuZ2luZSsrXSA9IG9wdHMtPmVuZ2luZTsKKwkJZmxh
Z3NbbmVuZ2luZSsrXSA9IG9wdHMtPmVuZ2luZTsKIAl9CiAJaWd0X3JlcXVpcmUobmVuZ2luZSk7
CiAKQEAgLTIzNyw3ICsyMzgsNyBAQCBlbWl0X3JlY3Vyc2l2ZV9iYXRjaChpZ3Rfc3Bpbl90ICpz
cGluLAogCiAJZm9yIChpID0gMDsgaSA8IG5lbmdpbmU7IGkrKykgewogCQlleGVjYnVmLT5mbGFn
cyAmPSB+RU5HSU5FX01BU0s7Ci0JCWV4ZWNidWYtPmZsYWdzIHw9IGVuZ2luZXNbaV07CisJCWV4
ZWNidWYtPmZsYWdzIHw9IGZsYWdzW2ldOwogCiAJCWdlbV9leGVjYnVmX3dyKGZkLCBleGVjYnVm
KTsKIApAQCAtMzE2LDkgKzMxNywxOSBAQCBpZ3Rfc3Bpbl9mYWN0b3J5KGludCBmZCwgY29uc3Qg
c3RydWN0IGlndF9zcGluX2ZhY3RvcnkgKm9wdHMpCiAJaWd0X3JlcXVpcmVfZ2VtKGZkKTsKIAog
CWlmIChvcHRzLT5lbmdpbmUgIT0gQUxMX0VOR0lORVMpIHsKLQkJZ2VtX3JlcXVpcmVfcmluZyhm
ZCwgb3B0cy0+ZW5naW5lKTsKKwkJc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyIGU7CisJ
CWludCBjbGFzczsKKworCQlpZiAoIWdlbV9jb250ZXh0X2xvb2t1cF9lbmdpbmUoZmQsIG9wdHMt
PmVuZ2luZSwKKwkJCQkJICAgICAgIG9wdHMtPmN0eCwgJmUpKSB7CisJCQljbGFzcyA9IGUuY2xh
c3M7CisJCX0gZWxzZSB7CisJCQlnZW1fcmVxdWlyZV9yaW5nKGZkLCBvcHRzLT5lbmdpbmUpOwor
CQkJY2xhc3MgPSBnZW1fZXhlY2J1Zl9mbGFnc190b19lbmdpbmVfY2xhc3Mob3B0cy0+ZW5naW5l
KTsKKwkJfQorCiAJCWlmIChvcHRzLT5mbGFncyAmIElHVF9TUElOX1BPTExfUlVOKQotCQkJaWd0
X3JlcXVpcmUoZ2VtX2Nhbl9zdG9yZV9kd29yZChmZCwgb3B0cy0+ZW5naW5lKSk7CisJCQlpZ3Rf
cmVxdWlyZShnZW1fY2xhc3NfY2FuX3N0b3JlX2R3b3JkKGZkLCBjbGFzcykpOwogCX0KIAogCXNw
aW4gPSBzcGluX2NyZWF0ZShmZCwgb3B0cyk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
