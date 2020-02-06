Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DC8154AA2
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 18:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB8376FAE5;
	Thu,  6 Feb 2020 17:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C4A46FAE5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 17:53:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20140151-1500050 
 for multiple; Thu, 06 Feb 2020 17:53:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Feb 2020 17:53:20 +0000
Message-Id: <20200206175320.2595743-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206174658.2576421-1-chris@chris-wilson.co.uk>
References: <20200206174658.2576421-1-chris@chris-wilson.co.uk>
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
ZXggNjExMDYxMjkyODdmLi5iZDNjMGY3YTljOGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtNjgwLDYgKzY4MCwxOCBAQCBpbnQgaW50ZWxfZW5n
aW5lX2VtaXRfY3R4X3dhKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCXJldHVybiAwOwogfQog
CitzdGF0aWMgdm9pZAorZ2VuNl9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCit7CisJd2Ffd3JpdGVfb3Io
d2FsLCBHRU42X01CQ1RMLCBHRU42X01CQ1RMX0VOQUJMRV9CT09UX0ZFVENIKTsKK30KKworc3Rh
dGljIHZvaWQKK2dlbjdfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQoreworCXdhX3dyaXRlX29yKHdhbCwg
R0VONl9NQkNUTCwgR0VONl9NQkNUTF9FTkFCTEVfQk9PVF9GRVRDSCk7Cit9CisKIHN0YXRpYyB2
b2lkCiBnZW45X2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIHsKQEAgLTk2Miw3ICs5NzQsMTEgQEAgZ3Rf
aW5pdF93b3JrYXJvdW5kcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5
MTVfd2FfbGlzdCAqd2FsKQogCQlieHRfZ3Rfd29ya2Fyb3VuZHNfaW5pdChpOTE1LCB3YWwpOwog
CWVsc2UgaWYgKElTX1NLWUxBS0UoaTkxNSkpCiAJCXNrbF9ndF93b3JrYXJvdW5kc19pbml0KGk5
MTUsIHdhbCk7Ci0JZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpIDw9IDgpCisJZWxzZSBpZiAoSVNf
R0VOKGk5MTUsIDcpKQorCQlnZW43X2d0X3dvcmthcm91bmRzX2luaXQoaTkxNSwgd2FsKTsKKwll
bHNlIGlmIChJU19HRU4oaTkxNSwgNikpCisJCWdlbjZfZ3Rfd29ya2Fyb3VuZHNfaW5pdChpOTE1
LCB3YWwpOworCWVsc2UgaWYgKElOVEVMX0dFTihpOTE1KSA8IDYpCiAJCXJldHVybjsKIAllbHNl
CiAJCU1JU1NJTkdfQ0FTRShJTlRFTF9HRU4oaTkxNSkpOwotLSAKMi4yNS4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
