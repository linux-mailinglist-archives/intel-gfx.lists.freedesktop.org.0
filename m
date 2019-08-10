Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0126188A38
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 11:17:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C09A76E0F8;
	Sat, 10 Aug 2019 09:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16296E0F8
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Aug 2019 09:17:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17951344-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Aug 2019 10:17:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 10 Aug 2019 10:17:47 +0100
Message-Id: <20190810091748.10972-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915/blt: don't assume pinned intel_context
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

RnJvbTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKQ3VycmVudGx5IHdl
IGp1c3QgcGFzcyBpbiBiY3MwLT5lbmdpbmVfY29udGV4dCBzbyBpdCBtYXR0ZXJzIG5vdCwgYnV0
IGluCnRoZSBmdXR1cmUgd2UgbWF5IHdhbnQgdG8gcGFzcyBpbiBzb21ldGhpbmcgdGhhdCBpcyBu
b3QgYQprZXJuZWxfY29udGV4dCwgc28gdHJ5IHRvIGJlIGEgYml0IG1vcmUgZ2VuZXJpYy4KClN1
Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25l
ZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jbGllbnRfYmx0LmMgfCAzICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdF9ibHQuYyB8IDMgKystCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NsaWVudF9ibHQuYwppbmRleCBkZTY2MTZiZGIzYTYuLjA4YTg0Yzk0MGQ4ZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jCkBAIC00
LDYgKzQsNyBAQAogICovCiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgorI2luY2x1ZGUgImd0L2lu
dGVsX2NvbnRleHQuaCIKICNpbmNsdWRlICJpOTE1X2dlbV9jbGllbnRfYmx0LmgiCiAjaW5jbHVk
ZSAiaTkxNV9nZW1fb2JqZWN0X2JsdC5oIgogCkBAIC0xNzUsNyArMTc2LDcgQEAgc3RhdGljIHZv
aWQgY2xlYXJfcGFnZXNfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKIAlpZiAodW5s
aWtlbHkoZXJyKSkKIAkJZ290byBvdXRfdW5sb2NrOwogCi0JcnEgPSBpOTE1X3JlcXVlc3RfY3Jl
YXRlKHctPmNlKTsKKwlycSA9IGludGVsX2NvbnRleHRfY3JlYXRlX3JlcXVlc3Qody0+Y2UpOwog
CWlmIChJU19FUlIocnEpKSB7CiAJCWVyciA9IFBUUl9FUlIocnEpOwogCQlnb3RvIG91dF91bnBp
bjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Rf
Ymx0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jCmlu
ZGV4IDgzN2RkNjYzNmRkMS4uZmE5MGMzOGM4YjA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMKQEAgLTQsNiArNCw3IEBACiAgKi8KIAogI2lu
Y2x1ZGUgImk5MTVfZHJ2LmgiCisjaW5jbHVkZSAiZ3QvaW50ZWxfY29udGV4dC5oIgogI2luY2x1
ZGUgImk5MTVfZ2VtX2NsZmx1c2guaCIKICNpbmNsdWRlICJpOTE1X2dlbV9vYmplY3RfYmx0Lmgi
CiAKQEAgLTY0LDcgKzY1LDcgQEAgaW50IGk5MTVfZ2VtX29iamVjdF9maWxsX2JsdChzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7
CiAJfQogCi0JcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGNlKTsKKwlycSA9IGludGVsX2NvbnRl
eHRfY3JlYXRlX3JlcXVlc3QoY2UpOwogCWlmIChJU19FUlIocnEpKSB7CiAJCWVyciA9IFBUUl9F
UlIocnEpOwogCQlnb3RvIG91dF91bnBpbjsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
