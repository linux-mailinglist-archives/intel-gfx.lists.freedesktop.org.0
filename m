Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8D21EBC45
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 15:02:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BCF6E3AA;
	Tue,  2 Jun 2020 13:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6225B6E3AA;
 Tue,  2 Jun 2020 13:02:27 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E48941FB;
 Tue,  2 Jun 2020 06:02:26 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C115A3F305;
 Tue,  2 Jun 2020 06:02:26 -0700 (PDT)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 5CE18682B75; Tue,  2 Jun 2020 14:02:25 +0100 (BST)
Date: Tue, 2 Jun 2020 14:02:25 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200602130225.GS159988@e110455-lin.cambridge.arm.com>
References: <20200602095140.36678-2-daniel.vetter@ffwll.ch>
 <20200602095505.37509-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602095505.37509-1-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH] drm/malidp: Don't call drm_crtc_vblank_off
 on unbind
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgRGFuaWVsLAoKT24gVHVlLCBKdW4gMDIsIDIwMjAgYXQgMTE6NTU6MDVBTSArMDIwMCwgRGFu
aWVsIFZldHRlciB3cm90ZToKPiBUaGlzIGlzIGFscmVhZHkgZG9uZSBhcyBwYXJ0IG9mIHRoZSBk
cm1fYXRvbWljX2hlbHBlcl9zaHV0ZG93bigpLAo+IGFuZCBpbiB0aGF0IGNhc2Ugb25seSBmb3Ig
dGhlIGNydGMgd2hpY2ggYXJlIGFjdHVhbGx5IG9uLgo+IAo+IHYyOiBJIG92ZXJsb29rZWQgdGhh
dCBtYWxpZHAgYWxzbyBuZWVkcyB0byBoYXZlIGl0J3MgaW50ZXJydXB0IHNodXQKPiBkb3duIHJl
b3JkZXJlZC4KCkdvdCBjb25mdXNlZCBieSB0aGUgc3ViamVjdCBub3QgaGF2aW5nIGFueSB2ZXJz
aW9uIG9mIHRoZSBwYXRjaCwgc28gSSd2ZQphY2tlZCB0aGUgb3RoZXIgb25lLCBidXQgdGhpcyBp
cyB0aGUgb25lIEkndmUgbWVhbnQgdG8gQWNrLgoKU28sIEFja2VkLWJ5OiBMaXZpdSBEdWRhdSA8
bGl2aXUuZHVkYXVAYXJtLmNvbT4KCkJlc3QgcmVnYXJkcywKTGl2aXUKCj4gCj4gU2lnbmVkLW9m
Zi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IExpdml1
IER1ZGF1IDxsaXZpdS5kdWRhdUBhcm0uY29tPgo+IENjOiBCcmlhbiBTdGFya2V5IDxicmlhbi5z
dGFya2V5QGFybS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2Rydi5j
IHwgMyArLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYXJtL21hbGlkcF9kcnYuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2Rydi5jCj4gaW5kZXggMDI5MDQzOTJlMzcwLi5jZGI4
MTdhN2M2MTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FybS9tYWxpZHBfZHJ2LmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYXJtL21hbGlkcF9kcnYuYwo+IEBAIC05MjgsMTEgKzky
OCwxMCBAQCBzdGF0aWMgdm9pZCBtYWxpZHBfdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAg
CWRybV9kZXZfdW5yZWdpc3Rlcihkcm0pOwo+ICAJZHJtX2ttc19oZWxwZXJfcG9sbF9maW5pKGRy
bSk7Cj4gIAlwbV9ydW50aW1lX2dldF9zeW5jKGRldik7Cj4gLQlkcm1fY3J0Y192Ymxhbmtfb2Zm
KCZtYWxpZHAtPmNydGMpOwo+ICsJZHJtX2F0b21pY19oZWxwZXJfc2h1dGRvd24oZHJtKTsKPiAg
CW1hbGlkcF9zZV9pcnFfZmluaShod2Rldik7Cj4gIAltYWxpZHBfZGVfaXJxX2ZpbmkoaHdkZXYp
Owo+ICAJZHJtLT5pcnFfZW5hYmxlZCA9IGZhbHNlOwo+IC0JZHJtX2F0b21pY19oZWxwZXJfc2h1
dGRvd24oZHJtKTsKPiAgCWNvbXBvbmVudF91bmJpbmRfYWxsKGRldiwgZHJtKTsKPiAgCW9mX25v
ZGVfcHV0KG1hbGlkcC0+Y3J0Yy5wb3J0KTsKPiAgCW1hbGlkcC0+Y3J0Yy5wb3J0ID0gTlVMTDsK
PiAtLSAKPiAyLjI2LjIKPiAKCi0tIAo9PT09PT09PT09PT09PT09PT09PQp8IEkgd291bGQgbGlr
ZSB0byB8CnwgZml4IHRoZSB3b3JsZCwgIHwKfCBidXQgdGhleSdyZSBub3QgfAp8IGdpdmluZyBt
ZSB0aGUgICB8CiBcIHNvdXJjZSBjb2RlISAgLwogIC0tLS0tLS0tLS0tLS0tLQogICAgwq9cXyjj
g4QpXy/CrwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
