Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 164075AB64
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jun 2019 15:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776EE6E9A2;
	Sat, 29 Jun 2019 13:14:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A32936E9A2
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jun 2019 13:14:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17068726-1500050 
 for multiple; Sat, 29 Jun 2019 14:13:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 29 Jun 2019 14:13:50 +0100
Message-Id: <20190629131350.31185-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190628120720.21682-2-lionel.g.landwerlin@intel.com>
References: <20190628120720.21682-2-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: fix whitelist selftests with readonly
 registers
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

RnJvbTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoK
V2hlbiBhIHJlZ2lzdGVyIGlzIHJlYWRvbmx5IHRoZXJlIGlzIG5vdCBtdWNoIHdlIGNhbiB0ZWxs
IGFib3V0IGl0cwp2YWx1ZSAoYXBhcnQgZnJvbSBpdHMgZGVmYXVsdCB2YWx1ZT8pLiBUaGlzIGNh
biBiZSBjb3ZlcmVkIGJ5IHRlc3RzCmV4ZXJjaXNpbmcgdGhlIHZhbHVlIG9mIHRoZSByZWdpc3Rl
ciBmcm9tIHVzZXJzcGFjZS4KCkZvciBQU19JTlZPQ0FUSU9OX0NPVU5UIHdlJ3ZlIGdvdCB0aGUg
Zm9sbG93aW5nIHBpZ2xpdCB0ZXN0cyA6CgogICBLSFItR0w0NS5waXBlbGluZV9zdGF0aXN0aWNz
X3F1ZXJ5X3Rlc3RzX0FSQi5mdW5jdGlvbmFsX2ZyYWdtZW50X3NoYWRlcl9pbnZvY2F0aW9ucwoK
VnVsa2FuIENUUyB0ZXN0cyA6CgogICBkRVFQLVZLLnF1ZXJ5X3Bvb2wuc3RhdGlzdGljc19xdWVy
eS5mcmFnbWVudF9zaGFkZXJfaW52b2NhdGlvbnMuKgoKdjI6IFVzZSBhIGxvY2FsIHRvIHNocmlu
ayB1bmRlciA4MGNvbHMuCgpTaWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVs
LmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CkZpeGVzOiA4NjU1NGY0OGU1MTEgKCJkcm0vaTkxNS9z
ZWxmdGVzdHM6IFZlcmlmeSB3aGl0ZWxpc3Qgb2YgY29udGV4dCByZWdpc3RlcnMiKQpUZXN0ZWQt
Ynk6IEFudWogUGhvZ2F0IDxhbnVqLnBob2dhdEBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KRml4ZXMgaXMgYSBiaXQg
bXVjaCwgc2luY2UgdGhlIHRlc3QgaXMgc3RpbGwgdmVyeSBtdWNoIG5lcmZlZCBhbmQgbm90CmNv
bXBsZW1lbnRlZCBieSBhIHRlc3QgZm9yIHJlYWQtb25seSBub24tcHJpdiByZWdpc3RlcnMuLi4K
LUNocmlzCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMu
YyB8IDcgKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmth
cm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5j
CmluZGV4IGYxMmNiMjBmZTc4NS4uYjkzM2Q4MzFlZWIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKQEAgLTkyNiw3ICs5MjYsMTIgQEAgY2hl
Y2tfd2hpdGVsaXN0ZWRfcmVnaXN0ZXJzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwK
IAogCWVyciA9IDA7CiAJZm9yIChpID0gMDsgaSA8IGVuZ2luZS0+d2hpdGVsaXN0LmNvdW50OyBp
KyspIHsKLQkJaWYgKCFmbihlbmdpbmUsIGFbaV0sIGJbaV0sIGVuZ2luZS0+d2hpdGVsaXN0Lmxp
c3RbaV0ucmVnKSkKKwkJY29uc3Qgc3RydWN0IGk5MTVfd2EgKndhID0gJmVuZ2luZS0+d2hpdGVs
aXN0Lmxpc3RbaV07CisKKwkJaWYgKGk5MTVfbW1pb19yZWdfb2Zmc2V0KHdhLT5yZWcpICYgUklO
R19GT1JDRV9UT19OT05QUklWX1JEKQorCQkJY29udGludWU7CisKKwkJaWYgKCFmbihlbmdpbmUs
IGFbaV0sIGJbaV0sIHdhLT5yZWcpKQogCQkJZXJyID0gLUVJTlZBTDsKIAl9CiAKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
