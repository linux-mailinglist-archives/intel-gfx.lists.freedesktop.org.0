Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 372CD1088E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 15:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E55892BD;
	Wed,  1 May 2019 13:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78348892BD
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 13:58:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16417222-1500050 
 for multiple; Wed, 01 May 2019 14:57:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 May 2019 14:57:53 +0100
Message-Id: <20190501135753.8711-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501135753.8711-1-chris@chris-wilson.co.uk>
References: <20190501135753.8711-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Assert the local engine->wakeref
 is active
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

RHVlIHRvIHRoZSBhc3luY2hyb25vdXMgdGFza2xldCBhbmQgcmVjdXJzaXZlIEdUIHdha2VyZWYs
IGl0IG1heSBoYXBwZW4KdGhhdCB3ZSBzdWJtaXQgdG8gdGhlIGVuZ2luZSAodW5kZXJuZWF0aCBp
dCdzIG93biB3YWtlcmVmKSBwcmlvciB0byB0aGUKY2VudHJhbCB3YWtlcmVmIGJlaW5nIG1hcmtl
ZCBhcyB0YWtlbi4gU3dpdGNoIHRvIGNoZWNraW5nIHRoZSBsb2NhbCB3YWtlcmVmCmZvciBncmVh
dGVyIGNvbnNpc3RlbmN5LgoKRml4ZXM6IDc5ZmZhYzg1OTljNCAoImRybS9pOTE1OiBJbnZlcnQg
dGhlIEdFTSB3YWtlcmVmIGhpZXJhcmNoeSIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
Y3MuYyB8IDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICB8
IDQgKystLQogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCA2ZTQwZjhl
YTlhNmEuLmE2Mjc1M2E0MjlhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMKQEAgLTEwOTAsNiArMTA5MCw5IEBAIGJvb2wgaW50ZWxfZW5naW5lX2lzX2lkbGUo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCWlmIChpOTE1X3Jlc2V0X2ZhaWxlZChl
bmdpbmUtPmk5MTUpKQogCQlyZXR1cm4gdHJ1ZTsKIAorCWlmICghaW50ZWxfd2FrZXJlZl9hY3Rp
dmUoJmVuZ2luZS0+d2FrZXJlZikpCisJCXJldHVybiB0cnVlOworCiAJLyogV2FpdGluZyB0byBk
cmFpbiBFTFNQPyAqLwogCWlmIChSRUFEX09OQ0UoZW5naW5lLT5leGVjbGlzdHMuYWN0aXZlKSkg
ewogCQlzdHJ1Y3QgdGFza2xldF9zdHJ1Y3QgKnQgPSAmZW5naW5lLT5leGVjbGlzdHMudGFza2xl
dDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggODUxZTYyZGRjYjg3Li44YzJl
ZWZmNzlmMDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC01MzQsNyArNTM0
LDcgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX3N1Ym1pdF9wb3J0cyhzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCiAJICogdGhhdCBhbGwgRUxTUCBhcmUgZHJhaW5lZCBpLmUuIHdlIGhh
dmUgcHJvY2Vzc2VkIHRoZSBDU0IsCiAJICogYmVmb3JlIGFsbG93aW5nIG91cnNlbHZlcyB0byBp
ZGxlIGFuZCBjYWxsaW5nIGludGVsX3J1bnRpbWVfcG1fcHV0KCkuCiAJICovCi0JR0VNX0JVR19P
TighZW5naW5lLT5pOTE1LT5ndC5hd2FrZSk7CisJR0VNX0JVR19PTighaW50ZWxfd2FrZXJlZl9h
Y3RpdmUoJmVuZ2luZS0+d2FrZXJlZikpOwogCiAJLyoKIAkgKiBFTFNRIG5vdGU6IHRoZSBzdWJt
aXQgcXVldWUgaXMgbm90IGNsZWFyZWQgYWZ0ZXIgYmVpbmcgc3VibWl0dGVkCkBAIC0xMDg0LDcg
KzEwODQsNyBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfc3VibWlzc2lvbl90YXNrbGV0KHVuc2ln
bmVkIGxvbmcgZGF0YSkKIAogCUdFTV9UUkFDRSgiJXMgYXdha2U/PSVkLCBhY3RpdmU9JXhcbiIs
CiAJCSAgZW5naW5lLT5uYW1lLAotCQkgICEhZW5naW5lLT5pOTE1LT5ndC5hd2FrZSwKKwkJICAh
IWludGVsX3dha2VyZWZfYWN0aXZlKCZlbmdpbmUtPndha2VyZWYpLAogCQkgIGVuZ2luZS0+ZXhl
Y2xpc3RzLmFjdGl2ZSk7CiAKIAlzcGluX2xvY2tfaXJxc2F2ZSgmZW5naW5lLT50aW1lbGluZS5s
b2NrLCBmbGFncyk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
