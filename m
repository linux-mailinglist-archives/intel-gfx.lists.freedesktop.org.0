Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DCB9625F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 16:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 702DC6E817;
	Tue, 20 Aug 2019 14:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E185A6E817
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 14:26:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 07:26:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="353591012"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 20 Aug 2019 07:26:37 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B9C185C060E; Tue, 20 Aug 2019 17:25:50 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190820141218.14714-1-chris@chris-wilson.co.uk>
References: <20190820141218.14714-1-chris@chris-wilson.co.uk>
Date: Tue, 20 Aug 2019 17:25:50 +0300
Message-ID: <87ef1fvrpt.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Relax pd_used assertion
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhlIGN1
cnJlbnQgYXNzZXJ0aW9uIHRyaWVzIHRvIG1ha2Ugc3VyZSB0aGF0IHdlIGRvIG5vdCBvdmVyIGNv
dW50IHRoZQo+IG51bWJlciBvZiB1c2VkIFBERSBpbnNpZGUgYSBwYWdlIGRpcmVjdG9yeSAtLSB0
aGF0IGlzIHdpdGggYW4gYXJyYXkgb2YKPiA1MTIgcGRlLCB3ZSBkbyBub3QgZXhwZWN0IG1vcmUg
dGhhbiA1MTIgZWxlbWVudHMgdXNlZCEgSG93ZXZlciwgb3VyCj4gYXNzZXJ0aW9uIGhhcyB0byB0
YWtlIGludG8gYWNjb3VudCB0aGF0IGFzIHdlIHBpbiBhbiBlbGVtZW50IGludG8gdGhlCj4gcGFn
ZSBkaXJlY3RvcnksIHRoZSBjYWxsZXIgZmlyc3QgcGlucyB0aGUgcGFnZSBkaXJlY3Rvcnkgc28g
dGhlIHVzYWdlCj4gY291bnQgaXMgb25lIGhpZ2hlci4gSG93ZXZlciwgdGhpcyBzaG91bGQgYmUg
b25lIGV4dHJhIHBpbiBwZXIgdGhyZWFkLAo+IGFuZCB0aGUgdXBwZXIgYm91bmQgaXMgdGhhdCB3
ZSBtYXkgaGF2ZSBvbmUgdGhyZWFkIGZvciBlYWNoIGVudHJ5Lgo+Cj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBh
bGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
Cj4gaW5kZXggZTQ4ZGYxMWExOWZiLi45NDM1ZDE4NGRkZjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYwo+IEBAIC03NzEsNyArNzcxLDggQEAgX19zZXRfcGRfZW50cnkoc3Ry
dWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKiBjb25zdCBwZCwKPiAgCSAgICAgICBzdHJ1Y3QgaTkx
NV9wYWdlX2RtYSAqIGNvbnN0IHRvLAo+ICAJICAgICAgIHU2NCAoKmVuY29kZSkoY29uc3QgZG1h
X2FkZHJfdCwgY29uc3QgZW51bSBpOTE1X2NhY2hlX2xldmVsKSkKPiAgewo+IC0JR0VNX0JVR19P
TihhdG9taWNfcmVhZChweF91c2VkKHBkKSkgPiBBUlJBWV9TSVpFKHBkLT5lbnRyeSkpOwo+ICsJ
LyogRWFjaCB0aHJlYWQgcHJlLXBpbnMgdGhlIHBkLCBhbmQgd2UgbWF5IGhhdmUgYSB0aHJlYWQg
cGVyIGVhY2ggcGRlICovCj4gKwlHRU1fQlVHX09OKGF0b21pY19yZWFkKHB4X3VzZWQocGQpKSA+
IDIgKiBBUlJBWV9TSVpFKHBkLT5lbnRyeSkpOwoKV2hlbiBJIHNhdyArMSB3cnQgYXJyYXlfc2l6
ZSB0aGF0IHNob3VsZCBoYXZlIHJhbmcgc29tZSBiZWxscyBiZXR3ZWVuCm15IGVhcnMuIEkgZGlk
IGluY3JlYXNlIGl0IHRvICsxIGZvciB0aGUgdXBwZXIgcGlubmluZyBidXQKdGhlIHBhcmFsbGVs
aXNtIGVzY2FwZWQgbWUgYW5kIG5vIG1vcmUgYmVsbHMgd2VyZSBydW5nLgoKZnJvbSBpcmMgJ3Ro
ZSB1cHBlciBwYWdlIGRpcmVjdG9yeScgY291bGQgYmUgYWRkZWQgdG8gdGhlIGNvbW1pdCBtc2cK
YW5kIHRvIHRoZSBjb21tZW50IHRvIGVtcGhhc2l6ZSB3aHkgdGhpcyBoYXBwZW4gbGVhZiBsaWtl
LgoKVGhhbmtzLApSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51
eC5pbnRlbC5jb20+Cgo+Cj4gIAlhdG9taWNfaW5jKHB4X3VzZWQocGQpKTsKPiAgCXBkLT5lbnRy
eVtpZHhdID0gdG87Cj4gLS0gCj4gMi4yMy4wLnJjMQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
