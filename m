Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B15104032
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 16:58:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 581B36E850;
	Wed, 20 Nov 2019 15:58:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 512126E7DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 15:58:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 07:58:52 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200761575"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Nov 2019 07:58:51 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120134113.3777499-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0635e1d3-79c5-621a-faa5-b850386297eb@linux.intel.com>
Date: Wed, 20 Nov 2019 15:58:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120134113.3777499-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Reduce flush_ggtt() from a
 wait-for-idle to a mere barrier flush
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

Ck9uIDIwLzExLzIwMTkgMTM6NDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTaW5jZSB3ZSB1c2Ug
YmFycmllcnMsIHdlIG5lZWQgb25seSBleHBsaWNpdGx5IGZsdXNoIHRob3NlIGJhcnJpZXJzIHRv
Cj4gZW5zdXJlIHRoYSB3ZSBjYW4gcmVjbGFpbSB0aGUgYXZhaWxhYmxlIGdndHQgZm9yIG91cnNl
bHZlcy4gVGhlIGJhcnJpZXIKPiBmbHVzaCB3YXMgaW1wbGljaXQgaW5zaWRlIHRoZSBpbnRlbF9n
dF93YWl0X2Zvcl9pZGxlKCkgLS0gZXhjZXB0IGJlY2F1c2UKPiB3ZSB1c2UgaTkxNV9nZW1fZXZp
Y3QgZnJvbSBpbnNpZGUgYW4gYWN0aXZlIHRpbWVsaW5lIGR1cmluZyBleGVjYnVmLCB3ZQo+IGNv
dWxkIGVhc2lseSBlbmQgdXAgd2FpdGluZyB1cG9uIG91cnNlbHZlcy4KPiAKPiBGaXhlczogNzkz
NmEyMmRkNDY2ICgiZHJtL2k5MTUvZ3Q6IFdhaXQgZm9yIG5ldyByZXF1ZXN0cyBpbiBpbnRlbF9n
dF9yZXRpcmVfcmVxdWVzdHMoKSIpCj4gRml4ZXM6IGE0NmJmZGM4M2ZlZSAoImRybS9pOTE1L2d0
OiBXYWl0IGZvciBuZXcgcmVxdWVzdHMgaW4gaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzKCkiKQo+
IFRlc3RjYXNlOiBpZ3QvZ2VtX2V4ZWNfcmVsb2MvYmFzaWMtcmFuZ2UKCkJ1Z3ppbGxhOiA/CgpU
aGlzIHRlc3QgZ2V0cyBwZXJtYW5lbnRseSBzdHVjayBvbiBzb21lIHBsYXRmb3Jtcz8KClJlZ2Fy
ZHMsCgpUdnJ0a28KCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ldmljdC5jIHwgMjYg
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRp
b25zKCspLCAxMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZXZpY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2V2
aWN0LmMKPiBpbmRleCA3ZTYyYzMxMDI5MGYuLjc4Y2E1NmMwNmEzYyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ldmljdC5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZXZpY3QuYwo+IEBAIC0yOCw3ICsyOCw3IEBACj4gICAKPiAgICNp
bmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KPiAgIAo+IC0jaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuaCIKPiArI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuaCIKPiAgICNp
bmNsdWRlICJndC9pbnRlbF9ndF9yZXF1ZXN0cy5oIgo+ICAgCj4gICAjaW5jbHVkZSAiaTkxNV9k
cnYuaCIKPiBAQCAtMzgsOCArMzgsMTEgQEAgSTkxNV9TRUxGVEVTVF9ERUNMQVJFKHN0YXRpYyBz
dHJ1Y3QgaWd0X2V2aWN0X2N0bCB7Cj4gICAJYm9vbCBmYWlsX2lmX2J1c3k6MTsKPiAgIH0gaWd0
X2V2aWN0X2N0bDspCj4gICAKPiAtc3RhdGljIGludCBnZ3R0X2ZsdXNoKHN0cnVjdCBpbnRlbF9n
dCAqZ3QpCj4gK3N0YXRpYyB2b2lkIGdndHRfZmx1c2goc3RydWN0IGludGVsX2d0ICpndCkKPiAg
IHsKPiArCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiArCWVudW0gaW50ZWxfZW5n
aW5lX2lkIGlkOwo+ICsKPiAgIAkvKgo+ICAgCSAqIE5vdCBldmVyeXRoaW5nIGluIHRoZSBHR1RU
IGlzIHRyYWNrZWQgdmlhIHZtYSAob3RoZXJ3aXNlIHdlCj4gICAJICogY291bGQgZXZpY3QgYXMg
cmVxdWlyZWQgd2l0aCBtaW5pbWFsIHN0YWxsaW5nKSBzbyB3ZSBhcmUgZm9yY2VkCj4gQEAgLTQ3
LDcgKzUwLDExIEBAIHN0YXRpYyBpbnQgZ2d0dF9mbHVzaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+
ICAgCSAqIHRoZSBob3BlcyB0aGF0IHdlIGNhbiB0aGVuIHJlbW92ZSBjb250ZXh0cyBhbmQgdGhl
IGxpa2Ugb25seQo+ICAgCSAqIGJvdW5kIGJ5IHRoZWlyIGFjdGl2ZSByZWZlcmVuY2UuCj4gICAJ
ICovCj4gLQlyZXR1cm4gaW50ZWxfZ3Rfd2FpdF9mb3JfaWRsZShndCwgTUFYX1NDSEVEVUxFX1RJ
TUVPVVQpOwo+ICsJaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzKGd0KTsKPiArCWZvcl9lYWNoX2Vu
Z2luZShlbmdpbmUsIGd0LCBpZCkKPiArCQlpbnRlbF9lbmdpbmVfZmx1c2hfYmFycmllcnMoZW5n
aW5lKTsKPiArCj4gKwljb25kX3Jlc2NoZWQoKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIGJvb2wK
PiBAQCAtMTk3LDExICsyMDQsNyBAQCBpOTE1X2dlbV9ldmljdF9zb21ldGhpbmcoc3RydWN0IGk5
MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4gICAJaWYgKEk5MTVfU0VMRlRFU1RfT05MWShpZ3RfZXZp
Y3RfY3RsLmZhaWxfaWZfYnVzeSkpCj4gICAJCXJldHVybiAtRUJVU1k7Cj4gICAKPiAtCXJldCA9
IGdndHRfZmx1c2godm0tPmd0KTsKPiAtCWlmIChyZXQpCj4gLQkJcmV0dXJuIHJldDsKPiAtCj4g
LQljb25kX3Jlc2NoZWQoKTsKPiArCWdndHRfZmx1c2godm0tPmd0KTsKPiAgIAo+ICAgCWZsYWdz
IHw9IFBJTl9OT05CTE9DSzsKPiAgIAlnb3RvIHNlYXJjaF9hZ2FpbjsKPiBAQCAtMzcxLDExICsz
NzQsOCBAQCBpbnQgaTkxNV9nZW1fZXZpY3Rfdm0oc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAq
dm0pCj4gICAJICogcGluIHRoZW1zZWx2ZXMgaW5zaWRlIHRoZSBnbG9iYWwgR1RUIGFuZCBwZXJm
b3JtaW5nIHRoZQo+ICAgCSAqIHN3aXRjaCBvdGhlcndpc2UgaXMgaW5lZmZlY3RpdmUuCj4gICAJ
ICovCj4gLQlpZiAoaTkxNV9pc19nZ3R0KHZtKSkgewo+IC0JCXJldCA9IGdndHRfZmx1c2godm0t
Pmd0KTsKPiAtCQlpZiAocmV0KQo+IC0JCQlyZXR1cm4gcmV0Owo+IC0JfQo+ICsJaWYgKGk5MTVf
aXNfZ2d0dCh2bSkpCj4gKwkJZ2d0dF9mbHVzaCh2bS0+Z3QpOwo+ICAgCj4gICAJSU5JVF9MSVNU
X0hFQUQoJmV2aWN0aW9uX2xpc3QpOwo+ICAgCWxpc3RfZm9yX2VhY2hfZW50cnkodm1hLCAmdm0t
PmJvdW5kX2xpc3QsIHZtX2xpbmspIHsKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
