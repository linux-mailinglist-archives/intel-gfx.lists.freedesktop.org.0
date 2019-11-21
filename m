Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3986104C5B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 08:23:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36516EB28;
	Thu, 21 Nov 2019 07:23:24 +0000 (UTC)
X-Original-To: Intel-GFX@Lists.FreeDesktop.Org
Delivered-To: Intel-GFX@Lists.FreeDesktop.Org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2B8C6EB28
 for <Intel-GFX@Lists.FreeDesktop.Org>; Thu, 21 Nov 2019 07:23:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19280871-1500050 for multiple; Thu, 21 Nov 2019 07:23:17 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-GFX@Lists.FreeDesktop.Org, John.C.Harrison@Intel.com
References: <20191121003142.34924-1-John.C.Harrison@Intel.com>
In-Reply-To: <20191121003142.34924-1-John.C.Harrison@Intel.com>
Message-ID: <157432099314.24852.7857518833639685499@skylake-alporthouse-com>
Date: Thu, 21 Nov 2019 07:23:13 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Gen/GT info to GPU error state
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

UXVvdGluZyBKb2huLkMuSGFycmlzb25ASW50ZWwuY29tICgyMDE5LTExLTIxIDAwOjMxOjQyKQo+
IEZyb206IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+Cj4gCj4gQWRk
ZWQgZ2VuICYgR1QgaW5mbyB0byB0aGUgZXJyb3IgY2FwdHVyZS4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBKb2huIEhhcnJpc29uIDxqb2huLmMuaGFycmlzb25AaW50ZWwuY29tPgo+IENDOiBNYXR0aGV3
IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9ncHVfZXJyb3IuYyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9l
cnJvci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwo+IGluZGV4IDcx
MThlY2I3ZjE0NC4uNGM5Mjg5MmQwNWZiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ3B1X2Vycm9yLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dw
dV9lcnJvci5jCj4gQEAgLTY5Myw2ICs2OTMsOCBAQCBzdGF0aWMgdm9pZCBfX2Vycl9wcmludF90
b19zZ2woc3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqbSwKPiAgICAgICAgIGVycl9w
cmludGYobSwgIlN1YnBsYXRmb3JtOiAweCV4XG4iLAo+ICAgICAgICAgICAgICAgICAgICBpbnRl
bF9zdWJwbGF0Zm9ybSgmZXJyb3ItPnJ1bnRpbWVfaW5mbywKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZXJyb3ItPmRldmljZV9pbmZvLnBsYXRmb3JtKSk7Cj4gKyAgICAg
ICBlcnJfcHJpbnRmKG0sICJHZW46ICVkXG4iLCBlcnJvci0+ZGV2aWNlX2luZm8uZ2VuKTsKCkdl
biBpcyBpbiB0aGUgdmVyeSBmaXJzdCBsaW5lLiBCdXQgcmVwZXRpdGlvbiBpcyBub3QgdGVycmli
bGUuCgo+ICsgICAgICAgZXJyX3ByaW50ZihtLCAiR1Q6ICVkXG4iLCBlcnJvci0+ZGV2aWNlX2lu
Zm8uZ3QpOwoKZGV2aWNlX2luZm8gaXMgZHVtcGVkIGxhdGVyLCBidXQgaXMgbWlzc2luZyBmcm9t
IHRoZSBwcmludGVycy4gSXQgc2hvdWxkCmJlIGFkZGVkIHRoZXJlIGZpcnN0LgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
