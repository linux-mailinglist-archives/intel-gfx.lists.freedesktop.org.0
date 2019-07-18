Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 415106C8F3
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 07:58:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7E06E30D;
	Thu, 18 Jul 2019 05:58:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39D326E30D
 for <Intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 05:58:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 22:58:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,276,1559545200"; d="scan'208";a="158687008"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 22:58:46 -0700
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
 <20190717180624.20354-2-tvrtko.ursulin@linux.intel.com>
 <73a927cb41628e942dec6457d8573884a7cab527.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ce9aa300-0872-2cbb-28c1-ea9004c5832d@linux.intel.com>
Date: Thu, 18 Jul 2019 06:58:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <73a927cb41628e942dec6457d8573884a7cab527.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Fix GEN8_MCR_SELECTOR
 programming
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

Ck9uIDE3LzA3LzIwMTkgMjI6MjUsIFN1bW1lcnMsIFN0dWFydCB3cm90ZToKPiBPbiBXZWQsIDIw
MTktMDctMTcgYXQgMTk6MDYgKzAxMDAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+PiBGcm9tOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IE5vdCBvcHBvc2Vk
IHRvIHRoaXMgZXhhY3RseSwgYnV0IGRvIHdlIHJlYWxseSBuZWVkIHRoaXMgcGF0Y2ggaWYgd2Un
cmUKPiBqdXN0IGdldHRpbmcgcmlkIG9mIHRoaXMgcm91dGluZSBsYXRlciBpbiB0aGUgc2VyaWVz
PwoKSXQganVzdCBoYXBwZW5zIHRoaXMgZml4IGFsb25lIGlzIGVub3VnaCB0byBmaXggTUNSIG9u
IGFsbCBJQ0wgcGFydHMgSSAKaGF2ZSBzZWVuICh3aGF0IENJIGhhcyBpbiBCQVQgYW5kIGluIHNo
YXJkcykgYW5kIGJlaW5nIGEgc21hbGwgb25lIGl0IGlzIApyZWFsaXN0aWMgdG8gYmFja3BvcnQg
aXQgdG8gc3RhYmxlIGtlcm5lbHMuIFNvdW5kcyByZWFzb25hYmxlIG9yIEkgaGF2ZSAKbWlzc2Vk
IHNvbWV0aGluZz8KClJlZ2FyZHMsCgpUdnJ0a28KCj4gVGhhbmtzLAo+IFN0dWFydAo+IAo+Pgo+
PiBmbHMgcmV0dXJucyBiaXQgcG9zaXRpb25zIHN0YXJ0aW5nIGZyb20gb25lIGZvciB0aGUgbHNi
IGFuZCB0aGUgTUNSCj4+IHJlZ2lzdGVyIGV4cGVjdHMgemVybyBiYXNlZCAoc3ViKXNsaWNlIGFk
ZHJlc3NpbmcuCj4+Cj4+IEluY29ycmVudCBNQ1IgcHJvZ3JhbW1pbmcgY2FuIGhhdmUgdGhlIGVm
ZmVjdCBvZiBkaXJlY3RpbmcgTU1JTyByZWFkcwo+PiBvZgo+PiByZWdpc3RlcnMgaW4gdGhlIDB4
YjEwMC0weGIzZmYgcmFuZ2UgdG8gaW52YWxpZCBzdWJzbGljZSByZXR1cm5pbmcKPj4gemVyb2Vz
Cj4+IGluc3RlYWQgb2YgYWN0dWFsIGNvbnRlbnQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IEZpeGVzOiAxZTQwZDRhZWE1
N2IgKCJkcm0vaTkxNS9jbmw6IEltcGxlbWVudAo+PiBXYVByb2dyYW1NZ3NyRm9yQ29ycmVjdFNs
aWNlU3BlY2lmaWNNbWlvUmVhZHMiKQo+PiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9jcy5jIHwgOSArKysrKysrLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+PiBpbmRleCBjMGJjOWNiN2YyMjguLjZmOTNjYWY3YTVh
MSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPj4g
QEAgLTk2Miw5ICs5NjIsMTQgQEAgY29uc3QgY2hhciAqaTkxNV9jYWNoZV9sZXZlbF9zdHIoc3Ry
dWN0Cj4+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCB0eXBlKQo+PiAgIHUzMiBpbnRlbF9j
YWxjdWxhdGVfbWNyX3Nfc3Nfc2VsZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlCj4+ICpkZXZf
cHJpdikKPj4gICB7Cj4+ICAgCWNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1ID0gJlJV
TlRJTUVfSU5GTyhkZXZfcHJpdiktCj4+PiBzc2V1Owo+PiArCXVuc2lnbmVkIGludCBzbGljZSA9
IGZscyhzc2V1LT5zbGljZV9tYXNrKSAtIDE7Cj4+ICsJdW5zaWduZWQgaW50IHN1YnNsaWNlOwo+
PiAgIAl1MzIgbWNyX3Nfc3Nfc2VsZWN0Owo+PiAtCXUzMiBzbGljZSA9IGZscyhzc2V1LT5zbGlj
ZV9tYXNrKTsKPj4gLQl1MzIgc3Vic2xpY2UgPSBmbHMoc3NldS0+c3Vic2xpY2VfbWFza1tzbGlj
ZV0pOwo+PiArCj4+ICsJR0VNX0JVR19PTihzbGljZSA+PSBBUlJBWV9TSVpFKHNzZXUtPnN1YnNs
aWNlX21hc2spKTsKPj4gKwlzdWJzbGljZSA9IGZscyhzc2V1LT5zdWJzbGljZV9tYXNrW3NsaWNl
XSk7Cj4+ICsJR0VNX0JVR19PTighc3Vic2xpY2UpOwo+PiArCXN1YnNsaWNlLS07Cj4+ICAgCj4+
ICAgCWlmIChJU19HRU4oZGV2X3ByaXYsIDEwKSkKPj4gICAJCW1jcl9zX3NzX3NlbGVjdCA9IEdF
TjhfTUNSX1NMSUNFKHNsaWNlKSB8Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
