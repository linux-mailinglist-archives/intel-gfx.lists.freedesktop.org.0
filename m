Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F4D103E30
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 16:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB616E78F;
	Wed, 20 Nov 2019 15:22:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A1F26E78F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 15:22:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19273467-1500050 
 for multiple; Wed, 20 Nov 2019 15:21:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 15:21:49 +0000
Message-Id: <20191120152150.3853368-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Serialise with remote retirement
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

U2luY2UgcmV0aXJlbWVudCBtYXkgYmUgcnVubmluZyBpbiBhIHdvcmtlciBvbiBhbm90aGVyIENQ
VSwgaXQgbWF5IGJlCnNraXBwZWQgaW4gdGhlIGxvY2FsIGludGVsX2d0X3dhaXRfZm9yX2lkbGUo
KS4gVG8gZW5zdXJlIHRoZSBzdGF0ZSBpcwpjb25zaXN0ZW50IGZvciBvdXIgc2FuaXR5IGNoZWNr
cyB1cG9uIGxvYWQsIHNlcmlhbGlzZSB3aXRoIHRoZSByZW1vdGUKcmV0aXJlciBieSB3YWl0aW5n
IG9uIHRoZSB0aW1lbGluZS0+bXV0ZXguCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDI2ICsr
KysrKysrKysrKysrKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCAxYmE1ZjI2NzAw
YjAuLjYxMzk1YjAzNDQzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC00NSw2ICs0NSw3
IEBACiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKICNpbmNsdWRlICJnZW0vaTkx
NV9nZW1faW9jdGxzLmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3BtLmgiCisjaW5jbHVkZSAi
Z3QvaW50ZWxfY29udGV4dC5oIgogI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV91c2VyLmgiCiAj
aW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5oIgpAQCAt
MTA0MSw2ICsxMDQyLDE4IEBAIGk5MTVfZ2VtX21hZHZpc2VfaW9jdGwoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgdm9pZCAqZGF0YSwKIAlyZXR1cm4gZXJyOwogfQogCitzdGF0aWMgaW50IF9faW50
ZWxfY29udGV4dF9mbHVzaF9yZXRpcmUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQoreworCXN0
cnVjdCBpbnRlbF90aW1lbGluZSAqdGw7CisKKwl0bCA9IGludGVsX2NvbnRleHRfdGltZWxpbmVf
bG9jayhjZSk7CisJaWYgKElTX0VSUih0bCkpCisJCXJldHVybiBQVFJfRVJSKHRsKTsKKworCWlu
dGVsX2NvbnRleHRfdGltZWxpbmVfdW5sb2NrKHRsKTsKKwlyZXR1cm4gMDsKK30KKwogc3RhdGlj
IGludCBfX2ludGVsX2VuZ2luZXNfcmVjb3JkX2RlZmF1bHRzKHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
CiB7CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdHNbSTkxNV9OVU1fRU5HSU5FU10gPSB7
fTsKQEAgLTExMDksMTMgKzExMjIsMjAgQEAgc3RhdGljIGludCBfX2ludGVsX2VuZ2luZXNfcmVj
b3JkX2RlZmF1bHRzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJCWlmICghcnEpCiAJCQljb250aW51
ZTsKIAotCQkvKiBXZSB3YW50IHRvIGJlIGFibGUgdG8gdW5iaW5kIHRoZSBzdGF0ZSBmcm9tIHRo
ZSBHR1RUICovCi0JCUdFTV9CVUdfT04oaW50ZWxfY29udGV4dF9pc19waW5uZWQocnEtPmh3X2Nv
bnRleHQpKTsKLQorCQlHRU1fQlVHX09OKCF0ZXN0X2JpdChDT05URVhUX0FMTE9DX0JJVCwKKwkJ
CQkgICAgICZycS0+aHdfY29udGV4dC0+ZmxhZ3MpKTsKIAkJc3RhdGUgPSBycS0+aHdfY29udGV4
dC0+c3RhdGU7CiAJCWlmICghc3RhdGUpCiAJCQljb250aW51ZTsKIAorCQkvKiBTZXJpYWxpc2Ug
d2l0aCByZXRpcmVtZW50IG9uIGFub3RoZXIgQ1BVICovCisJCWVyciA9IF9faW50ZWxfY29udGV4
dF9mbHVzaF9yZXRpcmUocnEtPmh3X2NvbnRleHQpOworCQlpZiAoZXJyKQorCQkJZ290byBvdXQ7
CisKKwkJLyogV2Ugd2FudCB0byBiZSBhYmxlIHRvIHVuYmluZCB0aGUgc3RhdGUgZnJvbSB0aGUg
R0dUVCAqLworCQlHRU1fQlVHX09OKGludGVsX2NvbnRleHRfaXNfcGlubmVkKHJxLT5od19jb250
ZXh0KSk7CisKIAkJLyoKIAkJICogQXMgd2Ugd2lsbCBob2xkIGEgcmVmZXJlbmNlIHRvIHRoZSBs
b2dpY2FsIHN0YXRlLCBpdCB3aWxsCiAJCSAqIG5vdCBiZSB0b3JuIGRvd24gd2l0aCB0aGUgY29u
dGV4dCwgYW5kIGltcG9ydGFudGx5IHRoZQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
