Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B551068E6
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 10:34:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B7D6F511;
	Fri, 22 Nov 2019 09:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8BC76F50D
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 09:34:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 01:34:37 -0800
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="201459792"
Received: from aburk3x-mobl1.ger.corp.intel.com (HELO [10.252.19.231])
 ([10.252.19.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Nov 2019 01:34:36 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
 <20191120093302.3723715-6-chris@chris-wilson.co.uk>
 <aa1f7967-6ff5-f341-b3bd-5ec0afe102b0@linux.intel.com>
 <157425477060.13839.10577920977636430794@skylake-alporthouse-com>
 <5eda82de-a7a3-d4d3-13ec-6ed4b70986b7@linux.intel.com>
 <157425656356.13839.12546189239106395179@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8501c5b1-603e-843e-e327-21426391eed8@linux.intel.com>
Date: Fri, 22 Nov 2019 09:34:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157425656356.13839.12546189239106395179@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/selftests: Force bonded
 submission to overlap
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

Ck9uIDIwLzExLzIwMTkgMTM6MjksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTIwIDEzOjE4OjI3KQo+Pgo+PiBPbiAyMC8xMS8yMDE5IDEyOjU5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTEx
LTIwIDEyOjU1OjQyKQo+Pj4+Cj4+Pj4gT24gMjAvMTEvMjAxOSAwOTozMiwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBCb25kZWQgcmVxdWVzdCBzdWJtaXNzaW9uIGlzIGRlc2lnbmVkIHRvIGFs
bG93IHJlcXVlc3RzIHRvIGV4ZWN1dGUgaW4KPj4+Pj4gcGFyYWxsZWwgYXMgbGFpZCBvdXQgYnkg
dGhlIHVzZXIuIElmIHRoZSBtYXN0ZXIgcmVxdWVzdCBpcyBhbHJlYWR5Cj4+Pj4+IGZpbmlzaGVk
IGJlZm9yZSBpdHMgYm9uZGVkIHBhaXIgaXMgc3VibWl0dGVkLCB0aGUgcGFpciB3ZXJlIG5vdCBk
ZXN0aW5lZAo+Pj4+PiB0byBydW4gaW4gcGFyYWxsZWwgYW5kIHdlIGxvc2UgdGhlIGluZm9ybWF0
aW9uIGFib3V0IHRoZSBtYXN0ZXIgZW5naW5lCj4+Pj4+IHRvIGRpY3RhdGUgc2VsZWN0aW9uIG9m
IHRoZSBzZWNvbmRhcnkuIElmIHRoZSBzZWNvbmQgcmVxdWVzdCB3YXMKPj4+Pj4gcmVxdWlyZWQg
dG8gYmUgcnVuIG9uIGEgcGFydGljdWxhciBlbmdpbmUgaW4gYSB2aXJ0dWFsIHNldCwgdGhhdCBz
aG91bGQKPj4+Pj4gaGF2ZSBiZWVuIHNwZWNpZmllZCwgcmF0aGVyIHRoYW4gbGVmdCB0byB0aGUg
d2hpbXMgb2YgYSByYW5kb20KPj4+Pj4gdW5jb25uZWN0ZWQgcmVxdWVzdHMhCj4+Pj4+Cj4+Pj4+
IEluIHRoZSBzZWxmdGVzdCwgSSBtYWRlIHRoZSBtaXN0YWtlIG9mIG5vdCBlbnN1cmluZyB0aGUg
bWFzdGVyIHdvdWxkCj4+Pj4+IG92ZXJsYXAgd2l0aCBpdHMgYm9uZGVkIHBhaXJzLCBtZWFuaW5n
IHRoYXQgaXQgY291bGQgaW5kZWVkIGNvbXBsZXRlCj4+Pj4+IGJlZm9yZSB3ZSBzdWJtaXR0ZWQg
dGhlIGJvbmRzLiBUaG9zZSBib25kcyB3ZXJlIHRoZW4gZnJlZSB0byBzZWxlY3QgYW55Cj4+Pj4+
IGF2YWlsYWJsZSBlbmdpbmUgaW4gdGhlaXIgdmlydHVhbCBzZXQsIGFuZCBub3QgdGhlIG9uZSBl
eHBlY3RlZCBieSB0aGUKPj4+Pj4gdGVzdC4KPj4+Pgo+Pj4+IFRoZXJlIGlzIGEgc3VibWl0IGF3
YWl0IHdoaWNoIGVuc3VyZXMgbWFzdGVyIGlzIG5vdCBydW5uYWJsZSBiZWZvcmUKPj4+PiBib25k
ZWQgcGFpcnMgYXJlIHN1Ym1pdHRlZC4gV2h5IHdhcyB0aGF0IG5vdCBlbm91Z2g/IEFyZSB0aGUg
c3BvcmFkaWMKPj4+PiB0ZXN0IGZhaWx1cmVzPwo+Pj4KPj4+IE9uZSB0ZXN0IGlzIHVzaW5nIHRo
ZSBzdWJtaXRfYXdhaXQsIHRoZSBvdGhlciBkb2VzIG5vdC4gSXQgdGFrZXMgdGhlCj4+PiBiYWNr
Z3JvdW5kIHJldGlyZSB3b3JrZXIgdG8gcnVuIGFzIHdlIGFyZSBzdWJtaXR0aW5nIHRoZSBzZWNv
bmRhcmllcy4uLgo+Pj4gQnV0IEkgaGF2ZSBub3Qgbm90aWNlZCB0aGlzIGZhaWx1cmUgYmVmb3Jl
IGhvb2tpbmcgdXAgcmV0aXJlbWVudCB0bwo+Pj4gcHJvY2Vzc19jc2IuIEhvd2V2ZXIsIHRoZSBp
c3N1ZSBpcyBkZWZpbml0ZWx5IHByZXNlbnQgaW4gdGhlIGN1cnJlbnQKPj4+IHRlc3QuCj4+Cj4+
IFNvIHdoYXQgaGFwcGVucz8gSXMgdGhpcyBhbm90aGVyIGlzc3VlIGxpbWl0ZWQgdG8gc2VsZnRl
c3RzPyBCZWNhdXNlIEkKPj4gZG9uJ3Qgc2VlIHRoYXQgdUFQSSBpdHNlbGYgY2FuJ3QgYmUgdXNl
ZCBpbiB0aGlzIHdheS4KPiAKPiBTaW5jZSB0aGUgbWFzdGVyIGJhdGNoIGlzIGFscmVhZHkgY29t
cGxldGVkICYgc2lnbmFsZWQgYnkgdGhlIHRpbWUgd2UKPiBzdWJtaXQgdGhlIHNlY29uZGFyaWVz
LCB0aGUgc3VibWl0LWZlbmNlIGlzIGEgZHVkIGFuZCB0aGUgc2Vjb25kYXJpZXMKPiBhcmUgbm90
IGNvbnN0cmFpbmVkIGluIHRoZWlyIGVuZ2luZSBzZWxlY3Rpb24uCj4gCj4gaTkxNV9yZXF1ZXN0
X2F3YWl0X2V4ZWN1dGlvbjoKPiAJaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVE
X0JJVCwgJmZlbmNlLT5mbGFncykpCj4gCQljb250aW51ZTsKPiAJZWxzZQo+IAkJX19pOTE1X3Jl
cXVlc3RfYXdhaXRfZXhlY3V0aW9uKCkKPiAKPiBOb3csIG91ciBjaG9pY2UgaXMgZWl0aGVyIHRv
IGRyb3AgdGhlIGNoZWNrIG9uIHRoZSBzaWduYWxlZCBiaXQgKGFuZCBzbwo+IHdlIHdpbGwgYXBw
bHkgdGhlIGJvbmRpbmcgY29uc3RyYWluZWQgZnJvbSB0aGUgYWxyZWFkeSBmaW5pc2hlZCBiYXRj
aCkKPiBvciBub3QuIEdpdmVuIHRoYXQgdGhlIG1hc3RlciBpcyBhbHJlYWR5IGNvbXBsZXRlLCBJ
IGZlZWwganVzdGlmaWVkIGluCj4gdGhlIGN1cnJlbnQgZGVjaXNpb24gdG8gaWdub3JlIHRoZSBj
b25zdHJhaW50IChzaW5jZSBlcXVhbGx5IHRoZSBmZW5jZQo+IGNvdWxkIGFscmVhZHkgaGF2ZSBi
ZWVuIHJldGlyZWQgYW5kIHNvIGNvbXBsZXRlbHkgaW5hY2Nlc3NpYmxlKSwgc28gY2hvc2UKPiB0
byBmaXggdGhlIHRlc3QgaW5zdGVhZC4KClllcyBJIGFncmVlIGl0IHNvdW5kcyBva2F5IHRvIHNr
aXAvaWdub3JlIHRoZSBjb25zdHJhaW50LiBCdXQgYWxzbyBzZWVtcyAKYSB2YWxpZCB0ZXN0IHdo
YXQgdGhpcyB0ZXN0IHdhcyBkb2luZyBiZWZvcmUgc2luY2UgaXQgZXhlcmNpc2VzIGEgCnNsaWdo
dGx5IGRpZmZlcmVudCBjb2RlIHBhdGgsIG9yIGF0IGxlYXN0IHNldCBvZiBjb25kaXRpb25zLgoK
V2hhdCBkbyB5b3UgdGhpbms/IFdvdWxkIGl0IGJlIGhhcmQgdG8gYWRkIHRoaXMgYXMgM3JkIGZs
YXZvdXI/IE1heWJlIApqdXN0IGEgbmV3IGZsYWcgYW5kIHRoZW4gYWxsb3cgc3Bpbm5lciB0byBm
aW5pc2ggYXMgc29vbiBhcyBpcyBjcmVhdGVkIAp0byBrZWVwIHRoZSBleGlzdGluZyBmbG93PwoK
UmVnYXJkcywKClR2cnRrbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
