Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0689107D
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 15:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5596E4D7;
	Sat, 17 Aug 2019 13:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4D176E4D7
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 13:16:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18173066-1500050 for multiple; Sat, 17 Aug 2019 14:16:06 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190817131144.26884-2-michal.wajdeczko@intel.com>
References: <20190817131144.26884-1-michal.wajdeczko@intel.com>
 <20190817131144.26884-2-michal.wajdeczko@intel.com>
Message-ID: <156604776429.24359.14183138967313237363@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 17 Aug 2019 14:16:04 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/uc: Cleanup fw fetch only if
 it was successful
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTE3IDE0OjExOjQyKQo+IFdlIGNhbiBy
ZWx5IG9uIGZpcm13YXJlIHN0YXR1cyBBVkFJTEFCTEUgdG8gZGV0ZXJtaW5lIGlmIGFueQo+IGZp
cm13YXJlIGNsZWFudXAgaXMgcmVxdWlyZWQuIEFsc28gZG9uJ3QgdW5jb25kaXRpb25hbGx5IHJl
c2V0Cj4gZncgc3RhdHVzIHRvIFNFTEVDVEVEIGFzIHdlIHdpbGwgbG9vc2UgTUlTU0lORy9FUlJP
UiBjb2Rlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2Fq
ZGVjemtvQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3Vj
X2Z3LmMgfCA4ICsrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5j
Cj4gaW5kZXggODkwYWU2YjRhM2QwLi41MjdkZTFmZDlkNzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPiBAQCAtNTU5LDE4ICs1NTksMTYgQEAgdm9pZCBp
bnRlbF91Y19md19maW5pKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncpCj4gIAo+ICAvKioKPiAg
ICogaW50ZWxfdWNfZndfY2xlYW51cF9mZXRjaCAtIGNsZWFudXAgdUMgZmlybXdhcmUKPiAtICoK
PiAgICogQHVjX2Z3OiB1QyBmaXJtd2FyZQo+ICAgKgo+ICAgKiBDbGVhbnMgdXAgdUMgZmlybXdh
cmUgYnkgcmVsZWFzaW5nIHRoZSBmaXJtd2FyZSBHRU0gb2JqLgo+ICAgKi8KPiAgdm9pZCBpbnRl
bF91Y19md19jbGVhbnVwX2ZldGNoKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncpCj4gIHsKPiAt
ICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gKyAgICAgICBpZiAoIWlu
dGVsX3VjX2Z3X2lzX2F2YWlsYWJsZSh1Y19mdykpCj4gKyAgICAgICAgICAgICAgIHJldHVybjsK
PiAgCj4gLSAgICAgICBvYmogPSBmZXRjaF9hbmRfemVybygmdWNfZnctPm9iaik7Cj4gLSAgICAg
ICBpZiAob2JqKQo+IC0gICAgICAgICAgICAgICBpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Cj4g
KyAgICAgICBpOTE1X2dlbV9vYmplY3RfcHV0KGZldGNoX2FuZF96ZXJvKCZ1Y19mdy0+b2JqKSk7
CgpPaywgdG8gaGF2ZSBhbiBvYmplY3QgcmVxdWlyZXMgdGhlIGZ3IHRvIGhhdmUgc3VjY2Vzc2Z1
bGx5IGJlZW4gbG9hZGVkLgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
