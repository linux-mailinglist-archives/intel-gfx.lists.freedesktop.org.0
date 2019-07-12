Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D636691A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 10:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 158C06E2EE;
	Fri, 12 Jul 2019 08:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B6A6E2EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 08:26:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17241677-1500050 
 for multiple; Fri, 12 Jul 2019 09:25:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 09:25:49 +0100
Message-Id: <20190712082549.25053-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Ignore self-preemption
 suppression under gvt
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

R1ZUIGZvcmNlcyBzaW5nbGUgcG9ydCBzdWJtaXNzaW9uIG9mIGluZGl2aWR1YWwgcmVxdWVzdHMu
IFdlIGRvIG5vdAplbmpveSB0aGUgY29udGV4dCBhbWFsZ2FtYXRpb24gdGhhdCB0aGUgdGVzdCBk
ZXBlbmRzIHVwb24gZm9yIHNldHRpbmcgdXAKdGhlIHRlc3QgKHdoZXJlIHBvcnQgMCBoYXMgYSBs
YXJnZSBudW1iZXIgb2YgcmVxdWVzdHMgd2l0aCBhIHByaW9yaXR5CmNoYW5nZSBzb21ld2hlcmUg
aW4gdGhlIG1pZGRsZSkuIFVuZGVyIHNpbmdsZSByZXF1ZXN0IHN1Ym1pc3Npb24gb2YgZ3Z0Cml0
IGlzIHF1aXRlIGFibGUgZm9yIHRoZSBwcmVlbXB0aW9uIGV2ZW50IHRvIG9jY3VyIHdoaWxlIGFu
b3RoZXIgY29udGV4dAppcyBhY3RpdmUgYW5kIHNvIHRoZXJlIGJlIGEgcmVhbCBuZWVkIHRvIGFj
dCB1cG9uIHRoYXQgcHJlZW1wdGlvbi4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KQ2M6IFpoZW55dSBXYW5nIDx6aGVueXV3QGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyB8IDMgKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9s
cmMuYwppbmRleCBiOWI4ODFhYjhlN2MuLmZiNzBlMGU2MWQ1YyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKQEAgLTg1NCw2ICs4NTQsOSBAQCBzdGF0aWMgaW50IGxpdmVf
c3VwcHJlc3Nfc2VsZl9wcmVlbXB0KHZvaWQgKmFyZykKIAlpZiAoVVNFU19HVUNfU1VCTUlTU0lP
TihpOTE1KSkKIAkJcmV0dXJuIDA7IC8qIHByZXN1bWUgYmxhY2sgYmxveCAqLwogCisJaWYgKGlu
dGVsX3ZncHVfYWN0aXZlKGk5MTUpKQorCQlyZXR1cm4gMDsgLyogR1ZUIGZvcmNlcyBzaW5nbGUg
cG9ydCAmIHJlcXVlc3Qgc3VibWlzc2lvbiAqLworCiAJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0
cnVjdF9tdXRleCk7CiAJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50
aW1lX3BtKTsKIAotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
