Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9340948987
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 19:01:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3273289250;
	Mon, 17 Jun 2019 17:01:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E79F89250;
 Mon, 17 Jun 2019 17:01:47 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 2E3A980407;
 Mon, 17 Jun 2019 19:01:44 +0200 (CEST)
Date: Mon, 17 Jun 2019 19:01:43 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20190617170143.GA26531@ravnborg.org>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-4-daniel.vetter@ffwll.ch>
 <20190615114153.GA20240@ravnborg.org>
 <20190617163811.GK12905@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617163811.GK12905@phenom.ffwll.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=9y9eWiV0ZSryJXqMA08A:9 a=CjuIK1q_8ugA:10
Subject: Re: [Intel-gfx] [PATCH 03/59] drm/prime: Update docs
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgRGFuaWVsLgoKPiA+ID4gKy8qKgo+ID4gPiArICogRE9DOiBvdmVydmlldyBhbmQgbGlmZXRp
bWUgcnVsZXMKPiA+ID4gKyAqCj4gPiA+ICsgKiBTaW1pbGFyIHRvIEdFTSBnbG9iYWwgbmFtZXMs
IFBSSU1FIGZpbGUgZGVzY3JpcHRvcnMgYXJlIGFsc28gdXNlZCB0byBzaGFyZQo+ID4gPiArICog
YnVmZmVyIG9iamVjdHMgYWNyb3NzIHByb2Nlc3Nlcy4gVGhleSBvZmZlciBhZGRpdGlvbmFsIHNl
Y3VyaXR5OiBhcyBmaWxlCj4gPiA+ICsgKiBkZXNjcmlwdG9ycyBtdXN0IGJlIGV4cGxpY2l0bHkg
c2VudCBvdmVyIFVOSVggZG9tYWluIHNvY2tldHMgdG8gYmUgc2hhcmVkCj4gPiA+ICsgKiBiZXR3
ZWVuIGFwcGxpY2F0aW9ucywgdGhleSBjYW4ndCBiZSBndWVzc2VkIGxpa2UgdGhlIGdsb2JhbGx5
IHVuaXF1ZSBHRU0KPiA+ID4gKyAqIG5hbWVzLgo+ID4gRm9yIGEgbmV3YmllIGxpa2UgbWUgdGhl
IGFib3ZlIGRvZXMgbm90IHJlYWxseSBoZWxwIHRvIHVuZGVyc3RhbmQgd2hhdAo+ID4gUFJJTUUg
aXMuCj4gPiBZZXMsIGl0IGlzIGZpbGUgZGVzY3JpcHRvcnMgdXNlZCB0byBzaGFyZSBidWZmZXIg
b2JqZWN0cyBhY3Jvc3MKPiA+IHByb2Nlc3Nlcy4KPiA+IEJ1dCB0aGUgdGV4dCBzYXkgImFsc28g
dXNlZCAuLiIsIHNvIHRoZSBtYWluIHVzYWdlIG9mIFBSSU1FIGlzIHNvbWV0aGluZwo+ID4gZWxz
ZS4KPiAKPiBObywgd2hhdCdzIG1lYW4gaGVyZSBpcyB0aGF0IHByaW1lIGZpbGUgZGVzY3JpcHRv
cnMgYXJlIHVzZWQgbGlrZSBnZW0KPiBnbG9iYWwgbmFtZXMsIGZvciBidWZmZXIgc2hhcmluZy4g
VGhhdCdzIHdoYXQgdGhlICJhbHNvIiBtZWFucyBoZXJlLgo+IFRoZXJlJ3Mgbm8gb3RoZXIgdXNl
IGZvciBwcmltZSBmZCB0aGFuIHNoYXJpbmcgYnVmZmVycy4KPiAKPiBOb3QgcmVhbGx5IGNsZWFy
IHdoeSB0aGlzIGlzIHVuY2xlYXIgLi4uClJlLXJlYWRpbmcgaXQsIHRoaW5ncyBtYWtlcyBhIGJp
dCBtb3JlIHNlbnNlIHRvIG1lIG5vdy4KV2hlbiBJIHdyb3RlIG15IGNvbW1lbnQgSSBzb21laG93
IHJlYWQgaXQ6CiJQUklNRSBmaWxlIGRlc2NyaXB0b3JzIGFyZSBhbHNvIHVzZWQgdG8gc2hhcmUg
Li4uIgooTm90aWNlIHRoYXQgSSBtaXNzZWQgdGhlIGZpcnN0IHBhcnQpLgoKCj4gPiA+IEBAIC03
MjgsNyArOTIzLDExIEBAIEVYUE9SVF9TWU1CT0woZHJtX2dlbV9wcmltZV9pbXBvcnRfZGV2KTsK
PiA+ID4gICAqIEBkbWFfYnVmOiBkbWEtYnVmIG9iamVjdCB0byBpbXBvcnQKPiA+ID4gICAqCj4g
PiA+ICAgKiBUaGlzIGlzIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgZ2VtX3ByaW1lX2ltcG9y
dCBmdW5jdGlvbnMgZm9yIEdFTSBkcml2ZXJzCj4gPiA+IC0gKiB1c2luZyB0aGUgUFJJTUUgaGVs
cGVycy4KPiA+ID4gKyAqIHVzaW5nIHRoZSBQUklNRSBoZWxwZXJzLiBEcml2ZXJzIGNhbiB1c2Ug
dGhpcyBhcyB0aGVpcgo+ID4gPiArICogJmRybV9kcml2ZXIuZ2VtX3ByaW1lX2ltcG9ydCBpbXBs
ZW1lbnRhdGlvbi4KPiA+ID4gKyAqCj4gPiA+ICsgKiBEcml2ZXJzIG11c3QgYXJyYW5nZSB0byBj
YWxsIGRybV9wcmltZV9nZW1fZGVzdHJveSgpIGZyb20gdGhlaXIKPiA+ID4gKyAqICZkcm1fZ2Vt
X29iamVjdF9mdW5jcy5mcmVlIGhvb2sgd2hlbiB1c2luZyB0aGlzIGZ1bmN0aW9uLgo+ID4gCj4g
PiBDb3VsZCB3ZSBoZXJlIGRvY3VtZW50IHdoYXQgZnVuY3Rpb24gd2UgcHJvdmlkZSBhcyB0aGUg
ZGVmYXVsdAo+ID4gJmRybV9nZW1fb2JqZWN0X2Z1bmNzLmZyZWUgaG9vaywgd2hpY2ggZG8gdGhl
IGRybV9wcmltZV9nZW1fZGVzdHJveSgpCj4gPiBjYWxsLgo+ID4gSSByZWFkIHRoZSBhYm92ZSB0
aGF0IGRyaXZlcnMgaGF2ZSB0byBwcm92aWRlIHRoZWlyIG93biBpbXBsZW1lbnRhdGlvbgo+ID4g
b2YgYSAuZnJlZSBob29rLCBhbmQgSSBkbyBub3QgdGhpbmsgdGhpcyBpcyByaWdodC4KPiAKPiBU
aGVyZSdzIG5vIGRlZmF1bHQgaW1wbGVtZW50YXRpb24gb2YgdGhlIGZyZWUgaG9vayBhdCBhbGws
IHNvIG5vdCBzdXJlCj4gd2hhdCB5b3UgbWVhbi4KSSBoYWQgZXhwZWN0ZWQgdGhlcmUgd2FzIGEg
ZGVmYXVsdCBpbXBsZW1lbnRhdGlvbi4KQXMgdGhlcmUgaXMgbm8gc3VjaCB0aGluZyBteSBjb21t
ZW50IGl0IGlycmVsZXZhbnQuCgo+ID4gPiAgCS8qKgo+ID4gPiAgCSAqIEBnZW1fZnJlZV9vYmpl
Y3RfdW5sb2NrZWQ6IGRlY29uc3RydWN0b3IgZm9yIGRybV9nZW1fb2JqZWN0cwo+ID4gPiAgCSAq
Cj4gPiA+IC0JICogVGhpcyBpcyBmb3IgZHJpdmVycyB3aGljaCBhcmUgbm90IGVuY3VtYmVyZWQg
d2l0aCAmZHJtX2RldmljZS5zdHJ1Y3RfbXV0ZXgKPiA+ID4gLQkgKiBsZWdhY3kgbG9ja2luZyBz
Y2hlbWVzLiBVc2UgdGhpcyBob29rIGluc3RlYWQgb2YgQGdlbV9mcmVlX29iamVjdC4KPiA+ID4g
KwkgKiBUaGlzIGlzIGRlcHJlY2F0ZWQgYW5kIHNob3VsZCBub3QgYmUgdXNlZCBieSBuZXcgZHJp
dmVycy4gVXNlCj4gPiA+ICsJICogJmRybV9nZW1fb2JqZWN0X2Z1bmNzLmZyZWUgaW5zdGVhZC4K
PiA+ID4gKwkgKiBDb21wYXJlZCB0byBAZ2VtX2ZyZWVfb2JqZWN0IHRoaXMgaXMgbm90IGVuY3Vt
YmVyZWQgd2l0aAo+ID4gPiArCSAqICZkcm1fZGV2aWNlLnN0cnVjdF9tdXRleCBsZWdhY3kgbG9j
a2luZyBzY2hlbWVzLgo+ID4gPiAgCSAqLwo+ID4gSXQgaXMgY29uZnVzaW5nIHdoeSB0aGUgYWJv
dmUgY29tbWVudCByZWZlciB0byBhbm90aGVyIGNhbGxiYWNrLgo+ID4gSXMgdGhpcyB0aGUgcmln
aHQgd29yZGluZz8KPiA+IAkqIENvbXBhcmVkIHRvIEBnZW1fZnJlZV9vYmplY3RfdW5sb2NrZWQg
dGhpcyBpcyBub3QgZW5jdW1iZXJlZCB3aXRoCj4gPiAJKiAmZHJtX2RldmljZS5zdHJ1Y3RfbXV0
ZXggbGVnYWN5IGxvY2tpbmcgc2NoZW1lcy4KPiA+IAo+ID4gRG8gZ2VtX2ZyZWVfb2JqZWN0KCkg
d2FycmFudCBhIHNpbWlsYXIgY29tbWVudD8KPiAKPiBJJ20gY29uZnVzZWQgLi4uIEBnZW1fZnJl
ZV9vYmplY3QgaXMgZXhhY3RseSB0aGUgY2FsbGJhY2sgSSB3YW50IHRvIHJlZmVyCj4gdG8uIEJl
Y2F1c2UgdGhhdCBvbmUgX2lzXyBlbmN1bWJlcmVkIHdpdGggdGhlIGxlZ2FjeSBzdHJ1Y3RfbXV0
ZXggbG9ja2luZwo+IHNjaGVtZS4gVW5saWtlIHRoZSAuZnJlZSBjYWxsYmFjaywgb3IgdGhlIGdl
bV9mcmVlX29iamVjdF91bmxvY2tlZAo+IGNhbGxiYWNrLgpJIHNlZSBub3csIE9LLgoKVGhhbmtz
IGZvciB0aGUgY2xhcmlmaWNhdGlvbnMuCgoJU2FtCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
