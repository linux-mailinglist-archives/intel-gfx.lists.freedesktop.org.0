Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE626D813D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 22:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C846F89950;
	Tue, 15 Oct 2019 20:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE6A899D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 20:44:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18849365-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 21:44:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 21:44:50 +0100
Message-Id: <20191015204451.19372-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015204451.19372-1-chris@chris-wilson.co.uk>
References: <20191015204451.19372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 11/12] drm/i915/tgl: Wa_1607030317, Wa_1607186500,
 Wa_1607297627
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpEaXNh
YmxlIHNlbWFwaG9yZSBpZGxlIG1lc3NhZ2VzIGFuZCB3YWl0IGZvciBldmVudApwb3dlciBkb3du
cy4KClNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAx
OTEwMTUxNTQ0NDkuMTAzMzgtMTAtbWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgOCArKysrKysrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDEgKwogMiBmaWxl
cyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwppbmRleCA0ODM3MjUxMzcyOTEuLmFmOGE4MTgzMTU0YSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMjg2LDYgKzEy
ODYsMTQgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCQl3YV93cml0ZV9vcih3YWwsCiAJCQkgICAg
R0VOOV9DVFhfUFJFRU1QVF9SRUcsCiAJCQkgICAgR0VOMTJfRElTQUJMRV9QT1NIX0JVU1lfRkZf
RE9QX0NHKTsKKworCQkvKiBXYV8xNjA3MDMwMzE3OnRnbCAqLworCQkvKiBXYV8xNjA3MTg2NTAw
OnRnbCAqLworCQkvKiBXYV8xNjA3Mjk3NjI3OnRnbCAqLworCQl3YV9tYXNrZWRfZW4od2FsLAor
CQkJICAgICBHRU42X1JDX1NMRUVQX1BTTUlfQ09OVFJPTCwKKwkJCSAgICAgR0VOMTJfV0FJVF9G
T1JfRVZFTlRfUE9XRVJfRE9XTl9ESVNBQkxFIHwKKwkJCSAgICAgR0VOOF9SQ19TRU1BX0lETEVf
TVNHX0RJU0FCTEUpOwogCX0KIAogCWlmIChJU19HRU4oaTkxNSwgMTEpKSB7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAppbmRleCBiYWY1OTM5ZGYxZWMuLjg1NWRiODg4NTE2YyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCkBAIC0yODg1LDYgKzI4ODUsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkx
NV9tbWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKIAogI2RlZmluZSBHRU42X1JDX1NMRUVQ
X1BTTUlfQ09OVFJPTAlfTU1JTygweDIwNTApCiAjZGVmaW5lICAgR0VONl9QU01JX1NMRUVQX01T
R19ESVNBQkxFCSgxIDw8IDApCisjZGVmaW5lICAgR0VOMTJfV0FJVF9GT1JfRVZFTlRfUE9XRVJf
RE9XTl9ESVNBQkxFIFJFR19CSVQoNykKICNkZWZpbmUgICBHRU44X1JDX1NFTUFfSURMRV9NU0df
RElTQUJMRQkoMSA8PCAxMikKICNkZWZpbmUgICBHRU44X0ZGX0RPUF9DTE9DS19HQVRFX0RJU0FC
TEUJKDEgPDwgMTApCiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
