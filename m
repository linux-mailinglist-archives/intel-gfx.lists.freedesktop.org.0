Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4274E143
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 09:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D2E6E82D;
	Fri, 21 Jun 2019 07:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D2B86E82D
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 07:34:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16974629-1500050 
 for multiple; Fri, 21 Jun 2019 08:33:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jun 2019 08:33:29 +0100
Message-Id: <20190621073329.1695-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Keep context alive until
 after we kick
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

VGhlIGNhbGwgdG8ga2lja19zaWJsaW5ncygpIGRlcmVmZXJlbmNlcyB0aGUgcnEtPmNvbnRleHQs
IHNvIHdlIHNob3VsZApub3QgZHJvcCBvdXIgbG9jYWwgcmVmZXJlbmNlIHVudGlsIGFmdGVyd2Fy
ZHMhCgpGaXhlczogMjJiN2E0MjZiYmUxICgiZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmVlbXB0LXRv
LWJ1c3kiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgpD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMKaW5kZXggNjUyMjgwMWFmMmQ2Li5hOTQ5M2YyY2IzOGYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCkBAIC01NDQsOSArNTQ0LDYgQEAgZXhlY2xpc3RzX3NjaGVkdWxlX291
dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAkJaW50ZWxfZW5naW5lX2NvbnRleHRfb3V0KGNl
LT5pbmZsaWdodCk7CiAJCWV4ZWNsaXN0c19jb250ZXh0X3N0YXR1c19jaGFuZ2UocnEsIElOVEVM
X0NPTlRFWFRfU0NIRURVTEVfT1VUKTsKIAotCQljZS0+aW5mbGlnaHQgPSBOVUxMOwotCQlpbnRl
bF9jb250ZXh0X3B1dChjZSk7Ci0KIAkJLyoKIAkJICogSWYgdGhpcyBpcyBwYXJ0IG9mIGEgdmly
dHVhbCBlbmdpbmUsIGl0cyBuZXh0IHJlcXVlc3QgbWF5CiAJCSAqIGhhdmUgYmVlbiBibG9ja2Vk
IHdhaXRpbmcgZm9yIGFjY2VzcyB0byB0aGUgYWN0aXZlIGNvbnRleHQuCkBAIC01NTgsNiArNTU1
LDkgQEAgZXhlY2xpc3RzX3NjaGVkdWxlX291dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAkJ
ICovCiAJCWlmIChycS0+ZW5naW5lICE9IGNlLT5lbmdpbmUpCiAJCQlraWNrX3NpYmxpbmdzKHJx
LCBjZSk7CisKKwkJY2UtPmluZmxpZ2h0ID0gTlVMTDsKKwkJaW50ZWxfY29udGV4dF9wdXQoY2Up
OwogCX0KIAogCWk5MTVfcmVxdWVzdF9wdXQocnEpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
