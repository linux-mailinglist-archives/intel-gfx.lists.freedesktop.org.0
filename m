Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFC4BB5DA
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 15:57:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E5C86E91C;
	Mon, 23 Sep 2019 13:57:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F8A6E91C
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 13:57:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18587847-1500050 for multiple; Mon, 23 Sep 2019 14:57:52 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190921095542.23205-1-chris@chris-wilson.co.uk>
 <20190921095542.23205-4-chris@chris-wilson.co.uk>
 <b131e489-eaa0-eb3c-061a-20497a1d219f@linux.intel.com>
In-Reply-To: <b131e489-eaa0-eb3c-061a-20497a1d219f@linux.intel.com>
Message-ID: <156924706815.29243.3543058246209089396@skylake-alporthouse-com>
Date: Mon, 23 Sep 2019 14:57:48 +0100
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Fixup preempt-to-busy vs
 reset of a virtual request
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yMyAxNDo0NjoyNykKPiAKPiBPbiAyMS8w
OS8yMDE5IDEwOjU1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBEdWUgdG8gdGhlIG5hdHVyZSBv
ZiBwcmVlbXB0LXRvLWJ1c3kgdGhlIGV4ZWNsaXN0cyBhY3RpdmUgdHJhY2tpbmcgYW5kCj4gPiB0
aGUgc2NoZWR1bGUgcXVldWUgbWF5IGJlY29tZSB0ZW1wb3JhcmlseSBkZXN5bmMnZWQgKGJldHdl
ZW4gcmVzdWJtaXNzaW9uCj4gPiB0byBIVyBhbmQgaXRzIGFjayBmcm9tIEhXKS4gVGhpcyBtZWFu
cyB0aGF0IHdlIG1heSBoYXZlIHVud291bmQgYQo+ID4gcmVxdWVzdCBhbmQgcGFzc2VkIGl0IGJh
Y2sgdG8gdGhlIHZpcnR1YWwgZW5naW5lLCBidXQgaXQgaXMgc3RpbGwKPiA+IGluZmxpZ2h0IG9u
IHRoZSBIVyBhbmQgbWF5IGV2ZW4gcmVzdWx0IGluIGEgR1BVIGhhbmcuIElmIHdlIGRldGVjdCB0
aGF0Cj4gPiBHUFUgaGFuZyBhbmQgdHJ5IHRvIHJlc2V0LCB0aGUgaGFuZ2luZyByZXF1ZXN0LT5l
bmdpbmUgd2lsbCBubyBsb25nZXIKPiA+IG1hdGNoIHRoZSBjdXJyZW50IGVuZ2luZSwgd2hpY2gg
bWVhbnMgdGhhdCB0aGUgcmVxdWVzdCBpcyBub3Qgb24gdGhlCj4gPiBleGVjbGlzdHMgYWN0aXZl
IGxpc3QgYW5kIHdlIHNob3VsZCBub3QgdHJ5IHRvIGZpbmQgYW4gb2xkZXIgaW5jb21wbGV0ZQo+
ID4gcmVxdWVzdC4gR2l2ZW4gdGhhdCB3ZSBoYXZlIGRlZHVjZWQgdGhpcyBtdXN0IGJlIGEgcmVx
dWVzdCBvbiBhIHZpcnR1YWwKPiA+IGVuZ2luZSwgaXQgaXMgdGhlIHNpbmdsZSBhY3RpdmUgcmVx
dWVzdCBpbiB0aGUgY29udGV4dCBhbmQgc28gbXVzdCBiZQo+ID4gZ3VpbHR5IChhcyB0aGUgY29u
dGV4dCBpcyBzdGlsbCBpbmZsaWdodCwgaXQgaXMgcHJldmVudGVkIGZyb20gYmVpbmcKPiA+IGV4
ZWN1dGVkIG9uIGFub3RoZXIgZW5naW5lIGFzIHdlIHByb2Nlc3MgdGhlIHJlc2V0KS4KPiA+IAo+
ID4gRml4ZXM6IDIyYjdhNDI2YmJlMSAoImRybS9pOTE1L2V4ZWNsaXN0czogUHJlZW1wdC10by1i
dXN5IikKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+ID4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4g
PiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICB8IDcgKysr
KystLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIHwgNCArLS0t
Cj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gaW5kZXggMWIyYmFjYzYw
MzAwLi4zZWFkZDI5NGJjZDcgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMKPiA+IEBAIC0yMzI2LDExICsyMzI2LDE0IEBAIHN0YXRpYyB2b2lkIHJlc2V0X2NzYl9wb2lu
dGVycyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gPiAgIAo+ID4gICBzdGF0aWMg
c3RydWN0IGk5MTVfcmVxdWVzdCAqYWN0aXZlX3JlcXVlc3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEpCj4gPiAgIHsKPiA+IC0gICAgIGNvbnN0IHN0cnVjdCBsaXN0X2hlYWQgKiBjb25zdCBsaXN0
ID0KPiA+IC0gICAgICAgICAgICAgJmk5MTVfcmVxdWVzdF9hY3RpdmVfdGltZWxpbmUocnEpLT5y
ZXF1ZXN0czsKPiA+ICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jb250ZXh0ICogY29uc3QgY2Ug
PSBycS0+aHdfY29udGV4dDsKPiA+ICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKmFjdGl2ZSA9
IE5VTEw7Cj4gPiArICAgICBzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0Owo+ID4gICAKPiA+ICsgICAg
IGlmICghaTkxNV9yZXF1ZXN0X2lzX2FjdGl2ZShycSkpIC8qIHVud291bmQsIGJ1dCBpbmNvbXBs
ZXRlISAqLwo+IAo+IElzIGl0IHRpbWUgdG8gc3RvcmUgdGhlIHZlbmcgcG9pbnRlciBzZXBhcmF0
ZWx5IGluIHRoZSByZXF1ZXN0IHNvIHdlIGNhbiAKPiBhZGQgdGhlIGFzc2VydCBoZXJlPyBMaWtl
IAo+IEdFTV9CVUdfT04oIS4uLmVuZ2luZV9pc192aXJ0dWFsKHJxLT5vcmlnX2VuZ2luZSkpID8K
CmludGVsX2VuZ2luZV9pc192aXJ0dWFsKHJxLT5od19jb250ZXh0LT5lbmdpbmUpLgoKQnV0IHRo
aXMgaXMgY3VycmVudGx5IGFnbm9zdGljLCBhbmQgaGVyZSB3ZSBhcmUgb25seSBhc2tpbmcgcXVl
c3Rpb24gaXMKdGhpcyByZXF1ZXN0IGluIHRoZSBlbmdpbmUtPmFjdGl2ZS5saXN0LCB3aGljaCBh
cHBsaWVzIHRvIGJvdGggbm9ybWFsCmFuZCB2aXJ0dWFsIHNldHVwcy4gSG1tLCB0aGlzIGJ1ZyBk
b2VzIGFwcGx5IHRvIG5vcm1hbCByZXNldCwgSSBvbmx5CnNwb3R0ZWQgaXQgYmVjYXVzZSB3ZSBh
ZGRlZCB0aGUgbG9ja2RlcCB3YXJuaW5ncyB0aGF0IHBpY2tlZCB1cCB0aGF0CnJxLT5lbmdpbmUg
d2FzIGRpZmZlcmVudC4KClRoZXJlIG1heWJlIHNvbWUgdXNlIGZvciB0aGF0IGFzc2VydGlvbiwg
YnV0IEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyBvbmUuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
