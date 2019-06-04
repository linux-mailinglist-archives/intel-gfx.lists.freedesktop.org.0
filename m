Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 392BB34613
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 14:00:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625FF8975F;
	Tue,  4 Jun 2019 12:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D8D8975F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 12:00:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16787580-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Jun 2019 13:00:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 13:00:22 +0100
Message-Id: <20190604120022.20472-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604120022.20472-1-chris@chris-wilson.co.uk>
References: <20190604120022.20472-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915: Use unchecked uncore writes to flush
 the GTT
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

QXMgdGhlIEdUVCBpcyBvdXRzaWRlIG9mIHRoZSBwb3dlcndlbGwsIHdlIGNhbiBzaW1wbGlmeSBm
bHVzaGluZyB0aGUKR0dUVCB3cml0ZXMgYnkgdXNpbmcgYW4gdW5jaGVja2VkIG1taW8gd3JpdGUg
YW5kIHBvc3QuCgp2Mjogcy91bmMvdW5jb3JlLwoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBKb29uYXMgTGFodGluZW4g
PGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmMgfCAyMCArKysrKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDEyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYwppbmRleCBjYThhNjllOGIwOTguLmQ0MTU0MzhkNDgxNSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTEwOCwyMiArMTA4LDI2IEBACiBzdGF0aWMgaW50CiBp
OTE1X2dldF9nZ3R0X3ZtYV9wYWdlcyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSk7CiAKLXN0YXRpYyB2
b2lkIGdlbjZfZ2d0dF9pbnZhbGlkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKK3N0YXRpYyB2b2lkIGdlbjZfZ2d0dF9pbnZhbGlkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogeworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZpOTE1LT51bmNv
cmU7CisKIAkvKgogCSAqIE5vdGUgdGhhdCBhcyBhbiB1bmNhY2hlZCBtbWlvIHdyaXRlLCB0aGlz
IHdpbGwgZmx1c2ggdGhlCiAJICogV0NCIG9mIHRoZSB3cml0ZXMgaW50byB0aGUgR0dUVCBiZWZv
cmUgaXQgdHJpZ2dlcnMgdGhlIGludmFsaWRhdGUuCiAJICovCi0JSTkxNV9XUklURShHRlhfRkxT
SF9DTlRMX0dFTjYsIEdGWF9GTFNIX0NOVExfRU4pOworCWludGVsX3VuY29yZV93cml0ZV9mdyh1
bmNvcmUsIEdGWF9GTFNIX0NOVExfR0VONiwgR0ZYX0ZMU0hfQ05UTF9FTik7CiB9CiAKLXN0YXRp
YyB2b2lkIGd1Y19nZ3R0X2ludmFsaWRhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQorc3RhdGljIHZvaWQgZ3VjX2dndHRfaW52YWxpZGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKIHsKLQlnZW42X2dndHRfaW52YWxpZGF0ZShkZXZfcHJpdik7Ci0JSTkxNV9X
UklURShHRU44X0dUQ1IsIEdFTjhfR1RDUl9JTlZBTElEQVRFKTsKKwlzdHJ1Y3QgaW50ZWxfdW5j
b3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOworCisJZ2VuNl9nZ3R0X2ludmFsaWRhdGUoaTkx
NSk7CisJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgR0VOOF9HVENSLCBHRU44X0dUQ1Jf
SU5WQUxJREFURSk7CiB9CiAKLXN0YXRpYyB2b2lkIGdtY2hfZ2d0dF9pbnZhbGlkYXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3N0YXRpYyB2b2lkIGdtY2hfZ2d0dF9pbnZh
bGlkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCWludGVsX2d0dF9jaGlw
c2V0X2ZsdXNoKCk7CiB9CkBAIC0xMzQ3LDEwICsxMzUxLDEwIEBAIHN0YXRpYyB2b2lkIGdlbjhf
cHBndHRfY2xlYW51cF80bHZsKHN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpwcGd0dCkKIAogc3RhdGlj
IHZvaWQgZ2VuOF9wcGd0dF9jbGVhbnVwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQog
ewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHZtLT5pOTE1OworCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdm0tPmk5MTU7CiAJc3RydWN0IGk5MTVfaHdfcHBn
dHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0dCh2bSk7CiAKLQlpZiAoaW50ZWxfdmdwdV9hY3Rp
dmUoZGV2X3ByaXYpKQorCWlmIChpbnRlbF92Z3B1X2FjdGl2ZShpOTE1KSkKIAkJZ2VuOF9wcGd0
dF9ub3RpZnlfdmd0KHBwZ3R0LCBmYWxzZSk7CiAKIAlpZiAoaTkxNV92bV9pc180bHZsKHZtKSkK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
