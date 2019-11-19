Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B831022FB
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 12:25:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291206E528;
	Tue, 19 Nov 2019 11:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6049E6E528
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 11:25:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19256478-1500050 
 for multiple; Tue, 19 Nov 2019 11:25:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 11:25:15 +0000
Message-Id: <20191119112515.2766748-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Track ggtt writes from userspace
 on the bound vma
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

V2hlbiB1c2Vyc3BhY2Ugd3JpdGVzIGludG8gdGhlIEdUVCBpdHNlbGYsIGl0IGlzIHN1cHBvc2Vk
IHRvIGNhbGwKc2V0LWRvbWFpbiB0byBsZXQgdGhlIGtlcm5lbCBrZWVwIHRyYWNrIGFuZCBzbyBt
YW5hZ2UgdGhlIENQVS9HUFUKY2FjaGVzLiBBcyB3ZSB0cmFjayB3cml0ZXMgb24gdGhlIGluZGl2
aWR1YWwgaTkxNV92bWEsIHdlIHNob3VsZCBhbHNvIGJlCnN1cmUgdG8gbWFyayB0aGVtIGFzIGRp
cnR5LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgfCA4ICsrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2RvbWFpbi5jCmluZGV4IGUyYWY2M2FmNjdhZC4uOWFlYmNmMjYzMTkxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCkBAIC0xNDksOSAr
MTQ5LDE3IEBAIGk5MTVfZ2VtX29iamVjdF9zZXRfdG9fZ3R0X2RvbWFpbihzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLCBib29sIHdyaXRlKQogCUdFTV9CVUdfT04oKG9iai0+d3JpdGVf
ZG9tYWluICYgfkk5MTVfR0VNX0RPTUFJTl9HVFQpICE9IDApOwogCW9iai0+cmVhZF9kb21haW5z
IHw9IEk5MTVfR0VNX0RPTUFJTl9HVFQ7CiAJaWYgKHdyaXRlKSB7CisJCXN0cnVjdCBpOTE1X3Zt
YSAqdm1hOworCiAJCW9iai0+cmVhZF9kb21haW5zID0gSTkxNV9HRU1fRE9NQUlOX0dUVDsKIAkJ
b2JqLT53cml0ZV9kb21haW4gPSBJOTE1X0dFTV9ET01BSU5fR1RUOwogCQlvYmotPm1tLmRpcnR5
ID0gdHJ1ZTsKKworCQlzcGluX2xvY2soJm9iai0+dm1hLmxvY2spOworCQlmb3JfZWFjaF9nZ3R0
X3ZtYSh2bWEsIG9iaikKKwkJCWlmIChpOTE1X3ZtYV9pc19ib3VuZCh2bWEsIEk5MTVfVk1BX0dM
T0JBTF9CSU5EKSkKKwkJCQlpOTE1X3ZtYV9zZXRfZ2d0dF93cml0ZSh2bWEpOworCQlzcGluX3Vu
bG9jaygmb2JqLT52bWEubG9jayk7CiAJfQogCiAJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2Vz
KG9iaik7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
