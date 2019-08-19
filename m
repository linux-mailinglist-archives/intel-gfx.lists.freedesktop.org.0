Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9258D94EB1
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 22:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 612306E287;
	Mon, 19 Aug 2019 20:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B2C6E287
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 20:07:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18193935-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 21:07:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 21:07:05 +0100
Message-Id: <20190819200705.3631-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Assume exclusive access to objects
 inside resume
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

SW5zaWRlIGd0dF9yZXN0b3JlX21hcHBpbmdzKCkgd2UgY3VycmVudGx5IHRha2UgdGhlIG9iai0+
cmVzdi0+bG9jaywgYnV0CmluIHRoZSBmdXR1cmUgd2UgbmVlZCB0byBhdm9pZCB0YWtpbmcgdGhp
cyBmcy1yZWNsYWltIHRhaW50ZWQgbG9jayBhcyB3ZQpuZWVkIHRvIGV4dGVuZCB0aGUgY292ZXJh
Z2Ugb2YgdGhlIHZtLT5tdXRleC4gVGFrZSBhZHZhbnRhZ2Ugb2YgdGhlCnNpbmdsZS10aHJlYWRl
ZCBuYXR1cmUgb2YgdGhlIGVhcmx5IHJlc3VtZSBwaGFzZSwgYW5kIGRvIGEgc2luZ2xlCndiaW52
ZCgpIHRvIGZsdXNoIGFsbCB0aGUgR1RUIG9iamVjdHMgZW4gbWFzc2UuCgpTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDExICsrKysrKystLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMKaW5kZXggNTQxM2MyZmY1MWEyLi5lNDhkZjExYTE5ZmIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0zMjc0LDYgKzMyNzQsNyBAQCB2b2lkIGk5MTVfZ2d0dF9k
aXNhYmxlX2d1YyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogc3RhdGljIHZvaWQgZ2d0dF9yZXN0
b3JlX21hcHBpbmdzKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiB7CiAJc3RydWN0IGk5MTVfdm1h
ICp2bWEsICp2bjsKKwlib29sIGZsdXNoID0gZmFsc2U7CiAKIAlpbnRlbF9ndF9jaGVja19hbmRf
Y2xlYXJfZmF1bHRzKGdndHQtPnZtLmd0KTsKIApAQCAtMzI5OCwxMCArMzI5OSw5IEBAIHN0YXRp
YyB2b2lkIGdndHRfcmVzdG9yZV9tYXBwaW5ncyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCQlX
QVJOX09OKGk5MTVfdm1hX2JpbmQodm1hLAogCQkJCSAgICAgIG9iaiA/IG9iai0+Y2FjaGVfbGV2
ZWwgOiAwLAogCQkJCSAgICAgIFBJTl9VUERBVEUpKTsKLQkJaWYgKG9iaikgewotCQkJaTkxNV9n
ZW1fb2JqZWN0X2xvY2sob2JqKTsKLQkJCVdBUk5fT04oaTkxNV9nZW1fb2JqZWN0X3NldF90b19n
dHRfZG9tYWluKG9iaiwgZmFsc2UpKTsKLQkJCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsK
KwkJaWYgKG9iaikgeyAvKiBvbmx5IHVzZWQgZHVyaW5nIHJlc3VtZSA9PiBleGNsdXNpdmUgYWNj
ZXNzICovCisJCQlmbHVzaCB8PSBmZXRjaF9hbmRfemVybygmb2JqLT53cml0ZV9kb21haW4pOwor
CQkJb2JqLT5yZWFkX2RvbWFpbnMgfD0gSTkxNV9HRU1fRE9NQUlOX0dUVDsKIAkJfQogCiBsb2Nr
OgpAQCAtMzMxMiw2ICszMzEyLDkgQEAgc3RhdGljIHZvaWQgZ2d0dF9yZXN0b3JlX21hcHBpbmdz
KHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiAJZ2d0dC0+aW52YWxpZGF0ZShnZ3R0KTsKIAogCW11
dGV4X3VubG9jaygmZ2d0dC0+dm0ubXV0ZXgpOworCisJaWYgKGZsdXNoKQorCQl3YmludmRfb25f
YWxsX2NwdXMoKTsKIH0KIAogdm9pZCBpOTE1X2dlbV9yZXN0b3JlX2d0dF9tYXBwaW5ncyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
