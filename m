Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6E0E26D4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 01:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB5E6E0E8;
	Wed, 23 Oct 2019 23:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADC26E0BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 23:02:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18943036-1500050 
 for multiple; Thu, 24 Oct 2019 00:01:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 00:01:47 +0100
Message-Id: <20191023230149.31611-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191023230149.31611-1-chris@chris-wilson.co.uk>
References: <20191023230149.31611-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/gt: Expose reset stop timeout via
 sysfs
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

V2hlbiB3ZSBhbGxvdyBvdXJzZWx2ZXMgdG8gc2xlZXAgYmVmb3JlIGEgR1BVIHJlc2V0IGFmdGVy
IGRpc2FibGluZwpzdWJtaXNzaW9uLCBldmVuIGZvciBhIGZldyBtaWxsaXNlY29uZHMsIGdpdmVz
IGFuIGlubm9jZW50IGNvbnRleHQgdGhlCm9wcG9ydHVuaXR5IHRvIGNsZWFyIHRoZSBHUFUgYmVm
b3JlIHRoZSByZXNldCBvY2N1cnMuIEhvd2V2ZXIsIGhvdyBsb25nCnRvIHNsZWVwIGRlcGVuZHMg
b24gdGhlIHR5cGljYWwgbm9uLXByZWVtcHRpYmxlIGR1cmF0aW9uIChhIHNpbWlsYXIKcHJvYmxl
bSB0byBkZXRlcm1pbmluZyB0aGUgaWRlYWwgcHJlZW1wdC1yZXNldCB0aW1lb3V0IG9yIGV2ZW4g
dGhlCmhlYXJ0YmVhdCBpbnRlcnZhbCkuIEFzIHRoaXMgc2VlbXMgb2YgYSBoYXJkIHBvbGljeSBk
ZWNpc2lvbiwgcHVudCBpdCB0bwp1c2Vyc3BhY2UuCgpUaGUgdGltZW91dCBjYW4gYmUgYWRqdXN0
ZWQgdXNpbmcKCgkvc3lzL2NsYXNzL2RybS9jYXJkPy9lbmdpbmUvKi9zdG9wX3RpbWVvdXRfbXMK
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpD
YzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzog
Sm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUgICAgICAgICB8ICAzICsrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYyB8IDMxICsrKysrKysrKysrKysrKysrKysr
CiAyIGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29u
ZmlnLnByb2ZpbGUKaW5kZXggYjg3YzhmNDg1YTI0Li43NjE0NWQyNWNlNjUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJvZmlsZQorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKQEAgLTYwLDYgKzYwLDkgQEAgY29uZmlnIERSTV9JOTE1
X1NUT1BfVElNRU9VVAogCSAgdGhhdCB0aGUgcmVzZXQgaXRzZWxmIG1heSB0YWtlIGxvbmdlciBh
bmQgc28gYmUgbW9yZSBkaXNydXB0aXZlIHRvCiAJICBpbnRlcmFjdGl2ZSBvciBsb3cgbGF0ZW5j
eSB3b3JrbG9hZHMuCiAKKwkgIFRoaXMgaXMgYWRqdXN0YWJsZSB2aWEKKwkgIC9zeXMvY2xhc3Mv
ZHJtL2NhcmQ/L2VuZ2luZS8qL3N0b3BfdGltZW91dF9tcworCiBjb25maWcgRFJNX0k5MTVfVElN
RVNMSUNFX0RVUkFUSU9OCiAJaW50ICJTY2hlZHVsaW5nIHF1YW50dW0gZm9yIHVzZXJzcGFjZSBi
YXRjaGVzIChtcywgamlmZnkgZ3JhbnVsYXJpdHkpIgogCWRlZmF1bHQgMSAjIG1pbGxpc2Vjb25k
cwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2Zz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYwppbmRleCBi
Njk2YjFiZTJkMTYuLmU0ZjU1NzA5OGU5YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX3N5c2ZzLmMKQEAgLTE3Niw2ICsxNzYsMzYgQEAgdGltZXNsaWNlX3N0b3Jl
KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsCiBzdGF0
aWMgc3RydWN0IGtvYmpfYXR0cmlidXRlIHRpbWVzbGljZV9kdXJhdGlvbl9hdHRyID0KIF9fQVRU
Uih0aW1lc2xpY2VfZHVyYXRpb25fbXMsIDA2NDQsIHRpbWVzbGljZV9zaG93LCB0aW1lc2xpY2Vf
c3RvcmUpOwogCitzdGF0aWMgc3NpemVfdAorc3RvcF9zaG93KHN0cnVjdCBrb2JqZWN0ICprb2Jq
LCBzdHJ1Y3Qga29ial9hdHRyaWJ1dGUgKmF0dHIsIGNoYXIgKmJ1ZikKK3sKKwlzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUgPSBrb2JqX3RvX2VuZ2luZShrb2JqKTsKKworCXJldHVybiBz
cHJpbnRmKGJ1ZiwgIiVsdVxuIiwgZW5naW5lLT5wcm9wcy5zdG9wX3RpbWVvdXRfbXMpOworfQor
CitzdGF0aWMgc3NpemVfdAorc3RvcF9zdG9yZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0
IGtvYmpfYXR0cmlidXRlICphdHRyLAorCSAgIGNvbnN0IGNoYXIgKmJ1Ziwgc2l6ZV90IGNvdW50
KQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IGtvYmpfdG9fZW5naW5lKGtv
YmopOworCXVuc2lnbmVkIGxvbmcgbG9uZyBkdXJhdGlvbjsKKwlpbnQgZXJyOworCisJZXJyID0g
a3N0cnRvdWxsKGJ1ZiwgMCwgJmR1cmF0aW9uKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOwor
CisJaWYgKGR1cmF0aW9uID4gamlmZmllc190b19tc2VjcyhNQVhfU0NIRURVTEVfVElNRU9VVCkp
CisJCXJldHVybiAtRUlOVkFMOworCisJV1JJVEVfT05DRShlbmdpbmUtPnByb3BzLnN0b3BfdGlt
ZW91dF9tcywgZHVyYXRpb24pOworCXJldHVybiBjb3VudDsKK30KKworc3RhdGljIHN0cnVjdCBr
b2JqX2F0dHJpYnV0ZSBzdG9wX3RpbWVvdXRfYXR0ciA9CitfX0FUVFIoc3RvcF90aW1lb3V0X21z
LCAwNjQ0LCBzdG9wX3Nob3csIHN0b3Bfc3RvcmUpOworCiBzdGF0aWMgdm9pZCBrb2JqX2VuZ2lu
ZV9yZWxlYXNlKHN0cnVjdCBrb2JqZWN0ICprb2JqKQogewogCWtmcmVlKGtvYmopOwpAQCAtMjE2
LDYgKzI0Niw3IEBAIHZvaWQgaW50ZWxfZW5naW5lc19hZGRfc3lzZnMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpCiAJCSZtbWlvX2F0dHIuYXR0ciwKIAkJJmNhcHNfYXR0ci5hdHRyLAog
CQkmYWxsX2NhcHNfYXR0ci5hdHRyLAorCQkmc3RvcF90aW1lb3V0X2F0dHIuYXR0ciwKIAkJTlVM
TAogCX07CiAKLS0gCjIuMjQuMC5yYzAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
