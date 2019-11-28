Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DFB10C547
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 09:38:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589436E77F;
	Thu, 28 Nov 2019 08:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F05C96E77F;
 Thu, 28 Nov 2019 08:38:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 00:38:30 -0800
X-IronPort-AV: E=Sophos;i="5.69,252,1571727600"; d="scan'208";a="203369938"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 00:38:28 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Thu, 28 Nov 2019 09:38:21 +0100
Message-ID: <20742475.jWtMgUN1r0@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <157477885327.15944.11926962377852027162@skylake-alporthouse-com>
References: <20191126142548.22696-1-janusz.krzysztofik@linux.intel.com>
 <157477885327.15944.11926962377852027162@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t] tests/prime_vgem: Skip MMAP_GTT
 based subtests if no mappable GGTT
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
Cc: =?utf-8?B?TWljaGHFgiBDemFwbGnFhHNraQ==?= <michal.czaplinski@intel.com>,
 Jari Tahvanainen <jari.tahvanainen@intel.com>, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBUdWVzZGF5LCBOb3ZlbWJlciAyNiwgMjAxOSAzOjM0OjEzIFBNIENFVCBD
aHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTEt
MjYgMTQ6MjU6NDgpCj4gPiBBcyB3ZSd2ZSBhZ3JlZWQgdGhhdCB1c2luZyBHRU1fTU1BUCogSU9D
VExzIG9uIGRtYS1idWYgb2JqZWN0cyB3aXRob3V0Cj4gPiBhIENQVSBhY2Nlc3NpYmxlIEdBUlQg
aXMgdmVyeSBxdWVzdGlvbmFibGUsIHdlIGFyZSBwcm9iYWJseSBub3QgZ29pbmcKPiA+IHRvIGV4
dGVuZCBvdXIgTU1BUF9PRkZTRVQgaGFuZGxlciB3aXRoIGFuIGV4dHJhIHByb2Nlc3NpbmcgcGF0
aAo+ID4gcmVxdWlyZWQgZm9yIGl0IHRvIHdvcmsgY29ycmVjdGx5IG9uIGRtYS1idWYgb2JqZWN0
cy4gIEFzIGEKPiA+IGNvbnNlcXVlbmNlLCBvbiBmdXR1cmUgaGFyZHdhcmUgd2l0aCBubyBtYXBw
YWJsZSBhcGVydHVyZSB3ZSB3b24ndCBiZQo+ID4gYWJsZSB0byB1c2UgTU1BUF9PRkZTRVQgYXMg
YSByZXBsYWNlbWVudCBvZiBNTUFQX0dUVCBpbiB0ZXN0cyB3aGljaAo+ID4gZXhhbWluZSBQUklN
RSBpbXBvcnQgaW50ZXJmYWNlLiAgV2hlbiBydW5uaW5nIG9uIHRoYXQga2luZCBvZiBoYXJkd2Fy
ZSwKPiA+IGp1c3Qgc2tpcCBzdWJ0ZXN0cyB3aGljaCBkZXBlbmQgb24gZ2VtX21tYXBfX2d0dCgp
Lgo+ID4gCj4gPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+ID4gQ2M6IEpv
b25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+
ID4gIHRlc3RzL3ByaW1lX3ZnZW0uYyB8IDUgKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS90ZXN0cy9wcmltZV92Z2VtLmMgYi90
ZXN0cy9wcmltZV92Z2VtLmMKPiA+IGluZGV4IDA0Y2M5MTNkLi5iOTJjZjRmNyAxMDA2NDQKPiA+
IC0tLSBhL3Rlc3RzL3ByaW1lX3ZnZW0uYwo+ID4gKysrIGIvdGVzdHMvcHJpbWVfdmdlbS5jCj4g
PiBAQCAtMTI2LDYgKzEyNiw4IEBAIHN0YXRpYyB2b2lkIHRlc3RfZmVuY2VfbW1hcChpbnQgaTkx
NSwgaW50IHZnZW0pCj4gPiAgICAgICAgIGludCBkbWFidWYsIGk7Cj4gPiAgICAgICAgIGludCBt
YXN0ZXJbMl0sIHNsYXZlWzJdOwo+ID4gIAo+ID4gKyAgICAgICBnZW1fcmVxdWlyZV9tYXBwYWJs
ZV9nZ3R0KGk5MTUpOwo+ID4gKwo+ID4gICAgICAgICBpZ3RfYXNzZXJ0KHBpcGUobWFzdGVyKSA9
PSAwKTsKPiA+ICAgICAgICAgaWd0X2Fzc2VydChwaXBlKHNsYXZlKSA9PSAwKTsKPiA+ICAKPiA+
IEBAIC0yMTAsNiArMjEyLDggQEAgc3RhdGljIHZvaWQgdGVzdF9ndHQoaW50IHZnZW0sIGludCBp
OTE1KQo+ID4gICAgICAgICB1aW50MzJfdCAqcHRyOwo+ID4gICAgICAgICBpbnQgZG1hYnVmLCBp
Owo+ID4gIAo+ID4gKyAgICAgICBnZW1fcmVxdWlyZV9tYXBwYWJsZV9nZ3R0KGk5MTUpOwo+ID4g
Kwo+ID4gICAgICAgICBzY3JhdGNoLndpZHRoID0gMTAyNDsKPiA+ICAgICAgICAgc2NyYXRjaC5o
ZWlnaHQgPSAxMDI0Owo+ID4gICAgICAgICBzY3JhdGNoLmJwcCA9IDMyOwo+ID4gQEAgLTI4NSw2
ICsyODksNyBAQCBzdGF0aWMgdm9pZCB0ZXN0X2d0dF9pbnRlcmxlYXZlZChpbnQgdmdlbSwgaW50
IGk5MTUpCj4gPiAgICAgICAgIHVpbnQzMl90ICpwdHIsICpndHQ7Cj4gPiAgICAgICAgIGludCBk
bWFidWYsIGk7Cj4gPiAgCj4gPiArICAgICAgIGdlbV9yZXF1aXJlX21hcHBhYmxlX2dndHQoaTkx
NSk7Cj4gPiAgICAgICAgIGlndF9yZXF1aXJlKGlzX2NvaGVyZW50KGk5MTUpKTsKPiAKPiBPaywg
YnV0IHRoZXNlIChmZW5jZV9tbWFwLCBndHRfaW50ZXJsZWF2ZWQpIHdhbnQgV0MgY29oZXJlbmN5
IGFzIGFuIAphbHRlcm5hdGl2ZS4KPiB0ZXN0X2d0dCBwcm9iYWJseSB3YW50cyBhIGJhc2ljIHRl
c3Rfd2MgYWx0ZXJuYXRpdmUuCgpJJ3ZlIGJlZW4gdGhpbmtpbmcgYWJvdXQgdGhhdCBhbmQgbXkg
Y29uY2x1c2lvbiBpcyB0aGF0IHdpdGggbm8gbWFwcGFibGUgCmFwZXJ0dXJlIG9uIGJvYXJkLCBp
dCdzIG5vIGxvbmdlciBwb3NzaWJsZSB0byBhY2Nlc3MgdGhlIGltcG9ydGVkIG9iamVjdCBkYXRh
LCAKb3IgYXQgbGVhc3QgYXJyYW5nZSBmb3Igc3VjaCBhY2Nlc3MsIHVzaW5nIGk5MTUgS01EIGlu
dGVyZmFjZSwgdW5sZXNzIHdlIApleHRlbmQgdGhlIHVwY29taW5nIE1NQVBfT0ZGU0VUIHdpdGgg
YSByZWRpcmVjdGlvbiB0byBkbWEtYnVmIGludGVyZmFjZS4gIApCYXNlZCBvbiBzb21lIGNvbW1l
bnRzIGZyb20gSm9vbmFzIGFuZCBEYW5pZWwgSSByZWNlaXZlZCBpbiByZXNwb25zZSB0byBteSAK
YXR0ZW1wdHMgdG8gYWRkIHN1Y2ggc3VwcG9ydCwgSSdtIGFzc3VtaW5nIHdlIGFyZSBub3QgZ29p
bmcgdG8gZG8gdGhhdC4KCldpdGhvdXQgdGhhdCwgdGhlIG9ubHkgcG9zc2liaWxpdHkgSSBjYW4g
c2VlIGZvciB1c2Vyc3BhY2UgdG8gYWNjZXNzIHRob3NlIApkYXRhIGlzIHRvIHVzZSBtbWFwIG9u
IHRoZSBkbWEtYnVmIGZpbGUgZGVzY3JpcHRvciBkaXJlY3RseSwgY29tcGxldGVseSAKYnlwYXNz
aW5nIGk5MTUgYW5kIGl0cyBQUklNRSBpbXBvcnQgZnVuY3Rpb24uCgpUaGVuLCBhc3N1bWluZyB0
aGUgcHJpbWVfdmdlbSB0ZXN0IGlzIGFib3V0IHRlc3RpbmcganVzdCB0aGUgUFJJTUUgaW1wb3J0
IApmdW5jdGlvbiBvZiBhIGRyaXZlciwgd2UgaGF2ZSBubyBhbHRlcm5hdGl2ZSB0byBNTUFQX0dU
VCB0byB0ZXN0IGhlcmUsIEkgCmJlbGlldmUsIHVubGVzcyB3ZSBhcmUgZ29pbmcgdG8gdGVzdCBk
bWEtYnVmIGludGVyZmFjZSBvdmVyIHZnZW0gZHJpdmVyIFBSSU1FIApleHBvcnQgZnVuY3Rpb24s
IG5vdCB0aGUgaTkxNSBLTUQgQUJJLiAgSnVzdCBza2lwcGluZyB0aGUgdGVzdHMgdGhhdCByZXF1
aXJlIAp1bnN1cHBvcnRlZCBpOTE1IGZ1bmN0aW9uYWxpdHkgKG1hcHBhYmxlIGFwZXJ0dXJlKSBz
ZWVtcyBhIHJlYXNvbmFibGUgYXBwcm9hY2ggCnRvIG1lLgoKVGhhbmtzLApKYW51c3oKCgo+IC1D
aHJpcwo+IAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
