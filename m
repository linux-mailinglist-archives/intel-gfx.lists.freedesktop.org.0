Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF38B0BFB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 11:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D11D6EC9B;
	Thu, 12 Sep 2019 09:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12796EC93
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 09:55:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 02:55:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,495,1559545200"; d="scan'208";a="186083791"
Received: from avrahamr-mobl1.ger.corp.intel.com (HELO [10.252.3.203])
 ([10.252.3.203])
 by fmsmga007.fm.intel.com with ESMTP; 12 Sep 2019 02:55:00 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190911163815.11430-1-chris@chris-wilson.co.uk>
 <bc9c4ab1-f161-cfd1-e60a-01747d361bfd@linux.intel.com>
 <156828117233.4926.13426076212674383174@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8abfc3c7-9ca8-1f56-65c3-bdb17bf31aae@linux.intel.com>
Date: Thu, 12 Sep 2019 10:55:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156828117233.4926.13426076212674383174@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Use GT parked for estimating
 RC6 while asleep
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

Ck9uIDEyLzA5LzIwMTkgMTA6MzksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTEyIDEwOjIwOjM5KQo+Pgo+PiBPbiAxMS8wOS8yMDE5IDE3OjM4
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBBcyB3ZSB0cmFjayB3aGVuIHdlIHB1dCB0aGUgR1Qg
ZGV2aWNlIHRvIHNsZWVwIHVwb24gaWRsaW5nLCB3ZSBjYW4gdXNlCj4+PiB0aGF0IGNhbGxiYWNr
IHRvIHNhbXBsZSB0aGUgY3VycmVudCByYzYgY291bnRlcnMgYW5kIHJlY29yZCB0aGUKPj4+IHRp
bWVzdGFtcCBmb3IgZXN0aW1hdGluZyBzYW1wbGVzIGFmdGVyIHRoYXQgcG9pbnQgd2hpbGUgYXNs
ZWVwLgo+Pj4KPj4+IHYyOiBTdGljayB0byB1c2luZyBrdGltZV90Cj4+PiB2MzogVHJhY2sgdXNl
cl93YWtlcmVmcyB0aGF0IGludGVyZmVyZSB3aXRoIHRoZSBuZXcKPj4+IGludGVsX2d0X3BtX3dh
aXRfZm9yX2lkbGUKPj4+Cj4+PiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA1MDEwCj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fcG0uYyAgIHwgIDE5ICsrKysKPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0X3R5cGVzLmggfCAgIDEgKwo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMgICAgICB8ICAyMiArKy0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wbXUuYyAgICAgICAgICB8IDEyMCArKysrKysrKysrKy0tLS0tLS0tLS0tLQo+Pj4g
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuaCAgICAgICAgICB8ICAgNCArLQo+Pj4g
ICAgNSBmaWxlcyBjaGFuZ2VkLCA5MCBpbnNlcnRpb25zKCspLCA3NiBkZWxldGlvbnMoLSkKPj4+
Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYwo+Pj4gaW5kZXggM2JkNzY0
MTA0ZDQxLi40NWE3MmNiNjk4ZGIgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fcG0uYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3BtLmMKPj4+IEBAIC0xNDEsNiArMTQxLDIxIEBAIGJvb2wgaTkxNV9nZW1fbG9hZF9w
b3dlcl9jb250ZXh0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+Pj4gICAgICAgIHJl
dHVybiBzd2l0Y2hfdG9fa2VybmVsX2NvbnRleHRfc3luYygmaTkxNS0+Z3QpOwo+Pj4gICAgfQo+
Pj4gICAgCj4+PiArc3RhdGljIHZvaWQgdXNlcl9mb3JjZXdha2Uoc3RydWN0IGludGVsX2d0ICpn
dCwgYm9vbCBzdXNwZW5kKQo+Pj4gK3sKPj4+ICsgICAgIGludCBjb3VudCA9IGF0b21pY19yZWFk
KCZndC0+dXNlcl93YWtlcmVmKTsgPj4+ICsKPj4+ICsgICAgIGlmIChsaWtlbHkoIWNvdW50KSkK
Pj4+ICsgICAgICAgICAgICAgcmV0dXJuOwo+Pj4gKwo+Pj4gKyAgICAgaW50ZWxfZ3RfcG1fZ2V0
KGd0KTsKPj4+ICsgICAgIGlmIChzdXNwZW5kKQo+Pj4gKyAgICAgICAgICAgICBhdG9taWNfc3Vi
KGNvdW50LCAmZ3QtPndha2VyZWYuY291bnQpOwoKR0VNX0JVR19PTiBmb3IgdW5kZXJmbG93PwoK
UHJlc3VtYWJseSBjb3VudCBpcyBlZmZlY3RpdmVseSBhdG9taWMgaGVyZSBzaW5jZSB1c2Vyc3Bh
Y2UgaXMgbm90IApydW5uaW5nIHlldC9hbnkgbW9yZS4gTWlnaHQgd2FycmFudCBhIGNvbW1lbnQ/
Cgo+Pj4gKyAgICAgZWxzZQo+Pj4gKyAgICAgICAgICAgICBhdG9taWNfYWRkKGNvdW50LCAmZ3Qt
Pndha2VyZWYuY291bnQpOwo+Pj4gKyAgICAgaW50ZWxfZ3RfcG1fcHV0KGd0KTsKPj4+ICt9Cj4+
PiArCj4+PiAgICB2b2lkIGk5MTVfZ2VtX3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4+PiAgICB7Cj4+PiAgICAgICAgR0VNX1RSQUNFKCJcbiIpOwo+Pj4gQEAgLTE0OCw2
ICsxNjMsOCBAQCB2b2lkIGk5MTVfZ2VtX3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4+PiAgICAgICAgaW50ZWxfd2FrZXJlZl9hdXRvKCZpOTE1LT5nZ3R0LnVzZXJmYXVs
dF93YWtlcmVmLCAwKTsKPj4+ICAgICAgICBmbHVzaF93b3JrcXVldWUoaTkxNS0+d3EpOwo+Pj4g
ICAgCj4+PiArICAgICB1c2VyX2ZvcmNld2FrZSgmaTkxNS0+Z3QsIHRydWUpOwo+Pgo+PiBUaGlz
IGNvbXBsaWNhdGlvbiBpcyBuZWVkZWQgb25seSBiZWNhdXNlIHlvdSBjaGFuZ2VkIHVzZXIgZm9y
Y2V3YWtlCj4+IGhhbmRsaW5nIHRvIHVzZSBpbnRlbF9ndF9wbV9nZXQvcHV0IGluc3RlYWQgb2Yg
aW50ZWxfcnVudGltZV9wbV9nZXQ/Cj4+IFdoaWNoIGluIHR1cm4gaXMgYmVjYXVzZSBvZiB0aGUg
Q09ORklHX1BNIGlmZGVmIHJlbW92YWwgYmVsb3c/IFdvdWxkbid0Cj4+IGl0IGJlIHNpbXBsZXIg
dG8ga2VlcCBib3RoIGFzIHdlcmU/IE1heWJlIEkgYW0gbWlzc2luZyBzb21ldGhpbmcuLi4KPiAK
PiBOb3QgcXVpdGUuIFRoZSBjaGFuZ2UgaXMgYmVjYXVzZSB3ZSBzdG9wIHRyYWNraW5nIHJjNiBh
ZnRlciBwYXJraW5nLAo+IGJlY2F1c2Ugd2Ugc3RvcCB1c2luZyB0aGUgcG0tdGltZXN0YW1wcyBp
biBmYXZvdXIgb2Ygb3VyIG93biBndAo+IHRyYWNraW5nLiBIb3dldmVyLCB0aGF0IHJlcXVpcmVk
IHR5aW5nIHRoZSBkZWJ1Z2ZzIGludG8gdGhlIGd0IHBtIGluCj4gb3JkZXIgZm9yIHVzIHRvIG5v
dGljZSB0aGUgZm9yY2VkIHdha2V1cCBvdXRzaWRlIG9mIHRoZSByZXF1ZXN0IGZsb3cuCj4gCj4g
RWl0aGVyIHdlIGtlZXAgdXNpbmcgdGhlIHVucmVsaWFibGUgcnVudGltZS1wbSBpbnRlcmFjdGlv
bnMsIG9yIG5vdC4gVGhlCj4gcGF0Y2ggaGluZ2VzIHVwb24gdGhhdCBkZWNpc2lvbi4gT3IgYWx0
ZXJuYXRpdmUsIHdlIHNheSB3ZSBqdXN0IGRvbid0Cj4gY2FyZSBhYm91dCBtaXNjb3VudGluZyB3
aXRoIGRlYnVnZnMvaTkxNV91c2VyX2ZvcmNld2FrZS4KClRydWUsIEkgdGhpbmsgd2UgaGF2ZSB0
byBhY2NvdW50IGZvciBpdC4KCj4+PiAgICBzdGF0aWMgdTY0IGdldF9yYzYoc3RydWN0IGludGVs
X2d0ICpndCkKPj4+ICAgIHsKPj4+IC0jaWYgSVNfRU5BQkxFRChDT05GSUdfUE0pCj4+PiAgICAg
ICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKPj4+IC0gICAgIHN0
cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0gPSAmaTkxNS0+cnVudGltZV9wbTsKPj4+ICAgICAg
ICBzdHJ1Y3QgaTkxNV9wbXUgKnBtdSA9ICZpOTE1LT5wbXU7Cj4+PiAtICAgICBpbnRlbF93YWtl
cmVmX3Qgd2FrZXJlZjsKPj4+ICAgICAgICB1bnNpZ25lZCBsb25nIGZsYWdzOwo+Pj4gICAgICAg
IHU2NCB2YWw7Cj4+PiAgICAKPj4+IC0gICAgIHdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dl
dF9pZl9pbl91c2UocnBtKTsKPj4+IC0gICAgIGlmICh3YWtlcmVmKSB7Cj4+PiArICAgICBzcGlu
X2xvY2tfaXJxc2F2ZSgmcG11LT5sb2NrLCBmbGFncyk7Cj4+PiArCj4+PiArICAgICBpZiAoaW50
ZWxfZ3RfcG1fZ2V0X2lmX2F3YWtlKGd0KSkgewo+Pj4gICAgICAgICAgICAgICAgdmFsID0gX19n
ZXRfcmM2KGd0KTsKPj4+IC0gICAgICAgICAgICAgaW50ZWxfcnVudGltZV9wbV9wdXQocnBtLCB3
YWtlcmVmKTsKPj4+ICsgICAgICAgICAgICAgaW50ZWxfZ3RfcG1fcHV0KGd0KTsKPj4+ICAgIAo+
Pj4gICAgICAgICAgICAgICAgLyoKPj4+ICAgICAgICAgICAgICAgICAqIElmIHdlIGFyZSBjb21p
bmcgYmFjayBmcm9tIGJlaW5nIHJ1bnRpbWUgc3VzcGVuZGVkIHdlIG11c3QKPj4+IEBAIC00NjYs
MTkgKzQ5NCwxMyBAQCBzdGF0aWMgdTY0IGdldF9yYzYoc3RydWN0IGludGVsX2d0ICpndCkKPj4+
ICAgICAgICAgICAgICAgICAqIHByZXZpb3VzbHkuCj4+PiAgICAgICAgICAgICAgICAgKi8KPj4+
ICAgIAo+Pj4gLSAgICAgICAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmcG11LT5sb2NrLCBmbGFn
cyk7Cj4+PiAtCj4+PiAgICAgICAgICAgICAgICBpZiAodmFsID49IHBtdS0+c2FtcGxlW19fSTkx
NV9TQU1QTEVfUkM2X0VTVElNQVRFRF0uY3VyKSB7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAg
IHBtdS0+c2FtcGxlW19fSTkxNV9TQU1QTEVfUkM2X0VTVElNQVRFRF0uY3VyID0gMDsKPj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgcG11LT5zYW1wbGVbX19JOTE1X1NBTVBMRV9SQzZdLmN1ciA9
IHZhbDsKPj4+ICAgICAgICAgICAgICAgIH0gZWxzZSB7Cj4+PiAgICAgICAgICAgICAgICAgICAg
ICAgIHZhbCA9IHBtdS0+c2FtcGxlW19fSTkxNV9TQU1QTEVfUkM2X0VTVElNQVRFRF0uY3VyOwo+
Pj4gICAgICAgICAgICAgICAgfQo+Pj4gLQo+Pj4gLSAgICAgICAgICAgICBzcGluX3VubG9ja19p
cnFyZXN0b3JlKCZwbXUtPmxvY2ssIGZsYWdzKTsKPj4KPj4gRm9yIHRoaXMgYnJhbmNoIHBtdS0+
bG9jayBpcyBvbmx5IG5lZWRlZCBvdmVyIHRoZSBlc3RpbWF0aW9uIGJsb2NrLCBub3QKPj4gb3Zl
ciBfX2dldF9yYzYoKSBhbmQgaW50ZWxfZ3RfcG1fZ2V0X2lmX2F3YWtlKCkuIEJ1dCBJIGFncmVl
IGl0J3MgbW9yZQo+PiBlZmZpY2llbnQgdG8gZG8gaXQgbGlrZSB0aGlzIHRvIGF2b2lkIG11bHRp
cGxlIGlycS1vZmYtb24gdHJhbnNpdGlvbnMKPj4gdmlhIGludGVsX3JjNl9yZXNpZGVuY3lfbnMu
IEkgd2FudGVkIHRvIHN1Z2dlc3QgbG9jYWxfaXJxX2Rpc2FibGUgYW5kCj4+IHNlcGFyYXRlIHNw
aW5fKHVuKWxvY2sncyBvbiBib3RoIGlmIGJyYW5jaGVzIGZvciBtb3JlIHNlbGYtZG9jdW1lbnRp
bmcgLAo+PiBsZXNzIGNvbmZ1c2lvbiwgYnV0IHRoZW4gc2luZ2xlIGNhbGwgYWxzbyBoYXMgaXQn
cyBiZW5lZml0cy4KPiAKPiBJZiBJIGFtIG5vdCBtaXN0YWtlbiwgd2UgbmVlZCB0byBzZXJpYWxp
c2Ugb3ZlciB0aGUgZ2V0X2lmX2F3YWtlLiBPciBhdAo+IGxlYXN0IGl0IG1ha2VzIGl0IGVhc2ll
ciB0byBhcmd1ZSBhYm91dCB0aGUgR1Qgc3RhdGUgYW5kIHdoZXRoZXIgd2UKPiBuZWVkIHRvIGNo
b29zZSBiZXR3ZWVuIHVwZGF0aW5nIEVTVElNQVRFRCBvciBBQ1RVQUwuCgpJIGFtIG5vdCBzdXJl
IHRoYXQgd2UgZG8gYnV0IGFueXdheSBkb2Vzbid0IGhhcm0gYSBsb3QgYW5kIGhhcyB0aGUgYWJv
dmUgCmRlc2NyaWJlZCBiZW5lZml0cyBhcyB3ZWxsIHNvIG9rYXkuCgo+IAo+IFtzbmlwXQo+IAo+
PiBEb24ndCB3ZSBlbmQgdXAgZG9pbmcgdGhlIGlycXNhdmUgc3BpbmxvY2sgbmVlZGxlc3NseSB3
aGVuICFDT05GSUdfUE0/Cj4gCj4gTm8sIHRoZSBpbnRlbnQgaXMgdG8gc2VyaWFsaXNlIHdpdGgg
aTkxNV9wbXVfZ3RfcGFya2VkIGFuZAo+IGk5MTVfcG11X2d0X3VucGFya2VkIChhbmQgdGhlIEdU
IGF3YWtlIHN0YXRlKSwgd2hpY2ggYXJlIGluZGVwZW5kZW50IG9mCj4gQ09ORklHX1BNLgoKWWVz
IGJ1dCB3aXRoICFDT05GSUdfUE0gd2UgY2FuIGFsd2F5cyByZWFkIHRoZSByZWFsIGNvdW50ZXJz
IGFuZCBkb24ndCAKbmVlZCB0byBkbyBhbnkgYWRkaXRpb25hbCBtYWdpYy4gSW4gZmFjdCBjb2Rl
IGluIGk5MTVfcG11X2d0Xyh1bilwYXJrZWQgCmNvdWxkIGJlIGlmZGVmLWVkIG91dCBmb3IgdGhh
dCBjYXNlIGFzIHdlbGwuCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
