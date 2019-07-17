Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AB46C064
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 19:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47E826E293;
	Wed, 17 Jul 2019 17:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EE36E28C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 17:29:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 10:29:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="158529343"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 10:29:31 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <20190716124931.5870-2-chris@chris-wilson.co.uk>
 <dacd4362-4e76-5165-37e5-a9d4308835bb@linux.intel.com>
 <156336891995.4375.4394847020984312949@skylake-alporthouse-com>
 <b462d4a4-d2ef-e44f-e633-a7f22f6142ef@linux.intel.com>
 <156337025269.4375.8104628033771518861@skylake-alporthouse-com>
 <8f97cfb9-3cd9-ac96-f28f-1415fe9bbe6b@linux.intel.com>
 <156337178063.4375.5570535715333917830@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e3ce3844-e38e-2bc9-6dfa-c61e24b2741c@linux.intel.com>
Date: Wed, 17 Jul 2019 18:29:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156337178063.4375.5570535715333917830@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Push engine stopping into
 reset-prepare
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

Ck9uIDE3LzA3LzIwMTkgMTQ6NTYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTE3IDE0OjQyOjE1KQo+Pgo+PiBPbiAxNy8wNy8yMDE5IDE0OjMw
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3
LTE3IDE0OjIxOjUwKQo+Pj4+Cj4+Pj4gT24gMTcvMDcvMjAxOSAxNDowOCwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTE3IDE0OjA0OjM0
KQo+Pj4+Pj4KPj4+Pj4+IE9uIDE2LzA3LzIwMTkgMTM6NDksIENocmlzIFdpbHNvbiB3cm90ZToK
Pj4+Pj4+PiAtICAgICAgICAgICAgIGlmIChyZXRyeSkKPj4+Pj4+PiAtICAgICAgICAgICAgICAg
ICAgICAgc3RvcF9lbmdpbmVzKGd0LCBlbmdpbmVfbWFzayk7Cj4+Pj4+Pj4gLQo+Pj4+Pj4KPj4+
Pj4+IE9ubHkgb3RoZXIgZnVuY3Rpb25hbCBjaGFuZ2UgSSBzZWUgaXMgdGhhdCB3ZSBzdG9wIHJl
dHJ5aW5nIHRvIHN0b3AgdGhlCj4+Pj4+PiBlbmdpbmVzIGJlZm9yZSByZXNldCBhdHRlbXB0cy4g
SSBkb24ndCBrbm93IGlmIHRoYXQgaXMgYSBjb25jZXJuIG9yIG5vdC4KPj4+Pj4KPj4+Pj4gQWgs
IGJ1dCB3ZSBkbyBzdG9wIHRoZSBlbmdpbmUgYmVmb3JlIHJlc2V0cyBpbiAqcmVzZXRfcHJlcGFy
ZS4gVGhlIG90aGVyCj4+Pj4+IHBhdGggdG8gYXJyaXZlIGlzIGluIHNhbml0aXplIHdoZXJlIHdl
IGRvbid0IGtub3cgZW5vdWdoIHN0YXRlIHRvIHNhZmVseQo+Pj4+PiB0d2VhayB0aGUgZW5naW5l
cy4gRm9yIHRob3NlLCBJIGNsYWltIGl0IHNob3VsZG4ndCBtYXR0ZXIgYXMgdGhlIGVuZ2luZXMK
Pj4+Pj4gc2hvdWxkIGJlIGlkbGUgYW5kIHdlIG9ubHkgbmVlZCB0aGUgcmVzZXQgdG8gY2xlYXIg
c3RhbGUgY29udGV4dCBzdGF0ZS4KPj4+Pgo+Pj4+IFllcyBJIGtub3cgdGhhdCB3ZSBkbyBjYWxs
IHN0b3AgaW4gcHJlcGFyZSwganVzdCBub3Qgb24gdGhlIHJlc2V0IHJldHJ5Cj4+Pj4gcGF0aC4g
SXQncyB0aGUgYWJvdmUgbG9vcCwgaWYgcmVzZXQgd2FzIGZhaWxpbmcgYW5kIG5lZWRlZCByZXRy
aWVzCj4+Pj4gYmVmb3JlIHdlIHdvdWxkIHJlLXJldHJpZWQgc3RvcHBpbmcgZW5naW5lcyBhbmQg
bm93IHdlIHdvdWxkIG5vdC4KPj4+Cj4+PiBUaGUgZW5naW5lcyBhcmUgc3RpbGwgc3RvcHBlZC4g
VGhlIGZ1bmN0aW9uYWwgY2hhbmdlIGlzIHRvIHJlbW92ZSB0aGUKPj4+IGRhbmdlcm91cyBjbGVh
cmluZyBvZiBSSU5HX0hFQUQvQ1RMLgo+Pgo+PiBPa2F5IGZvciBleGVjbGlzdHMsIGJ1dCBmb3Ig
cmluZ2J1ZmZlciBJIHdhcyBzaW1wbHkgYXNraW5nIGlmIF9vbmVfIG9mCj4+IHRoZSByZWFzb25z
IGZvciBmYWlsZWQgcmVzZXQgY291bGQgYmUgZmFpbHVyZSB0byBzdG9wIGNzLiBJbiB3aGljaCBj
YXNlCj4+IHJlbW92YWwgb2Ygc3RvcF9lbmdpbmVzIGZyb20gdGhlIHJldHJ5IGxvb3AgbWlnaHQg
YmUgZGV0cmltZW50YWwgZm9yCj4+IHJpbmdidWZmZXIuCj4gCj4gRm9yIHJpbmdidWZmZXIsIHdl
IGRvIHRoZSBmdWxsIHNoZWJhbmcgaW4gcHJlcGFyZV9yZXNldCwgd2l0aCBhIG5pY2UKPiBzcGxh
dCBpZiB3ZSBmYWlsIHRvIGNsZWFyIHRoZSBoZWFkLiBpaXJjLCB0aGF0IGhhcyBuZXZlciBiZWVu
IGFuIGlzc3VlLAo+IGFsdGhvdWdoIG9uZSBzaG91bGQgYWx3YXlzIHJlc2VydmUganVkZ21lbnQg
Zm9yIGc0eCB0byByYW5kb21seSBmYWlsCj4gd2l0aCBoZWFkIHVwZGF0ZXMuIElmIGl0IGhlbHBz
LCB3ZSBjYW4gcmVtb3ZlIHRoZSBsb29wIGhlcmUgYXMgSSBkb24ndAo+IHRoaW5rIGl0IGFjY29t
cGxpc2hlcyBhbnl0aGluZyAtLSB0aGUgZXhhbXBsZXMgSSBoYXZlIHdoZXJlIGl0IHRpbWVzIG91
dAo+IGFyZSBmb2xsb3dlZCBieSBhIGhhcmQgbWFjaGluZSBoYW5nLgoKTm8gaXQncyBmaW5lIGlm
IHlvdSBzYXkgaXQgd2FzIG5ldmVyIHRoZSBpc3N1ZS4gSSBqdXN0IHdhbnRlZCBzb21lIApyZWFz
c3VyYW5jZXMgb24gdGhlIHBhcnRpY3VsYXIgcG9pbnQuCgpSZXZpZXdlZC1ieTogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
