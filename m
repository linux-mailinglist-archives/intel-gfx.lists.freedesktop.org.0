Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C2CBF553
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 16:57:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94F7A6ECC2;
	Thu, 26 Sep 2019 14:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 838A86ECC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 14:57:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 07:57:11 -0700
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="180191007"
Received: from kgalazka-mobl.ger.corp.intel.com (HELO [10.252.3.235])
 ([10.252.3.235])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Sep 2019 07:57:09 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190926142538.9386-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c05826c8-b589-52b2-441f-89906c11638a@linux.intel.com>
Date: Thu, 26 Sep 2019 15:57:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926142538.9386-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Delegate our irq handler to a
 thread
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
Cc: Clark Williams <williams@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI2LzA5LzIwMTkgMTU6MjUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBNb3Zpbmcgb3VyIHBy
aW1hcnkgaXJxIGhhbmRsZXIgdG8gYSBSVCB0aHJlYWQgaW5jdXJzIGFuIGV4dHJhIDF1cyBkZWxh
eQo+IGluIHByb2Nlc3MgaW50ZXJydXB0cy4gVGhpcyBpcyBtb3N0IG5vdGljZSBpbiB3YWtpbmcg
dXAgY2xpZW50IHRocmVhZHMsCj4gd2hlcmUgaXQgYWRkcyBhYm91dCAyMCUgb2YgZXh0cmEgbGF0
ZW5jeS4gSXQgYWxzbyBpbXBvc2VzIGEgZGVsYXkgaW4KPiBmZWVkaW5nIHRoZSBHUFUsIGFuIGV4
dHJhIDF1cyBiZWZvcmUgc2lnbmFsaW5nIHNlY29uZGFyeSBlbmdpbmVzIGFuZAo+IGV4dHJhIGxh
dGVuY3kgaW4gcmVzdWJtaXR0aW5nIHdvcmsgdG8ga2VlcCB0aGUgR1BVIGJ1c3kuIFRoZSBsYXR0
ZXIgY2FzZQo+IGlzIGluc2lnbmlmaWNhbnQgYXMgdGhlIGxhdGVuY3kgaGlkZGVuIGJ5IHRoZSBh
Y3RpdmUgR1BVLCBhbmQKPiBwcmVlbXB0LXRvLWJ1c3kgZW5zdXJlcyB0aGF0IG5vIGV4dHJhIGxh
dGVuY3kgaXMgaW5jdXJyZWQgZm9yCj4gcHJlZW1wdGlvbi4KPiAKPiBUaGUgYmVuZWZpdCBpcyB0
aGF0IHdlIHJlZHVjZWQgdGhlIGltcGFjdCBvbiB0aGUgcmVzdCBvZiB0aGUgc3lzdGVtLCB0aGUK
PiBjeWNsZXRlc3Qgc2hvd3MgYSByZWR1Y3Rpb24gZnJvbSA1dXMgbWVhbiBsYXRlbmN5IHRvIDJ1
cywgd2l0aCB0aGUKPiBtYXhpbXVtIG9ic2VydmVkIGxhdGVuY3kgKGluIGEgMiBtaW51dGUgd2lu
ZG93KSByZWR1Y2VkIGJ5IG92ZXIgMTYwdXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9v
bmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KPiBDYzogQ2xhcmsgV2lsbGlhbXMgPHdpbGxpYW1zQHJlZGhh
dC5jb20+Cj4gQ2M6IFNlYmFzdGlhbiBBbmRyemVqIFNpZXdpb3IgPGJpZ2Vhc3lAbGludXRyb25p
eC5kZT4KPiAtLS0KPiBOb3RlIHRoaXMgc2hvdWxkIG5lZWQgdGhlIGZpeGVzIGluCj4gMjAxOTA5
MjYxMDU2NDQuMTY3MDMtMi1iaWdlYXN5QGxpbnV0cm9uaXguZGUsIGJ5IGl0c2VsZiB0aGlzIHNo
b3VsZCBiZSBhCj4gdGVzdCB2ZWhpY2xlIHRvIGV4ZXJjaXNlIHRoYXQgcGF0Y2ghCj4gLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgNCArKy0tCj4gICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYwo+IGluZGV4IGJjODNmMDk0MDY1YS4uZjNkZjc3MTRhM2YzIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jCj4gQEAgLTQ0OTEsOCArNDQ5MSw4IEBAIGludCBpbnRlbF9pcnFfaW5z
dGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAKPiAgIAlpbnRlbF9p
cnFfcmVzZXQoZGV2X3ByaXYpOwo+ICAgCj4gLQlyZXQgPSByZXF1ZXN0X2lycShpcnEsIGludGVs
X2lycV9oYW5kbGVyKGRldl9wcml2KSwKPiAtCQkJICBJUlFGX1NIQVJFRCwgRFJJVkVSX05BTUUs
IGRldl9wcml2KTsKPiArCXJldCA9IHJlcXVlc3RfdGhyZWFkZWRfaXJxKGlycSwgTlVMTCwgaW50
ZWxfaXJxX2hhbmRsZXIoZGV2X3ByaXYpLAo+ICsJCQkJICAgSVJRRl9TSEFSRUQsIERSSVZFUl9O
QU1FLCBkZXZfcHJpdik7Cj4gICAJaWYgKHJldCA8IDApIHsKPiAgIAkJZGV2X3ByaXYtPmRybS5p
cnFfZW5hYmxlZCA9IGZhbHNlOwo+ICAgCQlyZXR1cm4gcmV0Owo+IAoKVHdvIHF1ZXN0aW9uczoK
CjEuIFNob3VsZCB3ZSBzcGxpdCBvdXQgdGhlIG1hc3Rlcl9jdGwgaGFuZGxpbmcgaW50byB0aGUg
ZmFzdCBoYW5kbGVyPyAKQWx0aG91Z2ggY2FuIHdlIHBhc3MgYW55dGhpbmcgZnJvbSB0aGUgZmFz
dCB0byB0aHJlYWRlZCBoYW5kbGVyPyBJZiBub3QgCndlJ2QgaGF2ZSB0byByZS1yZWFkIHRoZSBt
YXN0ZXJfY3RsIGZyb20gdGhlIHRocmVhZGVkIGhhbmRsZXIuCgoyLiBXaGF0IGFib3V0IG91ciB0
YXNrbGV0cyAtIHdpdGggdGhyZWFkZWQgaXJxcyB3ZSBkb24ndCBuZWVkIHRoZW0gYW55IAptb3Jl
LCByaWdodD8gU28gaW4gdGhpcyBjYXNlIHRoZXkganVzdCBhZGQgYWRkaXRpb25hbCBsYXRlbmN5
LgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
