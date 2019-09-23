Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E06BB1BB
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 11:54:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136A66E829;
	Mon, 23 Sep 2019 09:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEF296E829
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 09:54:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 02:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="213271329"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by fmsmga004.fm.intel.com with ESMTP; 23 Sep 2019 02:54:13 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190921095542.23205-1-chris@chris-wilson.co.uk>
 <815d87a9-36bc-5ab1-b3f0-e26b2ba0a809@linux.intel.com>
 <156923134521.21369.158544131863035604@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <83982d78-7fbc-00f2-1e45-2288265089e8@linux.intel.com>
Date: Mon, 23 Sep 2019 10:54:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156923134521.21369.158544131863035604@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/execlists: Refactor -EIO
 markup of hung requests
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

Ck9uIDIzLzA5LzIwMTkgMTA6MzUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTIzIDEwOjI3OjAxKQo+Pgo+PiBPbiAyMS8wOS8yMDE5IDEwOjU1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBQdWxsIHNldHRpbmcgLUVJTyBvbiB0aGUgaHVuZyBy
ZXF1ZXN0cyBpbnRvIGl0cyBvd24gdXRpbGl0eSBmdW5jdGlvbi4KPj4+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+IC0tLQo+Pj4g
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAzMiArKysrKysrKysrKysr
KystLS0tLS0tLS0tLS0tLQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyks
IDE1IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4+
PiBpbmRleCAxYTJiNzExNTdmMDguLjUzZTgyM2QzNmIyOCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwo+Pj4gQEAgLTIzNCw2ICsyMzQsMTMgQEAgc3RhdGljIHZvaWQg
ZXhlY2xpc3RzX2luaXRfcmVnX3N0YXRlKHUzMiAqcmVnX3N0YXRlLAo+Pj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX3Jpbmcg
KnJpbmcpOwo+Pj4gICAgCj4+PiArc3RhdGljIHZvaWQgbWFya19laW8oc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnEpCj4+PiArewo+Pj4gKyAgICAgaWYgKCFpOTE1X3JlcXVlc3Rfc2lnbmFsZWQocnEp
KQo+Pj4gKyAgICAgICAgICAgICBkbWFfZmVuY2Vfc2V0X2Vycm9yKCZycS0+ZmVuY2UsIC1FSU8p
Owo+Pj4gKyAgICAgaTkxNV9yZXF1ZXN0X21hcmtfY29tcGxldGUocnEpOwo+Pj4gK30KPj4+ICsK
Pj4+ICAgIHN0YXRpYyBpbmxpbmUgdTMyIGludGVsX2h3c19wcmVlbXB0X2FkZHJlc3Moc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+Pj4gICAgewo+Pj4gICAgICAgIHJldHVybiAoaTkx
NV9nZ3R0X29mZnNldChlbmdpbmUtPnN0YXR1c19wYWdlLnZtYSkgKwo+Pj4gQEAgLTI1MDEsMTIg
KzI1MDgsOCBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfY2FuY2VsX3JlcXVlc3RzKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPj4+ICAgICAgICBfX2V4ZWNsaXN0c19yZXNldChlbmdp
bmUsIHRydWUpOwo+Pj4gICAgCj4+PiAgICAgICAgLyogTWFyayBhbGwgZXhlY3V0aW5nIHJlcXVl
c3RzIGFzIHNraXBwZWQuICovCj4+PiAtICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KHJxLCAmZW5n
aW5lLT5hY3RpdmUucmVxdWVzdHMsIHNjaGVkLmxpbmspIHsKPj4+IC0gICAgICAgICAgICAgaWYg
KCFpOTE1X3JlcXVlc3Rfc2lnbmFsZWQocnEpKQo+Pj4gLSAgICAgICAgICAgICAgICAgICAgIGRt
YV9mZW5jZV9zZXRfZXJyb3IoJnJxLT5mZW5jZSwgLUVJTyk7Cj4+PiAtCj4+PiAtICAgICAgICAg
ICAgIGk5MTVfcmVxdWVzdF9tYXJrX2NvbXBsZXRlKHJxKTsKPj4+IC0gICAgIH0KPj4+ICsgICAg
IGxpc3RfZm9yX2VhY2hfZW50cnkocnEsICZlbmdpbmUtPmFjdGl2ZS5yZXF1ZXN0cywgc2NoZWQu
bGluaykKPj4+ICsgICAgICAgICAgICAgbWFya19laW8ocnEpOwo+Pj4gICAgCj4+PiAgICAgICAg
LyogRmx1c2ggdGhlIHF1ZXVlZCByZXF1ZXN0cyB0byB0aGUgdGltZWxpbmUgbGlzdCAoZm9yIHJl
dGlyaW5nKS4gKi8KPj4+ICAgICAgICB3aGlsZSAoKHJiID0gcmJfZmlyc3RfY2FjaGVkKCZleGVj
bGlzdHMtPnF1ZXVlKSkpIHsKPj4+IEBAIC0yNTE0LDEwICsyNTE3LDggQEAgc3RhdGljIHZvaWQg
ZXhlY2xpc3RzX2NhbmNlbF9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
Cj4+PiAgICAgICAgICAgICAgICBpbnQgaTsKPj4+ICAgIAo+Pj4gICAgICAgICAgICAgICAgcHJp
b2xpc3RfZm9yX2VhY2hfcmVxdWVzdF9jb25zdW1lKHJxLCBybiwgcCwgaSkgewo+Pj4gLSAgICAg
ICAgICAgICAgICAgICAgIGxpc3RfZGVsX2luaXQoJnJxLT5zY2hlZC5saW5rKTsKPj4KPj4gbGlz
dF9kZWxfaW5pdCBub3QgbmVlZGVkIGFueSBtb3JlPyBTaG91bGQgYmUgbWVudGlvbmVkIGluIHRo
ZSBjb21taXQKPj4gbWVzc2FnZS4KPiAKPiBJdCdzIG5vdCBiZWVuIG5lZWRlZCBmb3IgYSBsb25n
IHRpbWU7IG9ubHkganVzdCBub3RpY2VkIGl0IHdhcyBzdGlsbAo+IHRoZXJlLgo+ICAgCj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgbWFya19laW8ocnEpOwo+Pj4gICAgICAgICAgICAgICAgICAg
ICAgICBfX2k5MTVfcmVxdWVzdF9zdWJtaXQocnEpOwo+Pj4gLSAgICAgICAgICAgICAgICAgICAg
IGRtYV9mZW5jZV9zZXRfZXJyb3IoJnJxLT5mZW5jZSwgLUVJTyk7Cj4+PiAtICAgICAgICAgICAg
ICAgICAgICAgaTkxNV9yZXF1ZXN0X21hcmtfY29tcGxldGUocnEpOwo+Pgo+PiBJIGFtIGFsc28g
Y3VyaW91cyBhYm91dCBNaWthJ3MgcXVlc3Rpb24gLSBpZiB0aGUgY2hhbmdlIGluIG9yZGVyaW5n
IG9mCj4+IHN1Ym1pdCB2cyBtYXJrX2NvbXBsZXRlIGlzIGltcG9ydGFudCBpdCBzaG91bGQgYmUg
bWVudGlvbmVkIGluIHRoZSBjb21taXQuCj4gCj4gSXQncyBub3QgaW1wb3J0YW50IGFzIHRoZSBn
cHUgaXMgd2VkZ2VkLCBpdCBqdXN0IHRpZXMgdG9nZXRoZXIgd2l0aCB0aGUKPiBuZXh0IHBhdGNo
IHdoZXJlIGlmIGFscmVhZHkgY29tcGxldGVkLCB3ZSB0YWtlIGEgc2hvcnQtcGF0aCB0aHJvdWdo
Cj4gX19pOTE1X3JlcXVlc3Rfc3VibWl0LgoKT2theSwgYWZ0ZXIgcmVhZGluZyB0aGUgbmV4dCBw
YXRjaCBJIHNlZSB3aGF0IHdpbGwgaGFwcGVuLgoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgooS2VlcCByLWIgYWZ0ZXIgbGlzdF9kZWwgcmVz
cGluLikKClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
