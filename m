Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA8A13114
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 17:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B05E6E7EF;
	Fri,  3 May 2019 15:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50AC6E7EF
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 15:22:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16443272-1500050 
 for multiple; Fri, 03 May 2019 16:22:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 16:22:14 +0100
Message-Id: <20190503152214.26517-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503115225.30831-1-chris@chris-wilson.co.uk>
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Assert breadcrumbs are correctly
 ordered in the signal handler
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

SW5zaWRlIHRoZSBzaWduYWwgaGFuZGxlciwgd2UgZXhwZWN0IHRoZSByZXF1ZXN0cyB0byBiZSBv
cmRlcmVkIGJ5IHRoZWlyCmJyZWFkY3J1bWIgc3VjaCB0aGF0IG5vIGxhdGVyIHJlcXVlc3QgbWF5
IGJlIGNvbXBsZXRlIGlmIHdlIGZpbmQgYW4KZWFybGllciBpbmNvbXBsZXRlLiBBZGQgYW4gYXNz
ZXJ0IHRvIGNoZWNrIHRoYXQgdGhlIG5leHQgYnJlYWRjcnVtYgpzaG91bGQgbm90IGJlIGxvZ2lj
YWxseSBiZWZvcmUgdGhlIGN1cnJlbnQuCgp2MjogTW92ZSB0aGUgb3ZlcmhhbmdpbmcgbGluZSBp
bnRvIGl0cyBvd24gZnVuY3Rpb24gYW5kIHJldXNlIGl0IGFmdGVyCmRvaW5nIHRoZSBpbnNlcnRp
b24uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYyB8IDE5ICsrKysrKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKaW5kZXggM2NiZmZkNDAwYjFiLi5mZTQ1
NWYwMWFhNjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFk
Y3J1bWJzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMu
YwpAQCAtODAsNiArODAsMjIgQEAgc3RhdGljIGlubGluZSBib29sIF9fcmVxdWVzdF9jb21wbGV0
ZWQoY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJcmV0dXJuIGk5MTVfc2Vxbm9fcGFz
c2VkKF9faHdzcF9zZXFubyhycSksIHJxLT5mZW5jZS5zZXFubyk7CiB9CiAKK19fbWF5YmVfdW51
c2VkIHN0YXRpYyBib29sCitjaGVja19zaWduYWxfb3JkZXIoc3RydWN0IGludGVsX2NvbnRleHQg
KmNlLCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKK3sKKwlpZiAoIWxpc3RfaXNfbGFzdCgmcnEt
PnNpZ25hbF9saW5rLCAmY2UtPnNpZ25hbHMpICYmCisJICAgIGk5MTVfc2Vxbm9fcGFzc2VkKHJx
LT5mZW5jZS5zZXFubywKKwkJCSAgICAgIGxpc3RfbmV4dF9lbnRyeShycSwgc2lnbmFsX2xpbmsp
LT5mZW5jZS5zZXFubykpCisJCXJldHVybiBmYWxzZTsKKworCWlmICghbGlzdF9pc19maXJzdCgm
cnEtPnNpZ25hbF9saW5rLCAmY2UtPnNpZ25hbHMpICYmCisJICAgIGk5MTVfc2Vxbm9fcGFzc2Vk
KGxpc3RfcHJldl9lbnRyeShycSwgc2lnbmFsX2xpbmspLT5mZW5jZS5zZXFubywKKwkJCSAgICAg
IHJxLT5mZW5jZS5zZXFubykpCisJCXJldHVybiBmYWxzZTsKKworCXJldHVybiB0cnVlOworfQor
CiB2b2lkIGludGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQogewogCXN0cnVjdCBpbnRlbF9icmVhZGNydW1icyAqYiA9ICZlbmdpbmUtPmJy
ZWFkY3J1bWJzOwpAQCAtOTksNiArMTE1LDggQEAgdm9pZCBpbnRlbF9lbmdpbmVfYnJlYWRjcnVt
YnNfaXJxKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCXN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxID0KIAkJCQlsaXN0X2VudHJ5KHBvcywgdHlwZW9mKCpycSksIHNpZ25hbF9saW5r
KTsKIAorCQkJR0VNX0JVR19PTighY2hlY2tfc2lnbmFsX29yZGVyKGNlLCBycSkpOworCiAJCQlp
ZiAoIV9fcmVxdWVzdF9jb21wbGV0ZWQocnEpKQogCQkJCWJyZWFrOwogCkBAIC0yODIsNiArMzAw
LDcgQEAgYm9vbCBpOTE1X3JlcXVlc3RfZW5hYmxlX2JyZWFkY3J1bWIoc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnEpCiAJCWxpc3RfYWRkKCZycS0+c2lnbmFsX2xpbmssIHBvcyk7CiAJCWlmIChwb3Mg
PT0gJmNlLT5zaWduYWxzKSAvKiBjYXRjaCB0cmFuc2l0aW9ucyBmcm9tIGVtcHR5IGxpc3QgKi8K
IAkJCWxpc3RfbW92ZV90YWlsKCZjZS0+c2lnbmFsX2xpbmssICZiLT5zaWduYWxlcnMpOworCQlH
RU1fQlVHX09OKCFjaGVja19zaWduYWxfb3JkZXIoY2UsIHJxKSk7CiAKIAkJc2V0X2JpdChJOTE1
X0ZFTkNFX0ZMQUdfU0lHTkFMLCAmcnEtPmZlbmNlLmZsYWdzKTsKIAl9Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
