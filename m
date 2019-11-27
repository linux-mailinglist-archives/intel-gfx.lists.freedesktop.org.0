Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC5110B29B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 16:44:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550206E338;
	Wed, 27 Nov 2019 15:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2BA96E338
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 15:44:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19361980-1500050 for multiple; Wed, 27 Nov 2019 15:44:16 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191127111742.3271036-1-chris@chris-wilson.co.uk>
 <b834e9b3-9654-12bd-09ef-cf7d13101a0f@linux.intel.com>
 <157486345282.18552.10939932504954999490@skylake-alporthouse-com>
 <7f917e43-d17d-5efc-0d8e-5d1221fbbb7e@linux.intel.com>
 <157486546437.18552.16720736370971433834@skylake-alporthouse-com>
 <1a5555d7-77d5-3e5b-6008-44c285a7ec52@linux.intel.com>
In-Reply-To: <1a5555d7-77d5-3e5b-6008-44c285a7ec52@linux.intel.com>
Message-ID: <157486945008.18552.16852048406695943836@skylake-alporthouse-com>
Date: Wed, 27 Nov 2019 15:44:10 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Copy across scheduler behaviour
 flags across submit fences
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNyAxNToyMTozMCkKPiAKPiBPbiAyNy8x
MS8yMDE5IDE0OjM3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTExLTI3IDE0OjIyOjM3KQo+ID4+Cj4gPj4gT24gMjcvMTEvMjAxOSAxNDowNCwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTEx
LTI3IDEzOjQ2OjE0KQo+ID4+Pj4gT24gMjcvMTEvMjAxOSAxMToxNywgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+ID4+Pj4+IFdlIHdhbnQgdGhlIGJvbmRlZCByZXF1ZXN0IHRvIGhhdmUgdGhlIHNhbWUg
c2NoZWR1bGVyIHByb3BlcnRpZXMgYXMgaXRzCj4gPj4+Pj4gbWFzdGVyIHNvIHRoYXQgaXQgaXMg
cGxhY2VkIGF0IHRoZSBzYW1lIGRlcHRoIGluIHRoZSBxdWV1ZS4gRm9yIGV4YW1wbGUsCj4gPj4+
Pj4gY29uc2lkZXIgd2UgaGF2ZSByZXF1ZXN0cyBBLCBCIGFuZCBCJywgd2hlcmUgQiAmIEInIGFy
ZSBhIGJvbmRlZCBwYWlyIHRvCj4gPj4+Pj4gcnVuIGluIHBhcmFsbGVsIG9uIHR3byBlbmdpbmVz
Lgo+ID4+Pj4+Cj4gPj4+Pj4gICAgICAgICBBIC0+IEIKPiA+Pj4+PiAgICAgICAgICAgICAgICAg
ICAgICBcLSBCJwo+ID4+Pj4+Cj4gPj4+Pj4gQiB3aWxsIHJ1biBhZnRlciBBIGFuZCBzbyBtYXkg
YmUgc2NoZWR1bGVkIG9uIGFuIGlkbGUgZW5naW5lIGFuZCB3YWl0IG9uCj4gPj4+Pj4gQSB1c2lu
ZyBhIHNlbWFwaG9yZS4gQicgc2VlcyBCIGJlaW5nIGV4ZWN1dGVkIGFuZCBzbyBlbnRlcnMgdGhl
IHF1ZXVlIG9uCj4gPj4+Pj4gdGhlIHNhbWUgZW5naW5lIGFzIEEuIEFzIEInIGRpZCBub3QgaW5o
ZXJpdCB0aGUgc2VtYXBob3JlLWNoYWluIGZyb20gQiwKPiA+Pj4+PiBpdCBtYXkgaGF2ZSBoaWdo
ZXIgcHJlY2VkZW5jZSB0aGFuIEEgYW5kIHNvIHByZWVtcHRzIGV4ZWN1dGlvbi4gSG93ZXZlciwK
PiA+Pj4+PiBCJyB0aGVuIHNpdHMgb24gYSBzZW1hcGhvcmUgd2FpdGluZyBmb3IgQiwgd2hvIGlz
IHdhaXRpbmcgZm9yIEEsIHdobyBpcwo+ID4+Pj4+IGJsb2NrZWQgYnkgQi4KPiA+Pj4+Pgo+ID4+
Pj4+IEVyZ28gQicgbmVlZHMgdG8gaW5oZXJpdCB0aGUgc2NoZWR1bGVyIHByb3BlcnRpZXMgZnJv
bSBCIChpLmUuIHRoZQo+ID4+Pj4+IHNlbWFwaG9yZSBjaGFpbikgc28gdGhhdCBpdCBpcyBzY2hl
ZHVsZWQgd2l0aCB0aGUgc2FtZSBwcmlvcml0eSBhcyBCIGFuZAo+ID4+Pj4+IHdpbGwgbm90IGJl
IGV4ZWN1dGVkIGFoZWFkIG9mIEJzIGRlcGVuZGVuY2llcy4KPiA+Pj4+Pgo+ID4+Pj4+IEZ1cnRo
ZXJtb3JlLCB0byBwcmV2ZW50IHRoZSBwcmlvcml0aWVzIGNoYW5naW5nIHZpYSB0aGUgZXhwb3Nl
IGZlbmNlIG9uCj4gPj4+Pj4gQicsIHdlIG5lZWQgdG8gY291cGxlIGluIHRoZSBkZXBlbmRlbmNp
ZXMgZm9yIFBJLiBUaGlzIHJlcXVpcmVzIHVzIHRvCj4gPj4+Pj4gcmVsYXggb3VyIHNhbml0eS1j
aGVja3MgdGhhdCBkZXBlbmRlbmNpZXMgYXJlIHN0cmljdGx5IGluIG9yZGVyLgo+ID4+Pj4KPiA+
Pj4+IEdvb2QgY2F0Y2gsIHRoaXMgbmVlZGVkIHNvbWUgZGVlcCB0aGlua2luZyEgQW5kIGl0IGxv
b2tzIG9rYXksIGV2ZW4KPiA+Pj4+IHRob3VnaCBpZGVhbGx5IHdlIHdvdWxkIGJlIGFibGUgdG8g
Zml4IGl0IG5vdCB0byBzaWduYWwgdGhlIHN1Ym1pdCBmZW5jZQo+ID4+Pj4gdW50aWwgc2VtYXBo
b3JlIHdhcyBjb21wbGV0ZWQuIEJ1dCBmb3IgdGhhdCBJIHRoaW5rIHdlIHdvdWxkIG5lZWQgdG8K
PiA+Pj4+IGVtaXQgYSByZXF1ZXN0IHdoaWxlIGVtaXR0aW5nIGEgcmVxdWVzdCwgc28gdGhhdCB0
aGUgc2VtYXBob3JlIHdhaXQKPiA+Pj4+IHdvdWxkIGJlIGluIGl0cyBvd24uCj4gPj4+Cj4gPj4+
IEF0IGEgcHVzaCB3ZSBjb3VsZCBhZGQgYW4gTUlfVVNFUl9JTlRFUlJVUFQgYWZ0ZXIgdGhlIGlu
aXRpYWwgYnJlYWRjcnVtYgo+ID4+PiBhbmQgY291cGxlIHRoZSBzdWJtaXQgZmVuY2UgaW50byB0
aGF0LiBUaGF0IHdvdWxkIGJlIHZpcnR1YWxseQo+ID4+PiBlcXVpdmFsZW50IHRvIGVtaXR0aW5n
IGEgc2VwYXJhdGUgcmVxdWVzdCBmb3Igc2VtYXBob3Jlcy4gU29tZXRoaW5nIHRvCj4gPj4+IHBv
bmRlciBvdmVyLgo+ID4+Cj4gPj4gSG0sIGlmIG5vdCB0b28gZGlmZmljdWx0IGl0IHdvdWxkIGRl
ZmluaXRlbHkgYmUgbXVjaCBwcmVmZXJhYmxlIHNpbmNlCj4gPj4gcmVseWluZyBvbiBjb250cm9s
bGluZyBwcmVlbXB0aW9uIGRlY2lzaW9ucyBmZWVscyBhIGJpdCBmcmFnaWxlL2hhY2tpc2guCj4g
Pj4KPiA+PiBTaW1wbHkgbW92aW5nIF9fbm90aWZ5X2V4ZWN1dGVfY2IgZnJvbSBfX2k5MTVfcmVx
dWVzdF9zdWJtaXQgdG8KPiA+PiBpbnRlbF9lbmdpbmVfYnJlYWRjcnVtYnNfaXJxLCB1bmRlciBh
IF9faTkxNV9yZXF1ZXN0X2hhc19zdGFydGVkIGNoZWNrLAo+ID4+IGNvdWxkIGRvIGl0Pwo+ID4g
Cj4gPiA5NSUgb2YgdGhlIHdheSwgeWVzLgo+IAo+IElzIHRoZSByZW1haW5pbmcgNSUganVzdCBh
IG5ldyBmbGF2b3VyIG9mIF9faTkxNV9yZXF1ZXN0X2hhc19zdGFydGVkIAo+IHdoaWNoIGRvZXMg
YXdheSB3aXRoIHJjdV9yZWFkX2xvY2s/IDopCgpBZGRpbmcgdGhlIE1JX1VTRVJfSU5URVJSVVBU
LCBlbmFibGluZyBmZW5jZSBzaWduYWxpbmcgZm9yIHN1Ym1pdApmZW5jZXMsIHRpZHlpbmcgdXAs
IHdvcnJ5aW5nIGFib3V0IGludGVycnVwdCBsYXRlbmN5LgoKVGhlIGRldmlsaXNoIGRldGFpbHMu
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
