Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9B81088C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 15:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D3B5892A1;
	Wed,  1 May 2019 13:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57E86892A1
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 13:58:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16417220-1500050 
 for multiple; Wed, 01 May 2019 14:57:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 May 2019 14:57:51 +0100
Message-Id: <20190501135753.8711-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Complete both freed-object passes
 before draining the workqueue
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

VGhlIHdvcmtxdWV1ZSBjb2RlIGNvbXBsYWlucyB2aWNpb3VzbHkgaWYgd2UgdHJ5IHRvIHF1ZXVl
IG1vcmUgd29yayBvbnRvCnRoZSBxdWV1ZSB3aGlsZSBhdHRhbXB0aW5nIHRvIGRyYWluIGl0LiBB
cyB3ZSBhc3luY2hyb25vdXNseSBmcmVlCm9iamVjdHMgYW5kIGRlZmVyIHRoZWlyIGVucXVldWlu
ZyB3aXRoIFJDVSwgaXQgaXMgcXVpdGUgdHJpY2t5IHRvCnF1aWVzY2UgdGhlIHN5c3RlbSBiZWZv
cmUgYXR0ZW1wdGluZyB0byBkcmFpbiB0aGUgd29ya3F1ZXVlLiBZZXQgZHJhaW4Kd2UgbXVzdCB0
byBlbnN1cmUgdGhhdCB0aGUgd29ya2VyIGlzIGlkbGUgYmVmb3JlIHVubG9hZGluZyB0aGUgbW9k
dWxlLgoKR2l2ZSB0aGUgZnJlZWQgb2JqZWN0IGRyYWluIDMgd2hvbGUgcGFzc2VzIHdpdGggbXVs
dGlwbGUgcmN1X2JhcnJpZXIoKQp0byBnaXZlIHRoZSBkZWZlciBmcmVlaW5nIG9mIHNldmVyYWwg
bGV2ZWxzIGVhY2ggcHJvdGVjdGVkIGJ5IFJDVSBhbmQKbmVlZGluZyBhIGdyYWNlIHBlcmlvZCBi
ZWZvcmUgaXRzIHBhcmVudCBjYW4gYmUgZnJlZWQsIHVsdGltYXRlbHkKcmVzdWx0aW5nIGluIGEg
R0VNIG9iamVjdCBiZWluZyBmcmVlZCBhZnRlciBhbm90aGVyIFJDVSBwZXJpb2QuCgpBIGNvbnNl
cXVlbmNlIGlzIHRoYXQgaXQgd2lsbCBtYWtlIG1vZHVsZSB1bmxvYWQgZXZlbiBzbG93ZXIuCgpC
dWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEw
NTUwClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCA2ICsrKy0tLQogMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAppbmRleCAxMzI3MGUxOWViODcuLjlhNjM0YmE1N2ZmOSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oCkBAIC0yODI0LDE1ICsyODI0LDE1IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBpOTE1
X2dlbV9kcmFpbl93b3JrcXVldWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJICog
Z3JhY2UgcGVyaW9kIHNvIHRoYXQgd2UgY2F0Y2ggd29yayBxdWV1ZWQgdmlhIFJDVSBmcm9tIHRo
ZSBmaXJzdAogCSAqIHBhc3MuIEFzIG5laXRoZXIgZHJhaW5fd29ya3F1ZXVlKCkgbm9yIGZsdXNo
X3dvcmtxdWV1ZSgpIHJlcG9ydAogCSAqIGEgcmVzdWx0LCB3ZSBtYWtlIGFuIGFzc3VtcHRpb24g
dGhhdCB3ZSBvbmx5IGRvbid0IHJlcXVpcmUgbW9yZQotCSAqIHRoYW4gMiBwYXNzZXMgdG8gY2F0
Y2ggYWxsIHJlY3Vyc2l2ZSBSQ1UgZGVsYXllZCB3b3JrLgorCSAqIHRoYW4gMyBwYXNzZXMgdG8g
Y2F0Y2ggYWxsIF9yZWN1cnNpdmVfIFJDVSBkZWxheWVkIHdvcmsuCiAJICoKIAkgKi8KLQlpbnQg
cGFzcyA9IDI7CisJaW50IHBhc3MgPSAzOwogCWRvIHsKIAkJcmN1X2JhcnJpZXIoKTsKIAkJaTkx
NV9nZW1fZHJhaW5fZnJlZWRfb2JqZWN0cyhpOTE1KTsKLQkJZHJhaW5fd29ya3F1ZXVlKGk5MTUt
PndxKTsKIAl9IHdoaWxlICgtLXBhc3MpOworCWRyYWluX3dvcmtxdWV1ZShpOTE1LT53cSk7CiB9
CiAKIHN0cnVjdCBpOTE1X3ZtYSAqIF9fbXVzdF9jaGVjawotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
