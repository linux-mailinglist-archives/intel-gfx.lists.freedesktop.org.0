Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A88F87D7E7
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 10:42:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EDA46E3EC;
	Thu,  1 Aug 2019 08:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B54F6E3EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 08:42:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 01:42:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,333,1559545200"; d="scan'208";a="184170514"
Received: from gadevlin-mobl.ger.corp.intel.com (HELO [10.251.95.57])
 ([10.251.95.57])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2019 01:42:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-4-chris@chris-wilson.co.uk>
 <af76214d-41e9-f986-61ba-6d5100da9330@linux.intel.com>
 <156413061514.30723.6983243553746244857@skylake-alporthouse-com>
 <6d68ecac-4d6a-6b87-5ea9-c0bd2ba8335e@linux.intel.com>
 <156447952867.6373.9286619293752854474@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <32108668-b421-7b9f-ede1-19a87e2c0717@linux.intel.com>
Date: Thu, 1 Aug 2019 09:42:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156447952867.6373.9286619293752854474@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/23] drm/i915: Push the ring creation
 flags to the backend
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

Ck9uIDMwLzA3LzIwMTkgMTA6MzgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTI5IDEzOjU5OjIyKQo+Pgo+PiBPbiAyNi8wNy8yMDE5IDA5OjQz
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3
LTI0IDEyOjExOjU0KQo+Pj4+Cj4+Pj4gT24gMjMvMDcvMjAxOSAxOTozOCwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBQdXNoIHRoZSByaW5nIGNyZWF0aW9uIGZsYWdzIGZyb20gdGhlIG91dGVy
IEdFTSBjb250ZXh0IHRvIHRoZSBpbm5lcgo+Pj4+PiBpbnRlbF9jb3RuZXh0IHRvIGF2b2lkIGFu
IHVuc2lnaHRseSBiYWNrLXJlZmVyZW5jZSBmcm9tIGluc2lkZSB0aGUKPj4+Pj4gYmFja2VuZC4K
Pj4+Pgo+Pj4+IFNvcnJ5IEkgZmluZCB0aGlzIHF1aXRlIHVnbHkuIFBhc3NpbmcgaW4gaW50ZWdl
cnMgaW4gcG9pbnRlcnMgZmlsZWQgYW5kCj4+Pj4gY2FzdGluZyBiYWNrIGFuZCBmb3J0aC4KPj4+
Cj4+PiBCdXQgYmV0dGVyIHRoYW4gYSB1bmlvbiwgc2luY2Ugb25jZSB0aGUgaW50ZWxfY29udGV4
dCBpcyBhY3RpdmUsIHRoZQo+Pj4gcmluZyBpcyBhbHdheXMgYSByaW5nLgo+Pgo+PiBVbmxlc3Mg
aXQgaXMgdTY0IHNpemUuIEkgYW0gbm90IGJ1eWluZyBpdC4gOikKPiAKPiBXZSBkb24ndCBuZWVk
IHU2NCBzaXplPyBJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCB5b3UgbWVhbi4KCkkgY29tcGxhaW5l
ZCBhYm91dCB2ZXJ5IHVub2J2aW91cyBhbmQgcXVlc3Rpb25hYmxlIGhhY2sgb2YgcGFzc2luZyB0
aGUgCnNpemUgaW4gdGhlIHBvaW50ZXIgZmllbGQgYW5kIHlvdSBzYWlkIGl0IGlzIGJldHRlciB0
aGFuIGFuIHVuaW9uLiBGb3IgCm1lIHVuaW9uIGNlcnRhaW5seSByYXRlcyB3YXkgaGlnaGVyIHRo
YW4gdGhlIGNhc2luZyBoYWNrIHdpdGggYSBtYWNyby4KCj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jCj4+Pj4+IGluZGV4IDZkMzkxMTQ2OTgwMS4uZTIzN2JjZWNmYTFmIDEwMDY0
NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+Pj4+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+Pj4+PiBAQCAtMzI4LDEw
ICszMjgsMTQgQEAgc3RhdGljIHZvaWQgcHJpbnRfY29udGV4dF9zdGF0cyhzdHJ1Y3Qgc2VxX2Zp
bGUgKm0sCj4+Pj4+ICAgICAKPj4+Pj4gICAgICAgICAgICAgICAgIGZvcl9lYWNoX2dlbV9lbmdp
bmUoY2UsCj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTVfZ2Vt
X2NvbnRleHRfbG9ja19lbmdpbmVzKGN0eCksIGl0KSB7Cj4+Pj4+IC0gICAgICAgICAgICAgICAg
ICAgICBpZiAoY2UtPnN0YXRlKQo+Pj4+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICBw
ZXJfZmlsZV9zdGF0cygwLCBjZS0+c3RhdGUtPm9iaiwgJmtzdGF0cyk7Cj4+Pj4+IC0gICAgICAg
ICAgICAgICAgICAgICBpZiAoY2UtPnJpbmcpCj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBp
bnRlbF9jb250ZXh0X2xvY2tfcGlubmVkKGNlKTsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAg
IGlmIChpbnRlbF9jb250ZXh0X2lzX3Bpbm5lZChjZSkpIHsKPj4+Pgo+Pj4+IEFuZCB0aGVzZSBo
dW5rcyBkbyBub3Qgc2VlbSB0byBiZWxvbmcgdG8gdGhpcyBwYXRjaC4KPj4+Cj4+PiBUaGVuIHlv
dSBhcmUgbWlzdGFrZW4uIFRoZSBidWcgaXMgb2xkZXIsIGJ1dCBpdCBnZXRzIHRyaWdnZXJlZCBi
eSB0aGlzCj4+PiBwYXRjaC4KPj4KPj4gR2V0cyB0cmlnZ2VyZWQgb3IgZ2V0cyBmaXhlZD8gUGVy
aGFwcyBjb21taXQgbWVzc2FnZSBuZWVkcyBpbXByb3ZpbmcKPj4gc2luY2UgaXQgdGFsa3MgYWJv
dXQgYXZvaWRpbmcgYW4gdW5zaWdodGx5IGJhY2stcmVmZXJlbmNlIChhbmQgSSBhcmd1ZQo+PiBj
ZS0+cmluZyA9IHU2NCBzaXplIGlzIGF0IGxlYXN0IGVxdWFsbHkgdW5zaWdodGx5KSwgYW5kIG5v
dCBmaXhpbmcgYW55IGJ1Z3MuCj4gCj4gVGhlIGJ1ZyBpcyBhIHBvdGVudGlhbCByYWNlIGNvbmRp
dGlvbiBpbnNpZGUgdGhlIGRlYnVnLiBXaGF0IGlzIGhpdCBoZXJlCj4gaXMgdGhhdCB3aXRob3V0
IHRoZSBzdGF0ZSBvZiB0aGUgcGluIGtub3duLCB0aGUgbWVhbmluZyBvZiBjZS0+cmluZyBpcwo+
IHVua25vd24gKHdoZXJlYXMgdGhlIG90aGVyIGJ1ZyBpcyB0aGF0IGNvbmRpdGlvbiBjYW4gY2hh
bmdlIGR1cmluZwo+IGV2YWx1YXRpb24pLgoKQ29tbWl0IGRvZXNuJ3Qgc2F5IGFueXRoaW5nIGFi
b3V0IGZpeGluZyBidWdzLiBJdCB0YWxrcyBhYm91dCBtYWtpbmcgdGhlIApjb2RlIHByZXR0aWVy
LgoKSWYgaGVyZSB3ZSBuZWVkIGEgcGluLCB0aGVuIGl0IHNob3VsZCBiZSBhIHNlcGFyYXRlIHBh
dGNoIHdoaWNoIHNheXMgc28gCmFuZCBkb2VzIG9ubHkgb25lIHRoaW5nLgoKUmVnYXJkcywKClR2
cnRrbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
