Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F9F3B8A8
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 17:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B9B8918F;
	Mon, 10 Jun 2019 15:54:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6DC8918A
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 15:54:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 08:54:39 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.8.43])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 08:54:38 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 16:54:16 +0100
Message-Id: <20190610155419.23723-12-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
References: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 11/14] drm/i915: Consolidate some open coded mmio
 rmw
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlcGxhY2Ug
c29tZSBnZW42Lzcgb3BlbiBjb2RlZCBybXcgd2l0aCBpbnRlbF91bmNvcmVfcm13LgoKU2lnbmVk
LW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KUmV2aWV3
ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDQxICsrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCA3ZDBiN2E0N2Y3NjEuLjk3OTMw
NTM0M2FjMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTE2OTksMTMgKzE2
OTksMTAgQEAgc3RhdGljIHZvaWQgZ2VuN19wcGd0dF9lbmFibGUoc3RydWN0IGludGVsX2d0ICpn
dCkKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0X3RvX2k5MTUoZ3QpOwogCXN0
cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0X3RvX3VuY29yZShndCk7CiAJc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lOwotCXUzMiBlY29jaGssIGVjb2JpdHM7CiAJZW51bSBpbnRl
bF9lbmdpbmVfaWQgaWQ7CisJdTMyIGVjb2NoazsKIAotCWVjb2JpdHMgPSBpbnRlbF91bmNvcmVf
cmVhZCh1bmNvcmUsIEdBQ19FQ09fQklUUyk7Ci0JaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwK
LQkJCSAgIEdBQ19FQ09fQklUUywKLQkJCSAgIGVjb2JpdHMgfCBFQ09CSVRTX1BQR1RUX0NBQ0hF
NjRCKTsKKwlpbnRlbF91bmNvcmVfcm13KHVuY29yZSwgR0FDX0VDT19CSVRTLCAwLCBFQ09CSVRT
X1BQR1RUX0NBQ0hFNjRCKTsKIAogCWVjb2NoayA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwg
R0FNX0VDT0NISyk7CiAJaWYgKElTX0hBU1dFTEwoaTkxNSkpIHsKQEAgLTE3MjcsMjIgKzE3MjQs
MjEgQEAgc3RhdGljIHZvaWQgZ2VuN19wcGd0dF9lbmFibGUoc3RydWN0IGludGVsX2d0ICpndCkK
IHN0YXRpYyB2b2lkIGdlbjZfcHBndHRfZW5hYmxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAJ
c3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3RfdG9fdW5jb3JlKGd0KTsKLQl1MzIgZWNv
Y2hrLCBnYWJfY3RsLCBlY29iaXRzOwogCi0JZWNvYml0cyA9IGludGVsX3VuY29yZV9yZWFkKHVu
Y29yZSwgR0FDX0VDT19CSVRTKTsKLQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAotCQkJICAg
R0FDX0VDT19CSVRTLAotCQkJICAgZWNvYml0cyB8IEVDT0JJVFNfU05CX0JJVCB8IEVDT0JJVFNf
UFBHVFRfQ0FDSEU2NEIpOworCWludGVsX3VuY29yZV9ybXcodW5jb3JlLAorCQkJIEdBQ19FQ09f
QklUUywKKwkJCSAwLAorCQkJIEVDT0JJVFNfU05CX0JJVCB8IEVDT0JJVFNfUFBHVFRfQ0FDSEU2
NEIpOwogCi0JZ2FiX2N0bCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0FCX0NUTCk7Ci0J
aW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKLQkJCSAgIEdBQl9DVEwsCi0JCQkgICBnYWJfY3Rs
IHwgR0FCX0NUTF9DT05UX0FGVEVSX1BBR0VGQVVMVCk7CisJaW50ZWxfdW5jb3JlX3Jtdyh1bmNv
cmUsCisJCQkgR0FCX0NUTCwKKwkJCSAwLAorCQkJIEdBQl9DVExfQ09OVF9BRlRFUl9QQUdFRkFV
TFQpOwogCi0JZWNvY2hrID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHQU1fRUNPQ0hLKTsK
LQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAotCQkJICAgR0FNX0VDT0NISywKLQkJCSAgIGVj
b2NoayB8IEVDT0NIS19TTkJfQklUIHwgRUNPQ0hLX1BQR1RUX0NBQ0hFNjRCKTsKKwlpbnRlbF91
bmNvcmVfcm13KHVuY29yZSwKKwkJCSBHQU1fRUNPQ0hLLAorCQkJIDAsCisJCQkgRUNPQ0hLX1NO
Ql9CSVQgfCBFQ09DSEtfUFBHVFRfQ0FDSEU2NEIpOwogCiAJaWYgKEhBU19QUEdUVCh1bmNvcmVf
dG9faTkxNSh1bmNvcmUpKSkgLyogbWF5IGJlIGRpc2FibGVkIGZvciBWVC1kICovCiAJCWludGVs
X3VuY29yZV93cml0ZSh1bmNvcmUsCkBAIC0yMjM5LDExICsyMjM1LDEwIEBAIHN0YXRpYyB2b2lk
IGd0dF93cml0ZV93b3JrYXJvdW5kcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCSAqLwogCWlmIChI
QVNfUEFHRV9TSVpFUyhpOTE1LCBJOTE1X0dUVF9QQUdFX1NJWkVfNjRLKSAmJgogCSAgICBJTlRF
TF9HRU4oaTkxNSkgPD0gMTApCi0JCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCi0JCQkJICAg
R0VOOF9HQU1XX0VDT19ERVZfUldfSUEsCi0JCQkJICAgaW50ZWxfdW5jb3JlX3JlYWQodW5jb3Jl
LAotCQkJCQkJICAgICBHRU44X0dBTVdfRUNPX0RFVl9SV19JQSkgfAotCQkJCSAgIEdBTVdfRUNP
X0VOQUJMRV82NEtfSVBTX0ZJRUxEKTsKKwkJaW50ZWxfdW5jb3JlX3Jtdyh1bmNvcmUsCisJCQkJ
IEdFTjhfR0FNV19FQ09fREVWX1JXX0lBLAorCQkJCSAwLAorCQkJCSBHQU1XX0VDT19FTkFCTEVf
NjRLX0lQU19GSUVMRCk7CiB9CiAKIGludCBpOTE1X3BwZ3R0X2luaXRfaHcoc3RydWN0IGludGVs
X2d0ICpndCkKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
