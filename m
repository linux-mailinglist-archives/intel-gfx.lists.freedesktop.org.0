Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8823D22D81
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:02:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA3889225;
	Mon, 20 May 2019 08:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45C5089203
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:02:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16610873-1500050 
 for multiple; Mon, 20 May 2019 09:01:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2019 09:01:13 +0100
Message-Id: <20190520080127.18255-19-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080127.18255-1-chris@chris-wilson.co.uk>
References: <20190520080127.18255-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/33] drm/i915: Pull scatterlist utils out of
 i915_gem.h
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

T3V0IHNjYXR0ZXJsaXN0IHV0aWxpdHkgcm91dGluZXMgY2FuIGJlIHB1bGxlZCBvdXQgb2YgaTkx
NV9nZW0uaCBmb3IgYQpiaXQgbW9yZSBkZWNsdXR0ZXJpbmcuCgp2MjogUHVzaCBJOTE1X0dUVF9Q
QUdFX1NJWkUgb3V0IG9mIGk5MTVfc2NhdHRlcmxpc3QgaXRzZWxmIGFuZCBpbnRvIHRoZQpjYWxs
ZXIuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jICAgIHwgICAxICsKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jICB8ICAgMSArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyAgICAgfCAgIDEgKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYyAgICAgIHwgICAxICsKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jICAgICB8ICAgMSArCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jICAgfCAgIDEgKwogLi4uL2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaHVnZV9nZW1fb2JqZWN0LmMgIHwgICAyICsKIC4uLi9kcm0vaTkxNS9n
ZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAxMTAgLS0tLS0tLS0tLS0tLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgICAgfCAgMzAgKy0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jICAgICB8ICAgMiArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oICAgICAgICAgICB8ICAgNCArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyAgICAgICAgIHwgICAxICsKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfc2NhdHRlcmxpc3QuYyAgICAgICB8ICAzOSArKysrKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NhdHRlcmxpc3QuaCAgICAgICB8IDEyNyArKysrKysrKysr
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jICAgICB8
ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvc2NhdHRlcmxpc3QuYyAgfCAg
IDEgKwogMTkgZmlsZXMgY2hhbmdlZCwgMTg4IGluc2VydGlvbnMoKyksIDE0MSBkZWxldGlvbnMo
LSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjYXR0ZXJs
aXN0LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjYXR0
ZXJsaXN0LmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IDBjMzllZjk2N2NmMC4uOWY1ZjRhY2Fj
YWU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtNDQsNiArNDQsNyBAQCBpOTE1LXkgKz0gaTkx
NV9kcnYubyBcCiAJICBpOTE1X2lycS5vIFwKIAkgIGk5MTVfcGFyYW1zLm8gXAogCSAgaTkxNV9w
Y2kubyBcCisJICBpOTE1X3NjYXR0ZXJsaXN0Lm8gXAogCSAgaTkxNV9zdXNwZW5kLm8gXAogCSAg
aTkxNV9zeXNmcy5vIFwKIAkgIGludGVsX2Nzci5vIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9kbWFidWYuYwppbmRleCA2MDBmYzkyNmY4MWUuLjYyNTM5N2RlYjcwMSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwpAQCAtMTAsNiArMTAs
NyBAQAogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1X2dlbV9vYmplY3Qu
aCIKKyNpbmNsdWRlICJpOTE1X3NjYXR0ZXJsaXN0LmgiCiAKIHN0YXRpYyBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqZG1hX2J1Zl90b19vYmooc3RydWN0IGRtYV9idWYgKmJ1ZikKIHsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2ludGVybmFsLmMKaW5kZXggNDZmNWU4
ZGVkMDBjLi41YTk4ODBhOGU2MGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9pbnRlcm5hbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9pbnRlcm5hbC5jCkBAIC0xMyw2ICsxMyw3IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIK
ICNpbmNsdWRlICJpOTE1X2dlbS5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX29iamVjdC5oIgorI2lu
Y2x1ZGUgImk5MTVfc2NhdHRlcmxpc3QuaCIKICNpbmNsdWRlICJpOTE1X3V0aWxzLmgiCiAKICNk
ZWZpbmUgUVVJRVQgKF9fR0ZQX05PUkVUUlkgfCBfX0dGUF9OT1dBUk4pCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCmluZGV4IGRiZjNlYjQwMGM5ZS4uM2Q5YjExZGIx
NWVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYwpAQCAtNiw2
ICs2LDcgQEAKIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fb2Jq
ZWN0LmgiCisjaW5jbHVkZSAiaTkxNV9zY2F0dGVybGlzdC5oIgogCiB2b2lkIF9faTkxNV9nZW1f
b2JqZWN0X3NldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJCSBz
dHJ1Y3Qgc2dfdGFibGUgKnBhZ2VzLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3BoeXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9w
aHlzLmMKaW5kZXggMWMwY2U2OWY3NjViLi4yZGVhYzkzM2NmNTkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9waHlzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYwpAQCAtMTUsNiArMTUsNyBAQAogCiAjaW5jbHVkZSAi
aTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1X2dlbV9vYmplY3QuaCIKKyNpbmNsdWRlICJpOTE1
X3NjYXR0ZXJsaXN0LmgiCiAKIHN0YXRpYyBpbnQgaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlc19w
aHlzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jCmluZGV4IDU2ODE2NGNhNjZmZC4uNjY1ZjIyZWJmOGU4
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYwpAQCAtOSw2ICs5
LDcgQEAKIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1fb2JqZWN0
LmgiCisjaW5jbHVkZSAiaTkxNV9zY2F0dGVybGlzdC5oIgogCiAvKgogICogTW92ZSBwYWdlcyB0
byBhcHByb3ByaWF0ZSBscnUgYW5kIHJlbGVhc2UgdGhlIHBhZ2V2ZWMsIGRlY3JlbWVudGluZyB0
aGUKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCmluZGV4IDYz
NzU5YWZkZjk3Zi4uMTI0NWYyM2NlOWEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV91c2VycHRyLmMKQEAgLTE0LDYgKzE0LDcgQEAKIAogI2luY2x1ZGUgImk5MTVfZ2Vt
X2lvY3Rscy5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX29iamVjdC5oIgorI2luY2x1ZGUgImk5MTVf
c2NhdHRlcmxpc3QuaCIKICNpbmNsdWRlICJpOTE1X3RyYWNlLmgiCiAjaW5jbHVkZSAiaW50ZWxf
ZHJ2LmgiCiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aHVnZV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1
Z2VfZ2VtX29iamVjdC5jCmluZGV4IDgyNGYzNzYxMzE0Yy4uYzAzNzgxZjhiNDM1IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfZ2VtX29iamVjdC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9nZW1fb2JqZWN0
LmMKQEAgLTQsNiArNCw4IEBACiAgKiBDb3B5cmlnaHQgwqkgMjAxNiBJbnRlbCBDb3Jwb3JhdGlv
bgogICovCiAKKyNpbmNsdWRlICIuLi8uLi9pOTE1X3NjYXR0ZXJsaXN0LmgiCisKICNpbmNsdWRl
ICJodWdlX2dlbV9vYmplY3QuaCIKIAogc3RhdGljIHZvaWQgaHVnZV9mcmVlX3BhZ2VzKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYuYwppbmRleCBiNzQzMTcxMmRlNjYuLmM5
MGQ0ZGIyOWE1YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9pOTE1X2dlbV9kbWFidWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jCkBAIC05LDYgKzksOCBAQAogI2luY2x1ZGUgIm1vY2tfZG1h
YnVmLmgiCiAjaW5jbHVkZSAic2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5oIgogCisjaW5jbHVk
ZSAiLi4vLi4vaTkxNV9kcnYuaCIKKwogc3RhdGljIGludCBpZ3RfZG1hYnVmX2V4cG9ydCh2b2lk
ICphcmcpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBhcmc7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaAppbmRleCBlYmE3ZWZmNzQxODQuLjg5ZmJmOTkyN2U2YyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCkBAIC0yMTU4LDExMSArMjE1OCw2IEBAIGVudW0gaGRtaV9mb3JjZV9h
dWRpbyB7CiAJR0VOTUFTSyhJTlRFTF9GUk9OVEJVRkZFUl9CSVRTX1BFUl9QSVBFICogKChwaXBl
KSArIDEpIC0gMSwgXAogCQlJTlRFTF9GUk9OVEJVRkZFUl9CSVRTX1BFUl9QSVBFICogKHBpcGUp
KQogCi0vKgotICogT3B0aW1pc2VkIFNHTCBpdGVyYXRvciBmb3IgR0VNIG9iamVjdHMKLSAqLwot
c3RhdGljIF9fYWx3YXlzX2lubGluZSBzdHJ1Y3Qgc2d0X2l0ZXIgewotCXN0cnVjdCBzY2F0dGVy
bGlzdCAqc2dwOwotCXVuaW9uIHsKLQkJdW5zaWduZWQgbG9uZyBwZm47Ci0JCWRtYV9hZGRyX3Qg
ZG1hOwotCX07Ci0JdW5zaWduZWQgaW50IGN1cnI7Ci0JdW5zaWduZWQgaW50IG1heDsKLX0gX19z
Z3RfaXRlcihzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnbCwgYm9vbCBkbWEpIHsKLQlzdHJ1Y3Qgc2d0
X2l0ZXIgcyA9IHsgLnNncCA9IHNnbCB9OwotCi0JaWYgKHMuc2dwKSB7Ci0JCXMubWF4ID0gcy5j
dXJyID0gcy5zZ3AtPm9mZnNldDsKLQkJcy5tYXggKz0gcy5zZ3AtPmxlbmd0aDsKLQkJaWYgKGRt
YSkKLQkJCXMuZG1hID0gc2dfZG1hX2FkZHJlc3Mocy5zZ3ApOwotCQllbHNlCi0JCQlzLnBmbiA9
IHBhZ2VfdG9fcGZuKHNnX3BhZ2Uocy5zZ3ApKTsKLQl9Ci0KLQlyZXR1cm4gczsKLX0KLQotc3Rh
dGljIGlubGluZSBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKl9fX19zZ19uZXh0KHN0cnVjdCBzY2F0dGVy
bGlzdCAqc2cpCi17Ci0JKytzZzsKLQlpZiAodW5saWtlbHkoc2dfaXNfY2hhaW4oc2cpKSkKLQkJ
c2cgPSBzZ19jaGFpbl9wdHIoc2cpOwotCXJldHVybiBzZzsKLX0KLQotLyoqCi0gKiBfX3NnX25l
eHQgLSByZXR1cm4gdGhlIG5leHQgc2NhdHRlcmxpc3QgZW50cnkgaW4gYSBsaXN0Ci0gKiBAc2c6
CQlUaGUgY3VycmVudCBzZyBlbnRyeQotICoKLSAqIERlc2NyaXB0aW9uOgotICogICBJZiB0aGUg
ZW50cnkgaXMgdGhlIGxhc3QsIHJldHVybiBOVUxMOyBvdGhlcndpc2UsIHN0ZXAgdG8gdGhlIG5l
eHQKLSAqICAgZWxlbWVudCBpbiB0aGUgYXJyYXkgKEBzZ0ArMSkuIElmIHRoYXQncyBhIGNoYWlu
IHBvaW50ZXIsIGZvbGxvdyBpdDsKLSAqICAgb3RoZXJ3aXNlIGp1c3QgcmV0dXJuIHRoZSBwb2lu
dGVyIHRvIHRoZSBjdXJyZW50IGVsZW1lbnQuCi0gKiovCi1zdGF0aWMgaW5saW5lIHN0cnVjdCBz
Y2F0dGVybGlzdCAqX19zZ19uZXh0KHN0cnVjdCBzY2F0dGVybGlzdCAqc2cpCi17Ci0JcmV0dXJu
IHNnX2lzX2xhc3Qoc2cpID8gTlVMTCA6IF9fX19zZ19uZXh0KHNnKTsKLX0KLQotLyoqCi0gKiBm
b3JfZWFjaF9zZ3RfZG1hIC0gaXRlcmF0ZSBvdmVyIHRoZSBETUEgYWRkcmVzc2VzIG9mIHRoZSBn
aXZlbiBzZ190YWJsZQotICogQF9fZG1hcDoJRE1BIGFkZHJlc3MgKG91dHB1dCkKLSAqIEBfX2l0
ZXI6CSdzdHJ1Y3Qgc2d0X2l0ZXInIChpdGVyYXRvciBzdGF0ZSwgaW50ZXJuYWwpCi0gKiBAX19z
Z3Q6CXNnX3RhYmxlIHRvIGl0ZXJhdGUgb3ZlciAoaW5wdXQpCi0gKi8KLSNkZWZpbmUgZm9yX2Vh
Y2hfc2d0X2RtYShfX2RtYXAsIF9faXRlciwgX19zZ3QpCQkJCVwKLQlmb3IgKChfX2l0ZXIpID0g
X19zZ3RfaXRlcigoX19zZ3QpLT5zZ2wsIHRydWUpOwkJCVwKLQkgICAgICgoX19kbWFwKSA9IChf
X2l0ZXIpLmRtYSArIChfX2l0ZXIpLmN1cnIpOwkJCVwKLQkgICAgICgoKF9faXRlcikuY3VyciAr
PSBJOTE1X0dUVF9QQUdFX1NJWkUpID49IChfX2l0ZXIpLm1heCkgPwlcCi0JICAgICAoX19pdGVy
KSA9IF9fc2d0X2l0ZXIoX19zZ19uZXh0KChfX2l0ZXIpLnNncCksIHRydWUpLCAwIDogMCkKLQot
LyoqCi0gKiBmb3JfZWFjaF9zZ3RfcGFnZSAtIGl0ZXJhdGUgb3ZlciB0aGUgcGFnZXMgb2YgdGhl
IGdpdmVuIHNnX3RhYmxlCi0gKiBAX19wcDoJcGFnZSBwb2ludGVyIChvdXRwdXQpCi0gKiBAX19p
dGVyOgknc3RydWN0IHNndF9pdGVyJyAoaXRlcmF0b3Igc3RhdGUsIGludGVybmFsKQotICogQF9f
c2d0OglzZ190YWJsZSB0byBpdGVyYXRlIG92ZXIgKGlucHV0KQotICovCi0jZGVmaW5lIGZvcl9l
YWNoX3NndF9wYWdlKF9fcHAsIF9faXRlciwgX19zZ3QpCQkJCVwKLQlmb3IgKChfX2l0ZXIpID0g
X19zZ3RfaXRlcigoX19zZ3QpLT5zZ2wsIGZhbHNlKTsJCVwKLQkgICAgICgoX19wcCkgPSAoX19p
dGVyKS5wZm4gPT0gMCA/IE5VTEwgOgkJCVwKLQkgICAgICBwZm5fdG9fcGFnZSgoX19pdGVyKS5w
Zm4gKyAoKF9faXRlcikuY3VyciA+PiBQQUdFX1NISUZUKSkpOyBcCi0JICAgICAoKChfX2l0ZXIp
LmN1cnIgKz0gUEFHRV9TSVpFKSA+PSAoX19pdGVyKS5tYXgpID8JCVwKLQkgICAgIChfX2l0ZXIp
ID0gX19zZ3RfaXRlcihfX3NnX25leHQoKF9faXRlcikuc2dwKSwgZmFsc2UpLCAwIDogMCkKLQot
Ym9vbCBpOTE1X3NnX3RyaW0oc3RydWN0IHNnX3RhYmxlICpvcmlnX3N0KTsKLQotc3RhdGljIGlu
bGluZSB1bnNpZ25lZCBpbnQgaTkxNV9zZ19wYWdlX3NpemVzKHN0cnVjdCBzY2F0dGVybGlzdCAq
c2cpCi17Ci0JdW5zaWduZWQgaW50IHBhZ2Vfc2l6ZXM7Ci0KLQlwYWdlX3NpemVzID0gMDsKLQl3
aGlsZSAoc2cpIHsKLQkJR0VNX0JVR19PTihzZy0+b2Zmc2V0KTsKLQkJR0VNX0JVR19PTighSVNf
QUxJR05FRChzZy0+bGVuZ3RoLCBQQUdFX1NJWkUpKTsKLQkJcGFnZV9zaXplcyB8PSBzZy0+bGVu
Z3RoOwotCQlzZyA9IF9fc2dfbmV4dChzZyk7Ci0JfQotCi0JcmV0dXJuIHBhZ2Vfc2l6ZXM7Ci19
Ci0KLXN0YXRpYyBpbmxpbmUgdW5zaWduZWQgaW50IGk5MTVfc2dfc2VnbWVudF9zaXplKHZvaWQp
Ci17Ci0JdW5zaWduZWQgaW50IHNpemUgPSBzd2lvdGxiX21heF9zZWdtZW50KCk7Ci0KLQlpZiAo
c2l6ZSA9PSAwKQotCQlyZXR1cm4gU0NBVFRFUkxJU1RfTUFYX1NFR01FTlQ7Ci0KLQlzaXplID0g
cm91bmRkb3duKHNpemUsIFBBR0VfU0laRSk7Ci0JLyogc3dpb3RsYl9tYXhfc2VnbWVudF9zaXpl
IGNhbiByZXR1cm4gMSBieXRlIHdoZW4gaXQgbWVhbnMgb25lIHBhZ2UuICovCi0JaWYgKHNpemUg
PCBQQUdFX1NJWkUpCi0JCXNpemUgPSBQQUdFX1NJWkU7Ci0KLQlyZXR1cm4gc2l6ZTsKLX0KLQog
I2RlZmluZSBJTlRFTF9JTkZPKGRldl9wcml2KQkoJihkZXZfcHJpdiktPl9faW5mbykKICNkZWZp
bmUgUlVOVElNRV9JTkZPKGRldl9wcml2KQkoJihkZXZfcHJpdiktPl9fcnVudGltZSkKICNkZWZp
bmUgRFJJVkVSX0NBUFMoZGV2X3ByaXYpCSgmKGRldl9wcml2KS0+Y2FwcykKQEAgLTI3OTgsMTEg
KzI2OTMsNiBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X3VuYmluZChzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKTsKIAogdm9pZCBpOTE1X2dlbV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKIAotc3RhdGljIGlubGluZSBpbnQgX19zZ19wYWdl
X2NvdW50KGNvbnN0IHN0cnVjdCBzY2F0dGVybGlzdCAqc2cpCi17Ci0JcmV0dXJuIHNnLT5sZW5n
dGggPj4gUEFHRV9TSElGVDsKLX0KLQogc3RhdGljIGlubGluZSBpbnQgX19tdXN0X2NoZWNrCiBp
OTE1X211dGV4X2xvY2tfaW50ZXJydXB0aWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogewpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggMzQzYThhODM3MzYzLi43ZmExMjM2Njc3YjkgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtNTAsNiArNTAsNyBAQAogI2luY2x1ZGUgImd0L2lu
dGVsX3dvcmthcm91bmRzLmgiCiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgorI2luY2x1ZGUgImk5
MTVfc2NhdHRlcmxpc3QuaCIKICNpbmNsdWRlICJpOTE1X3RyYWNlLmgiCiAjaW5jbHVkZSAiaTkx
NV92Z3B1LmgiCiAKQEAgLTEwNjEsMzQgKzEwNjIsNiBAQCB2b2lkIGk5MTVfZ2VtX3J1bnRpbWVf
c3VzcGVuZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJfQogfQogCi1ib29s
IGk5MTVfc2dfdHJpbShzdHJ1Y3Qgc2dfdGFibGUgKm9yaWdfc3QpCi17Ci0Jc3RydWN0IHNnX3Rh
YmxlIG5ld19zdDsKLQlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnLCAqbmV3X3NnOwotCXVuc2lnbmVk
IGludCBpOwotCi0JaWYgKG9yaWdfc3QtPm5lbnRzID09IG9yaWdfc3QtPm9yaWdfbmVudHMpCi0J
CXJldHVybiBmYWxzZTsKLQotCWlmIChzZ19hbGxvY190YWJsZSgmbmV3X3N0LCBvcmlnX3N0LT5u
ZW50cywgR0ZQX0tFUk5FTCB8IF9fR0ZQX05PV0FSTikpCi0JCXJldHVybiBmYWxzZTsKLQotCW5l
d19zZyA9IG5ld19zdC5zZ2w7Ci0JZm9yX2VhY2hfc2cob3JpZ19zdC0+c2dsLCBzZywgb3JpZ19z
dC0+bmVudHMsIGkpIHsKLQkJc2dfc2V0X3BhZ2UobmV3X3NnLCBzZ19wYWdlKHNnKSwgc2ctPmxl
bmd0aCwgMCk7Ci0JCXNnX2RtYV9hZGRyZXNzKG5ld19zZykgPSBzZ19kbWFfYWRkcmVzcyhzZyk7
Ci0JCXNnX2RtYV9sZW4obmV3X3NnKSA9IHNnX2RtYV9sZW4oc2cpOwotCi0JCW5ld19zZyA9IHNn
X25leHQobmV3X3NnKTsKLQl9Ci0JR0VNX0JVR19PTihuZXdfc2cpOyAvKiBTaG91bGQgd2FsayBl
eGFjdGx5IG5lbnRzIGFuZCBoaXQgdGhlIGVuZCAqLwotCi0Jc2dfZnJlZV90YWJsZShvcmlnX3N0
KTsKLQotCSpvcmlnX3N0ID0gbmV3X3N0OwotCXJldHVybiB0cnVlOwotfQotCiBzdGF0aWMgdW5z
aWduZWQgbG9uZyB0b193YWl0X3RpbWVvdXQoczY0IHRpbWVvdXRfbnMpCiB7CiAJaWYgKHRpbWVv
dXRfbnMgPCAwKQpAQCAtMjM0Miw3ICsyMzE1LDYgQEAgdm9pZCBpOTE1X2dlbV90cmFja19mYihz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2xkLAogfQogCiAjaWYgSVNfRU5BQkxFRChDT05G
SUdfRFJNX0k5MTVfU0VMRlRFU1QpCi0jaW5jbHVkZSAic2VsZnRlc3RzL3NjYXR0ZXJsaXN0LmMi
CiAjaW5jbHVkZSAic2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jIgogI2luY2x1ZGUgInNlbGZ0
ZXN0cy9pOTE1X2dlbS5jIgogI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9mZW5jZV9yZWcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2Zl
bmNlX3JlZy5jCmluZGV4IDMwODRmNTJlMzM3Mi4uMmU5ZTMyMzMwYWFhIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYwpAQCAtMjIsNyArMjIsOSBAQAogICovCiAK
ICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KKwogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisjaW5j
bHVkZSAiaTkxNV9zY2F0dGVybGlzdC5oIgogCiAvKioKICAqIERPQzogZmVuY2UgcmVnaXN0ZXIg
aGFuZGxpbmcKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggOGY1ZGI3ODdiN2Yy
Li5kM2ViYTY3ZDRiZjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0zNiw4
ICszNiw5IEBACiAjaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+CiAKICNpbmNsdWRlICJpOTE1X2Ry
di5oIgotI2luY2x1ZGUgImk5MTVfdmdwdS5oIgorI2luY2x1ZGUgImk5MTVfc2NhdHRlcmxpc3Qu
aCIKICNpbmNsdWRlICJpOTE1X3RyYWNlLmgiCisjaW5jbHVkZSAiaTkxNV92Z3B1LmgiCiAjaW5j
bHVkZSAiaW50ZWxfZHJ2LmgiCiAjaW5jbHVkZSAiaW50ZWxfZnJvbnRidWZmZXIuaCIKIApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAppbmRleCA1OTMwNzlmMzBmYmUuLjhlNjYxYzc2ZDIz
NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKQEAgLTQwLDYgKzQwLDcgQEAKIAog
I2luY2x1ZGUgImd0L2ludGVsX3Jlc2V0LmgiCiAjaW5jbHVkZSAiaTkxNV9yZXF1ZXN0LmgiCisj
aW5jbHVkZSAiaTkxNV9zY2F0dGVybGlzdC5oIgogI2luY2x1ZGUgImk5MTVfc2VsZnRlc3QuaCIK
ICNpbmNsdWRlICJpOTE1X3RpbWVsaW5lLmgiCiAKQEAgLTE2Miw3ICsxNjMsOCBAQCB0eXBlZGVm
IHU2NCBnZW44X3BwZ3R0X3BtbDRlX3Q7CiAjZGVmaW5lIEdFTjhfUERFX0lQU182NEsgQklUKDEx
KQogI2RlZmluZSBHRU44X1BERV9QU18yTSAgIEJJVCg3KQogCi1zdHJ1Y3Qgc2dfdGFibGU7Cisj
ZGVmaW5lIGZvcl9lYWNoX3NndF9kbWEoX19kbWFwLCBfX2l0ZXIsIF9fc2d0KSBcCisJX19mb3Jf
ZWFjaF9zZ3RfZG1hKF9fZG1hcCwgX19pdGVyLCBfX3NndCwgSTkxNV9HVFRfUEFHRV9TSVpFKQog
CiBzdHJ1Y3QgaW50ZWxfcm90YXRpb25faW5mbyB7CiAJc3RydWN0IGludGVsX3JvdGF0aW9uX3Bs
YW5lX2luZm8gewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJy
b3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5kZXggYzg2ODY1
YTM0OTcyLi43MDc4MTEyNTY1MDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ3B1X2Vycm9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3Iu
YwpAQCAtNDAsNiArNDAsNyBAQAogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJp
OTE1X2dwdV9lcnJvci5oIgorI2luY2x1ZGUgImk5MTVfc2NhdHRlcmxpc3QuaCIKICNpbmNsdWRl
ICJpbnRlbF9hdG9taWMuaCIKICNpbmNsdWRlICJpbnRlbF9jc3IuaCIKICNpbmNsdWRlICJpbnRl
bF9vdmVybGF5LmgiCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjYXR0
ZXJsaXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjYXR0ZXJsaXN0LmMKbmV3IGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5jYzZiMzg0NmE4YzcKLS0tIC9kZXYv
bnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjYXR0ZXJsaXN0LmMKQEAgLTAs
MCArMSwzOSBAQAorLyoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKyAqCisgKiBD
b3B5cmlnaHQgwqkgMjAxNiBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRlICJpOTE1
X3NjYXR0ZXJsaXN0LmgiCisKK2Jvb2wgaTkxNV9zZ190cmltKHN0cnVjdCBzZ190YWJsZSAqb3Jp
Z19zdCkKK3sKKwlzdHJ1Y3Qgc2dfdGFibGUgbmV3X3N0OworCXN0cnVjdCBzY2F0dGVybGlzdCAq
c2csICpuZXdfc2c7CisJdW5zaWduZWQgaW50IGk7CisKKwlpZiAob3JpZ19zdC0+bmVudHMgPT0g
b3JpZ19zdC0+b3JpZ19uZW50cykKKwkJcmV0dXJuIGZhbHNlOworCisJaWYgKHNnX2FsbG9jX3Rh
YmxlKCZuZXdfc3QsIG9yaWdfc3QtPm5lbnRzLCBHRlBfS0VSTkVMIHwgX19HRlBfTk9XQVJOKSkK
KwkJcmV0dXJuIGZhbHNlOworCisJbmV3X3NnID0gbmV3X3N0LnNnbDsKKwlmb3JfZWFjaF9zZyhv
cmlnX3N0LT5zZ2wsIHNnLCBvcmlnX3N0LT5uZW50cywgaSkgeworCQlzZ19zZXRfcGFnZShuZXdf
c2csIHNnX3BhZ2Uoc2cpLCBzZy0+bGVuZ3RoLCAwKTsKKwkJc2dfZG1hX2FkZHJlc3MobmV3X3Nn
KSA9IHNnX2RtYV9hZGRyZXNzKHNnKTsKKwkJc2dfZG1hX2xlbihuZXdfc2cpID0gc2dfZG1hX2xl
bihzZyk7CisKKwkJbmV3X3NnID0gc2dfbmV4dChuZXdfc2cpOworCX0KKwlHRU1fQlVHX09OKG5l
d19zZyk7IC8qIFNob3VsZCB3YWxrIGV4YWN0bHkgbmVudHMgYW5kIGhpdCB0aGUgZW5kICovCisK
KwlzZ19mcmVlX3RhYmxlKG9yaWdfc3QpOworCisJKm9yaWdfc3QgPSBuZXdfc3Q7CisJcmV0dXJu
IHRydWU7Cit9CisKKyNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9TRUxGVEVTVCkKKyNp
bmNsdWRlICJzZWxmdGVzdHMvc2NhdHRlcmxpc3QuYyIKKyNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2F0dGVybGlzdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9zY2F0dGVybGlzdC5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAw
MDAwMC4uNjYxNzk2M2RmOWVkCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9zY2F0dGVybGlzdC5oCkBAIC0wLDAgKzEsMTI3IEBACisvKgorICogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IE1JVAorICoKKyAqIENvcHlyaWdodCDCqSAyMDE2IEludGVsIENvcnBv
cmF0aW9uCisgKi8KKworI2lmbmRlZiBJOTE1X1NDQVRURVJMSVNUX0gKKyNkZWZpbmUgSTkxNV9T
Q0FUVEVSTElTVF9ICisKKyNpbmNsdWRlIDxsaW51eC9wZm4uaD4KKyNpbmNsdWRlIDxsaW51eC9z
Y2F0dGVybGlzdC5oPgorI2luY2x1ZGUgPGxpbnV4L3N3aW90bGIuaD4KKworI2luY2x1ZGUgImk5
MTVfZ2VtLmgiCisKKy8qCisgKiBPcHRpbWlzZWQgU0dMIGl0ZXJhdG9yIGZvciBHRU0gb2JqZWN0
cworICovCitzdGF0aWMgX19hbHdheXNfaW5saW5lIHN0cnVjdCBzZ3RfaXRlciB7CisJc3RydWN0
IHNjYXR0ZXJsaXN0ICpzZ3A7CisJdW5pb24geworCQl1bnNpZ25lZCBsb25nIHBmbjsKKwkJZG1h
X2FkZHJfdCBkbWE7CisJfTsKKwl1bnNpZ25lZCBpbnQgY3VycjsKKwl1bnNpZ25lZCBpbnQgbWF4
OworfSBfX3NndF9pdGVyKHN0cnVjdCBzY2F0dGVybGlzdCAqc2dsLCBib29sIGRtYSkgeworCXN0
cnVjdCBzZ3RfaXRlciBzID0geyAuc2dwID0gc2dsIH07CisKKwlpZiAocy5zZ3ApIHsKKwkJcy5t
YXggPSBzLmN1cnIgPSBzLnNncC0+b2Zmc2V0OworCQlzLm1heCArPSBzLnNncC0+bGVuZ3RoOwor
CQlpZiAoZG1hKQorCQkJcy5kbWEgPSBzZ19kbWFfYWRkcmVzcyhzLnNncCk7CisJCWVsc2UKKwkJ
CXMucGZuID0gcGFnZV90b19wZm4oc2dfcGFnZShzLnNncCkpOworCX0KKworCXJldHVybiBzOwor
fQorCitzdGF0aWMgaW5saW5lIGludCBfX3NnX3BhZ2VfY291bnQoY29uc3Qgc3RydWN0IHNjYXR0
ZXJsaXN0ICpzZykKK3sKKwlyZXR1cm4gc2ctPmxlbmd0aCA+PiBQQUdFX1NISUZUOworfQorCitz
dGF0aWMgaW5saW5lIHN0cnVjdCBzY2F0dGVybGlzdCAqX19fX3NnX25leHQoc3RydWN0IHNjYXR0
ZXJsaXN0ICpzZykKK3sKKwkrK3NnOworCWlmICh1bmxpa2VseShzZ19pc19jaGFpbihzZykpKQor
CQlzZyA9IHNnX2NoYWluX3B0cihzZyk7CisJcmV0dXJuIHNnOworfQorCisvKioKKyAqIF9fc2df
bmV4dCAtIHJldHVybiB0aGUgbmV4dCBzY2F0dGVybGlzdCBlbnRyeSBpbiBhIGxpc3QKKyAqIEBz
ZzoJCVRoZSBjdXJyZW50IHNnIGVudHJ5CisgKgorICogRGVzY3JpcHRpb246CisgKiAgIElmIHRo
ZSBlbnRyeSBpcyB0aGUgbGFzdCwgcmV0dXJuIE5VTEw7IG90aGVyd2lzZSwgc3RlcCB0byB0aGUg
bmV4dAorICogICBlbGVtZW50IGluIHRoZSBhcnJheSAoQHNnQCsxKS4gSWYgdGhhdCdzIGEgY2hh
aW4gcG9pbnRlciwgZm9sbG93IGl0OworICogICBvdGhlcndpc2UganVzdCByZXR1cm4gdGhlIHBv
aW50ZXIgdG8gdGhlIGN1cnJlbnQgZWxlbWVudC4KKyAqKi8KK3N0YXRpYyBpbmxpbmUgc3RydWN0
IHNjYXR0ZXJsaXN0ICpfX3NnX25leHQoc3RydWN0IHNjYXR0ZXJsaXN0ICpzZykKK3sKKwlyZXR1
cm4gc2dfaXNfbGFzdChzZykgPyBOVUxMIDogX19fX3NnX25leHQoc2cpOworfQorCisvKioKKyAq
IF9fZm9yX2VhY2hfc2d0X2RtYSAtIGl0ZXJhdGUgb3ZlciB0aGUgRE1BIGFkZHJlc3NlcyBvZiB0
aGUgZ2l2ZW4gc2dfdGFibGUKKyAqIEBfX2RtYXA6CURNQSBhZGRyZXNzIChvdXRwdXQpCisgKiBA
X19pdGVyOgknc3RydWN0IHNndF9pdGVyJyAoaXRlcmF0b3Igc3RhdGUsIGludGVybmFsKQorICog
QF9fc2d0OglzZ190YWJsZSB0byBpdGVyYXRlIG92ZXIgKGlucHV0KQorICogQF9fc3RlcDoJc3Rl
cCBzaXplCisgKi8KKyNkZWZpbmUgX19mb3JfZWFjaF9zZ3RfZG1hKF9fZG1hcCwgX19pdGVyLCBf
X3NndCwgX19zdGVwKQkJXAorCWZvciAoKF9faXRlcikgPSBfX3NndF9pdGVyKChfX3NndCktPnNn
bCwgdHJ1ZSk7CQkJXAorCSAgICAgKChfX2RtYXApID0gKF9faXRlcikuZG1hICsgKF9faXRlciku
Y3Vycik7CQkJXAorCSAgICAgKCgoX19pdGVyKS5jdXJyICs9IChfX3N0ZXApKSA+PSAoX19pdGVy
KS5tYXgpID8JCVwKKwkgICAgIChfX2l0ZXIpID0gX19zZ3RfaXRlcihfX3NnX25leHQoKF9faXRl
cikuc2dwKSwgdHJ1ZSksIDAgOiAwKQorCisvKioKKyAqIGZvcl9lYWNoX3NndF9wYWdlIC0gaXRl
cmF0ZSBvdmVyIHRoZSBwYWdlcyBvZiB0aGUgZ2l2ZW4gc2dfdGFibGUKKyAqIEBfX3BwOglwYWdl
IHBvaW50ZXIgKG91dHB1dCkKKyAqIEBfX2l0ZXI6CSdzdHJ1Y3Qgc2d0X2l0ZXInIChpdGVyYXRv
ciBzdGF0ZSwgaW50ZXJuYWwpCisgKiBAX19zZ3Q6CXNnX3RhYmxlIHRvIGl0ZXJhdGUgb3ZlciAo
aW5wdXQpCisgKi8KKyNkZWZpbmUgZm9yX2VhY2hfc2d0X3BhZ2UoX19wcCwgX19pdGVyLCBfX3Nn
dCkJCQkJXAorCWZvciAoKF9faXRlcikgPSBfX3NndF9pdGVyKChfX3NndCktPnNnbCwgZmFsc2Up
OwkJXAorCSAgICAgKChfX3BwKSA9IChfX2l0ZXIpLnBmbiA9PSAwID8gTlVMTCA6CQkJXAorCSAg
ICAgIHBmbl90b19wYWdlKChfX2l0ZXIpLnBmbiArICgoX19pdGVyKS5jdXJyID4+IFBBR0VfU0hJ
RlQpKSk7IFwKKwkgICAgICgoKF9faXRlcikuY3VyciArPSBQQUdFX1NJWkUpID49IChfX2l0ZXIp
Lm1heCkgPwkJXAorCSAgICAgKF9faXRlcikgPSBfX3NndF9pdGVyKF9fc2dfbmV4dCgoX19pdGVy
KS5zZ3ApLCBmYWxzZSksIDAgOiAwKQorCitzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludCBpOTE1
X3NnX3BhZ2Vfc2l6ZXMoc3RydWN0IHNjYXR0ZXJsaXN0ICpzZykKK3sKKwl1bnNpZ25lZCBpbnQg
cGFnZV9zaXplczsKKworCXBhZ2Vfc2l6ZXMgPSAwOworCXdoaWxlIChzZykgeworCQlHRU1fQlVH
X09OKHNnLT5vZmZzZXQpOworCQlHRU1fQlVHX09OKCFJU19BTElHTkVEKHNnLT5sZW5ndGgsIFBB
R0VfU0laRSkpOworCQlwYWdlX3NpemVzIHw9IHNnLT5sZW5ndGg7CisJCXNnID0gX19zZ19uZXh0
KHNnKTsKKwl9CisKKwlyZXR1cm4gcGFnZV9zaXplczsKK30KKworc3RhdGljIGlubGluZSB1bnNp
Z25lZCBpbnQgaTkxNV9zZ19zZWdtZW50X3NpemUodm9pZCkKK3sKKwl1bnNpZ25lZCBpbnQgc2l6
ZSA9IHN3aW90bGJfbWF4X3NlZ21lbnQoKTsKKworCWlmIChzaXplID09IDApCisJCXJldHVybiBT
Q0FUVEVSTElTVF9NQVhfU0VHTUVOVDsKKworCXNpemUgPSByb3VuZGRvd24oc2l6ZSwgUEFHRV9T
SVpFKTsKKwkvKiBzd2lvdGxiX21heF9zZWdtZW50X3NpemUgY2FuIHJldHVybiAxIGJ5dGUgd2hl
biBpdCBtZWFucyBvbmUgcGFnZS4gKi8KKwlpZiAoc2l6ZSA8IFBBR0VfU0laRSkKKwkJc2l6ZSA9
IFBBR0VfU0laRTsKKworCXJldHVybiBzaXplOworfQorCitib29sIGk5MTVfc2dfdHJpbShzdHJ1
Y3Qgc2dfdGFibGUgKm9yaWdfc3QpOworCisjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2k5MTVfdm1hLmMKaW5kZXggMTMxZDBkOWE2Y2QxLi5iMGE0Mjk2YTA1MDQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jCkBAIC0zMCw2ICszMCw3IEBA
CiAjaW5jbHVkZSAibW9ja19ndHQuaCIKIAogI2luY2x1ZGUgIi4uL2dlbS9zZWxmdGVzdHMvbW9j
a19jb250ZXh0LmgiCisjaW5jbHVkZSAiLi4vaTkxNV9zY2F0dGVybGlzdC5oIgogCiBzdGF0aWMg
Ym9vbCBhc3NlcnRfdm1hKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAogCQkgICAgICAgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9zY2F0dGVybGlzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L3NjYXR0ZXJsaXN0LmMKaW5kZXggY2Q2ZDJhMTYwNzFmLi41ZjBjNDhhOWYwNTEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9zY2F0dGVybGlzdC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9zY2F0dGVybGlzdC5jCkBAIC0yNSw2ICsyNSw3
IEBACiAjaW5jbHVkZSA8bGludXgvcmFuZG9tLmg+CiAKICNpbmNsdWRlICIuLi9pOTE1X3NlbGZ0
ZXN0LmgiCisjaW5jbHVkZSAiLi4vaTkxNV91dGlscy5oIgogCiAjZGVmaW5lIFBGTl9CSUFTICgx
IDw8IDEwKQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
