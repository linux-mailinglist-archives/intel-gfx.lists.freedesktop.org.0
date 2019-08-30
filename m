Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A639FA2F78
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 08:12:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0A1D6E24D;
	Fri, 30 Aug 2019 06:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 143A06E247
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 06:12:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18312333-1500050 
 for multiple; Fri, 30 Aug 2019 07:12:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 07:11:49 +0100
Message-Id: <20190830061204.21206-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190830061204.21206-1-chris@chris-wilson.co.uk>
References: <20190830061204.21206-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/21] dma-fence: Serialise signal enabling
 (dma_fence_enable_sw_signaling)
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

TWFrZSBkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZygpIGJlaGF2ZSBsaWtlIGl0cwpkbWFf
ZmVuY2VfYWRkX2NhbGxiYWNrKCkgYW5kIGRtYV9mZW5jZV9kZWZhdWx0X3dhaXQoKSBjb3VudGVy
cGFydHMgYW5kCnBlcmZvcm0gdGhlIHRlc3QgdG8gZW5hYmxlIHNpZ25hbGluZyB1bmRlciB0aGUg
ZmVuY2UtPmxvY2ssIGFsb25nIHdpdGgKdGhlIGFjdGlvbiB0byBkbyBzby4gVGhpcyBlbnN1cmUg
dGhhdCBzaG91bGQgYW4gaW1wbGVtZW50YXRpb24gYmUgdHJ5aW5nCnRvIGZsdXNoIHRoZSBjYl9s
aXN0IChieSBzaWduYWxpbmcpIG9uIHJldGlyZW1lbnQgYmVmb3JlIGZyZWVpbmcgdGhlCmZlbmNl
LCBpdCBjYW4gZG8gc28gaW4gYSByYWNlLWZyZWUgbWFubmVyLgoKU2VlIGFsc28gMGZjODliNjgw
MmJhICgiZG1hLWZlbmNlOiBTaW1wbHkgd3JhcCBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZAp3aXRo
IGRtYV9mZW5jZV9zaWduYWwiKS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDEx
ICsrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYwppbmRleCAyYzEzNmFlZTNlNzkuLjU4NzcyNzA4OTEzNCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYwpAQCAtMjg1LDE5ICsyODUsMTggQEAgdm9pZCBkbWFfZmVuY2VfZW5hYmxl
X3N3X3NpZ25hbGluZyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKIHsKIAl1bnNpZ25lZCBsb25n
IGZsYWdzOwogCisJaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZl
bmNlLT5mbGFncykpCisJCXJldHVybjsKKworCXNwaW5fbG9ja19pcnFzYXZlKGZlbmNlLT5sb2Nr
LCBmbGFncyk7CiAJaWYgKCF0ZXN0X2FuZF9zZXRfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9T
SUdOQUxfQklULAogCQkJICAgICAgJmZlbmNlLT5mbGFncykgJiYKLQkgICAgIXRlc3RfYml0KERN
QV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZlbmNlLT5mbGFncykgJiYKIAkgICAgZmVuY2Ut
Pm9wcy0+ZW5hYmxlX3NpZ25hbGluZykgewogCQl0cmFjZV9kbWFfZmVuY2VfZW5hYmxlX3NpZ25h
bChmZW5jZSk7Ci0KLQkJc3Bpbl9sb2NrX2lycXNhdmUoZmVuY2UtPmxvY2ssIGZsYWdzKTsKLQog
CQlpZiAoIWZlbmNlLT5vcHMtPmVuYWJsZV9zaWduYWxpbmcoZmVuY2UpKQogCQkJZG1hX2ZlbmNl
X3NpZ25hbF9sb2NrZWQoZmVuY2UpOwotCi0JCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2Ut
PmxvY2ssIGZsYWdzKTsKIAl9CisJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZShmZW5jZS0+bG9jaywg
ZmxhZ3MpOwogfQogRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZyk7
CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
