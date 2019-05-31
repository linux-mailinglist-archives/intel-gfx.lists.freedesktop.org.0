Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FDB30AAC
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 10:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02DB892C9;
	Fri, 31 May 2019 08:53:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1A0892C8;
 Fri, 31 May 2019 08:53:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 01:53:48 -0700
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 01:53:46 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 31 May 2019 10:53:41 +0200
Message-ID: <6167701.ZBk4PBsKi4@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <155929198791.27302.15269823628587927148@skylake-alporthouse-com>
References: <20190531083338.3029-1-janusz.krzysztofik@linux.intel.com>
 <155929198791.27302.15269823628587927148@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v3] lib/i915/gem_mman: Add a
 helper for obtaining mappable aperture version
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBGcmlkYXksIE1heSAzMSwgMjAxOSAxMDozOTo0NyBBTSBDRVNUIENocmlz
IFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIEphbnVzeiBLcnp5c3p0b2ZpayAoMjAxOS0wNS0zMSAw
OTozMzozOCkKPiA+IEZyb206IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlr
QGludGVsLmNvbT4KPiA+IAo+ID4gSWYgYSB0ZXN0IGNhbGxzIGEgZnVuY3Rpb24gd2hpY2ggZGVw
ZW5kcyBvbiBhdmFpbGFiaWJsaXR5IG9mIGEKPiA+IHN1cHBvcnRlZCBtYXBwYWJsZSBhcGVydHVy
ZSwgYW4gZXJyb3IgbWF5IGJlIHJlcG9ydGVkIGJ5IHRoZSBrZXJuZWwgb24KPiA+IHVuc3VwcG9y
dGVkIGhhcmR3YXJlLiAgVGhhdCBtYXkgbmVnYXRpdmVseSBhZmZlY3QgcmVzdWx0cyByZXBvcnRl
ZCBieSBhCj4gPiB0ZXN0IGZyYW1ld29yayBldmVuIGlmIHRoYXQgdGVzdCBpZ25vcmVzIHRoZSBm
YWlsdXJlIGFuZCBzdWNjZWVkZXMuCj4gPiAKPiA+IFRoaXMgaGVscGVyIHdyYXBzIGFuIElPQ1RM
IGNhbGwgd2hpY2ggcmV0dXJucyBhIHZlcnNpb24gbnVtYmVyIG9mIGEKPiA+IG1hcHBhYmxlIGFw
ZXJ0dXJlLiAgSXQgbWF5IGJlIHVzZWQgYnkgdGVzdHMgd2hpY2ggbmVlZCB0byBhZGp1c3QgdGhl
aXIKPiA+IHNjb3BlIGRlcGVuZGluZyBvbiBhdmFpbGFiaWxpdHkgb2Ygc3BlY2lmaWMgdmVyc2lv
biBvZiBtYXBwYWJsZQo+ID4gYXBlcnR1cmUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEphbnVz
eiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGludGVsLmNvbT4KPiA+IENjOiBBbnRv
bmlvIEFyZ2Vuemlhbm8gPGFudG9uaW8uYXJnZW56aWFub0BpbnRlbC5jb20+Cj4gPiBDYzogTWlj
aGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IENo
YW5nZWxvZzoKPiA+IHYyIChpbnRlcm5hbCkgLT4gdjM6Cj4gPiAtIG1ha2UgdGhlIGNvZGUgbGVz
cyBvYnN1Y3JlLCBtb3JlIGV4cGxpY2l0IChBbnRvbmlvKSwKPiA+IC0gcmV3b3JkIHRoZSBoZWxw
ZXIgZG9jdW1lbnRhdGlvbiBhbmQgY29tbWl0IG1lc3NhZ2UuCj4gPiAKPiA+IHYxIChpbnRlcm5h
bCkgLT4gdjIgKGludGVybmFsKToKPiA+IC0gbWluaW1pemUgZnV0dXJlIHBvdGVudGlhbCBjb25m
bGljdHMgd2l0aCAKPiA+ICAgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNo
LzI5NDA1My8/c2VyaWVzPTU4NTUxJnJldj0xCj4gPiAgIChubyBwcm9ncmVzcyB3aXRoIHRoYW4g
b25lIHNvIG5vdCB3YWl0aW5nIGZvciBpdCBhbnkgbG9uZ2VyKToKPiA+ICAgLSBjb252ZXJ0IHRo
ZSBoZWxwZXIgdG8gYSBkcm9wLWluIHJlcGxhY2VtZW50IG9mIHRoZSBvbmUgZnJvbSB0aGUKPiA+
ICAgICBhYm92ZSBtZW50aW9uZWQgcGF0Y2gsIHJldHVybmluZyBtYXBwYWJsZSBhcGVydHVyZSB2
ZXJzaW9uLCBub3QKPiA+ICAgICBvbmx5IGluZm9ybWF0aW9uIG9uIGl0cyBhdmFpbGFiaWxpdHks
Cj4gPiAgIC0gZHJvcCBhbnkgb3RoZXIgd3JhcHBlcnMsCj4gPiAtIGRvY3VtZW50IHRoZSBoZWxw
ZXIsCj4gPiAtIHJld29yZCBjb21taXQgbWVzc2FnZS4KPiA+IAo+ID4gIGxpYi9pOTE1L2dlbV9t
bWFuLmMgfCAyMiArKysrKysrKysrKysrKysrKysrKysrCj4gPiAgbGliL2k5MTUvZ2VtX21tYW4u
aCB8ICAxICsKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKykKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL2xpYi9pOTE1L2dlbV9tbWFuLmMgYi9saWIvaTkxNS9nZW1fbW1hbi5jCj4g
PiBpbmRleCAzY2Y5YTZiYi4uM2EzZjNlNWMgMTAwNjQ0Cj4gPiAtLS0gYS9saWIvaTkxNS9nZW1f
bW1hbi5jCj4gPiArKysgYi9saWIvaTkxNS9nZW1fbW1hbi5jCj4gPiBAQCAtNDAsNiArNDAsMjgg
QEAKPiA+ICAjZGVmaW5lIFZHKHgpIGRvIHt9IHdoaWxlICgwKQo+ID4gICNlbmRpZgo+ID4gIAo+
ID4gKy8qKgo+ID4gKyAqIGdlbV9tbWFwX19ndHRfdmVyc2lvbjoKPiA+ICsgKiBAZmQ6IG9wZW4g
aTkxNSBkcm0gZmlsZSBkZXNjcmlwdG9yCj4gPiArICoKPiA+ICsgKiBUaGlzIGZ1bmN0aW9ucyB3
cmFwcyB1cCBhbiBJT0NUTCB0byBvYnRhaW4gbWFwcGFibGUgYXBlcnR1cmUgdmVyc2lvbi4KPiA+
ICsgKgo+ID4gKyAqIFJldHVybnM6IG1hcHBhYmxlIGFwZXJ0dXJlIHZlcnNpb24sIC0xIG9uIGZh
aWx1cmUuCj4gPiArICovCj4gPiAraW50IGdlbV9tbWFwX19ndHRfdmVyc2lvbihpbnQgZmQpCj4g
PiArewo+ID4gKyAgICAgICBpbnQgZ3R0X3ZlcnNpb24sIHJldDsKPiA+ICsgICAgICAgc3RydWN0
IGRybV9pOTE1X2dldHBhcmFtIGdwID0gewo+ID4gKyAgICAgICAgICAgICAgIC5wYXJhbSA9IEk5
MTVfUEFSQU1fTU1BUF9HVFRfVkVSU0lPTiwKPiA+ICsgICAgICAgICAgICAgICAudmFsdWUgPSAm
Z3R0X3ZlcnNpb24sCj4gPiArICAgICAgIH07Cj4gPiArCj4gPiArICAgICAgIHJldCA9IGlvY3Rs
KGZkLCBEUk1fSU9DVExfSTkxNV9HRVRQQVJBTSwgJmdwKTsKPiA+ICsgICAgICAgaWYgKHJldCA9
PSAwKQo+ID4gKyAgICAgICAgICAgICAgIHJldCA9IGd0dF92ZXJzaW9uOwo+ID4gKyAgICAgICBy
ZXR1cm4gcmV0Owo+IAo+IE1heWJlIHRoZSBhY3R1YWwgZXJyb3IgcmV0dXJuZWQgYnkgdGhlIGtl
cm5lbCBhbmQgbm90IGdsaWJjIHdvdWxkIGJlCj4gaW50ZXJlc3RpbmcgaW4gdGhlIGZ1dHVyZT8K
CmVycm5vIGlzIG5vdCBvdmVyd3JpdHRlbiBieSB0aGUgaGVscGVyIHNvIGl0IGlzIGF2YWlsYWJs
ZSB0byBJR1QgYWZ0ZXIgaXQgaXMgCmNhbGxlZCBhbmQgYWN0dWFsbHkgcmVwb3J0ZWQgd2hlbiBh
IGNhbGwgdG8gdGhlIGhlbHBlciBpcyB3cmFwcGVkIHdpdGggCmlndF9yZXF1aXJlKCkuICBEbyB3
ZSBuZWVkIG1vcmU/CgpUaGFua3MsCkphbnVzegoKPiAtQ2hyaXMKPiAKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
