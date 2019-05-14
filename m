Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E25391C760
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 13:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB738926F;
	Tue, 14 May 2019 11:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D7C8926F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 11:00:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16550770-1500050 
 for multiple; Tue, 14 May 2019 11:59:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2019 11:59:58 +0100
Message-Id: <20190514105958.7944-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <ecd5750f-b1b7-ef90-05c0-ec7b1a4af78b@linux.intel.com>
References: <ecd5750f-b1b7-ef90-05c0-ec7b1a4af78b@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] benchmarks/gem_wsim: Perturb
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
dCBiZWhpbmQgdGhlIC1SIGZsYWcuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Ci0tLQogYmVuY2htYXJrcy9nZW1fd3NpbS5jIHwgNiArKysrLS0KIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYmVu
Y2htYXJrcy9nZW1fd3NpbS5jIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCmluZGV4IGFmYjk2NDRk
ZC4uNDg1NjhjZTQwIDEwMDY0NAotLS0gYS9iZW5jaG1hcmtzL2dlbV93c2ltLmMKKysrIGIvYmVu
Y2htYXJrcy9nZW1fd3NpbS5jCkBAIC05MzksNyArOTM5LDcgQEAgYWxsb2Nfc3RlcF9iYXRjaChz
dHJ1Y3Qgd29ya2xvYWQgKndyaywgc3RydWN0IHdfc3RlcCAqdywgdW5zaWduZWQgaW50IGZsYWdz
KQogc3RhdGljIHZvaWQKIHByZXBhcmVfd29ya2xvYWQodW5zaWduZWQgaW50IGlkLCBzdHJ1Y3Qg
d29ya2xvYWQgKndyaywgdW5zaWduZWQgaW50IGZsYWdzKQogewotCXVuc2lnbmVkIGludCBjdHhf
dmNzID0gMDsKKwl1bnNpZ25lZCBpbnQgY3R4X3ZjczsKIAlpbnQgbWF4X2N0eCA9IC0xOwogCXN0
cnVjdCB3X3N0ZXAgKnc7CiAJaW50IGk7CkBAIC05NDgsOCArOTQ4LDEwIEBAIHByZXBhcmVfd29y
a2xvYWQodW5zaWduZWQgaW50IGlkLCBzdHJ1Y3Qgd29ya2xvYWQgKndyaywgdW5zaWduZWQgaW50
IGZsYWdzKQogCXdyay0+cHJuZyA9IHJhbmQoKTsKIAl3cmstPnJ1biA9IHRydWU7CiAKKwljdHhf
dmNzID0gIDA7CiAJaWYgKGZsYWdzICYgSU5JVFZDU1JSKQotCQl3cmstPnZjc19yciA9IGlkICYg
MTsKKwkJY3R4X3ZjcyA9IGlkICYgMTsKKwl3cmstPnZjc19yciA9IGN0eF92Y3M7CiAKIAlpZiAo
ZmxhZ3MgJiBHTE9CQUxfQkFMQU5DRSkgewogCQlpbnQgcmV0ID0gcHRocmVhZF9tdXRleF9pbml0
KCZ3cmstPm11dGV4LCBOVUxMKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
