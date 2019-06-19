Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AFD4B449
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 10:44:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53CAB6E2BE;
	Wed, 19 Jun 2019 08:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C58E96E2BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 08:44:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 01:44:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="358125434"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jun 2019 01:44:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190618202139.1481-1-chris@chris-wilson.co.uk>
 <94b19e73-a22b-4042-8196-c24399bf6734@linux.intel.com>
 <156093328450.31375.11797196291405596980@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <80f5bd2c-895b-c717-1e49-472c1df50ff8@linux.intel.com>
Date: Wed, 19 Jun 2019 09:44:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156093328450.31375.11797196291405596980@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Prevent
 preemption
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

Ck9uIDE5LzA2LzIwMTkgMDk6MzQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTE5IDA3OjMyOjA1KQo+Pgo+PiBPbiAxOC8wNi8yMDE5IDIxOjIx
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBJbiBvcmRlciB0byBwaW4gdGhlIGVuZ2luZSBhcyBi
dXN5LCB3ZSBoYXZlIHRvIHByZXZlbnQgdGhlIGtlcm5lbCBmcm9tCj4+PiBleGVjdXRpbmcgb3Ro
ZXIgaW5kZXBlbmRlbnQgd29yayBhaGVhZCBvZiBvdXIgcGx1Zywgc28gdGVsbCB0aGUgc3Bpbm5l
cgo+Pj4gdG8gbm90IGFsbG93IHByZWVtcHRpb24uCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+PiAtLS0KPj4+ICAgIHRlc3Rz
L2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMgfCAzICsrLQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS90ZXN0cy9p
OTE1L2dlbV9jdHhfZW5naW5lcy5jIGIvdGVzdHMvaTkxNS9nZW1fY3R4X2VuZ2luZXMuYwo+Pj4g
aW5kZXggM2VjYWRlNDE3Li5kNDdjYmRkN2MgMTAwNjQ0Cj4+PiAtLS0gYS90ZXN0cy9pOTE1L2dl
bV9jdHhfZW5naW5lcy5jCj4+PiArKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jCj4+
PiBAQCAtMjgzLDcgKzI4Myw4IEBAIHN0YXRpYyB2b2lkIGV4ZWN1dGVfb25lKGludCBpOTE1KQo+
Pj4gICAgCj4+PiAgICAgICAgICAgICAgICAgICAgICAgIHNwaW4gPSBpZ3Rfc3Bpbl9uZXcoaTkx
NSwKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuY3R4ID0g
cGFyYW0uY3R4X2lkLAo+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgLmVuZ2luZSA9IDApOwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgLmVuZ2luZSA9IDAsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAuZmxhZ3MgPSBJR1RfU1BJTl9OT19QUkVFTVBUSU9OKTsKPj4+ICAgIAo+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICBpZ3RfZGVidWcoIlRlc3Rpbmcgd2l0aCBtYXAgb2YgJWQgZW5n
aW5lc1xuIiwgaSArIDEpOwo+Pj4gICAgICAgICAgICAgICAgICAgICAgICBtZW1zZXQoJmVuZ2lu
ZXMuZW5naW5lcywgLTEsIHNpemVvZihlbmdpbmVzLmVuZ2luZXMpKTsKPj4+Cj4+Cj4+IFRoZSBu
by1vcCBiYXRjaCBwcmVlbXB0cyB0aGUgc3Bpbm5lcj8gSG93IGRvZXMgdGhhdCBhZmZlY3QgdGhl
IGJ1c3kKPj4gY2hlY2sgb24gdGhlIG5vLW9wIGJhdGNoPwo+IAo+IFdlIGFyZSBjaGVja2luZyB0
aGUgc2Vjb25kIGJhdGNoIGluIHRoZSBwaXBlbGluZSwgZXhwZWN0aW5nIGl0IHRvIGJlCj4gYmxv
Y2tlZCBieSB0aGUgYWxyZWFkeSBleGVjdXRpbmcgc3Bpbm5lciBvbiB0aGUgZW5naW5lIG9mIGlu
dGVyZXN0Lgo+IFRoZXJlIGlzIG5vIGRlcGVuZGVuY3kgYmV0d2VlbiB0aGUgdHdvIGJhdGNoZXMs
IGp1c3Qgb3JkZXIgb2YKPiBzdWJtaXNzaW9uLCBoZW5jZSB0aGUga2VybmVsIGVuZHMgdXAgZXhl
Y3V0aW5nIHRoZSBzZWNvbmQgbm8tb3AgYmF0Y2gKPiBhZnRlciB0aGUgZmlyc3QgYmF0Y2gncyB0
aW1lc2xpY2UgZXhwaXJlZC4KClllcyBvZiBjb3Vyc2UuLiBidXQgZXZlbiB3aXRob3V0IHRpbWVz
bGljaW5nIEkgdGhpbmsgd2UgY291bGQgaGF2ZSB0aGlzIAphc3N1bXB0aW9uIHNwaW5uZXIgcGx1
Z3MgaW4gYSBsb3Qgb2YgcGxhY2VzLgoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
