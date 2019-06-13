Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91773436BE
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD3B89A72;
	Thu, 13 Jun 2019 13:38:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB6D89A72
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:38:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 06:38:52 -0700
X-ExtLoop1: 1
Received: from aabuhatz-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.210])
 by orsmga008.jf.intel.com with ESMTP; 13 Jun 2019 06:38:44 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 14:35:20 +0100
Message-Id: <20190613133539.12620-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 09/28] drm/i915: Store backpointer to intel_gt in
 the engine
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkl0IHdpbGwg
Y29tZSB1c2VmdWwgaW4gdGhlIG5leHQgcGF0Y2guCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfdHlwZXMuaCB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCAzNWE5
Zjc1NGJjYjkuLmMyZDg3YzUwZGQ2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX2NzLmMKQEAgLTMxNiw2ICszMTYsNyBAQCBpbnRlbF9lbmdpbmVfc2V0dXAoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWVuZ2luZS0+aWQgPSBpZDsKIAllbmdpbmUt
Pm1hc2sgPSBCSVQoaWQpOwogCWVuZ2luZS0+aTkxNSA9IGRldl9wcml2OworCWVuZ2luZS0+Z3Qg
PSAmZGV2X3ByaXYtPmd0OwogCWVuZ2luZS0+dW5jb3JlID0gJmRldl9wcml2LT51bmNvcmU7CiAJ
X19zcHJpbnRfZW5naW5lX25hbWUoZW5naW5lLT5uYW1lLCBpbmZvKTsKIAllbmdpbmUtPmh3X2lk
ID0gZW5naW5lLT5ndWNfaWQgPSBpbmZvLT5od19pZDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKaW5kZXggMDEyMjM4NjQyMzdhLi4zNDNjNDQ1OWU4YTMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCkBAIC0z
NCw2ICszNCw3IEBAIHN0cnVjdCBkcm1faTkxNV9yZWdfdGFibGU7CiBzdHJ1Y3QgaTkxNV9nZW1f
Y29udGV4dDsKIHN0cnVjdCBpOTE1X3JlcXVlc3Q7CiBzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyOwor
c3RydWN0IGludGVsX2d0Owogc3RydWN0IGludGVsX3VuY29yZTsKIAogdHlwZWRlZiB1OCBpbnRl
bF9lbmdpbmVfbWFza190OwpAQCAtMjY2LDYgKzI2Nyw3IEBAIHN0cnVjdCBpbnRlbF9lbmdpbmVf
ZXhlY2xpc3RzIHsKIAogc3RydWN0IGludGVsX2VuZ2luZV9jcyB7CiAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTU7CisJc3RydWN0IGludGVsX2d0ICpndDsKIAlzdHJ1Y3QgaW50ZWxfdW5j
b3JlICp1bmNvcmU7CiAJY2hhciBuYW1lW0lOVEVMX0VOR0lORV9DU19NQVhfTkFNRV07CiAKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
