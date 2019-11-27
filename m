Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFE610B113
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 15:22:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D178934F;
	Wed, 27 Nov 2019 14:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E3F8934F
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 14:22:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 06:22:41 -0800
X-IronPort-AV: E=Sophos;i="5.69,249,1571727600"; d="scan'208";a="203088517"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 27 Nov 2019 06:22:39 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191127111742.3271036-1-chris@chris-wilson.co.uk>
 <b834e9b3-9654-12bd-09ef-cf7d13101a0f@linux.intel.com>
 <157486345282.18552.10939932504954999490@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7f917e43-d17d-5efc-0d8e-5d1221fbbb7e@linux.intel.com>
Date: Wed, 27 Nov 2019 14:22:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157486345282.18552.10939932504954999490@skylake-alporthouse-com>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI3LzExLzIwMTkgMTQ6MDQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTI3IDEzOjQ2OjE0KQo+PiBPbiAyNy8xMS8yMDE5IDExOjE3LCBD
aHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBXZSB3YW50IHRoZSBib25kZWQgcmVxdWVzdCB0byBoYXZl
IHRoZSBzYW1lIHNjaGVkdWxlciBwcm9wZXJ0aWVzIGFzIGl0cwo+Pj4gbWFzdGVyIHNvIHRoYXQg
aXQgaXMgcGxhY2VkIGF0IHRoZSBzYW1lIGRlcHRoIGluIHRoZSBxdWV1ZS4gRm9yIGV4YW1wbGUs
Cj4+PiBjb25zaWRlciB3ZSBoYXZlIHJlcXVlc3RzIEEsIEIgYW5kIEInLCB3aGVyZSBCICYgQicg
YXJlIGEgYm9uZGVkIHBhaXIgdG8KPj4+IHJ1biBpbiBwYXJhbGxlbCBvbiB0d28gZW5naW5lcy4K
Pj4+Cj4+PiAgICAgICAgQSAtPiBCCj4+PiAgICAgICAgICAgICAgICAgICAgIFwtIEInCj4+Pgo+
Pj4gQiB3aWxsIHJ1biBhZnRlciBBIGFuZCBzbyBtYXkgYmUgc2NoZWR1bGVkIG9uIGFuIGlkbGUg
ZW5naW5lIGFuZCB3YWl0IG9uCj4+PiBBIHVzaW5nIGEgc2VtYXBob3JlLiBCJyBzZWVzIEIgYmVp
bmcgZXhlY3V0ZWQgYW5kIHNvIGVudGVycyB0aGUgcXVldWUgb24KPj4+IHRoZSBzYW1lIGVuZ2lu
ZSBhcyBBLiBBcyBCJyBkaWQgbm90IGluaGVyaXQgdGhlIHNlbWFwaG9yZS1jaGFpbiBmcm9tIEIs
Cj4+PiBpdCBtYXkgaGF2ZSBoaWdoZXIgcHJlY2VkZW5jZSB0aGFuIEEgYW5kIHNvIHByZWVtcHRz
IGV4ZWN1dGlvbi4gSG93ZXZlciwKPj4+IEInIHRoZW4gc2l0cyBvbiBhIHNlbWFwaG9yZSB3YWl0
aW5nIGZvciBCLCB3aG8gaXMgd2FpdGluZyBmb3IgQSwgd2hvIGlzCj4+PiBibG9ja2VkIGJ5IEIu
Cj4+Pgo+Pj4gRXJnbyBCJyBuZWVkcyB0byBpbmhlcml0IHRoZSBzY2hlZHVsZXIgcHJvcGVydGll
cyBmcm9tIEIgKGkuZS4gdGhlCj4+PiBzZW1hcGhvcmUgY2hhaW4pIHNvIHRoYXQgaXQgaXMgc2No
ZWR1bGVkIHdpdGggdGhlIHNhbWUgcHJpb3JpdHkgYXMgQiBhbmQKPj4+IHdpbGwgbm90IGJlIGV4
ZWN1dGVkIGFoZWFkIG9mIEJzIGRlcGVuZGVuY2llcy4KPj4+Cj4+PiBGdXJ0aGVybW9yZSwgdG8g
cHJldmVudCB0aGUgcHJpb3JpdGllcyBjaGFuZ2luZyB2aWEgdGhlIGV4cG9zZSBmZW5jZSBvbgo+
Pj4gQicsIHdlIG5lZWQgdG8gY291cGxlIGluIHRoZSBkZXBlbmRlbmNpZXMgZm9yIFBJLiBUaGlz
IHJlcXVpcmVzIHVzIHRvCj4+PiByZWxheCBvdXIgc2FuaXR5LWNoZWNrcyB0aGF0IGRlcGVuZGVu
Y2llcyBhcmUgc3RyaWN0bHkgaW4gb3JkZXIuCj4+Cj4+IEdvb2QgY2F0Y2gsIHRoaXMgbmVlZGVk
IHNvbWUgZGVlcCB0aGlua2luZyEgQW5kIGl0IGxvb2tzIG9rYXksIGV2ZW4KPj4gdGhvdWdoIGlk
ZWFsbHkgd2Ugd291bGQgYmUgYWJsZSB0byBmaXggaXQgbm90IHRvIHNpZ25hbCB0aGUgc3VibWl0
IGZlbmNlCj4+IHVudGlsIHNlbWFwaG9yZSB3YXMgY29tcGxldGVkLiBCdXQgZm9yIHRoYXQgSSB0
aGluayB3ZSB3b3VsZCBuZWVkIHRvCj4+IGVtaXQgYSByZXF1ZXN0IHdoaWxlIGVtaXR0aW5nIGEg
cmVxdWVzdCwgc28gdGhhdCB0aGUgc2VtYXBob3JlIHdhaXQKPj4gd291bGQgYmUgaW4gaXRzIG93
bi4KPiAKPiBBdCBhIHB1c2ggd2UgY291bGQgYWRkIGFuIE1JX1VTRVJfSU5URVJSVVBUIGFmdGVy
IHRoZSBpbml0aWFsIGJyZWFkY3J1bWIKPiBhbmQgY291cGxlIHRoZSBzdWJtaXQgZmVuY2UgaW50
byB0aGF0LiBUaGF0IHdvdWxkIGJlIHZpcnR1YWxseQo+IGVxdWl2YWxlbnQgdG8gZW1pdHRpbmcg
YSBzZXBhcmF0ZSByZXF1ZXN0IGZvciBzZW1hcGhvcmVzLiBTb21ldGhpbmcgdG8KPiBwb25kZXIg
b3Zlci4KCkhtLCBpZiBub3QgdG9vIGRpZmZpY3VsdCBpdCB3b3VsZCBkZWZpbml0ZWx5IGJlIG11
Y2ggcHJlZmVyYWJsZSBzaW5jZSAKcmVseWluZyBvbiBjb250cm9sbGluZyBwcmVlbXB0aW9uIGRl
Y2lzaW9ucyBmZWVscyBhIGJpdCBmcmFnaWxlL2hhY2tpc2guCgpTaW1wbHkgbW92aW5nIF9fbm90
aWZ5X2V4ZWN1dGVfY2IgZnJvbSBfX2k5MTVfcmVxdWVzdF9zdWJtaXQgdG8gCmludGVsX2VuZ2lu
ZV9icmVhZGNydW1ic19pcnEsIHVuZGVyIGEgX19pOTE1X3JlcXVlc3RfaGFzX3N0YXJ0ZWQgY2hl
Y2ssIApjb3VsZCBkbyBpdD8KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
