Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B172EA2F85
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 08:12:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39C496E25A;
	Fri, 30 Aug 2019 06:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9793C6E249
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 06:12:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18312330-1500050 
 for multiple; Fri, 30 Aug 2019 07:12:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 07:11:46 +0100
Message-Id: <20190830061204.21206-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190830061204.21206-1-chris@chris-wilson.co.uk>
References: <20190830061204.21206-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/21] drm/i915: Remove ppgtt->dirty_engines
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

VGhpcyBpcyBubyBsb25nZXIgdXNlZCBhbnl3aGVyZSBhbmQgc28gY2FuIGJlIHJlbW92ZWQuIEhv
d2V2ZXIsIHRyYWNraW5nCnRoZSBkaXJ0eSBzdGF0dXMgb24gdGhlIHBwZ3R0IGRvZXNuJ3Qgd29y
ayB2ZXJ5IHdlbGwgaWYgdGhlIHBwZ3R0IGlzCnNoYXJlZCwgc28gcGVyaGFwcyBmb3IgdGhlIGJl
c3QgdGhhdCBpdCBpcyBubyBsb25nZXIgcmVxdWlyZWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyB8IDE2ICstLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5oIHwgIDEgLQogMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCAz
YzUwY2VhNzZkYzUuLmVlNTFmZDFhNjIwNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMKQEAgLTgyMywxNyArODIzLDYgQEAgcmVsZWFzZV9wZF9lbnRyeShzdHJ1Y3QgaTkxNV9wYWdl
X2RpcmVjdG9yeSAqIGNvbnN0IHBkLAogCXJldHVybiBmcmVlOwogfQogCi0vKgotICogUERFIFRM
QnMgYXJlIGEgcGFpbiB0byBpbnZhbGlkYXRlIG9uIEdFTjgrLiBXaGVuIHdlIG1vZGlmeQotICog
dGhlIHBhZ2UgdGFibGUgc3RydWN0dXJlcywgd2UgbWFyayB0aGVtIGRpcnR5IHNvIHRoYXQKLSAq
IGNvbnRleHQgc3dpdGNoaW5nL2V4ZWNsaXN0IHF1ZXVpbmcgY29kZSB0YWtlcyBleHRyYSBzdGVw
cwotICogdG8gZW5zdXJlIHRoYXQgdGxicyBhcmUgZmx1c2hlZC4KLSAqLwotc3RhdGljIHZvaWQg
bWFya190bGJzX2RpcnR5KHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCkKLXsKLQlwcGd0dC0+cGRf
ZGlydHlfZW5naW5lcyA9IEFMTF9FTkdJTkVTOwotfQotCiBzdGF0aWMgdm9pZCBnZW44X3BwZ3R0
X25vdGlmeV92Z3Qoc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0LCBib29sIGNyZWF0ZSkKIHsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBwcGd0dC0+dm0uaTkxNTsKQEAgLTE3
MzUsMTAgKzE3MjQsOCBAQCBzdGF0aWMgaW50IGdlbjZfYWxsb2NfdmFfcmFuZ2Uoc3RydWN0IGk5
MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJfQogCXNwaW5fdW5sb2NrKCZwZC0+bG9jayk7CiAKLQlp
ZiAoZmx1c2gpIHsKLQkJbWFya190bGJzX2RpcnR5KCZwcGd0dC0+YmFzZSk7CisJaWYgKGZsdXNo
KQogCQlnZW42X2dndHRfaW52YWxpZGF0ZSh2bS0+Z3QtPmdndHQpOwotCX0KIAogCWdvdG8gb3V0
OwogCkBAIC0xODMzLDcgKzE4MjAsNiBAQCBzdGF0aWMgaW50IHBkX3ZtYV9iaW5kKHN0cnVjdCBp
OTE1X3ZtYSAqdm1hLAogCWdlbjZfZm9yX2FsbF9wZGVzKHB0LCBwcGd0dC0+YmFzZS5wZCwgcGRl
KQogCQlnZW42X3dyaXRlX3BkZShwcGd0dCwgcGRlLCBwdCk7CiAKLQltYXJrX3RsYnNfZGlydHko
JnBwZ3R0LT5iYXNlKTsKIAlnZW42X2dndHRfaW52YWxpZGF0ZShnZ3R0KTsKIAogCXJldHVybiAw
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAppbmRleCA1NzZmNmZiOTVkMTMuLjA3Yzg1
YzEzNGQ0YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKQEAgLTQyMiw3ICs0MjIs
NiBAQCBzdHJ1Y3QgaTkxNV9nZ3R0IHsKIHN0cnVjdCBpOTE1X3BwZ3R0IHsKIAlzdHJ1Y3QgaTkx
NV9hZGRyZXNzX3NwYWNlIHZtOwogCi0JaW50ZWxfZW5naW5lX21hc2tfdCBwZF9kaXJ0eV9lbmdp
bmVzOwogCXN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpwZDsKIH07CiAKLS0gCjIuMjMuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
