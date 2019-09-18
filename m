Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF0AB6821
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 18:28:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1B96F403;
	Wed, 18 Sep 2019 16:28:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB8D6F406
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 16:28:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 09:28:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,521,1559545200"; d="scan'208";a="199093674"
Received: from leonidf-mobl.ger.corp.intel.com (HELO [10.252.3.171])
 ([10.252.3.171])
 by orsmga002.jf.intel.com with ESMTP; 18 Sep 2019 09:28:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190916113808.30386-1-chris@chris-wilson.co.uk>
 <f9dd99e9-2a2b-0ccb-5bde-ddb3e2c52718@linux.intel.com>
 <156873347535.5729.10751385580169175179@skylake-alporthouse-com>
 <30887414-d268-ff26-13a1-36fb924abdd4@linux.intel.com>
 <156882302627.5729.14761907964387151217@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <74f34403-0be5-7184-fec2-1e1f110dd2df@linux.intel.com>
Date: Wed, 18 Sep 2019 17:28:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156882302627.5729.14761907964387151217@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Verify the engine after acquiring
 the active.lock
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE4LzA5LzIwMTkgMTc6MTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTE4IDE2OjU0OjM2KQo+Pgo+PiBPbiAxNy8wOS8yMDE5IDE2OjE3
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA5
LTE3IDE1OjU5OjI1KQo+Pj4+Cj4+Pj4gT24gMTYvMDkvMjAxOSAxMjozOCwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBXaGVuIHVzaW5nIHZpcnR1YWwgZW5naW5lcywgdGhlIHJxLT5lbmdpbmUg
aXMgbm90IHN0YWJsZSB1bnRpbCB3ZSBob2xkCj4+Pj4+IHRoZSBlbmdpbmUtPmFjdGl2ZS5sb2Nr
IChhcyB0aGUgdmlydHVhbCBlbmdpbmUgbWF5IGJlIGV4Y2hhbmdlZCB3aXRoIHRoZQo+Pj4+PiBz
aWJsaW5nKS4gU2luY2UgY29tbWl0IDIyYjdhNDI2YmJlMSAoImRybS9pOTE1L2V4ZWNsaXN0czog
UHJlZW1wdC10by1idXN5IikKPj4+Pj4gd2UgbWF5IHJldGlyZSBhIHJlcXVlc3QgY29uY3VycmVu
dGx5IHdpdGggcmVzdWJtaXR0aW5nIGl0IHRvIEhXLCB3ZSBuZWVkCj4+Pj4+IHRvIGJlIGV4dHJh
IGNhcmVmdWwgdG8gdmVyaWZ5IHdlIGFyZSBob2xkaW5nIHRoZSBjb3JyZWN0IGxvY2sgZm9yIHRo
ZQo+Pj4+PiByZXF1ZXN0J3MgYWN0aXZlIGxpc3QuIFRoaXMgaXMgc2ltaWxhciB0byB0aGUgaXNz
dWUgd2Ugc2F3IHdpdGgKPj4+Pj4gcmVzY2hlZHVsaW5nIHRoZSB2aXJ0dWFsIHJlcXVlc3RzLCBz
ZWUgc2NoZWRfbG9ja19lbmdpbmUoKS4KPj4+Pj4KPj4+Pj4gT3IgZWxzZToKPj4+Pj4KPj4+Pj4g
PDQ+IFs4NzYuNzM2MTI2XSBsaXN0X2FkZCBjb3JydXB0aW9uLiBwcmV2LT5uZXh0IHNob3VsZCBi
ZSBuZXh0IChmZmZmODg4M2Y5MzFhMWY4KSwgYnV0IHdhcyBkZWFkMDAwMDAwMDAwMTAwLiAocHJl
dj1mZmZmODg4MzYxZmZhNjEwKS4KPiAuLi4KPj4+Pj4gPDQ+IFs4NzYuNzM2NDE1XSBsaXN0X2Rl
bCBjb3JydXB0aW9uLiBwcmV2LT5uZXh0IHNob3VsZCBiZSBmZmZmODg4MzYxZmZjYTEwLCBidXQg
d2FzIGZmZmY4ODg0MGFjMmM3MzAKPiAKPj4+IFllcy4gU28gcHJlZW1wdC10by1idXN5IGludHJv
ZHVjZXMgYSB3aW5kb3cgd2hlcmUgdGhlIHJlcXVlc3QgaXMgc3RpbGwKPj4+IG9uIEhXIGJ1dCB3
ZSBoYXZlIHJldHVybmVkIGl0IGJhY2sgdG8gdGhlIHN1Ym1pc3Npb24gcXVldWUuIFdlIGNhdGNo
IHVwCj4+PiB3aXRoIHRoZSBIVyBvbiB0aGUgbmV4dCBwcm9jZXNzX2NzYiwgYnV0IGl0IG1heSBo
YXZlIGNvbXBsZXRlZCB0aGUKPj4+IHJlcXVlc3QgaW4gdGhlIG1lYW4gdGltZSAoaXQgaXMganVz
dCBub3QgYWxsb3dlZCB0byBhZHZhbmNlIGJleW9uZCB0aGUKPj4+IHN1YnNlcXVlbnQgYnJlYWRj
cnVtYiBhbmQgc28gcHJldmVudGVkIGZyb20gb3ZlcnRha2luZyBvdXIga25vd2xlZGdlIG9mCj4+
PiBSSU5HX1RBSUwgYW5kIHNvIHdlIGF2b2lkIHRlbGxpbmcgdGhlIEhXIHRvIGdvICJiYWNrd2Fy
ZHMiLikuCj4+Cj4+IFdvdWxkIGl0IGJlIHN1ZmZpY2llbnQgdG8gZG86Cj4+Cj4+ICAgICBlbmdp
bmUgPSBSRUFEX09OQ0UocnEtPmVuZ2luZSk7Cj4+ICAgICBzcGluX2xvY2soLi4uKTsKPj4gICAg
IGxpc3RfZGVsKC4uLik7Cj4+ICAgICBzcGluX3VubG9jayhlbmdpbmUtPmFjdGl2ZS5sb2NrKTsK
Pj4KPj4gVG8gZW5zdXJlIHRoZSBzYW1lIGVuZ2luZSBpcyB1c2VkPyBBbHRob3VnaCB0aGUgb29w
cyBpcyBub3QgYWJvdXQKPj4gc3BpbmxvY2sgYnV0IGxpc3QgY29ycnVwdGlvbi4gSG93IGRvZXMg
dGhlIGxpc3QgZ2V0IGNvcnJ1cHQgdGhvdWdoPwo+PiBsaXN0X2RlbCBkb2VzIG5vdCBjYXJlIG9u
IHdoaWNoIGxpc3QgdGhlIHJlcXVlc3QgaXMuLiBJZiBpdCBpcyByZWFsbHkKPj4ga2V5IHRvIGhh
dmUgdGhlIGNvcnJlY3QgbG9jaywgdGhlbiB3aHkgaXQgaXMgZW5vdWdoIHRvIHJlLWNoZWNrIHRo
ZQo+PiBlbmdpbmUgYWZ0ZXIgdGFraW5nIHRoZSBsb2NrPyBXaHkgcnEtPmVuZ2luZSBjb3VsZG4n
dCBjaGFuZ2UgdW5kZXIgdGhlCj4+IGxvY2sgYWdhaW4/IHJxLT5lbmdpbmUgZG9lcyBnZXQgdXBk
YXRlZCB1bmRlciB0aGUgdmVyeSBsb2NrLCBubz8KPiAKPiBEb24ndCBmb3JnZXQgdGhhdCBsaXN0
X2RlbCBjaGFuZ2VzIHRoZSBsaXN0IGFyb3VuZCBpdDoKPiBsaXN0X2RlbCgpIHsKPiAJbGlzdC0+
cHJldi0+bmV4dCA9IGxpc3QtPm5leHQ7Cj4gCWxpc3QtPm5leHQtPnByZXYgPSBsaXN0LT5wcmV2
Owo+IH0KPiAKPiBycS0+ZW5naW5lIGNhbid0IGNoYW5nZSB1bmRlciB0aGUgcmVhbC0+YWN0aXZl
LmxvY2ssIGFzIHRoZSBhc3NpZ25tZW50Cj4gdG8gcnEtPmVuZ2luZSA9ICh2aXJ0dWFsLCByZWFs
KSBpcyBtYWRlIHVuZGVyIHRoZSByZWFsLT5hY3RpdmUubG9jay4KClNoZWVocy4uIEkgYW0gcmUt
aW52ZW50aW5nIHBhcmFkaWdtcyBoZXJlLi4gOigKCj4gZXhlY2xpc3RzX2RlcXVldWU6Cj4gCXJl
YWwtPmFjdGl2ZS5sb2NrCj4gCXZlLT5hY3RpdmUubG9jawo+IAo+IF9fdW53aW5kX2luY29tcGxl
dGVfcmVxdWVzdHM6Cj4gCXJlYWwtPmFjdGl2ZS5sb2NrCj4gCj4gSG1tLiBJIHRydXN0IHRoZSB0
cmljayBlbXBsb3llZCBpbiB0aGUgcGF0Y2ggaXMgd2VsbCBwcm92ZW4gYnkgdGhpcwo+IHBvaW50
LCBidXQgaWYgd2UgdG9vayB0aGUgbmVzdGVkIHZlIGxvY2sgaW5zaWRlIF9fdW53aW5kLCBkbyB3
ZSBuZWVkIHRvCj4gd29ycnkuIEhtbS4KCk1pZ2h0IGJlIG5pY2VyIGluZGVlZC4gV2Ugd291bGQg
b25seSBoYXZlIHZlLT5yZWFsIG5lc3RpbmcsIG5ldmVyIHRoZSAKb3Bwb3NpdGUsIHJpZ2h0PwoK
UmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
