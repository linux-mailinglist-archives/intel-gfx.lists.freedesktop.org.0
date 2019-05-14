Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEC41C773
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 13:08:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9E2892A1;
	Tue, 14 May 2019 11:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A99F892A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 11:08:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16550941-1500050 
 for multiple; Tue, 14 May 2019 12:08:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2019 12:04:50 +0100
Message-Id: <20190514110450.8449-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <ecd5750f-b1b7-ef90-05c0-ec7b1a4af78b@linux.intel.com>
References: <ecd5750f-b1b7-ef90-05c0-ec7b1a4af78b@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3] benchmarks/gem_wsim: Perturb
 static_vcs selection across clients
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

VXNlIHRoZSBjbGllbnQgaWQgdG8gYWx0ZXJuYXRlIHRoZSBzdGF0aWNfdmNzIGJhbGFuY2VyICgt
YiBjb250ZXh0KQphY3Jvc3MgY2xpZW50cyB3aXRoIHRoZSByb3VuZCByb2JpbiBmbGFnICgtUikg
LSBvdGhlcndpc2UgYWxsIGNsaWVudHMKZW5kIHVwIG9uIHZjczAgYW5kIGRvIG5vdCBtYXRjaCB0
aGUgY29udGV4dCBiYWxhbmNpbmcgZW1wbG95ZWQgYnkKbWVkaWEtZHJpdmVyLgoKdjI6IFB1dCBp
dCBiZWhpbmQgdGhlIC1SIGZsYWcuCnYzOiBEb24ndCBza2lwIC1SIGZsYWcgZm9yIC1iIGNvbnRl
eHQgaW4gc2NyaXB0cy9tZWRpYS1iZW5jaC5wbAoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgotLS0KIGJlbmNobWFya3MvZ2VtX3dzaW0uYyAgfCA2ICsrKystLQog
c2NyaXB0cy9tZWRpYS1iZW5jaC5wbCB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2JlbmNobWFya3MvZ2VtX3dzaW0u
YyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwppbmRleCBhZmI5NjQ0ZGQuLjQ4NTY4Y2U0MCAxMDA2
NDQKLS0tIGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jCisrKyBiL2JlbmNobWFya3MvZ2VtX3dzaW0u
YwpAQCAtOTM5LDcgKzkzOSw3IEBAIGFsbG9jX3N0ZXBfYmF0Y2goc3RydWN0IHdvcmtsb2FkICp3
cmssIHN0cnVjdCB3X3N0ZXAgKncsIHVuc2lnbmVkIGludCBmbGFncykKIHN0YXRpYyB2b2lkCiBw
cmVwYXJlX3dvcmtsb2FkKHVuc2lnbmVkIGludCBpZCwgc3RydWN0IHdvcmtsb2FkICp3cmssIHVu
c2lnbmVkIGludCBmbGFncykKIHsKLQl1bnNpZ25lZCBpbnQgY3R4X3ZjcyA9IDA7CisJdW5zaWdu
ZWQgaW50IGN0eF92Y3M7CiAJaW50IG1heF9jdHggPSAtMTsKIAlzdHJ1Y3Qgd19zdGVwICp3Owog
CWludCBpOwpAQCAtOTQ4LDggKzk0OCwxMCBAQCBwcmVwYXJlX3dvcmtsb2FkKHVuc2lnbmVkIGlu
dCBpZCwgc3RydWN0IHdvcmtsb2FkICp3cmssIHVuc2lnbmVkIGludCBmbGFncykKIAl3cmstPnBy
bmcgPSByYW5kKCk7CiAJd3JrLT5ydW4gPSB0cnVlOwogCisJY3R4X3ZjcyA9ICAwOwogCWlmIChm
bGFncyAmIElOSVRWQ1NSUikKLQkJd3JrLT52Y3NfcnIgPSBpZCAmIDE7CisJCWN0eF92Y3MgPSBp
ZCAmIDE7CisJd3JrLT52Y3NfcnIgPSBjdHhfdmNzOwogCiAJaWYgKGZsYWdzICYgR0xPQkFMX0JB
TEFOQ0UpIHsKIAkJaW50IHJldCA9IHB0aHJlYWRfbXV0ZXhfaW5pdCgmd3JrLT5tdXRleCwgTlVM
TCk7CmRpZmYgLS1naXQgYS9zY3JpcHRzL21lZGlhLWJlbmNoLnBsIGIvc2NyaXB0cy9tZWRpYS1i
ZW5jaC5wbAppbmRleCAwNjZiNTQyZjkuLmYxY2Q1OWEyNSAxMDA3NTUKLS0tIGEvc2NyaXB0cy9t
ZWRpYS1iZW5jaC5wbAorKysgYi9zY3JpcHRzL21lZGlhLWJlbmNoLnBsCkBAIC01Miw3ICs1Miw3
IEBAIG15IEBiYWxhbmNlcnMgPSAoICdycicsICdyYW5kJywgJ3FkJywgJ3FkcicsICdxZGF2Zycs
ICdydCcsICdydHInLCAncnRhdmcnLAogCQkgICdjb250ZXh0JywgJ2J1c3knLCAnYnVzeS1hdmcn
ICk7CiBteSAlYmFsX3NraXBfSCA9ICggJ3JyJyA9PiAxLCAncmFuZCcgPT4gMSwgJ2NvbnRleHQn
ID0+IDEsICwgJ2J1c3knID0+IDEsCiAJCSAgICdidXN5LWF2ZycgPT4gMSApOwotbXkgJWJhbF9z
a2lwX1IgPSAoICdjb250ZXh0JyA9PiAxICk7CitteSAlYmFsX3NraXBfUiA9ICgpOwogCiBteSBA
d29ya2xvYWRzID0gKAogCSdtZWRpYV9sb2FkX2JhbGFuY2VfMTdpNy53c2ltJywKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
