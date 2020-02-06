Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0EE154A79
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 18:47:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3ADD6FADC;
	Thu,  6 Feb 2020 17:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCAC76FADC
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 17:47:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20140027-1500050 
 for multiple; Thu, 06 Feb 2020 17:46:59 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 17:46:58 +0000
Message-Id: <20200206174658.2576421-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Apply Enable Boot Fetch to MBC
 control register
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWlrYSBzcG90dGVkIHRoYXQgd2Ugc2hvdWxkIGJlIHNldHRpbmcgQklUKDQpIG9mIE1CQ1RMIHBy
aW9yIHRvCmV4ZWN1dGlvbi4KCiJUaGUgZHJpdmVyIG11c3Qgc2V0IHRoaXMgYml0IGluIHRoZSBm
b2xsb3dpbmcgc2NlbmFyaW9zOgotIFRvIHJlbG9hZCB0aGUgSFcgYm9vdCBjb250ZXh0IGV2ZXJ5
IHRpbWUgaXQgZ2V0cyBsb2FkZWQgdGhyb3VnaCB0aGUgT1MuCi0gQWZ0ZXIgYW4gRkxSIGNsZWFy
cyB0aGUgcmVnaXN0ZXIgKHRoZSBCSU9TIHdvbuKAmXQgcnVuIGFmdGVyd2FyZHMpLiIKCk1ha2Ug
aXQgc28uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAxOCArKysr
KysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5k
ZXggNjExMDYxMjkyODdmLi4wNDkwMWNkMTU5M2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtNzc4LDYgKzc3OCwxOCBAQCBjZmxfZ3Rfd29ya2Fy
b3VuZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2Ff
bGlzdCAqd2FsKQogCQkgICAgR0FNVF9FQ09fRU5BQkxFX0lOX1BMQUNFX0RFQ09NUFJFU1MpOwog
fQogCitzdGF0aWMgdm9pZAorZ2VuN19ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCit7CisJd2Ffd3JpdGVf
b3Iod2FsLCBHRU42X01CQ1RMLCBHRU42X01CQ1RMX0VOQUJMRV9CT09UX0ZFVENIKTsKK30KKwor
c3RhdGljIHZvaWQKK2dlbjZfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQoreworCXdhX3dyaXRlX29yKHdh
bCwgR0VONl9NQkNUTCwgR0VONl9NQkNUTF9FTkFCTEVfQk9PVF9GRVRDSCk7Cit9CisKIHN0YXRp
YyB2b2lkCiB3YV9pbml0X21jcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0
IGk5MTVfd2FfbGlzdCAqd2FsKQogewpAQCAtOTYyLDcgKzk3NCwxMSBAQCBndF9pbml0X3dvcmth
cm91bmRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0
ICp3YWwpCiAJCWJ4dF9ndF93b3JrYXJvdW5kc19pbml0KGk5MTUsIHdhbCk7CiAJZWxzZSBpZiAo
SVNfU0tZTEFLRShpOTE1KSkKIAkJc2tsX2d0X3dvcmthcm91bmRzX2luaXQoaTkxNSwgd2FsKTsK
LQllbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPD0gOCkKKwllbHNlIGlmIChJU19HRU4oaTkxNSwg
NykpCisJCWdlbjdfZ3Rfd29ya2Fyb3VuZHMoaTkxNSwgd2FsKTsKKwllbHNlIGlmIChJU19HRU4o
aTkxNSwgNikpCisJCWdlbjZfZ3Rfd29ya2Fyb3VuZHMoaTkxNSwgd2FsKTsKKwllbHNlIGlmIChJ
TlRFTF9HRU4oaTkxNSkgPCA2KQogCQlyZXR1cm47CiAJZWxzZQogCQlNSVNTSU5HX0NBU0UoSU5U
RUxfR0VOKGk5MTUpKTsKLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
