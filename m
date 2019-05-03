Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0399912FBB
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 16:02:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B48B6E7A4;
	Fri,  3 May 2019 14:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA346E7A4
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 14:02:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16442343-1500050 
 for multiple; Fri, 03 May 2019 15:02:40 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 15:02:39 +0100
Message-Id: <20190503140239.32668-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Acquire the signaler's timeline HWSP
 last
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

QWNxdWlyaW5nIHRoZSBzaWduYWxlcidzIHRpbWVsaW5lIHRha2VzIGFuIGFjdGl2ZSByZWZlcmVu
Y2UgdG8gdGhlaXIKSFdTUCB0aGF0IHdlIHdvdWxkIGxpa2UgdG8gYXZvaWQgaWYgcG9zc2libGUs
IHNvIHRha2UgaXQgYWZ0ZXIKcGVyZm9ybWluZyBhbGwgb2Ygb3VyIGFsbG9jYXRpb25zIHJlcXVp
cmVkIHRvIHNldCB1cCB0aGUgZmVuY2luZy4gVGhlCmFjcXVpc2l0aW9uIGFsc28gcHJvdmlkZXMg
dGhlIGZpbmFsIGNoZWNrIHRoYXQgdGhlIHRhcmdldCBoYXMgbm90CmFscmVhZHkgc2lnbmFsZWQg
YWxsb3dpbmcgdXMgdG8gYXZvaWQgdGhlIHNlbWFwaG9yZSBhdCB0aGUgbGFzdCBtb21lbnQuCgpT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDggKysrKy0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYwppbmRleCA2ZGJmOGRjNWNkNmEuLjkzM2ExMTY3N2Y0YSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTgxMywxMyArODEzLDEzIEBAIGVtaXRfc2Vt
YXBob3JlX3dhaXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqdG8sCiAJaWYgKGVyciA8IDApCiAJCXJl
dHVybiBlcnI7CiAKLQkvKiBXZSBuZWVkIHRvIHBpbiB0aGUgc2lnbmFsZXIncyBIV1NQIHVudGls
IHdlIGFyZSBmaW5pc2hlZCByZWFkaW5nLiAqLwotCWVyciA9IGk5MTVfdGltZWxpbmVfcmVhZF9o
d3NwKGZyb20sIHRvLCAmaHdzcF9vZmZzZXQpOworCS8qIE9ubHkgc3VibWl0IG91ciBzcGlubmVy
IGFmdGVyIHRoZSBzaWduYWxlciBpcyBydW5uaW5nISAqLworCWVyciA9IGk5MTVfcmVxdWVzdF9h
d2FpdF9leGVjdXRpb24odG8sIGZyb20sIGdmcCk7CiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsK
IAotCS8qIE9ubHkgc3VibWl0IG91ciBzcGlubmVyIGFmdGVyIHRoZSBzaWduYWxlciBpcyBydW5u
aW5nISAqLwotCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9leGVjdXRpb24odG8sIGZyb20sIGdm
cCk7CisJLyogV2UgbmVlZCB0byBwaW4gdGhlIHNpZ25hbGVyJ3MgSFdTUCB1bnRpbCB3ZSBhcmUg
ZmluaXNoZWQgcmVhZGluZy4gKi8KKwllcnIgPSBpOTE1X3RpbWVsaW5lX3JlYWRfaHdzcChmcm9t
LCB0bywgJmh3c3Bfb2Zmc2V0KTsKIAlpZiAoZXJyKQogCQlyZXR1cm4gZXJyOwogCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
