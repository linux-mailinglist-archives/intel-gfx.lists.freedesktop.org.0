Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CD730B02
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 11:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BBF889270;
	Fri, 31 May 2019 09:03:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C07C8924F;
 Fri, 31 May 2019 09:03:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 02:03:26 -0700
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 02:03:25 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 31 May 2019 11:03:18 +0200
Message-ID: <1922439.AdzXrmYLxM@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <155929294624.27302.260682131007263895@skylake-alporthouse-com>
References: <20190531083338.3029-1-janusz.krzysztofik@linux.intel.com>
 <6167701.ZBk4PBsKi4@jkrzyszt-desk.ger.corp.intel.com>
 <155929294624.27302.260682131007263895@skylake-alporthouse-com>
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

T24gRnJpZGF5LCBNYXkgMzEsIDIwMTkgMTA6NTU6NDYgQU0gQ0VTVCBDaHJpcyBXaWxzb24gd3Jv
dGU6Cj4gUXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDUtMzEgMDk6NTM6NDEpCj4g
PiBIaSBDaHJpcywKPiA+IAo+ID4gT24gRnJpZGF5LCBNYXkgMzEsIDIwMTkgMTA6Mzk6NDcgQU0g
Q0VTVCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiA+IFF1b3RpbmcgSmFudXN6IEtyenlzenRvZmlr
ICgyMDE5LTA1LTMxIDA5OjMzOjM4KQo+ID4gPiA+IEZyb206IEphbnVzeiBLcnp5c3p0b2ZpayA8
amFudXN6LmtyenlzenRvZmlrQGludGVsLmNvbT4KPiA+ID4gPiAKPiA+ID4gPiBJZiBhIHRlc3Qg
Y2FsbHMgYSBmdW5jdGlvbiB3aGljaCBkZXBlbmRzIG9uIGF2YWlsYWJpYmxpdHkgb2YgYQo+ID4g
PiA+IHN1cHBvcnRlZCBtYXBwYWJsZSBhcGVydHVyZSwgYW4gZXJyb3IgbWF5IGJlIHJlcG9ydGVk
IGJ5IHRoZSBrZXJuZWwgb24KPiA+ID4gPiB1bnN1cHBvcnRlZCBoYXJkd2FyZS4gIFRoYXQgbWF5
IG5lZ2F0aXZlbHkgYWZmZWN0IHJlc3VsdHMgcmVwb3J0ZWQgYnkgYQo+ID4gPiA+IHRlc3QgZnJh
bWV3b3JrIGV2ZW4gaWYgdGhhdCB0ZXN0IGlnbm9yZXMgdGhlIGZhaWx1cmUgYW5kIHN1Y2NlZWRl
cy4KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIGhlbHBlciB3cmFwcyBhbiBJT0NUTCBjYWxsIHdoaWNo
IHJldHVybnMgYSB2ZXJzaW9uIG51bWJlciBvZiBhCj4gPiA+ID4gbWFwcGFibGUgYXBlcnR1cmUu
ICBJdCBtYXkgYmUgdXNlZCBieSB0ZXN0cyB3aGljaCBuZWVkIHRvIGFkanVzdCB0aGVpcgo+ID4g
PiA+IHNjb3BlIGRlcGVuZGluZyBvbiBhdmFpbGFiaWxpdHkgb2Ygc3BlY2lmaWMgdmVyc2lvbiBv
ZiBtYXBwYWJsZQo+ID4gPiA+IGFwZXJ0dXJlLgo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGludGVsLmNvbT4KPiA+
ID4gPiBDYzogQW50b25pbyBBcmdlbnppYW5vIDxhbnRvbmlvLmFyZ2Vuemlhbm9AaW50ZWwuY29t
Pgo+ID4gPiA+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNv
bT4KPiA+ID4gPiAtLS0KPiA+ID4gPiBDaGFuZ2Vsb2c6Cj4gPiA+ID4gdjIgKGludGVybmFsKSAt
PiB2MzoKPiA+ID4gPiAtIG1ha2UgdGhlIGNvZGUgbGVzcyBvYnN1Y3JlLCBtb3JlIGV4cGxpY2l0
IChBbnRvbmlvKSwKPiA+ID4gPiAtIHJld29yZCB0aGUgaGVscGVyIGRvY3VtZW50YXRpb24gYW5k
IGNvbW1pdCBtZXNzYWdlLgo+ID4gPiA+IAo+ID4gPiA+IHYxIChpbnRlcm5hbCkgLT4gdjIgKGlu
dGVybmFsKToKPiA+ID4gPiAtIG1pbmltaXplIGZ1dHVyZSBwb3RlbnRpYWwgY29uZmxpY3RzIHdp
dGggCj4gPiA+ID4gICBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMjk0
MDUzLz9zZXJpZXM9NTg1NTEmcmV2PTEKPiA+ID4gPiAgIChubyBwcm9ncmVzcyB3aXRoIHRoYW4g
b25lIHNvIG5vdCB3YWl0aW5nIGZvciBpdCBhbnkgbG9uZ2VyKToKPiA+ID4gPiAgIC0gY29udmVy
dCB0aGUgaGVscGVyIHRvIGEgZHJvcC1pbiByZXBsYWNlbWVudCBvZiB0aGUgb25lIGZyb20gdGhl
Cj4gPiA+ID4gICAgIGFib3ZlIG1lbnRpb25lZCBwYXRjaCwgcmV0dXJuaW5nIG1hcHBhYmxlIGFw
ZXJ0dXJlIHZlcnNpb24sIG5vdAo+ID4gPiA+ICAgICBvbmx5IGluZm9ybWF0aW9uIG9uIGl0cyBh
dmFpbGFiaWxpdHksCj4gPiA+ID4gICAtIGRyb3AgYW55IG90aGVyIHdyYXBwZXJzLAo+ID4gPiA+
IC0gZG9jdW1lbnQgdGhlIGhlbHBlciwKPiA+ID4gPiAtIHJld29yZCBjb21taXQgbWVzc2FnZS4K
PiA+ID4gPiAKPiA+ID4gPiAgbGliL2k5MTUvZ2VtX21tYW4uYyB8IDIyICsrKysrKysrKysrKysr
KysrKysrKysKPiA+ID4gPiAgbGliL2k5MTUvZ2VtX21tYW4uaCB8ICAxICsKPiA+ID4gPiAgMiBm
aWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdp
dCBhL2xpYi9pOTE1L2dlbV9tbWFuLmMgYi9saWIvaTkxNS9nZW1fbW1hbi5jCj4gPiA+ID4gaW5k
ZXggM2NmOWE2YmIuLjNhM2YzZTVjIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2xpYi9pOTE1L2dlbV9t
bWFuLmMKPiA+ID4gPiArKysgYi9saWIvaTkxNS9nZW1fbW1hbi5jCj4gPiA+ID4gQEAgLTQwLDYg
KzQwLDI4IEBACj4gPiA+ID4gICNkZWZpbmUgVkcoeCkgZG8ge30gd2hpbGUgKDApCj4gPiA+ID4g
ICNlbmRpZgo+ID4gPiA+ICAKPiA+ID4gPiArLyoqCj4gPiA+ID4gKyAqIGdlbV9tbWFwX19ndHRf
dmVyc2lvbjoKPiA+ID4gPiArICogQGZkOiBvcGVuIGk5MTUgZHJtIGZpbGUgZGVzY3JpcHRvcgo+
ID4gPiA+ICsgKgo+ID4gPiA+ICsgKiBUaGlzIGZ1bmN0aW9ucyB3cmFwcyB1cCBhbiBJT0NUTCB0
byBvYnRhaW4gbWFwcGFibGUgYXBlcnR1cmUgdmVyc2lvbi4KPiA+ID4gPiArICoKPiA+ID4gPiAr
ICogUmV0dXJuczogbWFwcGFibGUgYXBlcnR1cmUgdmVyc2lvbiwgLTEgb24gZmFpbHVyZS4KPiA+
ID4gPiArICovCj4gPiA+ID4gK2ludCBnZW1fbW1hcF9fZ3R0X3ZlcnNpb24oaW50IGZkKQo+ID4g
PiA+ICt7Cj4gPiA+ID4gKyAgICAgICBpbnQgZ3R0X3ZlcnNpb24sIHJldDsKPiA+ID4gPiArICAg
ICAgIHN0cnVjdCBkcm1faTkxNV9nZXRwYXJhbSBncCA9IHsKPiA+ID4gPiArICAgICAgICAgICAg
ICAgLnBhcmFtID0gSTkxNV9QQVJBTV9NTUFQX0dUVF9WRVJTSU9OLAo+ID4gPiA+ICsgICAgICAg
ICAgICAgICAudmFsdWUgPSAmZ3R0X3ZlcnNpb24sCj4gPiA+ID4gKyAgICAgICB9Owo+ID4gPiA+
ICsKPiA+ID4gPiArICAgICAgIHJldCA9IGlvY3RsKGZkLCBEUk1fSU9DVExfSTkxNV9HRVRQQVJB
TSwgJmdwKTsKPiA+ID4gPiArICAgICAgIGlmIChyZXQgPT0gMCkKPiA+ID4gPiArICAgICAgICAg
ICAgICAgcmV0ID0gZ3R0X3ZlcnNpb247Cj4gPiA+ID4gKyAgICAgICByZXR1cm4gcmV0Owo+ID4g
PiAKPiA+ID4gTWF5YmUgdGhlIGFjdHVhbCBlcnJvciByZXR1cm5lZCBieSB0aGUga2VybmVsIGFu
ZCBub3QgZ2xpYmMgd291bGQgYmUKPiA+ID4gaW50ZXJlc3RpbmcgaW4gdGhlIGZ1dHVyZT8KPiA+
IAo+ID4gZXJybm8gaXMgbm90IG92ZXJ3cml0dGVuIGJ5IHRoZSBoZWxwZXIgc28gaXQgaXMgYXZh
aWxhYmxlIHRvIElHVCBhZnRlciBpdCBpcyAKPiA+IGNhbGxlZCBhbmQgYWN0dWFsbHkgcmVwb3J0
ZWQgd2hlbiBhIGNhbGwgdG8gdGhlIGhlbHBlciBpcyB3cmFwcGVkIHdpdGggCj4gPiBpZ3RfcmVx
dWlyZSgpLiAgRG8gd2UgbmVlZCBtb3JlPwo+IAo+IFllcywgd2UgdHlwaWNhbGx5IHJldHVybiB0
aGUgZXJyb3IgYW5kIGRvIG5vdCB1c2UgZXJybm8uIEltYWdpbmUgaWYgd2UKPiBqdXN0IHJlcGxh
Y2VkIGlvY3RsKCkgd2l0aCBzeXNjYWxsKCkgOikKCk9LLiBJJ2xsIGZpeCBpdC4KClRoYW5rcywK
SmFudXN6Cgo+IC1DaHJpcwo+IAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
