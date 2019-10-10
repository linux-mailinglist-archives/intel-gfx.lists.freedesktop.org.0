Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF3AD22D4
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 10:32:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72EE56EAC5;
	Thu, 10 Oct 2019 08:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFD646EAC5
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 08:32:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18786676-1500050 
 for multiple; Thu, 10 Oct 2019 09:32:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 09:32:42 +0100
Message-Id: <20191010083242.1387-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Mark up expected state
 during reset
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

TW92ZSB0aGUgQlVHX09OIGFyb3VuZCBzbGlnaHRseSBhbmQgYWRkIHNvbWUgZXhwbGFuYXRpb25z
IGZvciBlYWNoIHRvCnRyeSBhbmQgY2FwdHVyZSB0aGUgZXhwZWN0ZWQgc3RhdGUgbW9yZSBjYXJl
ZnVsbHkuIFdlIHdhbnQgdG8gY29tcGFyZQp0aGUgZXhwZWN0ZWQgYWN0aXZlIHN0YXRlIG9mIG91
ciBib29ra2VlcGluZyBhcyBjb21wYXJlZCB0byB0aGUgdHJhY2tlZApIVyBzdGF0ZS4KClJlZmVy
ZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTkz
NwpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDcgKysrKysrLQogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggN2VhNTgzMzVmMDRjLi43YzBkM2MzNDM1MjAgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yNzc3LDggKzI3NzcsMTAgQEAgc3RhdGlj
IHZvaWQgX19leGVjbGlzdHNfcmVzZXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBi
b29sIHN0YWxsZWQpCiAJaWYgKCFycSkKIAkJZ290byB1bndpbmQ7CiAKKwkvKiBXZSBzdGlsbCBo
YXZlIHJlcXVlc3RzIGluLWZsaWdodDsgdGhlIGVuZ2luZSBzaG91bGQgYmUgYWN0aXZlICovCisJ
R0VNX0JVR19PTighaW50ZWxfZW5naW5lX3BtX2lzX2F3YWtlKGVuZ2luZSkpOworCiAJY2UgPSBy
cS0+aHdfY29udGV4dDsKLQlHRU1fQlVHX09OKGk5MTVfYWN0aXZlX2lzX2lkbGUoJmNlLT5hY3Rp
dmUpKTsKIAlHRU1fQlVHX09OKCFpOTE1X3ZtYV9pc19waW5uZWQoY2UtPnN0YXRlKSk7CiAKIAkv
KiBQcm9jbGFpbSB3ZSBoYXZlIGV4Y2x1c2l2ZSBhY2Nlc3MgdG8gdGhlIGNvbnRleHQgaW1hZ2Uh
ICovCkBAIC0yNzg2LDEwICsyNzg4LDEzIEBAIHN0YXRpYyB2b2lkIF9fZXhlY2xpc3RzX3Jlc2V0
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQogCiAJcnEgPSBh
Y3RpdmVfcmVxdWVzdChycSk7CiAJaWYgKCFycSkgeworCQkvKiBJZGxlIGNvbnRleHQ7IHRpZHkg
dXAgdGhlIHJpbmcgc28gd2UgY2FuIHJlc3RhcnQgYWZyZXNoICovCiAJCWNlLT5yaW5nLT5oZWFk
ID0gY2UtPnJpbmctPnRhaWw7CiAJCWdvdG8gb3V0X3JlcGxheTsKIAl9CiAKKwkvKiBDb250ZXh0
IGhhcyByZXF1ZXN0cyBzdGlsbCBpbi1mbGlnaHQ7IGl0IHNob3VsZCBub3QgYmUgaWRsZSEgKi8K
KwlHRU1fQlVHX09OKGk5MTVfYWN0aXZlX2lzX2lkbGUoJmNlLT5hY3RpdmUpKTsKIAljZS0+cmlu
Zy0+aGVhZCA9IGludGVsX3Jpbmdfd3JhcChjZS0+cmluZywgcnEtPmhlYWQpOwogCiAJLyoKLS0g
CjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
