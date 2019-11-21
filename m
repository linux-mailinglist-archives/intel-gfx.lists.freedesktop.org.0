Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A12E104B08
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 08:11:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3DEC6EAF4;
	Thu, 21 Nov 2019 07:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA7026EAEA
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 07:11:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19280689-1500050 
 for multiple; Thu, 21 Nov 2019 07:10:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2019 07:10:41 +0000
Message-Id: <20191121071044.97798-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191121071044.97798-1-chris@chris-wilson.co.uk>
References: <20191121071044.97798-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Serialise with remote retirement
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
IG9uIHRoZSB0aW1lbGluZS0+bXV0ZXguCgpPdXRzaWRlIG9mIHRoaXMgdXNlIGNhc2UsIGUuZy4g
b24gc3VzcGVuZCBvciBtb2R1bGUgdW5sb2FkLCB3ZSBleHBlY3QgdGhlCnNsYWNrIHRvIGJlIHBp
Y2tlZCB1cCBieSBpbnRlbF9ndF9wbV93YWl0X2Zvcl9pZGxlKCkgYW5kIHNvIHByZWZlciB0bwpw
dXQgdGhlIHNwZWNpYWwgY2FzZSBzZXJpYWxpc2F0aW9uIHdpdGggcmV0aXJlbWVudCBpbiBpdHMg
c2luZ2xlIHVzZXIsCmZvciBub3cgYXQgbGVhc3QuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8
IDI2ICsrKysrKysrKysrKysrKysrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCAxYmE1
ZjI2NzAwYjAuLjYxMzk1YjAzNDQzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC00NSw2
ICs0NSw3IEBACiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKICNpbmNsdWRlICJn
ZW0vaTkxNV9nZW1faW9jdGxzLmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3BtLmgiCisjaW5j
bHVkZSAiZ3QvaW50ZWxfY29udGV4dC5oIgogI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV91c2Vy
LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5o
IgpAQCAtMTA0MSw2ICsxMDQyLDE4IEBAIGk5MTVfZ2VtX21hZHZpc2VfaW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAlyZXR1cm4gZXJyOwogfQogCitzdGF0aWMgaW50
IF9faW50ZWxfY29udGV4dF9mbHVzaF9yZXRpcmUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQor
eworCXN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGw7CisKKwl0bCA9IGludGVsX2NvbnRleHRfdGlt
ZWxpbmVfbG9jayhjZSk7CisJaWYgKElTX0VSUih0bCkpCisJCXJldHVybiBQVFJfRVJSKHRsKTsK
KworCWludGVsX2NvbnRleHRfdGltZWxpbmVfdW5sb2NrKHRsKTsKKwlyZXR1cm4gMDsKK30KKwog
c3RhdGljIGludCBfX2ludGVsX2VuZ2luZXNfcmVjb3JkX2RlZmF1bHRzKHN0cnVjdCBpbnRlbF9n
dCAqZ3QpCiB7CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdHNbSTkxNV9OVU1fRU5HSU5F
U10gPSB7fTsKQEAgLTExMDksMTMgKzExMjIsMjAgQEAgc3RhdGljIGludCBfX2ludGVsX2VuZ2lu
ZXNfcmVjb3JkX2RlZmF1bHRzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJCWlmICghcnEpCiAJCQlj
b250aW51ZTsKIAotCQkvKiBXZSB3YW50IHRvIGJlIGFibGUgdG8gdW5iaW5kIHRoZSBzdGF0ZSBm
cm9tIHRoZSBHR1RUICovCi0JCUdFTV9CVUdfT04oaW50ZWxfY29udGV4dF9pc19waW5uZWQocnEt
Pmh3X2NvbnRleHQpKTsKLQorCQlHRU1fQlVHX09OKCF0ZXN0X2JpdChDT05URVhUX0FMTE9DX0JJ
VCwKKwkJCQkgICAgICZycS0+aHdfY29udGV4dC0+ZmxhZ3MpKTsKIAkJc3RhdGUgPSBycS0+aHdf
Y29udGV4dC0+c3RhdGU7CiAJCWlmICghc3RhdGUpCiAJCQljb250aW51ZTsKIAorCQkvKiBTZXJp
YWxpc2Ugd2l0aCByZXRpcmVtZW50IG9uIGFub3RoZXIgQ1BVICovCisJCWVyciA9IF9faW50ZWxf
Y29udGV4dF9mbHVzaF9yZXRpcmUocnEtPmh3X2NvbnRleHQpOworCQlpZiAoZXJyKQorCQkJZ290
byBvdXQ7CisKKwkJLyogV2Ugd2FudCB0byBiZSBhYmxlIHRvIHVuYmluZCB0aGUgc3RhdGUgZnJv
bSB0aGUgR0dUVCAqLworCQlHRU1fQlVHX09OKGludGVsX2NvbnRleHRfaXNfcGlubmVkKHJxLT5o
d19jb250ZXh0KSk7CisKIAkJLyoKIAkJICogQXMgd2Ugd2lsbCBob2xkIGEgcmVmZXJlbmNlIHRv
IHRoZSBsb2dpY2FsIHN0YXRlLCBpdCB3aWxsCiAJCSAqIG5vdCBiZSB0b3JuIGRvd24gd2l0aCB0
aGUgY29udGV4dCwgYW5kIGltcG9ydGFudGx5IHRoZQotLSAKMi4yNC4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
