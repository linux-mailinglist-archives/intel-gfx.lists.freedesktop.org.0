Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EB11B5A4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 14:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8C9899D5;
	Mon, 13 May 2019 12:16:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50783898AF;
 Mon, 13 May 2019 12:16:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 05:16:07 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO [10.252.28.3])
 ([10.252.28.3])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2019 05:16:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-2-tvrtko.ursulin@linux.intel.com>
 <155749158480.28545.14640530975629638702@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f6f1943c-b216-e1d4-832f-323311bfae9b@linux.intel.com>
Date: Mon, 13 May 2019 13:16:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155749158480.28545.14640530975629638702@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 01/21] scripts/trace.pl: Fix
 after intel_engine_notify removal
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzA1LzIwMTkgMTM6MzMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTA4IDEzOjEwOjM4KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBBZnRlciB0aGUgcmVtb3ZhbCBvZiBlbmdp
bmUgZ2xvYmFsIHNlcW5vcyBhbmQgdGhlIGNvcnJlc3BvbmRpbmcKPj4gaW50ZWxfZW5naW5lX25v
dGlmeSB0cmFjZXBvaW50cyB0aGUgc2NyaXB0IG5lZWRzIHRvIGJlIGFkanVzdGVkIHRvIGNvcGUK
Pj4gd2l0aCB0aGUgbmV3IHN0YXRlIG9mIHRoaW5ncy4KPj4KPj4gVG8ga2VlcCB3b3JraW5nIGl0
IHN3aXRjaGVzIG92ZXIgdXNpbmcgdGhlIGRtYV9mZW5jZTpkbWFfZmVuY2Vfc2lnbmFsZWQ6Cj4+
IHRyYWNlcG9pbnQgYW5kIGtlZXBzIG9uZSBleHRyYSBpbnRlcm5hbCBtYXAgdG8gY29ubmVjdCB0
aGUgY3R4LXNlcW5vIHBhaXJzCj4+IHdpdGggZW5naW5lcy4KPj4KPj4gSXQgYWxzbyBuZWVkcyB0
byBrZXkgdGhlIGNvbXBsZXRpb24gZXZlbnRzIG9uIHRoZSBmdWxsIGVuZ2luZS9jdHgvc2Vxbm8K
Pj4gdG9rZW5zLCBhbmQgYWRqdXN0IGNvcnJlc3BvbmRpbmdseSB0aGUgdGltZWxpbmUgc29ydGlu
ZyBsb2dpYy4KPj4KPj4gdjI6Cj4+ICAgKiBEbyBub3QgdXNlIGxhdGUgbm90aWZpY2F0aW9ucyAo
cmVjZWl2ZWQgYWZ0ZXIgY29udGV4dCBjb21wbGV0ZSkgd2hlbgo+PiAgICAgc3BsaXR0aW5nIHVw
IGNvYWxlc2NlZCByZXF1ZXN0cy4gVGhleSBhcmUgbm93IG11Y2ggbW9yZSBsaWtlbHkgYW5kIGNh
bgo+PiAgICAgbm90IGJlIHVzZWQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIHNjcmlwdHMvdHJhY2UucGwg
fCA4MiArKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4g
ICAxIGZpbGUgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwgNDEgZGVsZXRpb25zKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9zY3JpcHRzL3RyYWNlLnBsIGIvc2NyaXB0cy90cmFjZS5wbAo+PiBpbmRl
eCAxOGY5ZjNiMTgzOTYuLjk1ZGMzYTY0NWU4ZSAxMDA3NTUKPj4gLS0tIGEvc2NyaXB0cy90cmFj
ZS5wbAo+PiArKysgYi9zY3JpcHRzL3RyYWNlLnBsCj4+IEBAIC0yNyw3ICsyNyw4IEBAIHVzZSB3
YXJuaW5nczsKPj4gICB1c2UgNS4wMTA7Cj4+ICAgCj4+ICAgbXkgJGdpZCA9IDA7Cj4+IC1teSAo
JWRiLCAlcXVldWUsICVzdWJtaXQsICVub3RpZnksICVyaW5ncywgJWN0eGRiLCAlcmluZ21hcCwg
JXJlcXdhaXQsICVjdHh0aW1lbGluZXMpOwo+PiArbXkgKCVkYiwgJXF1ZXVlLCAlc3VibWl0LCAl
bm90aWZ5LCAlcmluZ3MsICVjdHhkYiwgJXJpbmdtYXAsICVyZXF3YWl0LAo+PiArICAgICVjdHh0
aW1lbGluZXMsICVjdHhlbmdpbmVzKTsKPj4gICBteSBAZnJlcXM7Cj4gCj4gU28gd2hhdCdzIGN0
eGVuZ2luZXM/IE9yIHJpbmdzIGZvciB0aGF0IG1hdHRlcj8KCnJpbmdzIGdvIGJhY2sgdG8gdGhl
IGJlZ2lubmluZ3Mgb2YgdGhlIHRvb2wgd2hlbiBJIHRoaW5rIHRoZSAKdmlzdWFsaXphaXRvbiBs
aWJyYXJ5IG5lZWRlZCBhbiB1bmlxdWUgaW50ZWdlciB2YWx1ZSBmb3IgZXZlcnkgdGltZWxpbmUg
CihzbyBlbmdpbmUpLiBBbmQgdGhlcmUgaXMgYSByaW5nbWFwIGZyb20gdGhpcyBpZCBiYWNrIHRv
IG91ciBlbmdpbmUgCm5hbWUuIFBlcmhhcHMgdGhpcyB3b3VsZCBiZSBjbGVhcmVyIGlmIHJldmVy
c2VkLCBidXQgSSBhbSBub3Qgc3VyZSBob3cgCm11Y2ggY2h1cm4gd291bGQgdGhhdCBiZSB3aXRo
b3V0IGFjdHVhbGx5IGRvaW5nIGl0LiBSZW5hbWluZyByaW5ncyB0byAKZW5naW5lcyB3b3VsZCBh
bHNvIG1ha2Ugc2Vuc2UuCgo+IEkgdGFrZSBpdCBjdHhlbmdpbmVzIGlzIHJlYWxseSB0aGUgbGFz
dCBlbmdpbmUgd2hpY2ggd2Ugc2F3IHRoaXMgY29udGV4dAo+IGV4ZWN1dGUgb24/CgpDb3JyZWN0
LgoKSSBndWVzcyB0aGVyZSBpcyBhIHByb2JsZW0gaWYgZG1hX2ZlbmNlX3NpZ25hbGVkIGlzIGRl
bGF5ZWQgcGFzdCBhbm90aGVyIApyZXF1ZXN0X2luLiBIbSBidXQgSSBhbHNvIGhhdmUgYSBkaWUg
aWYgZW5naW5lIGlzIGRpZmZlcmVudC4uIHRoYXQgCmNhbm5vdCBiZSByaWdodCwgYnV0IHdoeSBp
dCBkaWRuJ3QgZmFpbC4uIEkgbmVlZCB0byBkb3VibGUgY2hlY2sgdGhpcy4KCj4gCj4+ICAgCj4+
ICAgbXkgJG1heF9pdGVtcyA9IDMwMDA7Cj4+IEBAIC02Niw3ICs2Nyw3IEBAIE5vdGVzOgo+PiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTU6aTkxNV9yZXF1ZXN0X3N1Ym1pdCwg
XAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTU6aTkxNV9yZXF1ZXN0X2lu
LCBcCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaTkxNTppOTE1X3JlcXVlc3Rf
b3V0LCBcCj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpOTE1OmludGVsX2VuZ2lu
ZV9ub3RpZnksIFwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9mZW5jZTpk
bWFfZmVuY2Vfc2lnbmFsZWQsIFwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBp
OTE1Omk5MTVfcmVxdWVzdF93YWl0X2JlZ2luLCBcCj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgaTkxNTppOTE1X3JlcXVlc3Rfd2FpdF9lbmQgXAo+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFtjb21tYW5kLXRvLWJlLXByb2ZpbGVkXQo+PiBAQCAtMTYxLDcgKzE2
Miw3IEBAIHN1YiBhcmdfdHJhY2UKPj4gICAgICAgICAgICAgICAgICAgICAgICAgJ2k5MTU6aTkx
NV9yZXF1ZXN0X3N1Ym1pdCcsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICdpOTE1Omk5MTVf
cmVxdWVzdF9pbicsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICdpOTE1Omk5MTVfcmVxdWVz
dF9vdXQnLAo+PiAtICAgICAgICAgICAgICAgICAgICAgICdpOTE1OmludGVsX2VuZ2luZV9ub3Rp
ZnknLAo+PiArICAgICAgICAgICAgICAgICAgICAgICdkbWFfZmVuY2U6ZG1hX2ZlbmNlX3NpZ25h
bGVkJywKPj4gICAgICAgICAgICAgICAgICAgICAgICAgJ2k5MTU6aTkxNV9yZXF1ZXN0X3dhaXRf
YmVnaW4nLAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAnaTkxNTppOTE1X3JlcXVlc3Rfd2Fp
dF9lbmQnICk7Cj4+ICAgCj4+IEBAIC0zMTIsMTMgKzMxMyw2IEBAIHN1YiBkYl9rZXkKPj4gICAg
ICAgICAgcmV0dXJuICRyaW5nIC4gJy8nIC4gJGN0eCAuICcvJyAuICRzZXFubzsKPj4gICB9Cj4+
ICAgCj4+IC1zdWIgZ2xvYmFsX2tleQo+PiAtewo+PiAtICAgICAgIG15ICgkcmluZywgJHNlcW5v
KSA9IEBfOwo+PiAtCj4+IC0gICAgICAgcmV0dXJuICRyaW5nIC4gJy8nIC4gJHNlcW5vOwo+PiAt
fQo+PiAtCj4+ICAgc3ViIHNhbml0aXplX2N0eAo+PiAgIHsKPj4gICAgICAgICAgbXkgKCRjdHgs
ICRyaW5nKSA9IEBfOwo+PiBAQCAtNDE5LDYgKzQxMyw4IEBAIHdoaWxlICg8Pikgewo+PiAgICAg
ICAgICAgICAgICAgICRyZXF7J3JpbmcnfSA9ICRyaW5nOwo+PiAgICAgICAgICAgICAgICAgICRy
ZXF7J3NlcW5vJ30gPSAkc2Vxbm87Cj4+ICAgICAgICAgICAgICAgICAgJHJlcXsnY3R4J30gPSAk
Y3R4Owo+PiArICAgICAgICAgICAgICAgZGllIGlmIGV4aXN0cyAkY3R4ZW5naW5lc3skY3R4fSBh
bmQgJGN0eGVuZ2luZXN7JGN0eH0gbmUgJHJpbmc7Cj4+ICsgICAgICAgICAgICAgICAkY3R4ZW5n
aW5lc3skY3R4fSA9ICRyaW5nOwo+PiAgICAgICAgICAgICAgICAgICRjdHh0aW1lbGluZXN7JGN0
eCAuICcvJyAuICRyaW5nfSA9IDE7Cj4+ICAgICAgICAgICAgICAgICAgJHJlcXsnbmFtZSd9ID0g
JGN0eCAuICcvJyAuICRzZXFubzsKPj4gICAgICAgICAgICAgICAgICAkcmVxeydnbG9iYWwnfSA9
ICR0cHsnZ2xvYmFsJ307Cj4+IEBAIC00MjksMTYgKzQyNSwyOSBAQCB3aGlsZSAoPD4pIHsKPj4g
ICAgICAgICAgICAgICAgICAkcmluZ21hcHskcmluZ3N7JHJpbmd9fSA9ICRyaW5nOwo+PiAgICAg
ICAgICAgICAgICAgICRkYnska2V5fSA9IFwlcmVxOwo+PiAgICAgICAgICB9IGVsc2lmICgkdHBf
bmFtZSBlcSAnaTkxNTppOTE1X3JlcXVlc3Rfb3V0OicpIHsKPj4gLSAgICAgICAgICAgICAgIG15
ICRna2V5ID0gZ2xvYmFsX2tleSgkcmluZywgJHRweydnbG9iYWwnfSk7Cj4+ICsgICAgICAgICAg
ICAgICBteSAkZ2tleTsKPj4gKwo+IAo+ICMgTXVzdCBiZSBwYWlyZWQgd2l0aCBhIHByZXZpb3Vz
IGk5MTVfcmVxdWVzdF9pbgo+PiArICAgICAgICAgICAgICAgZGllIHVubGVzcyBleGlzdHMgJGN0
eGVuZ2luZXN7JGN0eH07Cj4gCj4gSSdkIHN1Z2dlc3QgbmV4dCB1bmxlc3MsIGJlY2F1c2UgdGhl
cmUncyBhbHdheXMgYSBjaGFuZ2UgdGhlIGNhcHR1cmUgaXMKPiBzdGFydGVkIHBhcnQgd2F5IHRo
b3VnaCBzb21lb25lJ3Mgd29ya2xvYWQuCgpUaGF0IHdvdWxkIG5lZWQgbXVjaCBtb3JlIHdvcmsu
Cgo+IAo+PiArICAgICAgICAgICAgICAgJGdrZXkgPSBkYl9rZXkoJGN0eGVuZ2luZXN7JGN0eH0s
ICRjdHgsICRzZXFubyk7Cj4+ICsKPj4gKyAgICAgICAgICAgICAgIGlmICgkdHB7J2NvbXBsZXRl
ZD8nfSkgewo+PiArICAgICAgICAgICAgICAgICAgICAgICBkaWUgdW5sZXNzIGV4aXN0cyAkZGJ7
JGtleX07Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGRpZSB1bmxlc3MgZXhpc3RzICRkYnsk
a2V5fS0+eydzdGFydCd9Owo+PiArICAgICAgICAgICAgICAgICAgICAgICBkaWUgaWYgZXhpc3Rz
ICRkYnska2V5fS0+eydlbmQnfTsKPj4gKwo+PiArICAgICAgICAgICAgICAgICAgICAgICAkZGJ7
JGtleX0tPnsnZW5kJ30gPSAkdGltZTsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgJGRieyRr
ZXl9LT57J25vdGlmeSd9ID0gJG5vdGlmeXskZ2tleX0KPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgZXhpc3RzICRub3RpZnl7JGdrZXl9Owo+IAo+
IEhtbS4gV2l0aCBwcmVlbXB0LXRvLWJ1c3ksIGEgcmVxdWVzdCBjYW4gY29tcGxldGUgd2hlbiB3
ZSBhcmUgbm8gbG9uZ2VyCj4gdHJhY2tpbmcgaXQgKGl0IGNvbXBsZXRlcyBiZWZvcmUgd2UgcHJl
ZW1wdCBpdCkuCj4gCj4gVGhleSB3aWxsIHN0aWxsIGdldCB0aGUgc2NoZWR1bGUtb3V0IHRyYWNl
cG9pbnQsIGJ1dCBtYXJrZWQgYXMKPiBpbmNvbXBsZXRlLCBhbmQgdGhlcmUgd2lsbCBiZSBhIHNp
Z25hbGVkIHRwIGxhdGVyIGJlZm9yZSB3ZSB0cnkgYW5kCj4gcmVzdWJtaXQuCgpUaGlzIHNvdW5k
cyBsaWtlIHRoZSByZXF1ZXN0IHdvdWxkIGRpc2FwcGVhciBmcm9tIHRoZSBzY3JpcHRzIHZpZXcu
Cgo+IAo+PiArICAgICAgICAgICAgICAgfSBlbHNlIHsKPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgZGVsZXRlICRkYnska2V5fTsKPj4gKyAgICAgICAgICAgICAgIH0KPj4gKyAgICAgICB9IGVs
c2lmICgkdHBfbmFtZSBlcSAnZG1hX2ZlbmNlOmRtYV9mZW5jZV9zaWduYWxlZDonKSB7Cj4+ICsg
ICAgICAgICAgICAgICBteSAkZ2tleTsKPj4gICAKPj4gLSAgICAgICAgICAgICAgIGRpZSB1bmxl
c3MgZXhpc3RzICRkYnska2V5fTsKPj4gLSAgICAgICAgICAgICAgIGRpZSB1bmxlc3MgZXhpc3Rz
ICRkYnska2V5fS0+eydzdGFydCd9Owo+PiAtICAgICAgICAgICAgICAgZGllIGlmIGV4aXN0cyAk
ZGJ7JGtleX0tPnsnZW5kJ307Cj4+ICsgICAgICAgICAgICAgICBkaWUgdW5sZXNzIGV4aXN0cyAk
Y3R4ZW5naW5lc3skdHB7J2NvbnRleHQnfX07Cj4+ICAgCj4+IC0gICAgICAgICAgICAgICAkZGJ7
JGtleX0tPnsnZW5kJ30gPSAkdGltZTsKPj4gLSAgICAgICAgICAgICAgICRkYnska2V5fS0+eydu
b3RpZnknfSA9ICRub3RpZnl7JGdrZXl9IGlmIGV4aXN0cyAkbm90aWZ5eyRna2V5fTsKPj4gLSAg
ICAgICB9IGVsc2lmICgkdHBfbmFtZSBlcSAnaTkxNTppbnRlbF9lbmdpbmVfbm90aWZ5OicpIHsK
Pj4gLSAgICAgICAgICAgICAgIG15ICRna2V5ID0gZ2xvYmFsX2tleSgkcmluZywgJHNlcW5vKTsK
Pj4gKyAgICAgICAgICAgICAgICRna2V5ID0gZGJfa2V5KCRjdHhlbmdpbmVzeyR0cHsnY29udGV4
dCd9fSwgJHRweydjb250ZXh0J30sICR0cHsnc2Vxbm8nfSk7Cj4+ICAgCj4+ICAgICAgICAgICAg
ICAgICAgJG5vdGlmeXskZ2tleX0gPSAkdGltZSB1bmxlc3MgZXhpc3RzICRub3RpZnl7JGdrZXl9
Owo+PiAgICAgICAgICB9IGVsc2lmICgkdHBfbmFtZSBlcSAnaTkxNTppbnRlbF9ncHVfZnJlcV9j
aGFuZ2U6Jykgewo+PiBAQCAtNDUyLDcgKzQ2MSw3IEBAIHdoaWxlICg8Pikgewo+PiAgICMgZmlu
ZCB0aGUgbGFyZ2VzdCBzZXFubyB0byBiZSB1c2VkIGZvciB0aW1lbGluZSBzb3J0aW5nIHB1cnBv
c2VzLgo+PiAgIG15ICRtYXhfc2Vxbm8gPSAwOwo+PiAgIGZvcmVhY2ggbXkgJGtleSAoa2V5cyAl
ZGIpIHsKPj4gLSAgICAgICBteSAkZ2tleSA9IGdsb2JhbF9rZXkoJGRieyRrZXl9LT57J3Jpbmcn
fSwgJGRieyRrZXl9LT57J2dsb2JhbCd9KTsKPj4gKyAgICAgICBteSAkZ2tleSA9IGRiX2tleSgk
ZGJ7JGtleX0tPnsncmluZyd9LCAkZGJ7JGtleX0tPnsnY3R4J30sICRkYnska2V5fS0+eydzZXFu
byd9KTsKPj4gICAKPj4gICAgICAgICAgZGllIHVubGVzcyBleGlzdHMgJGRieyRrZXl9LT57J3N0
YXJ0J307Cj4+ICAgCj4+IEBAIC00NzgsMTQgKzQ4NywxMyBAQCBteSAka2V5X2NvdW50ID0gc2Nh
bGFyKGtleXMgJWRiKTsKPj4gICAKPj4gICBteSAlZW5naW5lX3RpbWVsaW5lczsKPj4gICAKPj4g
LXN1YiBzb3J0RW5naW5lIHsKPj4gLSAgICAgICBteSAkYXMgPSAkZGJ7JGF9LT57J2dsb2JhbCd9
Owo+PiAtICAgICAgIG15ICRicyA9ICRkYnskYn0tPnsnZ2xvYmFsJ307Cj4+ICtzdWIgc29ydFN0
YXJ0IHsKPj4gKyAgICAgICBteSAkYXMgPSAkZGJ7JGF9LT57J3N0YXJ0J307Cj4+ICsgICAgICAg
bXkgJGJzID0gJGRieyRifS0+eydzdGFydCd9Owo+PiAgICAgICAgICBteSAkdmFsOwo+PiAgIAo+
PiAgICAgICAgICAkdmFsID0gJGFzIDw9PiAkYnM7Cj4+IC0KPj4gLSAgICAgICBkaWUgaWYgJHZh
bCA9PSAwOwo+PiArICAgICAgICR2YWwgPSAkYSBjbXAgJGIgaWYgJHZhbCA9PSAwOwo+PiAgIAo+
PiAgICAgICAgICByZXR1cm4gJHZhbDsKPj4gICB9Cj4+IEBAIC00OTcsOSArNTA1LDcgQEAgc3Vi
IGdldF9lbmdpbmVfdGltZWxpbmUgewo+PiAgICAgICAgICByZXR1cm4gJGVuZ2luZV90aW1lbGlu
ZXN7JHJpbmd9IGlmIGV4aXN0cyAkZW5naW5lX3RpbWVsaW5lc3skcmluZ307Cj4+ICAgCj4+ICAg
ICAgICAgIEB0aW1lbGluZSA9IGdyZXAgeyAkZGJ7JF99LT57J3JpbmcnfSBlcSAkcmluZyB9IGtl
eXMgJWRiOwo+PiAtICAgICAgICMgRklYTUUgc2Vxbm8gcmVzdGFydAo+PiAtICAgICAgIEB0aW1l
bGluZSA9IHNvcnQgc29ydEVuZ2luZSBAdGltZWxpbmU7Cj4+IC0KPj4gKyAgICAgICBAdGltZWxp
bmUgPSBzb3J0IHNvcnRTdGFydCBAdGltZWxpbmU7Cj4+ICAgICAgICAgICRlbmdpbmVfdGltZWxp
bmVzeyRyaW5nfSA9IFxAdGltZWxpbmU7Cj4+ICAgCj4+ICAgICAgICAgIHJldHVybiBcQHRpbWVs
aW5lOwo+PiBAQCAtNTYxLDIwICs1NjcsMTAgQEAgZm9yZWFjaCBteSAkZ2lkIChzb3J0IGtleXMg
JXJpbmdzKSB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAkZGJ7JGtleX0tPnsnbm8tbm90
aWZ5J30gPSAxOwo+PiAgICAgICAgICAgICAgICAgIH0KPj4gICAgICAgICAgICAgICAgICAkZGJ7
JGtleX0tPnsnZW5kJ30gPSAkZW5kOwo+PiArICAgICAgICAgICAgICAgJGRieyRrZXl9LT57J25v
dGlmeSd9ID0gJGVuZCBpZiAkZGJ7JGtleX0tPnsnbm90aWZ5J30gPiAkZW5kOwo+PiAgICAgICAg
ICB9Cj4+ICAgfQo+PiAgIAo+PiAtc3ViIHNvcnRTdGFydCB7Cj4+IC0gICAgICAgbXkgJGFzID0g
JGRieyRhfS0+eydzdGFydCd9Owo+PiAtICAgICAgIG15ICRicyA9ICRkYnskYn0tPnsnc3RhcnQn
fTsKPj4gLSAgICAgICBteSAkdmFsOwo+PiAtCj4+IC0gICAgICAgJHZhbCA9ICRhcyA8PT4gJGJz
Owo+PiAtICAgICAgICR2YWwgPSAkYSBjbXAgJGIgaWYgJHZhbCA9PSAwOwo+PiAtCj4+IC0gICAg
ICAgcmV0dXJuICR2YWw7Cj4+IC19Cj4+IC0KPj4gICBteSAkcmVfc29ydCA9IDE7Cj4+ICAgbXkg
QHNvcnRlZF9rZXlzOwo+PiAgIAo+PiBAQCAtNjcwLDkgKzY2NiwxMyBAQCBpZiAoJGNvcnJlY3Rf
ZHVyYXRpb25zKSB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBuZXh0IHVubGVzcyBleGlz
dHMgJGRieyRrZXl9LT57J25vLWVuZCd9Owo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgbGFz
dCBpZiAkcG9zID09ICQjeyR0aW1lbGluZX07Cj4+ICAgCj4+IC0gICAgICAgICAgICAgICAgICAg
ICAgICMgU2hpZnQgZm9sbG93aW5nIHJlcXVlc3QgdG8gc3RhcnQgYWZ0ZXIgdGhlIGN1cnJlbnQg
b25lCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICMgU2hpZnQgZm9sbG93aW5nIHJlcXVlc3Qg
dG8gc3RhcnQgYWZ0ZXIgdGhlIGN1cnJlbnQKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgIyBv
bmUsIGJ1dCBvbmx5IGlmIHRoYXQgd291bGRuJ3QgbWFrZSBpdCB6ZXJvIGR1cmF0aW9uLAo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAjIHdoaWNoIHdvdWxkIGluZGljYXRlIG5vdGlmeSBhcnJp
dmVkIGFmdGVyIGNvbnRleHQKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgIyBjb21wbGV0ZS4K
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICRuZXh0X2tleSA9ICR7JHRpbWVsaW5lfVskcG9z
ICsgMV07Cj4+IC0gICAgICAgICAgICAgICAgICAgICAgIGlmIChleGlzdHMgJGRieyRrZXl9LT57
J25vdGlmeSd9KSB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChleGlzdHMgJGRieyRr
ZXl9LT57J25vdGlmeSd9IGFuZAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgJGRieyRr
ZXl9LT57J25vdGlmeSd9IDwgJGRieyRrZXl9LT57J2VuZCd9KSB7Cj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICRkYnskbmV4dF9rZXl9LT57J2VuZ2luZS1zdGFydCd9ID0gJGRi
eyRuZXh0X2tleX0tPnsnc3RhcnQnfTsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgJGRieyRuZXh0X2tleX0tPnsnc3RhcnQnfSA9ICRkYnska2V5fS0+eydub3RpZnknfTsKPj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJHJlX3NvcnQgPSAxOwo+PiBAQCAtNzUw
LDkgKzc1MCw5IEBAIGZvcmVhY2ggbXkgJGdpZCAoc29ydCBrZXlzICVyaW5ncykgewo+PiAgICAg
ICAgICAjIEV4dHJhY3QgYWxsIEdQVSBidXN5IGludGVydmFscyBhbmQgc29ydCB0aGVtLgo+PiAg
ICAgICAgICBmb3JlYWNoIG15ICRrZXkgKEBzb3J0ZWRfa2V5cykgewo+PiAgICAgICAgICAgICAg
ICAgIG5leHQgdW5sZXNzICRkYnska2V5fS0+eydyaW5nJ30gZXEgJHJpbmc7Cj4+ICsgICAgICAg
ICAgICAgICBkaWUgaWYgJGRieyRrZXl9LT57J3N0YXJ0J30gPiAkZGJ7JGtleX0tPnsnZW5kJ307
Cj4gCj4gSGVoLCB3ZSdyZSBvdXQgb2YgbHVjayBpZiB3ZSB3YW50IHRvIHRyYWNlIGFjcm9zcyBz
ZXFubyB3cmFwYXJvdW5kLgoKWWVhaCwgdGhhdCdzIGFub3RoZXIgbWlzc2luZyB0aGluZy4KCj4g
Cj4gSXQgbWFrZXMgZW5vdWdoIHNlbnNlLAo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KClRoYW5rcy4gT3ZlcmFsbCB0aGUgc2NyaXB0IGNvdWxk
IHVzZSBhIGNsZWFudXAgc28gSSdsbCB0cnkgdG8gZmluZCBzb21lIAp0aW1lIHRvd2FyZHMgaXQg
d2hlbiB0aGlzIHNldHRsZXMuCgpSZWdhcmRzLAoKVHZydGtvCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
