Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4254C06CD
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 15:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29FE56E848;
	Fri, 27 Sep 2019 13:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DCC76E848
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 13:58:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 06:58:28 -0700
X-IronPort-AV: E=Sophos;i="5.64,555,1559545200"; d="scan'208";a="180504553"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 27 Sep 2019 06:58:26 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-8-chris@chris-wilson.co.uk>
 <a1305fcf-1ac4-6c06-3553-49a6684168ed@linux.intel.com>
 <156958352829.32596.13199670465422748570@skylake-alporthouse-com>
 <85a5f7de-3837-3017-cb20-23258a61075f@linux.intel.com>
 <156958660601.32596.13285971368792453394@skylake-alporthouse-com>
 <b4d4838e-dbc3-5ee0-8749-8578fea05881@linux.intel.com>
 <156958754666.32596.2846806960936006960@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <87d8e012-37f2-1c42-e855-d647153cb525@linux.intel.com>
Date: Fri, 27 Sep 2019 14:58:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156958754666.32596.2846806960936006960@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/27] drm/i915: Coordinate i915_active with
 its own mutex
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI3LzA5LzIwMTkgMTM6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTI3IDEzOjI1OjIzKQo+Pgo+PiBPbiAyNy8wOS8yMDE5IDEzOjE2
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA5
LTI3IDEzOjA4OjUxKQo+Pj4+Cj4+Pj4gT24gMjcvMDkvMjAxOSAxMjoyNSwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA5LTI3IDEyOjEwOjI5
KQo+Pj4+Pj4KPj4+Pj4+IE9uIDI1LzA5LzIwMTkgMTE6MDEsIENocmlzIFdpbHNvbiB3cm90ZToK
Pj4+Pj4+PiArc3RydWN0IGRtYV9mZW5jZSAqCj4+Pj4+Pj4gK19faTkxNV9hY3RpdmVfZmVuY2Vf
c2V0KHN0cnVjdCBpOTE1X2FjdGl2ZV9mZW5jZSAqYWN0aXZlLAo+Pj4+Pj4+ICsgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKPj4+Pj4+Cj4+Pj4+PiBDYW4geW91
IGFkZCBhIHNob3J0IGNvbW1lbnQgZm9yIHRoaXMgZnVuY3Rpb24gZXhwbGFpbmluZyB0aGUgcmFj
eW5lc3MKPj4+Pj4+IGFuZCBzbyB3aHkgaXQgcmV0dXJucyBwcmV2IGFuZCB3aGF0IHNob3VsZCB0
aGUgY2FsbGVycyBkbyB3aXRoIGl0Pwo+Pj4+Pgo+Pj4+PiBCZWZvcmUgdXNpbmcgdGhpcyBmdW5j
dGlvbiwgd2UgaGFkIHRoZSBjYWxsZXJzIGRlY2xhcmUgd2hhdCBtdXRleCBndWFyZHMKPj4+Pj4g
dGhpcyB0aW1lbGluZSBhbmQgd2UgY2hlY2sgaGVyZSB0aGF0IGlzIGhlbGQuCj4+Pj4KPj4+PiBO
bywgSSBtZWFuIGJlY2F1c2UgaXQgaGFzIHRvIHJlbG9hZCBwcmV2IGFuZCByZXR1cm4gaXQgdG8g
dGhlIGNhbGxlciwKPj4+PiB3aGljaCBpbXBsaWVzIHRoYXQgaXMgdG8gaGFuZGxlIHNvbWUgZGVz
aWduZWQtaW4gcmFjeS1uZXNzIHdoaWNoIEkgdGhpbmsKPj4+PiBzaG91bGQgYmUgbWVudGlvbmVk
Lgo+Pj4KPj4+IEJ1dCB0aGF0J3Mgbm90IHJhY2luZyB3aXRoIHRoZSBjYWxsZXIsIHRoYXQganVz
dCByYWNpbmcgd2l0aCB0aGUKPj4+IGNhbGxiYWNrIGZyb20gdGhlIGludGVycnVwdCBoYW5kbGVy
IGFuZCB0aGUgcmVhc29uIHdoeSB3ZSBoYXZlIHRvIGNoZWNrCj4+PiBhZnRlciBzZXJpYWxpc2lu
ZyBpcyBjYWxsZWQgb3V0LiAvKiBzZXJpYWxpc2Ugd2l0aCBwcmV2LT5jYl9saXN0ICovID8KPj4+
Cj4+PiBUaGUgY2FsbGVyIGlzIHJlc3BvbnNpYmxlIGZvciBlbnN1cmluZyB0aGF0IHByZXYgaXMg
ZXhlY3V0ZWQgYmVmb3JlCj4+PiBmZW5jZSB0byBrZWVwIHRoZSB0aW1lbGluZSBpbiB0aGUgc2Ft
ZSBvcmRlciBhcyByZWNvcmRlZC4KPj4KPj4gSSBkaWQgbm90IHNheSBpdCBpcyByYWNpbmcgd2l0
aCB0aGUgY2FsbGVyLCBidXQgdGhhdCB0aGUgY2FsbGVyIGhhcyB0bwo+PiBoYW5kbGUgYSByYWNl
Lgo+IAo+IEJ1dCB0aGUgY2FsbGVyIG9ubHkgaGFzIHRvIGNhcmUgYWJvdXQgIndhcyB0aGVyZSBh
bHJlYWR5IGFuIGFjdGl2ZSBmZW5jZQo+IG9uIHRoaXMgdGltZWxpbmU/IElmIHNvLCBJIG11c3Qg
bWFrZSBzdXJlIGl0IGV4ZWN1dGVzIGJlZm9yZSBtZSBhbmQgdGFrZQo+IHRoYXQgaW50byBjb25z
aWRlcmF0aW9uIGZvciB0aGUgZmxvdyBhbG9uZyB0aGUgdGltZWxpbmUiCj4gCj4gSSdtIG5vdCBz
ZWVpbmcgd2hhdCByYWNlIHRoZSBjYWxsZXIgaGFzIHRvIGJlIGNvbmNlcm5lZCB3aXRoIGhlcmUu
IElmCj4gdGhleSByZXBsYWNlIHRoZSBsYXN0IHJlcXVlc3QgaW4gdGhlIHRpbWVsaW5lLCB0aGV5
IGhhdmUgaXQgcmV0dXJuZWQuCj4gSWYgdGhlcmUgd2FzIG5vIHJlcXVlc3QgcHJldmlvdXNseSBp
biB0aGUgdGltZWxpbmUsIHRoZXkgaGF2ZSBOVUxMLgo+IChUaGF0IGp1c3Qgc2VlbXMgc3RyYWln
aHRmb3J3YXJkLikKPiAgIAo+PiAiU2VyaWFsaXNlIHdpdGggcHJldi0+Y2JfbGlzdCIgaXMgdG9v
IGxvdyBsZXZlbCBmb3IgbWUuIFRydXN0IG1lLCBJCj4+IGFsd2F5cyBzdHJ1Z2dsZSB3aXRoIHRo
ZSBhY3RpdmUgdHJhY2tpbmcgY29kZSBzaW5jZSB0aGVyZSBpcyBzbyBtYW55Cj4+IGluZGlyZWN0
aW9ucyBhbmQgcmVsYXRpb25zaGlwcy4gU28gaW4gdGhlIGFic2VuY2Ugb2YgYSB2aXN1YWwgZGlh
Z3JhbSBhCj4+IGhpZ2hlciBsZXZlbCBjb21tZW50IHdvdWxkIGJlIGJlbmVmaWNpYWwgZm9yIHRo
ZSBmdXR1cmUgc2VsZi4gSnVzdAo+PiBleHBhbmRpbmcgb24gd2hhdCB5b3UgcmVwbGllZCBoZXJl
IHRhbGtpbmcgYWJvdXQgaG93IGludGVycnVwdHMKPj4gaW50ZXJhY3RzIHdpdGggbmV3IHN0dWZm
IGVudGVyaW5nIHRyYWNraW5nIHdvdWxkIGRvIGl0Lgo+IAo+IEl0J3MganVzdCBhYm91dCB0aGF0
IHRoZSBjYWxsYmFjayBtYXkgYmUgZXhlY3V0aW5nIGFuZCBzbyB3ZSBuZWVkIHRvCj4gc2VyaWFs
aXNlIHRoZSBsaXN0IG1hbmlwdWxhdGlvbiB1bmRlciB0aGUgbG9jazsgaGF2aW5nIHBlcmZvcm1l
ZCB0aGF0Cj4gbGlzdCBtYW5pcHVsYXRpb24sIHdlIHRoZW4ga25vdyB3aGV0aGVyIG9yIG5vdCB3
ZSB3ZXJlIHN1Y2Nlc3NmdWwgaW4KPiBjYXB0dXJpbmcgdGhlIHByZXZpb3VzIGZlbmNlLgoKT2sg
b2sgOiksIGp1c3QgZXhwYW5kIHRoZSBjb21tZW50IG5leHQgdG8gcmUtZmV0Y2ggb2YgcHJldiA9
IAphY3RpdmUtPmZlbmNlIHRvIHRoYXQgZWZmZWN0LCB0aGF0J3MgYWxsIEknbSBhc2tpbmcuIDop
CgpJdCB3aWxsIG1ha2UgaXQgZWFzaWVyIGZvciBmdXR1cmUgcmVhZGVyIHRvIHVuZGVyc3RhbmQg
d2h5IGl0IGlzIApyZXF1aXJlZCBhbmQgdW5kZXIgd2hhdCBjaXJjdW1zdGFuY2VzIGNvdWxkIGFj
dGl2ZS0+ZmVuY2UgaGF2ZSBiZWNhbWUgCk5VTEwgaW4gdGhlcmUuCgpSZWdhcmRzLAoKVHZydGtv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
