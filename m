Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F659B38C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 176AE6ECD1;
	Fri, 23 Aug 2019 15:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16BDB6ECCF
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:39:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18242306-1500050 
 for multiple; Fri, 23 Aug 2019 16:39:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 16:39:44 +0100
Message-Id: <20190823153944.20630-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823150302.5719-1-chris@chris-wilson.co.uk>
References: <20190823150302.5719-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Flush the existing fence before
 GGTT read/write
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3VyIGZlbmNlIG1hbmFnZW1lbnQgaXMgbGF6eSwgdmVyeSBsYXp5LiBJZiB0aGUgdXNlciBtYXJr
cyBhbiBvYmplY3QgYXMKdW50aWxlZCwgd2UgZG8gbm90IGltbWVkaWF0ZWx5IGZsdXNoIHRoZSBm
ZW5jZSBidXQgbWVyZWx5IG1hcmsgaXQgYXMKZGlydHkuIE9uIHRoZSBuZXh0IHVzZSB3ZSBoYXZl
IHRvIHJlbWVtYmVyIHRvIGNoZWNrIGFuZCByZW1vdmUgdGhlIGZlbmNlLApieSB3aGljaCB0aW1l
IHdlIGhvcGUgaXQgaXMgaWRsZSBhbmQgd2UgZG8gbm90IGhhdmUgdG8gd2FpdC4KCnYyOiBUaHJv
dyBhd2F5IHRoZSBvbGQgZmVuY2Ugb24gdGhlIG5leHQgZ2d0dF9waW4uCgpCdWd6aWxsYTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNDY4CkZpeGVzOiAx
ZjdmZDQ4NGZmZjEgKCJkcm0vaTkxNTogUmVwbGFjZSBpOTE1X3ZtYV9wdXRfZmVuY2UoKSIpClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KSSdtIGp1c3QgZ29pbmcg
dG8gaWdub3JlIHRoZSByYWNlIHdpdGggdXNlcnNwYWNlIGluc3RhbGxpbmcgYSBmZW5jZQooc2V0
LXRpbGluZyArIG1tYXBfZ3R0KSB3aGlsZSB3ZSBwcmVhZC9wd3JpdGUuIFRoZSBhbnN3ZXIgdG8g
dGhhdCBpcyB0aGUKb2JqZWN0LWxvY2ssIHdoaWNoIHdlIGN1cnJlbnRseSB0YWtlIGFmdGVyIHdl
IHBpbi4gU2hvdWxkIGJlIGVhc3kgZW5vdWdoCnRvIHJlYXJyYW5nZS4uLiBIb3BlZnVsbHkuCi0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDggKysrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCBlYjMx
YjY5YTMxNmEuLjhiZjM0NmMzMmI4ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0xMDI2
LDYgKzEwMjYsMTQgQEAgaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmosCiAJCQlyZXR1cm4gRVJSX1BUUihyZXQpOwogCX0KIAorCWlmICh2bWEt
PmZlbmNlICYmICFpOTE1X2dlbV9vYmplY3RfaXNfdGlsZWQob2JqKSkgeworCQltdXRleF9sb2Nr
KCZ2bWEtPnZtLT5tdXRleCk7CisJCXJldCA9IGk5MTVfdm1hX3Jldm9rZV9mZW5jZSh2bWEpOwor
CQltdXRleF91bmxvY2soJnZtYS0+dm0tPm11dGV4KTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiBF
UlJfUFRSKHJldCk7CisJfQorCiAJcmV0ID0gaTkxNV92bWFfcGluKHZtYSwgc2l6ZSwgYWxpZ25t
ZW50LCBmbGFncyB8IFBJTl9HTE9CQUwpOwogCWlmIChyZXQpCiAJCXJldHVybiBFUlJfUFRSKHJl
dCk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
