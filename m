Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6306A307ADE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:27:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670026E9C4;
	Thu, 28 Jan 2021 16:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B79E86E98F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:26:22 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:25:22 +0100
Message-Id: <20210128162612.927917-14-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 13/63] drm/i915: Reject more ioctls for
 userptr
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUgYXJlIGEgY291cGxlIG9mIGlvY3RsJ3MgcmVsYXRlZCB0byB0aWxpbmcgYW5kIGNhY2hl
IHBsYWNlbWVudCwKdGhhdCBtYWtlIG5vIHNlbnNlIGZvciB1c2VycHRyLCByZWplY3QgdGhvc2U6
Ci0gaTkxNV9nZW1fc2V0X3RpbGluZ19pb2N0bCgpCiAgICBUaWxpbmcgc2hvdWxkIGFsd2F5cyBi
ZSBsaW5lYXIgZm9yIHVzZXJwdHIuIENoYW5naW5nIHBsYWNlbWVudCB3aWxsCiAgICBmYWlsIHdp
dGggLUVOWElPLgotIGk5MTVfZ2VtX3NldF9jYWNoaW5nX2lvY3RsKCkKICAgIFVzZXJwdHIgbWVt
b3J5IHNob3VsZCBhbHdheXMgYmUgY2FjaGVkLiBDaGFuZ2luZyBjYWNoaW5nIG1vZGUgd2lsbAog
ICAgZmFpbCB3aXRoIC1FTlhJTy4KLSBpOTE1X2dlbV9zZXRfZG9tYWluX2lvY3RsKCkKICAgIENo
YW5nZWQgdG8gYmUgZXF1aXZhbGVudCB0byBnZW1fd2FpdCwgd2hpY2ggaXMgY29ycmVjdCBmb3Ig
dGhlCiAgICBjYWNoZWQgbGluZWFyIHVzZXJwdHIgcG9pbnRlcnMuIFRoaXMgaXMgcmVxdWlyZWQg
YmVjYXVzZSB3ZQogICAgY2Fubm90IGdyYWIgYSByZWZlcmVuY2UgdG8gdGhlIHBhZ2VzIGluIHRo
ZSByZXdvcmssIGJ1dCB3YWl0aW5nCiAgICBmb3IgaWRsZSB3aWxsIGRvIHRoZSBzYW1lLgoKVGhp
cyBwbHVzIHRoZSBwcmV2aW91cyBjaGFuZ2VzIGhhdmUgYmVlbiB0ZXN0ZWQgYWdhaW5zdCBiZWln
bmV0CmJ5IHVzaW5nIGl0cyBvd24gdW5pdCB0ZXN0cywgYW5kIGludGVsLXZpZGVvLWNvbXB1dGUg
YnkgdXNpbmcKcGlnbGl0J3Mgb3BlbmNsIHRlc3RzLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6
IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KQ2M6
IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KCi0tIFN0aWxsIG5lZWRzIGFu
IGFjayBmcm9tIHJlbGV2YW50IHVzZXJzcGFjZSB0aGF0IGl0IHdvbid0IGJyZWFrLCBidXQgc2hv
dWxkIGJlIGdvb2QuCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5j
ICAgfCAxMiArKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3QuaCAgIHwgIDYgKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
dXNlcnB0ci5jICB8ICAzICsrLQogNCBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKaW5kZXggZDAxM2IwZmFiMTI4Li4zZTI0ZGI4YjlhZDYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNDE3Miw3ICsxNDE3Miw3IEBA
IHN0YXRpYyBpbnQgaW50ZWxfdXNlcl9mcmFtZWJ1ZmZlcl9jcmVhdGVfaGFuZGxlKHN0cnVjdCBk
cm1fZnJhbWVidWZmZXIgKmZiLAogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBp
bnRlbF9mYl9vYmooZmIpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkx
NShvYmotPmJhc2UuZGV2KTsKIAotCWlmIChvYmotPnVzZXJwdHIubW0pIHsKKwlpZiAoaTkxNV9n
ZW1fb2JqZWN0X2lzX3VzZXJwdHIob2JqKSkgewogCQlkcm1fZGJnKCZpOTE1LT5kcm0sCiAJCQki
YXR0ZW1wdGluZyB0byB1c2UgYSB1c2VycHRyIGZvciBhIGZyYW1lYnVmZmVyLCBkZW5pZWRcbiIp
OwogCQlyZXR1cm4gLUVJTlZBTDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9kb21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9k
b21haW4uYwppbmRleCAzNmY1NGNlZGFhZWIuLjMwNzhlOWEwOWY3MCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwpAQCAtMzM1LDcgKzMzNSwxMyBAQCBpbnQg
aTkxNV9nZW1fc2V0X2NhY2hpbmdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAq
ZGF0YSwKIAkgKiBub3QgYWxsb3dlZCB0byBiZSBjaGFuZ2VkIGJ5IHVzZXJzcGFjZS4KIAkgKi8K
IAlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX3Byb3h5KG9iaikpIHsKLQkJcmV0ID0gLUVOWElPOwor
CQkvKgorCQkgKiBTaWxlbnRseSBhbGxvdyBjYWNoZWQgZm9yIHVzZXJwdHI7IHRoZSB2dWxrYW4g
ZHJpdmVyCisJCSAqIHNldHMgYWxsIG9iamVjdHMgdG8gY2FjaGVkCisJCSAqLworCQlpZiAoIWk5
MTVfZ2VtX29iamVjdF9pc191c2VycHRyKG9iaikgfHwKKwkJICAgIGFyZ3MtPmNhY2hpbmcgIT0g
STkxNV9DQUNISU5HX0NBQ0hFRCkKKwkJCXJldCA9IC1FTlhJTzsKIAkJZ290byBvdXQ7CiAJfQog
CkBAIC01MzMsNyArNTM5LDkgQEAgaTkxNV9nZW1fc2V0X2RvbWFpbl9pb2N0bChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCSAqIGNvbnNpZGVyZWQgdG8gYmUgb3V0c2lkZSBv
ZiBhbnkgY2FjaGUgZG9tYWluLgogCSAqLwogCWlmIChpOTE1X2dlbV9vYmplY3RfaXNfcHJveHko
b2JqKSkgewotCQllcnIgPSAtRU5YSU87CisJCS8qIHNpbGVudGx5IGFsbG93IHVzZXJwdHIgdG8g
Y29tcGxldGUgKi8KKwkJaWYgKCFpOTE1X2dlbV9vYmplY3RfaXNfdXNlcnB0cihvYmopKQorCQkJ
ZXJyID0gLUVOWElPOwogCQlnb3RvIG91dDsKIAl9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuaAppbmRleCBlOWE4ZWU5NmQ2NGMuLjNmMzAwYTFkMjdiYSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaApAQCAtNTc0LDYgKzU3
NCwxMiBAQCB2b2lkIF9faTkxNV9nZW1fb2JqZWN0X2ZsdXNoX2Zyb250YnVmZmVyKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiB2b2lkIF9faTkxNV9nZW1fb2JqZWN0X2ludmFsaWRh
dGVfZnJvbnRidWZmZXIoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCQkJICAg
ICAgZW51bSBmYl9vcF9vcmlnaW4gb3JpZ2luKTsKIAorc3RhdGljIGlubGluZSBib29sCitpOTE1
X2dlbV9vYmplY3RfaXNfdXNlcnB0cihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQor
eworCXJldHVybiBvYmotPnVzZXJwdHIubW07Cit9CisKIHN0YXRpYyBpbmxpbmUgdm9pZAogaTkx
NV9nZW1fb2JqZWN0X2ZsdXNoX2Zyb250YnVmZmVyKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmosCiAJCQkJICBlbnVtIGZiX29wX29yaWdpbiBvcmlnaW4pCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYwppbmRleCAwYzMwY2E1MmRlZTMuLmM4OWNmOTEx
ZmIyOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJw
dHIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCkBA
IC03MjEsNyArNzIxLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
X29wcyBpOTE1X2dlbV91c2VycHRyX29wcyA9IHsKIAkubmFtZSA9ICJpOTE1X2dlbV9vYmplY3Rf
dXNlcnB0ciIsCiAJLmZsYWdzID0gSTkxNV9HRU1fT0JKRUNUX0lTX1NIUklOS0FCTEUgfAogCQkg
STkxNV9HRU1fT0JKRUNUX05PX01NQVAgfAotCQkgSTkxNV9HRU1fT0JKRUNUX0FTWU5DX0NBTkNF
TCwKKwkJIEk5MTVfR0VNX09CSkVDVF9BU1lOQ19DQU5DRUwgfAorCQkgSTkxNV9HRU1fT0JKRUNU
X0lTX1BST1hZLAogCS5nZXRfcGFnZXMgPSBpOTE1X2dlbV91c2VycHRyX2dldF9wYWdlcywKIAku
cHV0X3BhZ2VzID0gaTkxNV9nZW1fdXNlcnB0cl9wdXRfcGFnZXMsCiAJLmRtYWJ1Zl9leHBvcnQg
PSBpOTE1X2dlbV91c2VycHRyX2RtYWJ1Zl9leHBvcnQsCi0tIAoyLjMwLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
