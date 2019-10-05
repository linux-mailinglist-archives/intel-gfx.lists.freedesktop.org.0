Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C31CC955
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Oct 2019 12:20:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF7126E067;
	Sat,  5 Oct 2019 10:20:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB20B6E067
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Oct 2019 10:20:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18732964-1500050 for multiple; Sat, 05 Oct 2019 11:20:35 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191005101013.GA7645@intel.intel>
References: <20191001135403.2026-1-chris@chris-wilson.co.uk>
 <20191005101013.GA7645@intel.intel>
Message-ID: <157027083255.18712.3493482672156368494@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 05 Oct 2019 11:20:32 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Use a modparam to restrict
 exposed engines
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTEwLTA1IDExOjEwOjQ1KQo+IEhpIENocmlzLAo+IAo+
IE9uIFR1ZSwgT2N0IDAxLCAyMDE5IGF0IDAyOjU0OjAyUE0gKzAxMDAsIENocmlzIFdpbHNvbiB3
cm90ZToKPiA+IEFsbG93IHRoZSB1c2VyIHRvIHJlc3RyaWN0IHRoZSBhdmFpbGFibGUgc2V0IG9m
IGVuZ2luZXMgdmlhIGEgbW9kdWxlCj4gPiBwYXJhbWV0ZXIuCj4gCj4gd2hhdCBpcyB0aGUgZHJp
dmluZyByZWFzb24gZm9yIHdhbnRpbmcgdGhpcz8gQ291bGQgeW91IGV4cGxhaW4gaXQKPiBpbiB0
aGUgY29tbWl0IGxvZz8KCkl0J3MgdG8gYWxsb3cgdGhlIHVzZXIgdG8gcmVzdHJpY3QgdGhlIGF2
YWlsYWJsZSBzZXQgb2YgZW5naW5lcywgZm9yCndoYXRldmVyIHJlYXNvbiB0aGV5IG1heSBoYXZl
LCBwcmVzdW1hYmx5IGJlY2F1c2UgdGhleSB3YW50IHRvIHdvcmsKYXJvdW5kIHNvbWUgSFcgc3Rh
YmlsaXR5IChvciBpZiB0aGF0IGlzIHRoZSBjYXNlIHRvIGVuYWJsZSBzb21lIEhXCmRlc3BpdGUg
aW5zdGFiaWxpdHksIHNpbmNlIHdlIHNob3VsZCBlcnIgb24gdGhlIHNpZGUgb2YgY2F1dGlvbiku
Cgo+IEl0IGZlZWxzIGEgYml0IGNvbmZ1c2luZywgdGhvdWdoLiBZb3UgYXJlIGFjdHVhbGx5IG1h
a2luZyBhCj4gZGlmZmVyZW5jZSBiZXR3ZWVuIGVuZ2luZXMgd2UgZG9uJ3QgaGF2ZSBhbmQgZW5n
aW5lcyB3ZSBkb24ndAo+IHdhbnQsIGFuZCBJIGRvbid0IHNlZSB3aHkuCj4gCj4gV291bGRuJ3Qg
aXQgbWFrZSBzZW5zZSB0byBlaXRoZXIKPiAKPiAgLSBkZWZpbmUgYSBuZXcgYXJjaGl0ZWN0dXJl
ICh3aGljaCBjb3VsZCBtYWtlIHRoaW5ncyBtb3JlCj4gICAgY29uZnVzaW5nKS4KCk5vLCBpdCdz
IGFuIG9wdGlvbmFsIG92ZXJsYXkgb2YgYW4gZXhpc3RpbmcgdW5kZXIgdGhlIHdoaW0gb2YgdGhl
IHVzZXIuCiAKPiBvcgo+IAo+ICAtIGhhdmUgaXQgc3BlY2lmaWVkIGluIGtlcm5lbCBjb25maWd1
cmF0aW9uCgpJcyBob3cgd2UgY29uZmlndXJlIHRoZSBkZWZhdWx0cyBpbiByZWR1Y2VkIGNvbmZp
Z3VyYXRpb25zLgogCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiA+IENjOiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50
ZWwuY29tPgo+ID4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgo+ID4gQ2M6
IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiBDYzogSm9vbmFzIExh
aHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IE1hcnRpbiBQ
ZXJlcyA8bWFydGluLnBlcmVzQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwgMzUgKysrKysrKysrKysrKysrKy0t
LS0tLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICB8ICA1
ICsrKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jICAgICAgICB8ICA0
ICsrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggICAgICAgIHwgIDEg
Kwo+ID4gIDQgZmlsZXMgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0p
Cj4gCj4gQmVjYXVzZSB0aGlzIGlzIGEgbW9kdWxlIG9wdGlvbiB0aGF0IGlzIHNldCBieSB0aGUg
dXNlciwgSSBkb24ndAo+IHNlZSBhbnkgZG9jdW1lbnRhdGlvbiBhYm91dCBpdC4KCkl0J3MgaW4g
aTkxNV9wYXJhbXMuYwoKPiA+ICtzdGF0aWMgYm9vbCBlbmdpbmVfYXZhaWxhYmxlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LCBpbnQgaWQpCj4gPiArewo+ID4gKyAgICAgLyogdUFQSSAt
LSBtb2RwYXJhbSBiaXRzIG11c3QgYmUgY29uc2lzdGVudCBiZXR3ZWVuIGtlcm5lbHMgKi8KPiA+
ICsgICAgIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgcGFyYW1fYml0W10gPSB7Cj4gPiArICAg
ICAgICAgICAgIFtSQ1MwXSAgPSBCSVQoMCksCj4gPiArICAgICAgICAgICAgIFtWQ1MwXSAgPSBC
SVQoMSksCj4gPiArICAgICAgICAgICAgIFtCQ1MwXSAgPSBCSVQoMiksCj4gPiArICAgICAgICAg
ICAgIFtWRUNTMF0gPSBCSVQoMyksCj4gPiArICAgICAgICAgICAgIFtWQ1MxXSAgPSBCSVQoNCks
Cj4gPiArICAgICAgICAgICAgIFtWQ1MyXSAgPSBCSVQoNSksCj4gPiArICAgICAgICAgICAgIFtW
Q1MzXSAgPSBCSVQoNiksCj4gPiArICAgICAgICAgICAgIFtWRUNTMV0gPSBCSVQoNyksCj4gPiAr
ICAgICB9Owo+IAo+IFlldCBhbm90aGVyIHdheSB0byByZWZlciB0byBlbmdpbmVzLi4uIHRoaXMg
dGltZSBpbnNpZGUgYSBzdGF0aWMKPiBmdW5jdGlvbiwgd2l0aG91dCBhbnkgdmlzaWJpbGl0eSBv
dXRzaWRlLgoKU3VyZS4gSXQncyBhIHN0YXRpYyBtYXBwaW5nIHRhYmxlIHRoYXQgaGFzIHRvIHN0
YWJsZSBmb3IgZ2VuZXJhdGlvbnMgdG8KY29tZSBiZWNhdXNlIGl0IGlzIGRlc2NyaWJlZCBpbiBp
OTE1X3BhcmFtcyBhcyBwYXJ0IG9mIHRoZSBpOTE1LmVuZ2luZXMKY29udHJhY3QuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
