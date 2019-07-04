Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 358C45F6ED
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 12:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02386E2FD;
	Thu,  4 Jul 2019 10:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A056E2FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 10:58:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 03:58:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="169417187"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 04 Jul 2019 03:58:45 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 525265C1EB4; Thu,  4 Jul 2019 13:58:38 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156223681162.25091.7279882878767329826@skylake-alporthouse-com>
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
 <20190703171913.16585-3-chris@chris-wilson.co.uk>
 <463eddd4-b1d0-c9a9-0180-1f0b8f0a77da@intel.com>
 <156223681162.25091.7279882878767329826@skylake-alporthouse-com>
Date: Thu, 04 Jul 2019 13:58:38 +0300
Message-ID: <87ftnm2hi9.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gtt: Defer the free for alloc
 error paths
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNYXR0aGV3IEF1bGQgKDIwMTktMDctMDQgMTE6Mjg6MTgpCj4+IE9uIDAzLzA3LzIwMTkgMTg6
MTksIENocmlzIFdpbHNvbiB3cm90ZToKPj4gPiBJZiB3ZSBoaXQgYW4gZXJyb3Igd2hpbGUgYWxs
b2NhdGluZyB0aGUgcGFnZSB0YWJsZXMsIHdlIGhhdmUgdG8gdW53aW5kCj4+ID4gdGhlIGluY29t
cGxldGUgdXBkYXRlcywgYW5kIHdpc2ggdG8gZnJlZSB0aGUgdW51c2VkIHBkLiBIb3dldmVyLCB3
ZSBhcmUKPj4gPiBub3QgYWxsb3dlZCB0byBiZSBob2RpbmcgdGhlIHNwaW5sb2NrIGF0IHRoYXQg
cG9pbnQsIGFuZCBzbyBtdXN0IHVzZSB0aGUKPj4gCj4+IGhvbGRpbmcKPj4gCj4+ID4gbGF0ZXIg
ZnJlZSB0byBkZWZlciBpdCB1bnRpbCBhZnRlciB3ZSBkcm9wIHRoZSBsb2NrLgo+PiA+IAo+PiA+
IDwzPiBbNDE0LjM2Mzc5NV0gQlVHOiBzbGVlcGluZyBmdW5jdGlvbiBjYWxsZWQgZnJvbSBpbnZh
bGlkIGNvbnRleHQgYXQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6NDcyCj4+
ID4gPDM+IFs0MTQuMzY0MTY3XSBpbl9hdG9taWMoKTogMSwgaXJxc19kaXNhYmxlZCgpOiAwLCBw
aWQ6IDM5MDUsIG5hbWU6IGk5MTVfc2VsZnRlc3QKPj4gPiA8ND4gWzQxNC4zNjQ0MDZdIDMgbG9j
a3MgaGVsZCBieSBpOTE1X3NlbGZ0ZXN0LzM5MDU6Cj4+ID4gPDQ+IFs0MTQuMzY0NDA4XSAgIzA6
IDAwMDAwMDAwMzRmZThhYTggKCZkZXYtPm11dGV4KXsuLi4ufSwgYXQ6IGRldmljZV9kcml2ZXJf
YXR0YWNoKzB4MTgvMHg1MAo+PiA+IDw0PiBbNDE0LjM2NDQxNV0gICMxOiAwMDAwMDAwMDZiZDhh
NTYwICgmZGV2LT5zdHJ1Y3RfbXV0ZXgpeysuKy59LCBhdDogaWd0X2N0eF9leGVjKzB4YjcvMHg0
MTAgW2k5MTVdCj4+ID4gPDQ+IFs0MTQuMzY0NDc2XSAgIzI6IDAwMDAwMDAwM2RmZGM3NjYgKCYo
JnBkLT5sb2NrKS0+cmxvY2speysuKy59LCBhdDogZ2VuOF9wcGd0dF9hbGxvY19wZHArMHg0NDgv
MHg1NDAgW2k5MTVdCj4+ID4gPDM+IFs0MTQuMzY0NTI5XSBQcmVlbXB0aW9uIGRpc2FibGVkIGF0
Ogo+PiA+IDw0PiBbNDE0LjM2NDUzMF0gWzwwMDAwMDAwMDAwMDAwMDAwPl0gMHgwCj4+ID4gPDQ+
IFs0MTQuMzY0Njk2XSBDUFU6IDAgUElEOiAzOTA1IENvbW06IGk5MTVfc2VsZnRlc3QgVGFpbnRl
ZDogRyAgICAgVSAgICAgICAgICAgIDUuMi4wLXJjNy1DSS1DSV9EUk1fNjQwMysgIzEKPj4gPiA8
ND4gWzQxNC4zNjQ2OThdIEhhcmR3YXJlIG5hbWU6IFFFTVUgU3RhbmRhcmQgUEMgKGk0NDBGWCAr
IFBJSVgsIDE5OTYpLCBCSU9TIHJlbC0xLjEwLjEtMC1nODg5MTY5Ny1wcmVidWlsdC5xZW11LXBy
b2plY3Qub3JnIDA0LzAxLzIwMTQKPj4gPiA8ND4gWzQxNC4zNjQ2OTldIENhbGwgVHJhY2U6Cj4+
ID4gPDQ+IFs0MTQuMzY0NzA0XSAgZHVtcF9zdGFjaysweDY3LzB4OWIKPj4gPiA8ND4gWzQxNC4z
NjQ3MDhdICBfX19taWdodF9zbGVlcCsweDE2Ny8weDI1MAo+PiA+IDw0PiBbNDE0LjM2NDc3N10g
IHZtX2ZyZWVfcGFnZSsweDI0LzB4YzAgW2k5MTVdCj4+ID4gPDQ+IFs0MTQuMzY0ODUyXSAgZnJl
ZV9wZCsweGYvMHgyMCBbaTkxNV0KPj4gPiA8ND4gWzQxNC4zNjQ4OTddICBnZW44X3BwZ3R0X2Fs
bG9jX3BkcCsweDQ4OS8weDU0MCBbaTkxNV0KPj4gPiA8ND4gWzQxNC4zNjQ5NDZdICBnZW44X3Bw
Z3R0X2FsbG9jXzRsdmwrMHg4ZS8weDJlMCBbaTkxNV0KPj4gPiA8ND4gWzQxNC4zNjQ5OTJdICBw
cGd0dF9iaW5kX3ZtYSsweDJlLzB4NjAgW2k5MTVdCj4+ID4gPDQ+IFs0MTQuMzY1MDM5XSAgaTkx
NV92bWFfYmluZCsweGU4LzB4MmMwIFtpOTE1XQo+PiA+IDw0PiBbNDE0LjM2NTA4OF0gIF9faTkx
NV92bWFfZG9fcGluKzB4YTEvMHhkMjAgW2k5MTVdCj4+ID4gCj4+ID4gRml4ZXM6IDFkMWI1NDkw
YjkxYyAoImRybS9pOTE1L2d0dDogUmVwbGFjZSBzdHJ1Y3RfbXV0ZXggc2VyaWFsaXNhdGlvbiBm
b3IgYWxsb2NhdGlvbiIpCj4+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4+ID4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGlu
dGVsLmNvbT4KPj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBpbnRlbC5jb20+
Cj4+ID4gLS0tCj4+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDYg
KysrKy0tCj4+ID4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+PiA+IAo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+ID4gaW5kZXgg
OWU3NjM0N2UwMzllLi4xMDY1NzUzZTg2ZmIgMTAwNjQ0Cj4+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYwo+PiA+IEBAIC0xNDg5LDcgKzE0ODksOCBAQCBzdGF0aWMgaW50IGdlbjhf
cHBndHRfYWxsb2NfcGRwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+PiA+ICAgICAg
ICAgICAgICAgZ2VuOF9wcGd0dF9zZXRfcGRwZShwZHAsIHZtLT5zY3JhdGNoX3BkLCBwZHBlKTsK
Pj4gPiAgICAgICAgICAgICAgIEdFTV9CVUdfT04oIWF0b21pY19yZWFkKCZwZHAtPnVzZWQpKTsK
Pj4gPiAgICAgICAgICAgICAgIGF0b21pY19kZWMoJnBkcC0+dXNlZCk7Cj4+ID4gLSAgICAgICAg
ICAgICBmcmVlX3BkKHZtLCBwZCk7Cj4+ID4gKyAgICAgICAgICAgICBHRU1fQlVHX09OKGFsbG9j
KTsKPj4gCj4+IFByZXR0eSBzdXJlIGl0J3MgcG9zc2libGUgZm9yIGFsbG9jICE9IE5VTEwgYXQg
dGhpcyBwb2ludC4uLnR3byB0aHJlYWRzLCAKPj4gb25lIGlzIGxhdGUgdG8gdGhlIHBhcnR5LCB3
ZSBhcmUgdW5sdWNreSBhbmQgaGl0IHRoZSB1bndpbmRfcGQgcGF0aC4gTm8/Cj4KPiBIbW0uIEkg
d2FzIHRoaW5raW5nIHdlIHdvdWxkIG9ubHkgZ2V0IGhlcmUgb24gYW4gYWxsb2MgZmFpbHVyZSBw
YXRoLCBidXQKPiB5ZWFoLCB0aGUgQlVHX09OIHdhcyBhIGNhc2UgZm9yIGRvdWJ0LgoKQW0gSSBz
dGFyaW5nIGF0IHRoZSB3cm9uZyBzcG90IHRoZW4uIEkgdGhvdWdodCB0aGUgYXRvbWljX2luYygm
cGRfdXNlZCkKc2F2ZXMgdXMuCgotTWlrYQoKCj4KPiBEcmF0Lgo+IC1DaHJpcwo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
