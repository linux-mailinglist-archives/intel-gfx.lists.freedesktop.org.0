Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0DDF1C6B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 18:24:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6815A6EE0F;
	Wed,  6 Nov 2019 17:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A1836EE0F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 17:24:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19105276-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Nov 2019 17:24:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Nov 2019 17:24:16 +0000
Message-Id: <20191106172416.17188-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Remove unwanted rcu_read_lock/unlock
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

RnJvbTogTmlyYW5qYW5hIFZpc2h3YW5hdGhhcHVyYSA8bmlyYW5qYW5hLnZpc2h3YW5hdGhhcHVy
YUBpbnRlbC5jb20+CgpXZSBkb24ndCBuZWVkIHJjdSByZWFkIHNpZGUgY3JpdGljYWwgc2VjdGlv
biB0byBjYWxsIHBpZF9ucigpLApyZW1vdmUgaXQuCgpTaWduZWQtb2ZmLWJ5OiBOaXJhbmphbmEg
VmlzaHdhbmF0aGFwdXJhIDxuaXJhbmphbmEudmlzaHdhbmF0aGFwdXJhQGludGVsLmNvbT4KUmV2
aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIHwgMyAtLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCmluZGV4
IGU4YjY3ZjVlNTIxZC4uMWYyZjI2NmYyNmFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dwdV9lcnJvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1
X2Vycm9yLmMKQEAgLTEyMzAsMTAgKzEyMzAsNyBAQCBzdGF0aWMgdm9pZCByZWNvcmRfcmVxdWVz
dChjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LAogCWVycS0+c3RhcnQgPSBpOTE1
X2dndHRfb2Zmc2V0KHJlcXVlc3QtPnJpbmctPnZtYSk7CiAJZXJxLT5oZWFkID0gcmVxdWVzdC0+
aGVhZDsKIAllcnEtPnRhaWwgPSByZXF1ZXN0LT50YWlsOwotCi0JcmN1X3JlYWRfbG9jaygpOwog
CWVycS0+cGlkID0gY3R4LT5waWQgPyBwaWRfbnIoY3R4LT5waWQpIDogMDsKLQlyY3VfcmVhZF91
bmxvY2soKTsKIH0KIAogc3RhdGljIHZvaWQgZW5naW5lX3JlY29yZF9yZXF1ZXN0cyhzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
