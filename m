Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F44B0FBE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 15:23:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C39DB6ED46;
	Thu, 12 Sep 2019 13:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0ABD6ED46
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 13:23:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18464633-1500050 
 for multiple; Thu, 12 Sep 2019 14:23:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 14:23:13 +0100
Message-Id: <20190912132313.12751-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190912131800.12420-1-chris@chris-wilson.co.uk>
References: <20190912131800.12420-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Disable preemption while being
 debugged
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

V2Ugc2VlIGZhaWx1cmVzIHdoZXJlIHRoZSBjb250ZXh0IGNvbnRpbnVlcyBleGVjdXRpbmcgcGFz
dCBhCnByZWVtcHRpb24gZXZlbnQsIGV2ZW50dWFsbHkgbGVhZGluZyB0byBzaXR1YXRpb25zIHdo
ZXJlIGEgcmVxdWVzdCBoYXMKZXhlY3V0ZWQgYmVmb3JlIHdlIGhhdmUgZXZlbnQgc3VibWl0dGVk
IGl0IHRvIEhXISBJdCBzZWVtcyBsaWtlIHRnbCBpcwppZ25vcmluZyBvdXIgUklOR19UQUlMIHVw
ZGF0ZXMsIGJ1dCBtb3JlIGxpa2VseSBpcyB0aGF0IHRoZXJlIGlzIGEKbWlzc2luZyB1cGRhdGUg
cmVxdWlyZWQgZm9yIG91ciBzZW1hcGhvcmUgd2FpdHMgYXJvdW5kIHByZWVtcHRpb24uCgp2Mjog
QW5kIGRpc2FibGUgaW50ZXJuYWwgc2VtYXBob3JlIHVzYWdlCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1p
a2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIHwgMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgICAg
IHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKaW5kZXggNDdkNzY2Y2NlYTcxLi5hM2YwZTQ5OTk3NDQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yOTM5LDYgKzI5MzksOSBAQCB2b2lkIGludGVs
X2V4ZWNsaXN0c19zZXRfZGVmYXVsdF9zdWJtaXNzaW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKIAkJCWVuZ2luZS0+ZmxhZ3MgfD0gSTkxNV9FTkdJTkVfSEFTX1BSRUVNUFRJT047
CiAJfQogCisJaWYgKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpID49IDEyKSAvKiBYWFggZGlzYWJs
ZWQgZm9yIGRlYnVnZ2luZyAqLworCQllbmdpbmUtPmZsYWdzICY9IH5JOTE1X0VOR0lORV9IQVNf
U0VNQVBIT1JFUzsKKwogCWlmIChlbmdpbmUtPmNsYXNzICE9IENPUFlfRU5HSU5FX0NMQVNTICYm
IElOVEVMX0dFTihlbmdpbmUtPmk5MTUpID49IDEyKQogCQllbmdpbmUtPmZsYWdzIHw9IEk5MTVf
RU5HSU5FX0hBU19SRUxBVElWRV9NTUlPOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5kZXgg
YjNjYzg1NjA2OTZiLi4yY2EzNGE1Y2Y3ZDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAt
Nzk4LDYgKzc5OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50
ZWxfdGlnZXJsYWtlXzEyX2luZm8gPSB7CiAJLmVuZ2luZV9tYXNrID0KIAkJQklUKFJDUzApIHwg
QklUKEJDUzApIHwgQklUKFZFQ1MwKSB8IEJJVChWQ1MwKSB8IEJJVChWQ1MyKSwKIAkuaGFzX3Jj
NiA9IGZhbHNlLCAvKiBYWFggZGlzYWJsZWQgZm9yIGRlYnVnZ2luZyAqLworCS5oYXNfbG9naWNh
bF9yaW5nX3ByZWVtcHRpb24gPSBmYWxzZSwgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dpbmcg
Ki8KIH07CiAKICN1bmRlZiBHRU4KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
