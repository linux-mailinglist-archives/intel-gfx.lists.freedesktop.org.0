Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 836ED4641A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:30:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59494892CC;
	Fri, 14 Jun 2019 16:30:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8C81892CC
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:30:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 09:30:37 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 09:30:35 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-23-tvrtko.ursulin@linux.intel.com>
 <156052960284.7796.644751129756189340@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <834701a5-0e23-bdaf-f74b-7fc93f4b24b9@linux.intel.com>
Date: Fri, 14 Jun 2019 17:30:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156052960284.7796.644751129756189340@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 22/31] drm/i915: Move i915_gem_chipset_flush
 to intel_gt
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

Ck9uIDE0LzA2LzIwMTkgMTc6MjYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTE0IDE2OjE3OjIyKQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0LmgKPj4gaW5kZXggMDUxZDcwNjlkYjU1Li44ZDg0NzE2YzNiM2IgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmgKPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaAo+PiBAQCAtOSw4ICs5LDcgQEAKPj4gICAKPj4gICAjaW5j
bHVkZSAiZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgiCj4+ICAgI2luY2x1ZGUgImd0L2ludGVsX2d0
X3R5cGVzLmgiCj4+IC0KPj4gLXN0cnVjdCBkcm1faTkxNV9wcml2YXRlOwo+PiArI2luY2x1ZGUg
Imk5MTVfZHJ2LmgiCj4+ICAgCj4+ICAgdm9pZCBpbnRlbF9ndF9pbml0KHN0cnVjdCBpbnRlbF9n
dCAqZ3QsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPj4gICAKPj4gQEAgLTIwLDQg
KzE5LDExIEBAIHZvaWQgaW50ZWxfZ3RfY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKHN0cnVjdCBpbnRl
bF9ndCAqZ3QsCj4+ICAgCj4+ICAgdm9pZCBpbnRlbF9ndF9mbHVzaF9nZ3R0X3dyaXRlcyhzdHJ1
Y3QgaW50ZWxfZ3QgKmd0KTsKPj4gICAKPj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9ndF9j
aGlwc2V0X2ZsdXNoKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4+ICt7Cj4+ICsgICAgICAgd21iKCk7
Cj4+ICsgICAgICAgaWYgKElOVEVMX0dFTihndC0+aTkxNSkgPCA2KQo+PiArICAgICAgICAgICAg
ICAgaW50ZWxfZ3R0X2NoaXBzZXRfZmx1c2goKTsKPj4gK30KPiAKPiBHcnIsIGluIG15IGN1cnJl
bnQgbWluZHNldCBJJ2QgdGFrZSBhbiBvdXQtb2YtbGluZSBjaGlwc2V0IGZsdXNoIG92ZXIgYW4K
PiBpbmNsdWRlICJpOTE1X2Rydi5oIgo+IAo+IEluIHRoZSBsb25nIHJ1biwgaGF2aW5nIGl0IG91
dC1vZi1saW5lIG1heSBiZSBiZXR0ZXIgZm9yIGRldGVjdGluZyBpZiBpdAo+IGlzIGV2ZXIgYSBw
cm9ibGVtIChtb3JlIG5vdGljZWFibGUpLgoKWW91IGtub3cgdGhhdCB3YXMgbXkgZmlyc3QgY2hv
aWNlIGJ1dCB0aGVuIEkgc2F3IHlvdSByZXBseWluZyAiQSAKZnVuY3Rpb24gY2FsbCwgZm9yIHRo
aXMsIHlvdSBjYW5ub3QgYmUgc2VyaW91cyEiLiA6KQoKU28gb2theSwgd2lsbCBtYWtlIGl0IGEg
ZnVuY3Rpb24gY2FsbC4KClJlZ2FyZHMsCgpUdnJ0a28KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
