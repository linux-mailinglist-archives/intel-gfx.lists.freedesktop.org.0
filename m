Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A695F6F2
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 13:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D044F6E2FD;
	Thu,  4 Jul 2019 11:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426186E2FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 11:02:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17126925-1500050 for multiple; Thu, 04 Jul 2019 12:02:49 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
 <20190703171913.16585-3-chris@chris-wilson.co.uk>
 <463eddd4-b1d0-c9a9-0180-1f0b8f0a77da@intel.com>
 <156223681162.25091.7279882878767329826@skylake-alporthouse-com>
 <87ftnm2hi9.fsf@gaia.fi.intel.com>
In-Reply-To: <87ftnm2hi9.fsf@gaia.fi.intel.com>
Message-ID: <156223816752.25091.13766061373471014667@skylake-alporthouse-com>
Date: Thu, 04 Jul 2019 12:02:47 +0100
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTA0IDExOjU4OjM4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1hdHRo
ZXcgQXVsZCAoMjAxOS0wNy0wNCAxMToyODoxOCkKPiA+PiBPbiAwMy8wNy8yMDE5IDE4OjE5LCBD
aHJpcyBXaWxzb24gd3JvdGU6Cj4gPj4gPiBJZiB3ZSBoaXQgYW4gZXJyb3Igd2hpbGUgYWxsb2Nh
dGluZyB0aGUgcGFnZSB0YWJsZXMsIHdlIGhhdmUgdG8gdW53aW5kCj4gPj4gPiB0aGUgaW5jb21w
bGV0ZSB1cGRhdGVzLCBhbmQgd2lzaCB0byBmcmVlIHRoZSB1bnVzZWQgcGQuIEhvd2V2ZXIsIHdl
IGFyZQo+ID4+ID4gbm90IGFsbG93ZWQgdG8gYmUgaG9kaW5nIHRoZSBzcGlubG9jayBhdCB0aGF0
IHBvaW50LCBhbmQgc28gbXVzdCB1c2UgdGhlCj4gPj4gCj4gPj4gaG9sZGluZwo+ID4+IAo+ID4+
ID4gbGF0ZXIgZnJlZSB0byBkZWZlciBpdCB1bnRpbCBhZnRlciB3ZSBkcm9wIHRoZSBsb2NrLgo+
ID4+ID4gCj4gPj4gPiA8Mz4gWzQxNC4zNjM3OTVdIEJVRzogc2xlZXBpbmcgZnVuY3Rpb24gY2Fs
bGVkIGZyb20gaW52YWxpZCBjb250ZXh0IGF0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jOjQ3Mgo+ID4+ID4gPDM+IFs0MTQuMzY0MTY3XSBpbl9hdG9taWMoKTogMSwgaXJxc19k
aXNhYmxlZCgpOiAwLCBwaWQ6IDM5MDUsIG5hbWU6IGk5MTVfc2VsZnRlc3QKPiA+PiA+IDw0PiBb
NDE0LjM2NDQwNl0gMyBsb2NrcyBoZWxkIGJ5IGk5MTVfc2VsZnRlc3QvMzkwNToKPiA+PiA+IDw0
PiBbNDE0LjM2NDQwOF0gICMwOiAwMDAwMDAwMDM0ZmU4YWE4ICgmZGV2LT5tdXRleCl7Li4uLn0s
IGF0OiBkZXZpY2VfZHJpdmVyX2F0dGFjaCsweDE4LzB4NTAKPiA+PiA+IDw0PiBbNDE0LjM2NDQx
NV0gICMxOiAwMDAwMDAwMDZiZDhhNTYwICgmZGV2LT5zdHJ1Y3RfbXV0ZXgpeysuKy59LCBhdDog
aWd0X2N0eF9leGVjKzB4YjcvMHg0MTAgW2k5MTVdCj4gPj4gPiA8ND4gWzQxNC4zNjQ0NzZdICAj
MjogMDAwMDAwMDAzZGZkYzc2NiAoJigmcGQtPmxvY2spLT5ybG9jayl7Ky4rLn0sIGF0OiBnZW44
X3BwZ3R0X2FsbG9jX3BkcCsweDQ0OC8weDU0MCBbaTkxNV0KPiA+PiA+IDwzPiBbNDE0LjM2NDUy
OV0gUHJlZW1wdGlvbiBkaXNhYmxlZCBhdDoKPiA+PiA+IDw0PiBbNDE0LjM2NDUzMF0gWzwwMDAw
MDAwMDAwMDAwMDAwPl0gMHgwCj4gPj4gPiA8ND4gWzQxNC4zNjQ2OTZdIENQVTogMCBQSUQ6IDM5
MDUgQ29tbTogaTkxNV9zZWxmdGVzdCBUYWludGVkOiBHICAgICBVICAgICAgICAgICAgNS4yLjAt
cmM3LUNJLUNJX0RSTV82NDAzKyAjMQo+ID4+ID4gPDQ+IFs0MTQuMzY0Njk4XSBIYXJkd2FyZSBu
YW1lOiBRRU1VIFN0YW5kYXJkIFBDIChpNDQwRlggKyBQSUlYLCAxOTk2KSwgQklPUyByZWwtMS4x
MC4xLTAtZzg4OTE2OTctcHJlYnVpbHQucWVtdS1wcm9qZWN0Lm9yZyAwNC8wMS8yMDE0Cj4gPj4g
PiA8ND4gWzQxNC4zNjQ2OTldIENhbGwgVHJhY2U6Cj4gPj4gPiA8ND4gWzQxNC4zNjQ3MDRdICBk
dW1wX3N0YWNrKzB4NjcvMHg5Ygo+ID4+ID4gPDQ+IFs0MTQuMzY0NzA4XSAgX19fbWlnaHRfc2xl
ZXArMHgxNjcvMHgyNTAKPiA+PiA+IDw0PiBbNDE0LjM2NDc3N10gIHZtX2ZyZWVfcGFnZSsweDI0
LzB4YzAgW2k5MTVdCj4gPj4gPiA8ND4gWzQxNC4zNjQ4NTJdICBmcmVlX3BkKzB4Zi8weDIwIFtp
OTE1XQo+ID4+ID4gPDQ+IFs0MTQuMzY0ODk3XSAgZ2VuOF9wcGd0dF9hbGxvY19wZHArMHg0ODkv
MHg1NDAgW2k5MTVdCj4gPj4gPiA8ND4gWzQxNC4zNjQ5NDZdICBnZW44X3BwZ3R0X2FsbG9jXzRs
dmwrMHg4ZS8weDJlMCBbaTkxNV0KPiA+PiA+IDw0PiBbNDE0LjM2NDk5Ml0gIHBwZ3R0X2JpbmRf
dm1hKzB4MmUvMHg2MCBbaTkxNV0KPiA+PiA+IDw0PiBbNDE0LjM2NTAzOV0gIGk5MTVfdm1hX2Jp
bmQrMHhlOC8weDJjMCBbaTkxNV0KPiA+PiA+IDw0PiBbNDE0LjM2NTA4OF0gIF9faTkxNV92bWFf
ZG9fcGluKzB4YTEvMHhkMjAgW2k5MTVdCj4gPj4gPiAKPiA+PiA+IEZpeGVzOiAxZDFiNTQ5MGI5
MWMgKCJkcm0vaTkxNS9ndHQ6IFJlcGxhY2Ugc3RydWN0X211dGV4IHNlcmlhbGlzYXRpb24gZm9y
IGFsbG9jYXRpb24iKQo+ID4+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gPj4gPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRA
aW50ZWwuY29tPgo+ID4+ID4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAaW50ZWwu
Y29tPgo+ID4+ID4gLS0tCj4gPj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jIHwgNiArKysrLS0KPiA+PiA+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiA+PiA+IAo+ID4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMKPiA+PiA+IGluZGV4IDllNzYzNDdlMDM5ZS4uMTA2NTc1M2U4NmZiIDEwMDY0NAo+ID4+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiA+PiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPj4gPiBAQCAtMTQ4OSw3ICsxNDg5
LDggQEAgc3RhdGljIGludCBnZW44X3BwZ3R0X2FsbG9jX3BkcChzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICp2bSwKPiA+PiA+ICAgICAgICAgICAgICAgZ2VuOF9wcGd0dF9zZXRfcGRwZShwZHAs
IHZtLT5zY3JhdGNoX3BkLCBwZHBlKTsKPiA+PiA+ICAgICAgICAgICAgICAgR0VNX0JVR19PTigh
YXRvbWljX3JlYWQoJnBkcC0+dXNlZCkpOwo+ID4+ID4gICAgICAgICAgICAgICBhdG9taWNfZGVj
KCZwZHAtPnVzZWQpOwo+ID4+ID4gLSAgICAgICAgICAgICBmcmVlX3BkKHZtLCBwZCk7Cj4gPj4g
PiArICAgICAgICAgICAgIEdFTV9CVUdfT04oYWxsb2MpOwo+ID4+IAo+ID4+IFByZXR0eSBzdXJl
IGl0J3MgcG9zc2libGUgZm9yIGFsbG9jICE9IE5VTEwgYXQgdGhpcyBwb2ludC4uLnR3byB0aHJl
YWRzLCAKPiA+PiBvbmUgaXMgbGF0ZSB0byB0aGUgcGFydHksIHdlIGFyZSB1bmx1Y2t5IGFuZCBo
aXQgdGhlIHVud2luZF9wZCBwYXRoLiBObz8KPiA+Cj4gPiBIbW0uIEkgd2FzIHRoaW5raW5nIHdl
IHdvdWxkIG9ubHkgZ2V0IGhlcmUgb24gYW4gYWxsb2MgZmFpbHVyZSBwYXRoLCBidXQKPiA+IHll
YWgsIHRoZSBCVUdfT04gd2FzIGEgY2FzZSBmb3IgZG91YnQuCj4gCj4gQW0gSSBzdGFyaW5nIGF0
IHRoZSB3cm9uZyBzcG90IHRoZW4uIEkgdGhvdWdodCB0aGUgYXRvbWljX2luYygmcGRfdXNlZCkK
PiBzYXZlcyB1cy4KCkl0J3Mgb24gYW5vdGhlciBlbnRyeSBpbiBvdXIgdGFibGUuIFNvIHdlIHRo
cmVhZHMgQXxCIGZpZ2h0aW5nIG92ZXIKcGRwZTowIGFuZCBCfEMgZmlnaHRpbmcgb3ZlciBwZHBl
OjEsIGFuZCBpZiBCIGxvc2VzIHRoZSBmaXJzdCByYWNlIGFuZAp0aGUgcmFjZSB3aXRoIEMgcmVz
dWx0cyBpbiBhbiBlcnJvci4uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
