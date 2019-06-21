Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 694B04E1A0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 10:09:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9B4D6E817;
	Fri, 21 Jun 2019 08:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 720E76E817
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 08:08:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16974970-1500050 
 for multiple; Fri, 21 Jun 2019 09:07:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jun 2019 09:07:29 +0100
Message-Id: <20190621080729.2652-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621073329.1695-1-chris@chris-wilson.co.uk>
References: <20190621073329.1695-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/execlists: Keep virtual context
 alive until after we kick
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
ZHMhCgp2MjogU3RpY2sgdG8gc2V0dGluZyBjZS5pbmZsaWdodD1OVUxMIGJlZm9yZSBraWNraW5n
IGFzIHRoaXMgaXMgd2hhdCB0aGUKb3RoZXIgdGhyZWFkcyB3aWxsIGNoZWNrIHRvIHNlZSBpZiB0
aGUgY29udGV4dCBpcyByZWFkeSBmb3IgdGFrZW92ZXIuCgpGaXhlczogMjJiN2E0MjZiYmUxICgi
ZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmVlbXB0LXRvLWJ1c3kiKQpTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1p
a2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggZjhhZDQ5MDA2OTE3Li5m
YWE5YTJlNGU0MGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC01NTcsOSAr
NTU3LDYgQEAgZXhlY2xpc3RzX3NjaGVkdWxlX291dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
IAkJaW50ZWxfZW5naW5lX2NvbnRleHRfb3V0KGNlLT5pbmZsaWdodCk7CiAJCWV4ZWNsaXN0c19j
b250ZXh0X3N0YXR1c19jaGFuZ2UocnEsIElOVEVMX0NPTlRFWFRfU0NIRURVTEVfT1VUKTsKIAot
CQljZS0+aW5mbGlnaHQgPSBOVUxMOwotCQlpbnRlbF9jb250ZXh0X3B1dChjZSk7Ci0KIAkJLyoK
IAkJICogSWYgdGhpcyBpcyBwYXJ0IG9mIGEgdmlydHVhbCBlbmdpbmUsIGl0cyBuZXh0IHJlcXVl
c3QgbWF5CiAJCSAqIGhhdmUgYmVlbiBibG9ja2VkIHdhaXRpbmcgZm9yIGFjY2VzcyB0byB0aGUg
YWN0aXZlIGNvbnRleHQuCkBAIC01NjksOCArNTY2LDExIEBAIGV4ZWNsaXN0c19zY2hlZHVsZV9v
dXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJCSAqIHJlcXVlc3QgYmVmb3JlIHRoZSB0YXNr
bGV0IHJ1bnMgYW5kIGRvIG5vdCBuZWVkIHRvIHJlYnVpbGQKIAkJICogZWFjaCB2aXJ0dWFsIHRy
ZWUgYW5kIGtpY2sgZXZlcnlvbmUgYWdhaW4uCiAJCSAqLworCQljZS0+aW5mbGlnaHQgPSBOVUxM
OwogCQlpZiAocnEtPmVuZ2luZSAhPSBjZS0+ZW5naW5lKQogCQkJa2lja19zaWJsaW5ncyhycSwg
Y2UpOworCisJCWludGVsX2NvbnRleHRfcHV0KGNlKTsKIAl9CiAKIAlpOTE1X3JlcXVlc3RfcHV0
KHJxKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
