Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 616C9AF285
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 23:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBEE76E9B2;
	Tue, 10 Sep 2019 21:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18CC06E9B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 21:20:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 14:20:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,490,1559545200"; d="scan'208";a="184294218"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 10 Sep 2019 14:20:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190909225536.7037-1-chris@chris-wilson.co.uk>
 <20190909225536.7037-2-chris@chris-wilson.co.uk>
 <80c54575-7622-b75d-382d-924edf05eb02@intel.com>
 <156809560493.582.16248418380013071034@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <02cc6d03-17f3-df6b-c154-3a4052e48592@intel.com>
Date: Tue, 10 Sep 2019 14:20:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156809560493.582.16248418380013071034@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Only unwedge if we can
 reset first
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

CgpPbiA5LzkvMTkgMTE6MDYgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDktMTAgMDE6NTk6MzgpCj4+Cj4+Cj4+IE9uIDkvOS8x
OSAzOjU1IFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBVbndlZGdpbmcgdGhlIEdQVSByZXF1
aXJlcyBhIHN1Y2Nlc3NmdWwgR1BVIHJlc2V0IGJlZm9yZSB3ZSByZXN0b3JlIHRoZQo+Pj4gZGVm
YXVsdCBzdWJtaXNzaW9uLCBvciBlbHNlIHdlIG1heSBzZWUgcmVzaWR1YWwgY29udGV4dCBzd2l0
Y2ggZXZlbnRzCj4+PiB0aGF0IHdlIHdlcmUgbm90IGV4cGVjdGluZy4KPj4+Cj4+PiBSZXBvcnRl
ZC1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwu
Y29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4+PiBDYzogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGlu
dXguaW50ZWwuY29tPgo+Pj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jlc2V0LmMgfCA3ICsrKysrKy0KPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMKPj4+IGluZGV4IGZlNTcyOTZiNzkwYy4uNTI0MjQ5NmE4OTNhIDEwMDY0NAo+
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+Pj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+Pj4gQEAgLTgwOSw2ICs4MDks
NyBAQCBzdGF0aWMgYm9vbCBfX2ludGVsX2d0X3Vuc2V0X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0KQo+Pj4gICAgICAgIHN0cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKnRpbWVsaW5lcyA9ICZn
dC0+dGltZWxpbmVzOwo+Pj4gICAgICAgIHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGw7Cj4+PiAg
ICAgICAgdW5zaWduZWQgbG9uZyBmbGFnczsKPj4+ICsgICAgIGJvb2wgb2s7Cj4+PiAgICAKPj4+
ICAgICAgICBpZiAoIXRlc3RfYml0KEk5MTVfV0VER0VELCAmZ3QtPnJlc2V0LmZsYWdzKSkKPj4+
ICAgICAgICAgICAgICAgIHJldHVybiB0cnVlOwo+Pj4gQEAgLTg1NCw3ICs4NTUsMTEgQEAgc3Rh
dGljIGJvb2wgX19pbnRlbF9ndF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKPj4+
ICAgICAgICB9Cj4+PiAgICAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdGltZWxpbmVzLT5s
b2NrLCBmbGFncyk7Cj4+PiAgICAKPj4+IC0gICAgIGludGVsX2d0X3Nhbml0aXplKGd0LCBmYWxz
ZSk7Cj4+PiArICAgICBvayA9IGZhbHNlOwo+Pj4gKyAgICAgaWYgKCFyZXNldF9jbG9iYmVyc19k
aXNwbGF5KGd0LT5pOTE1KSkKPj4+ICsgICAgICAgICAgICAgb2sgPSBfX2ludGVsX2d0X3Jlc2V0
KGd0LCBBTExfRU5HSU5FUykgPT0gMDsKPj4KPj4gT2YgdGhlIHRoaW5nIHdlIGhhZCBpbiB0aGUg
Z3Rfc2FuaXRpemUsIHdlJ3JlIG9rIHNraXBwaW5nIHRoZQo+PiB1Y19zYW5pdGl6ZSgpIGJlY2F1
c2Ugd2UgdGFrZSBjYXJlIG9mIHRoYXQgZHVyaW5nIHdlZGdlIChmcm9tCj4+IGludGVsX3VjX3Jl
c2V0X3ByZXBhcmUpLCBidXQgd2hhdCBhYm91dCB0aGUgbG9vcCBvZgo+PiBfX2ludGVsX2VuZ2lu
ZV9yZXNldCgpPyBJcyB0aGF0IHNhZmUgdG8gc2tpcCBoZXJlPwo+IAo+IEkgdGhpbmsgeWVzLCBi
ZWNhdXNlIHdlIGFsd2F5cyBmb2xsb3cgdGhlIHVud2VkZ2Ugd2l0aCBhIEdUIHJlc3RhcnQuIFRo
YXQKPiBpcyBlaXRoZXIgdmlhIHRoZSBmdWxsIHJlc2V0IG9yIHRoZSBzYW5pdGl6ZStyZXN0YXJ0
IG9uIHJlc3VtZS4gQm90aCBjYWxsCj4gcGF0aHMgd2lsbCBhbHNvIHNldCB0aGUgd2VkZ2VkIGJp
dCBpZiB0aGV5IGZhaWwuIGdlbV9laW8vc3VzcGVuZCBzaG91bGQKPiBiZSB0ZXN0aW5nIHRoZSBy
ZWNvdmVyeSB1cG9uIHJlc3VtZSBwYXRoLCBhbmQgZXZlbiBnZW1fZWlvLyotc3RyZXNzCj4gc2hv
dWxkIGdpdmUgcmVzcG9uc2libGUgY292ZXJhZ2Ugb2YgdGhlIG5vcm1hbCByZWNvdmVyeSB2aWEg
ZnVsbCByZXNldC4KPiAgIAo+PiBBcGFydCBmcm9tIHRoYXQsIHRoZSBwYXRjaCBMR1RNLiBXb3J0
aCBub3RpbmcgdGhhdCB3aXRoIHRoaXMgY2hhbmdlIGEKPj4gc3VjY2Vzc2Z1bCByZXNldCBpcyBy
ZXF1aXJlZCB0byB1bndlZGdlIGV2ZW4gYWZ0ZXIgYSBzdXNwZW5kL3Jlc3VtZQo+PiBjeWNsZSAo
aW4gZ2VtX3Nhbml0aXplKSwgd2hpY2ggaXMgYSBnb29kIHRoaW5nIElNTy4KPiAKPiBIZW5jZSB3
aHkgcmVsYXhpbmcgdGhlIGdwdV9jbG9iYmVyc19kaXNwbGF5IGlzIGltcG9ydGFudCB0byByZXRh
aW4gdGhlCj4gYWJpbGl0eSB0byBjbGVhciB3ZWRnZWQgYWNyb3NzIHN1c3BlbmQgb24gb2xkZXIg
ZGV2aWNlcy4KPiAtQ2hyaXMKPiAKClNvbGQhCgpSZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KCkRhbmllbGUKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
