Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B160E4B68
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 14:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43E376E9FF;
	Fri, 25 Oct 2019 12:43:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C38F16E9FF
 for <Intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 12:43:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 05:43:54 -0700
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="192529330"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO [10.251.81.75])
 ([10.251.81.75])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Oct 2019 05:43:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20191025090952.10135-1-tvrtko.ursulin@linux.intel.com>
 <157199481607.2725.16072281219556398612@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <962e355e-fe48-1654-6312-ecf08423b6d0@linux.intel.com>
Date: Fri, 25 Oct 2019 13:43:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157199481607.2725.16072281219556398612@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move intel_engine_context_in/out
 into intel_lrc.c
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

Ck9uIDI1LzEwLzIwMTkgMTA6MTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTI1IDEwOjA5OjUyKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBJbnRlbF9scmMuYyBpcyB0aGUgb25seSBj
YWxsZXIgYW5kIHNvIHRvIGF2b2lkIHNvbWUgaGVhZGVyIGZpbGUgb3JkZXJpbmcKPj4gaXNzdWVz
IGluIGZ1dHVyZSBwYXRjaGVzIG1vdmUgdGhlc2UgdHdvIG92ZXIgdGhlcmUuCj4gCj4gSG93IG11
Y2ggcGFpbiB3b3VsZCB5b3UgZmVlbCBpZiB3ZSBkaWQgaW50ZWxfbHJjLmMgKwo+IGludGVsX2V4
ZWNsaXN0c19zdWJtaXNzaW9uLmMgZWFybGllciByYXRoZXIgdGhhbiBsYXRlcj8KClBhciBmb3Ig
Y291cnNlIGFzIHlvdSBsaWtlIHRvIHNheS4gOikKCj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oIHwgNTUgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICB8IDU1ICsrKysr
KysrKysrKysrKysrKysrKysrKysrCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA1NSBpbnNlcnRpb25z
KCspLCA1NSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lLmgKPj4gaW5kZXggOTdiYmRkOTc3M2M5Li5jNjg5NTkzOGI2MjYgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oCj4+IEBAIC0yOTAsNjEgKzI5MCw2IEBAIHZv
aWQgaW50ZWxfZW5naW5lX2R1bXAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+PiAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3ByaW50ZXIgKm0sCj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnN0IGNoYXIgKmhlYWRlciwgLi4uKTsKPj4gICAKPj4gLXN0YXRp
YyBpbmxpbmUgdm9pZCBpbnRlbF9lbmdpbmVfY29udGV4dF9pbihzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCj4+IC17Cj4+IC0gICAgICAgdW5zaWduZWQgbG9uZyBmbGFnczsKPj4gLQo+
PiAtICAgICAgIGlmIChSRUFEX09OQ0UoZW5naW5lLT5zdGF0cy5lbmFibGVkKSA9PSAwKQo+PiAt
ICAgICAgICAgICAgICAgcmV0dXJuOwo+PiAtCj4+IC0gICAgICAgd3JpdGVfc2VxbG9ja19pcnFz
YXZlKCZlbmdpbmUtPnN0YXRzLmxvY2ssIGZsYWdzKTsKPj4gLQo+PiAtICAgICAgIGlmIChlbmdp
bmUtPnN0YXRzLmVuYWJsZWQgPiAwKSB7Cj4+IC0gICAgICAgICAgICAgICBpZiAoZW5naW5lLT5z
dGF0cy5hY3RpdmUrKyA9PSAwKQo+PiAtICAgICAgICAgICAgICAgICAgICAgICBlbmdpbmUtPnN0
YXRzLnN0YXJ0ID0ga3RpbWVfZ2V0KCk7Cj4+IC0gICAgICAgICAgICAgICBHRU1fQlVHX09OKGVu
Z2luZS0+c3RhdHMuYWN0aXZlID09IDApOwo+PiAtICAgICAgIH0KPj4gLQo+PiAtICAgICAgIHdy
aXRlX3NlcXVubG9ja19pcnFyZXN0b3JlKCZlbmdpbmUtPnN0YXRzLmxvY2ssIGZsYWdzKTsKPj4g
LX0KPj4gLQo+PiAtc3RhdGljIGlubGluZSB2b2lkIGludGVsX2VuZ2luZV9jb250ZXh0X291dChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4+IC17Cj4+IC0gICAgICAgdW5zaWduZWQg
bG9uZyBmbGFnczsKPj4gLQo+PiAtICAgICAgIGlmIChSRUFEX09OQ0UoZW5naW5lLT5zdGF0cy5l
bmFibGVkKSA9PSAwKQo+PiAtICAgICAgICAgICAgICAgcmV0dXJuOwo+PiAtCj4+IC0gICAgICAg
d3JpdGVfc2VxbG9ja19pcnFzYXZlKCZlbmdpbmUtPnN0YXRzLmxvY2ssIGZsYWdzKTsKPj4gLQo+
PiAtICAgICAgIGlmIChlbmdpbmUtPnN0YXRzLmVuYWJsZWQgPiAwKSB7Cj4+IC0gICAgICAgICAg
ICAgICBrdGltZV90IGxhc3Q7Cj4+IC0KPj4gLSAgICAgICAgICAgICAgIGlmIChlbmdpbmUtPnN0
YXRzLmFjdGl2ZSAmJiAtLWVuZ2luZS0+c3RhdHMuYWN0aXZlID09IDApIHsKPj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgLyoKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICogRGVjcmVtZW50
IHRoZSBhY3RpdmUgY29udGV4dCBjb3VudCBhbmQgaW4gY2FzZSBHUFUKPj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICogaXMgbm93IGlkbGUgYWRkIHVwIHRvIHRoZSBydW5uaW5nIHRvdGFsLgo+
PiAtICAgICAgICAgICAgICAgICAgICAgICAgKi8KPj4gLSAgICAgICAgICAgICAgICAgICAgICAg
bGFzdCA9IGt0aW1lX3N1YihrdGltZV9nZXQoKSwgZW5naW5lLT5zdGF0cy5zdGFydCk7Cj4+IC0K
Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgZW5naW5lLT5zdGF0cy50b3RhbCA9IGt0aW1lX2Fk
ZChlbmdpbmUtPnN0YXRzLnRvdGFsLAo+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGxhc3QpOwo+PiAtICAgICAgICAgICAgICAgfSBlbHNl
IGlmIChlbmdpbmUtPnN0YXRzLmFjdGl2ZSA9PSAwKSB7Cj4+IC0gICAgICAgICAgICAgICAgICAg
ICAgIC8qCj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAqIEFmdGVyIHR1cm5pbmcgb24gZW5n
aW5lIHN0YXRzLCBjb250ZXh0IG91dCBtaWdodCBiZQo+PiAtICAgICAgICAgICAgICAgICAgICAg
ICAgKiB0aGUgZmlyc3QgZXZlbnQgaW4gd2hpY2ggY2FzZSB3ZSBhY2NvdW50IGZyb20gdGhlCj4+
IC0gICAgICAgICAgICAgICAgICAgICAgICAqIHRpbWUgc3RhdHMgZ2F0aGVyaW5nIHdhcyB0dXJu
ZWQgb24uCj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAqLwo+PiAtICAgICAgICAgICAgICAg
ICAgICAgICBsYXN0ID0ga3RpbWVfc3ViKGt0aW1lX2dldCgpLCBlbmdpbmUtPnN0YXRzLmVuYWJs
ZWRfYXQpOwo+PiAtCj4+IC0gICAgICAgICAgICAgICAgICAgICAgIGVuZ2luZS0+c3RhdHMudG90
YWwgPSBrdGltZV9hZGQoZW5naW5lLT5zdGF0cy50b3RhbCwKPj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsYXN0KTsKPj4gLSAgICAgICAg
ICAgICAgIH0KPj4gLSAgICAgICB9Cj4+IC0KPj4gLSAgICAgICB3cml0ZV9zZXF1bmxvY2tfaXJx
cmVzdG9yZSgmZW5naW5lLT5zdGF0cy5sb2NrLCBmbGFncyk7Cj4+IC19Cj4+IC0KPj4gICBpbnQg
aW50ZWxfZW5hYmxlX2VuZ2luZV9zdGF0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
Owo+PiAgIHZvaWQgaW50ZWxfZGlzYWJsZV9lbmdpbmVfc3RhdHMoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKTsKPj4gICAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4g
aW5kZXggNzNlYWU4NWEyY2M5Li41MjNkZTFmZDQ0NTIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCj4+IEBAIC05NDQsNiArOTQ0LDYxIEBAIGV4ZWNsaXN0c19jb250ZXh0
X3N0YXR1c19jaGFuZ2Uoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHVuc2lnbmVkIGxvbmcgc3Rh
dHVzKQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMsIHJxKTsK
Pj4gICB9Cj4+ICAgCj4+ICtzdGF0aWMgdm9pZCBpbnRlbF9lbmdpbmVfY29udGV4dF9pbihzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gCj4gc3RhdHNfaW4oKSAvIHN0YXRzX291dCgp
ID8KPiAKPiBOb3cgdGhhdCdzIGl0IGVudGlyZWx5IGxvY2FsIGFuZCB3ZSBtYXkgZW5kIHVwIGRv
aW5nIG90aGVyIHBlci1jb250ZXh0Cj4gaW4vb3V0IG9wcz8KClllYWgsIGNvdWxkIG1ha2Ugc2Vu
c2UuIEkgZGlkIHJlbmFtZSBpdCB0byBpbnRlbF9jb250ZXh0X2luL291dCBpbiBhIApsb2NhbCBw
YXRjaCB3aGljaCBhZGRzIHBlciBjZSBzdGF0cy4gTGV0cyBzZWUgd2hlbiBJIHVuLWJpdC1yb3Qg
dGhhdCAKd29yayBob3cgaXQgd2lsbCBsb29rLgoKPiBQdXJlbHkgbWVjaGFuaWNhbCwgc28KPiBS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpJbiB0
aGUgbWVhbnRpbWUgSSBoYXZlIHB1c2hlZCB0aGlzIHNvIGF0IGxlYXN0IGhlYWRlciBmaWxlIGlz
IHNtYWxsZXIuIApUaGFua3MuCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
