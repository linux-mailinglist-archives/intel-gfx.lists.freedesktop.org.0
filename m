Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 442DE9D0C4
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 15:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B766899B0;
	Mon, 26 Aug 2019 13:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD9B9899B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 13:39:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 06:39:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="331472250"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga004.jf.intel.com with ESMTP; 26 Aug 2019 06:39:56 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 26 Aug 2019 06:39:55 -0700
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.122]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.57]) with mapi id 14.03.0439.000;
 Mon, 26 Aug 2019 06:39:55 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 27/28] drm/i915: Cancel non-persistent contexts on close
Thread-Index: AQHVW98i9TpWiDU76E6CGVq5IAEwbacNZ8Vg
Date: Mon, 26 Aug 2019 13:39:55 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68B3D915D@fmsmsx120.amr.corp.intel.com>
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
 <20190826072149.9447-27-chris@chris-wilson.co.uk>
In-Reply-To: <20190826072149.9447-27-chris@chris-wilson.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDEzYjM2ZWUtMGExOS00M2NkLWEyY2YtMDRlM2FkOTMxZTQ5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWkFwTXh0QzFleXBpY2VRR0VaWXVYZ2ZWZnZpdkc2NUNBWWpuWDMreGFLK25HMFlJUlwvK1QzdVkwWkVNRmNBR3QifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 27/28] drm/i915: Cancel non-persistent
 contexts on close
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogTW9uZGF5LCBBdWd1c3QgMjYsIDIwMTkgMTI6
MjIgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPjsgSm9vbmFzIExhaHRpbmVuDQo+IDxq
b29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPjsgV2luaWFyc2tpLCBNaWNoYWwNCj4gPG1p
Y2hhbC53aW5pYXJza2lAaW50ZWwuY29tPjsgQmxvb21maWVsZCwgSm9uIDxqb24uYmxvb21maWVs
ZEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAyNy8yOF0gZHJtL2k5MTU6IENhbmNlbCBu
b24tcGVyc2lzdGVudCBjb250ZXh0cyBvbiBjbG9zZQ0KPiANCj4gTm9ybWFsbHksIHdlIHJlbHkg
b24gb3VyIGhhbmdjaGVjayB0byBwcmV2ZW50IHBlcnNpc3RlbnQgYmF0Y2hlcyBmcm9tDQo+IGhv
Z2dpbmcgdGhlIEdQVS4gSG93ZXZlciwgaWYgdGhlIHVzZXIgZGlzYWJsZXMgaGFuZ2NoZWNrLCB0
aGlzIG1lY2hhbmlzbQ0KPiBicmVha3MgZG93bi4gRGVzcGl0ZSBvdXIgaW5zaXN0ZW5jZSB0aGF0
IHRoaXMgaXMgdW5zYWZlLCB0aGUgdXNlcnMgYXJlDQo+IGVxdWFsbHkgaW5zaXN0ZW50IHRoYXQg
dGhleSB3YW50IHRvIHVzZSBlbmRsZXNzIGJhdGNoZXMgYW5kIHdpbGwgZGlzYWJsZQ0KPiB0aGUg
aGFuZ2NoZWNrIG1lY2hhbmlzbS4gV2UgYXJlIGxvb2tpbmcgYXJlIHBlcmhhcHMgcmVwbGFjaW5n
IGhhbmdjaGVjaw0KDQoibG9va2luZyBhdCI/DQoNCj4gd2l0aCBhIHNvZnRlciBtZWNoYW5pc20s
IHRoYXQgc2VuZHMgYSBwdWxzZSBkb3duIHRoZSBlbmdpbmUgdG8gY2hlY2sgaWYNCj4gaXQgaXMg
d2VsbC4gV2UgY2FuIHVzZSB0aGUgc2FtZSBwcmVlbXB0aXZlIHB1bHNlIHRvIGZsdXNoIGFuIGFj
dGl2ZQ0KPiBwZXJzaXN0ZW50IGNvbnRleHQgb2ZmIHRoZSBHUFUgdXBvbiBjb250ZXh0IGNsb3Nl
LCBwcmV2ZW50aW5nIHJlc291cmNlcw0KPiBiZWluZyBsb3N0IGFuZCB1bmtpbGxhYmxlIHJlcXVl
c3RzIHJlbWFpbmluZyBvbiB0aGUgR1BVIGFmdGVyIHByb2Nlc3MNCj4gdGVybWluYXRpb24uIFRv
IGF2b2lkIGNoYW5naW5nIHRoZSBBQkkgYW5kIGFjY2lkZW50YWxseSBicmVha2luZw0KPiBleGlz
dGluZyB1c2Vyc3BhY2UsIHdlIG1ha2UgdGhlIHBlcnNpc3RlbmNlIG9mIGEgY29udGV4dCBleHBs
aWNpdCBhbmQNCj4gZW5hYmxlIGl0IGJ5IGRlZmF1bHQgKG1hdGNoaW5nIGN1cnJlbnQgQUJJKS4g
VXNlcnNwYWNlIGNhbiBvcHQgb3V0IG9mDQo+IHBlcnNpc3RlbnQgbW9kZSAoZm9yY2luZyByZXF1
ZXN0cyB0byBiZSBjYW5jZWxsZWQgd2hlbiB0aGUgY29udGV4dCBpcw0KPiBjbG9zZWQgYnkgcHJv
Y2VzcyB0ZXJtaW5hdGlvbiBvciBleHBsaWNpdGx5KSBieSBhIGNvbnRleHQgcGFyYW1ldGVyLiBU
bw0KPiBmYWNpbGl0YXRlIGV4aXN0aW5nIHVzZS1jYXNlcyBvZiBkaXNhYmxpbmcgaGFuZ2NoZWNr
LCBpZiB0aGUgbW9kcGFyYW0gaXMNCj4gZGlzYWJsZWQgKGk5MTUuZW5hYmxlX2hhbmdjaGVjaz0w
KSwgd2UgZGlzYWJsZSBwZXJpc3RlbmNlIG1vZGUgYnkNCj4gZGVmYXVsdC4gIChOb3RlLCBvbmUg
b2YgdGhlIG91dGNvbWVzIGZvciBzdXBwb3J0aW5nIGVuZGxlc3MgbW9kZSB3aWxsIGJlDQo+IHRo
ZSByZW1vdmFsIG9mIGhhbmdjaGVja2luZywgYXQgd2hpY2ggcG9pbnQgb3B0aW5nIGludG8gcGVy
c2lzdGVudCBtb2RlDQo+IHdpbGwgYmUgbWFuZGF0b3J5LCBvciBtYXliZSB0aGUgZGVmYXVsdCBw
ZXJoYXBzIGNvbnRyb2xsZWQgYnkgY2dyb3Vwcy4pDQo+IA0KPiBUZXN0Y2FzZTogaWd0L2dlbV9j
dHhfcGVyc2lzdGVuY2UNCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+DQo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+DQo+IENjOiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNr
aUBpbnRlbC5jb20+DQo+IENjOiBKb24gQmxvb21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAg
ICAgICB8ICAgMyArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuYyAgIHwgMTIyICsrKysrKysrKysrKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHQuaCAgIHwgIDE1ICsrKw0KPiAgLi4uL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oIHwgICAxICsNCj4gIC4uLi9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jICB8ICA1NCArKysrKysrKw0KPiAgLi4uL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmggIHwgIDE0ICsrDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYyAgICAgfCAgIDIgKy0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcHJpb2xpc3RfdHlwZXMuaCAgICB8ICAgMSArDQo+ICBpbmNs
dWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAgICAgICAgICAgICAgfCAgMTUgKysrDQo+ICA5
IGZpbGVzIGNoYW5nZWQsIDIyNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFy
dGJlYXQuYw0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9oZWFydGJlYXQuaA0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUNCj4gaW5kZXgg
NjU4YjkzMGQzNGE4Li5lYWE3NGUwMDA5ODUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlDQo+
IEBAIC03Niw4ICs3Niw5IEBAIGd0LXkgKz0gXA0KPiAgCWd0L2ludGVsX2JyZWFkY3J1bWJzLm8g
XA0KPiAgCWd0L2ludGVsX2NvbnRleHQubyBcDQo+ICAJZ3QvaW50ZWxfZW5naW5lX2NzLm8gXA0K
PiAtCWd0L2ludGVsX2VuZ2luZV9wb29sLm8gXA0KPiArCWd0L2ludGVsX2VuZ2luZV9oZWFydGJl
YXQubyBcDQo+ICAJZ3QvaW50ZWxfZW5naW5lX3BtLm8gXA0KPiArCWd0L2ludGVsX2VuZ2luZV9w
b29sLm8gXA0KPiAgCWd0L2ludGVsX2VuZ2luZV91c2VyLm8gXA0KPiAgCWd0L2ludGVsX2d0Lm8g
XA0KPiAgCWd0L2ludGVsX2d0X2lycS5vIFwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fY29udGV4dC5jDQo+IGluZGV4IGJkOTM5NzY2OTMzMi4uNTUyMGE4OTZlNzAx
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4
dC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMN
Cj4gQEAgLTcwLDYgKzcwLDcgQEANCj4gICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4NCj4gDQo+
ICAjaW5jbHVkZSAiZ3QvaW50ZWxfbHJjX3JlZy5oIg0KPiArI2luY2x1ZGUgImd0L2ludGVsX2Vu
Z2luZV9oZWFydGJlYXQuaCINCj4gICNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVfdXNlci5oIg0K
PiANCj4gICNpbmNsdWRlICJpOTE1X2dlbV9jb250ZXh0LmgiDQo+IEBAIC0zNzUsNiArMzc2LDc4
IEBAIHZvaWQgaTkxNV9nZW1fY29udGV4dF9yZWxlYXNlKHN0cnVjdCBrcmVmICpyZWYpDQo+ICAJ
CXF1ZXVlX3dvcmsoaTkxNS0+d3EsICZpOTE1LT5jb250ZXh0cy5mcmVlX3dvcmspOw0KPiAgfQ0K
PiANCj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMgKg0KPiArX19jb250
ZXh0X2VuZ2luZXNfc3RhdGljKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpDQo+ICt7DQo+
ICsJcmV0dXJuIHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoY3R4LT5lbmdpbmVzLCB0cnVlKTsN
Cj4gK30NCj4gKw0KPiArc3RhdGljIHZvaWQga2lsbF9jb250ZXh0KHN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpjdHgpDQo+ICt7DQo+ICsJaW50ZWxfZW5naW5lX21hc2tfdCB0bXAsIGFjdGl2ZSwg
cmVzZXQ7DQo+ICsJc3RydWN0IGludGVsX2d0ICpndCA9ICZjdHgtPmk5MTUtPmd0Ow0KPiArCXN0
cnVjdCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7DQo+ICsJc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lOw0KPiArCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsNCj4gKw0KPiArCS8qDQo+
ICsJICogSWYgd2UgYXJlIGFscmVhZHkgYmFubmVkLCBpdCB3YXMgZHVlIHRvIGEgZ3VpbHR5IHJl
cXVlc3QgY2F1c2luZw0KPiArCSAqIGEgcmVzZXQgYW5kIHRoZSBlbnRpcmUgY29udGV4dCBiZWlu
ZyBldmljdGVkIGZyb20gdGhlIEdQVS4NCj4gKwkgKi8NCj4gKwlpZiAoaTkxNV9nZW1fY29udGV4
dF9pc19iYW5uZWQoY3R4KSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJaTkxNV9nZW1fY29udGV4
dF9zZXRfYmFubmVkKGN0eCk7DQo+ICsNCj4gKwkvKg0KPiArCSAqIE1hcCB0aGUgdXNlcidzIGVu
Z2luZSBiYWNrIHRvIHRoZSBhY3R1YWwgZW5naW5lczsgb25lIHZpcnR1YWwNCj4gKwkgKiBlbmdp
bmUgd2lsbCBiZSBtYXBwZWQgdG8gbXVsdGlwbGUgZW5naW5lcywgYW5kIHVzaW5nIGN0eC0+ZW5n
aW5lW10NCj4gKwkgKiB0aGUgc2FtZSBlbmdpbmUgbWF5IGJlIGhhdmUgbXVsdGlwbGUgaW5zdGFu
Y2VzIGluIHRoZSB1c2VyJ3MgbWFwLg0KPiArCSAqIEhvd2V2ZXIsIHdlIG9ubHkgY2FyZSBhYm91
dCBwZW5kaW5nIHJlcXVlc3RzLCBzbyBvbmx5IGluY2x1ZGUNCj4gKwkgKiBlbmdpbmVzIG9uIHdo
aWNoIHRoZXJlIGFyZSBpbmNvbXBsZXRlIHJlcXVlc3RzLg0KPiArCSAqLw0KPiArCWFjdGl2ZSA9
IDA7DQo+ICsJZm9yX2VhY2hfZ2VtX2VuZ2luZShjZSwgX19jb250ZXh0X2VuZ2luZXNfc3RhdGlj
KGN0eCksIGl0KSB7DQo+ICsJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KPiArDQo+ICsJCWlm
ICghY2UtPnRpbWVsaW5lKQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4gKwkJZmVuY2UgPSBpOTE1
X2FjdGl2ZV9mZW5jZV9nZXQoJmNlLT50aW1lbGluZS0+bGFzdF9yZXF1ZXN0KTsNCj4gKwkJaWYg
KCFmZW5jZSkNCj4gKwkJCWNvbnRpbnVlOw0KPiArDQo+ICsJCWVuZ2luZSA9IHRvX3JlcXVlc3Qo
ZmVuY2UpLT5lbmdpbmU7DQo+ICsJCWlmIChIQVNfRVhFQ0xJU1RTKGd0LT5pOTE1KSkNCj4gKwkJ
CWVuZ2luZSA9IGludGVsX2NvbnRleHRfaW5mbGlnaHQoY2UpOw0KPiArCQlpZiAoZW5naW5lKQ0K
PiArCQkJYWN0aXZlIHw9IGVuZ2luZS0+bWFzazsNCj4gKw0KPiArCQlkbWFfZmVuY2VfcHV0KGZl
bmNlKTsNCj4gKwl9DQo+ICsNCj4gKwkvKg0KPiArCSAqIFNlbmQgYSAiaGlnaCBwcmlvcml0eSBw
dWxzZSIgZG93biB0aGUgZW5naW5lIHRvIGNhdXNlIHRoZQ0KPiArCSAqIGN1cnJlbnQgcmVxdWVz
dCB0byBiZSBtb21lbnRhcmlseSBwcmVlbXB0ZWQuIChJZiBpdCBmYWlscyB0bw0KPiArCSAqIGJl
IHByZWVtcHRlZCwgaXQgd2lsbCBiZSByZXNldCkuIEFzIHdlIGhhdmUgbWFya2VkIG91ciBjb250
ZXh0DQo+ICsJICogYXMgYmFubmVkLCBhbnkgaW5jb21wbGV0ZSByZXF1ZXN0LCBpbmNsdWRpbmcg
YW55IHJ1bm5pbmcsIHdpbGwNCj4gKwkgKiBiZSBza2lwcGVkIGZvbGxvd2luZyB0aGUgcHJlZW1w
dGlvbi4NCj4gKwkgKi8NCj4gKwlyZXNldCA9IDA7DQo+ICsJZm9yX2VhY2hfZW5naW5lX21hc2tl
ZChlbmdpbmUsIGd0LT5pOTE1LCBhY3RpdmUsIHRtcCkNCj4gKwkJaWYgKGludGVsX2VuZ2luZV9w
dWxzZShlbmdpbmUpKQ0KPiArCQkJcmVzZXQgfD0gZW5naW5lLT5tYXNrOw0KPiArDQo+ICsJLyoN
Cj4gKwkgKiBJZiB3ZSBhcmUgdW5hYmxlIHRvIHNlbmQgYSBwcmVlbXB0aXZlIHB1bHNlIHRvIGJ1
bXANCj4gKwkgKiB0aGUgY29udGV4dCBmcm9tIHRoZSBHUFUsIHdlIGhhdmUgdG8gcmVzb3J0IHRv
IGEgZnVsbA0KPiArCSAqIHJlc2V0LiBXZSBob3BlIHRoZSBjb2xsYXRlcmFsIGRhbWFnZSBpcyB3
b3J0aCBpdC4NCj4gKwkgKi8NCj4gKwlpZiAocmVzZXQpDQo+ICsJCWludGVsX2d0X2hhbmRsZV9l
cnJvcihndCwgcmVzZXQsIDAsDQo+ICsJCQkJICAgICAgImNvbnRleHQgY2xvc3VyZSBpbiAlcyIs
IGN0eC0+bmFtZSk7DQoNClRoaXMgc2VlbXMgaW5jb25zaXN0ZW50IHdpdGggdGhlIHBvbGljeSBu
b3QgdG8gYWxsb3cgbm9uLXBlcnNpc3RlbmNlIHdpdGhvdXQgcHJlLWVtcHRpb24sIHNpbmNlIGlm
IHdlIGNhbid0IHByZS1lbXB0IHdlIG51a2UgYW55d2F5Lg0KDQpCdXQgdGhpcyBmZWVscyB1bnNh
ZmUgdG8gbWUgLSBIb3cgZG9lcyBpbnRlbF9ndF9oYW5kbGVfZXJyb3IgcHJldmVudCB1cyBmcm9t
IG51a2luZyBhIGZvbGxvd2luZyBjb250ZXh0LCBpbnN0ZWFkIG9mIHRoZSB0YXJnZXQ/IElkZWFs
bHkgd2Ugd291bGQ6DQoJMSkgVW5xdWV1ZSBhbnkgY29udGV4dCBjdXJyZW50bHkgYmVoaW5kIHRo
ZSB0YXJnZXQgY29udGV4dA0KCTIpIFJlc2V0IGVuZ2luZSBvbmx5IGlmIHRoZSB0YXJnZXQgY29u
dGV4dCBpcyBydW5uaW5nIChpdCBjb3VsZCBjb21wbGV0ZSBkdXJpbmcgMSkNCgkzKSBSZXF1ZXVl
IG90aGVyIGNvbnRleHRzDQoNCklmIHRoZSBhYm92ZSBpcyB2aWFibGUgKD8pIHdlIGRvbid0IGV2
ZW4gbmVlZCB0byBhdHRlbXB0IHByZS1lbXB0aW9uLg0KDQo+ICt9DQo+ICsNCj4gIHN0YXRpYyB2
b2lkIGNvbnRleHRfY2xvc2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkNCj4gIHsNCj4g
IAlpOTE1X2dlbV9jb250ZXh0X3NldF9jbG9zZWQoY3R4KTsNCj4gQEAgLTQwMCw2ICs0NzMsMTAg
QEAgc3RhdGljIHZvaWQgY29udGV4dF9jbG9zZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dA0KPiAq
Y3R4KQ0KPiAgCWx1dF9jbG9zZShjdHgpOw0KPiANCj4gIAltdXRleF91bmxvY2soJmN0eC0+bXV0
ZXgpOw0KPiArDQo+ICsJaWYgKCFpOTE1X2dlbV9jb250ZXh0X2lzX3BlcnNpc3RlbnQoY3R4KSkN
Cj4gKwkJa2lsbF9jb250ZXh0KGN0eCk7DQo+ICsNCj4gIAlpOTE1X2dlbV9jb250ZXh0X3B1dChj
dHgpOw0KPiAgfQ0KPiANCj4gQEAgLTQ0MCw2ICs1MTcsMjEgQEAgX19jcmVhdGVfY29udGV4dChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIAlpOTE1X2dlbV9jb250ZXh0X3NldF9i
YW5uYWJsZShjdHgpOw0KPiAgCWk5MTVfZ2VtX2NvbnRleHRfc2V0X3JlY292ZXJhYmxlKGN0eCk7
DQo+IA0KPiArCS8qDQo+ICsJICogSWYgdGhlIHVzZXIgaGFzIGRpc2FibGVkIGhhbmdjaGVja2lu
Zywgd2UgY2FuIG5vdCBiZSBzdXJlIHRoYXQNCj4gKwkgKiB0aGUgYmF0Y2hlcyB3aWxsIGV2ZXIg
Y29tcGxldGUgYWZ0ZXIgdGhlIGNvbnRleHQgaXMgY2xvc2VkLA0KPiArCSAqIGtlZXAgdGhlIGNv
bnRleHQgYW5kIGFsbCByZXNvdXJjZXMgcGlubmVkIGZvcmV2ZXIuIFNvIGluIHRoaXMNCj4gKwkg
KiBjYXNlIHdlIG9wdCB0byBmb3JjaWJseSBraWxsIG9mZiBhbGwgcmVtYWluaW5nIHJlcXVlc3Rz
IG9uDQo+ICsJICogY29udGV4dCBjbG9zZS4NCj4gKwkgKg0KPiArCSAqIE5vdGUgdGhhdCB0aGUg
dXNlciBtYXkgY2hhbmNlIHRoZSB2YWx1ZSBvZiB0aGUgbW9kcGFyYW0gYmV0d2Vlbg0KDQpzL2No
YW5jZS9jaGFuZ2UvDQoNCj4gKwkgKiBjb250ZXh0IGNyZWF0aW9uIGFuZCBjbG9zZSwgd2UgY2hv
b3NlIHRvIGlnbm9yZSB0aGlzIGZvciB0aGUNCj4gKwkgKiBzYWtlIG9mIGRldGVybWluaXNtIGFu
ZCBleHBlY3QgdGhlIHVzZXIgdG8gc2V0IHRoZSBwYXJhbWV0ZXINCj4gKwkgKiBvbiBtb2R1bGUg
bG9hZCBhbmQgbmV2ZXIgdG91Y2ggaXQgYWdhaW4uDQo+ICsJICovDQo+ICsJaWYgKGk5MTVfbW9k
cGFyYW1zLmVuYWJsZV9oYW5nY2hlY2spIC8qIGNncm91cCBob29rPyAqLw0KPiArCQlpOTE1X2dl
bV9jb250ZXh0X3NldF9wZXJzaXN0ZW5jZShjdHgpOw0KPiArDQo+ICAJZm9yIChpID0gMDsgaSA8
IEFSUkFZX1NJWkUoY3R4LT5oYW5nX3RpbWVzdGFtcCk7IGkrKykNCj4gIAkJY3R4LT5oYW5nX3Rp
bWVzdGFtcFtpXSA9IGppZmZpZXMgLQ0KPiBDT05URVhUX0ZBU1RfSEFOR19KSUZGSUVTOw0KPiAN
Cj4gQEAgLTU5OCw2ICs2OTAsNyBAQCBpOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9rZXJuZWwoc3Ry
dWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCBwcmlvKQ0KPiAgCX0NCj4gDQo+ICAJ
aTkxNV9nZW1fY29udGV4dF9jbGVhcl9iYW5uYWJsZShjdHgpOw0KPiArCWk5MTVfZ2VtX2NvbnRl
eHRfc2V0X3BlcnNpc3RlbmNlKGN0eCk7DQo+ICAJY3R4LT5zY2hlZC5wcmlvcml0eSA9IEk5MTVf
VVNFUl9QUklPUklUWShwcmlvKTsNCj4gDQo+ICAJR0VNX0JVR19PTighaTkxNV9nZW1fY29udGV4
dF9pc19rZXJuZWwoY3R4KSk7DQo+IEBAIC0xNzMwLDYgKzE4MjMsMjYgQEAgZ2V0X2VuZ2luZXMo
c3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwNCj4gIAlyZXR1cm4gZXJyOw0KPiAgfQ0KPiAN
Cj4gK3N0YXRpYyBpbnQNCj4gK3NldF9wZXJzaXN0ZW5jZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqY3R4LA0KPiArCQljb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfcGFyYW0gKmFy
Z3MpDQo+ICt7DQo+ICsJaWYgKGFyZ3MtPnNpemUpDQo+ICsJCXJldHVybiAtRUlOVkFMOw0KPiAr
DQo+ICsJaWYgKGFyZ3MtPnZhbHVlKSB7DQo+ICsJCWk5MTVfZ2VtX2NvbnRleHRfc2V0X3BlcnNp
c3RlbmNlKGN0eCk7DQo+ICsJCXJldHVybiAwOw0KPiArCX0NCj4gKw0KPiArCS8qIFRvIGNhbmNl
bCBhIGNvbnRleHQgd2UgdXNlICJwcmVlbXB0LXRvLWlkbGUiICovDQo+ICsJaWYgKCEoY3R4LT5p
OTE1LT5jYXBzLnNjaGVkdWxlciAmDQoNCldoeSBkbyB3ZSBuZWVkIHRvIGdpdmUgdXAgb24gb2xk
ZXIgZGV2aWNlcz8gSWYgeW91IGZhaWwgdG8gcHJlZW1wdCB5b3UgcmVzZXQgdGhlIGNvbnRleHQg
YW55d2F5LCBzbyBjYW4ndCB3ZSBqdXN0IHVzZSB0aGUgcmVzZXQgZmFsbGJhY2sgcGF0aD8NCg0K
PiBJOTE1X1NDSEVEVUxFUl9DQVBfUFJFRU1QVElPTikpDQo+ICsJCXJldHVybiAtRU5PREVWOw0K
PiArDQo+ICsJaTkxNV9nZW1fY29udGV4dF9jbGVhcl9wZXJzaXN0ZW5jZShjdHgpOw0KPiArCXJl
dHVybiAwOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgaW50IGN0eF9zZXRwYXJhbShzdHJ1Y3QgZHJt
X2k5MTVfZmlsZV9wcml2YXRlICpmcHJpdiwNCj4gIAkJCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0
ICpjdHgsDQo+ICAJCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfcGFyYW0gKmFyZ3MpDQo+
IEBAIC0xODA3LDYgKzE5MjAsMTAgQEAgc3RhdGljIGludCBjdHhfc2V0cGFyYW0oc3RydWN0DQo+
IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAqZnByaXYsDQo+ICAJCXJldCA9IHNldF9lbmdpbmVzKGN0
eCwgYXJncyk7DQo+ICAJCWJyZWFrOw0KPiANCj4gKwljYXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9Q
RVJTSVNURU5DRToNCj4gKwkJcmV0ID0gc2V0X3BlcnNpc3RlbmNlKGN0eCwgYXJncyk7DQo+ICsJ
CWJyZWFrOw0KPiArDQo+ICAJY2FzZSBJOTE1X0NPTlRFWFRfUEFSQU1fQkFOX1BFUklPRDoNCj4g
IAlkZWZhdWx0Og0KPiAgCQlyZXQgPSAtRUlOVkFMOw0KPiBAQCAtMjI1OCw2ICsyMzc1LDExIEBA
IGludCBpOTE1X2dlbV9jb250ZXh0X2dldHBhcmFtX2lvY3RsKHN0cnVjdA0KPiBkcm1fZGV2aWNl
ICpkZXYsIHZvaWQgKmRhdGEsDQo+ICAJCXJldCA9IGdldF9lbmdpbmVzKGN0eCwgYXJncyk7DQo+
ICAJCWJyZWFrOw0KPiANCj4gKwljYXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9QRVJTSVNURU5DRToN
Cj4gKwkJYXJncy0+c2l6ZSA9IDA7DQo+ICsJCWFyZ3MtPnZhbHVlID0gaTkxNV9nZW1fY29udGV4
dF9pc19wZXJzaXN0ZW50KGN0eCk7DQo+ICsJCWJyZWFrOw0KPiArDQo+ICAJY2FzZSBJOTE1X0NP
TlRFWFRfUEFSQU1fQkFOX1BFUklPRDoNCj4gIAlkZWZhdWx0Og0KPiAgCQlyZXQgPSAtRUlOVkFM
Ow0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmgNCj4g
aW5kZXggMTc2OTc4NjA4YjZmLi5lMGY1YjZjNmEzMzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaA0KPiBAQCAtNzQsNiArNzQsMjEgQEAgc3Rh
dGljIGlubGluZSB2b2lkDQo+IGk5MTVfZ2VtX2NvbnRleHRfY2xlYXJfcmVjb3ZlcmFibGUoc3Ry
dWN0IGk5MTVfZ2VtX2NvbnRleHQgKmMNCj4gIAljbGVhcl9iaXQoVUNPTlRFWFRfUkVDT1ZFUkFC
TEUsICZjdHgtPnVzZXJfZmxhZ3MpOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBp
OTE1X2dlbV9jb250ZXh0X2lzX3BlcnNpc3RlbnQoY29uc3Qgc3RydWN0DQo+IGk5MTVfZ2VtX2Nv
bnRleHQgKmN0eCkNCj4gK3sNCj4gKwlyZXR1cm4gdGVzdF9iaXQoVUNPTlRFWFRfUEVSU0lTVEVO
Q0UsICZjdHgtPnVzZXJfZmxhZ3MpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW5saW5lIHZvaWQg
aTkxNV9nZW1fY29udGV4dF9zZXRfcGVyc2lzdGVuY2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQN
Cj4gKmN0eCkNCj4gK3sNCj4gKwlzZXRfYml0KFVDT05URVhUX1BFUlNJU1RFTkNFLCAmY3R4LT51
c2VyX2ZsYWdzKTsNCj4gK30NCj4gKw0KPiArc3RhdGljIGlubGluZSB2b2lkIGk5MTVfZ2VtX2Nv
bnRleHRfY2xlYXJfcGVyc2lzdGVuY2Uoc3RydWN0DQo+IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkN
Cj4gK3sNCj4gKwljbGVhcl9iaXQoVUNPTlRFWFRfUEVSU0lTVEVOQ0UsICZjdHgtPnVzZXJfZmxh
Z3MpOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9nZW1fY29udGV4dF9p
c19iYW5uZWQoY29uc3Qgc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQNCj4gKmN0eCkNCj4gIHsNCj4g
IAlyZXR1cm4gdGVzdF9iaXQoQ09OVEVYVF9CQU5ORUQsICZjdHgtPmZsYWdzKTsNCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0X3R5cGVzLmgN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oDQo+
IGluZGV4IDI2MGQ1OWNjM2RlOC4uZGFmMWVhNTA3NWE2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0X3R5cGVzLmgNCj4gQEAgLTEzNyw2
ICsxMzcsNyBAQCBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCB7DQo+ICAjZGVmaW5lIFVDT05URVhU
X05PX0VSUk9SX0NBUFRVUkUJMQ0KPiAgI2RlZmluZSBVQ09OVEVYVF9CQU5OQUJMRQkJMg0KPiAg
I2RlZmluZSBVQ09OVEVYVF9SRUNPVkVSQUJMRQkJMw0KPiArI2RlZmluZSBVQ09OVEVYVF9QRVJT
SVNURU5DRQkJNA0KPiANCj4gIAkvKioNCj4gIAkgKiBAZmxhZ3M6IHNtYWxsIHNldCBvZiBib29s
ZWFucw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X2hlYXJ0YmVhdC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hl
YXJ0YmVhdC5jDQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAwMDAwMC4u
NDNkMTM3MGVhYTdmDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jDQo+IEBAIC0wLDAgKzEsNTQgQEANCj4gKy8q
DQo+ICsgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUDQo+ICsgKg0KPiArICogQ29weXJp
Z2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24NCj4gKyAqLw0KPiArDQo+ICsjaW5jbHVkZSAi
aTkxNV9yZXF1ZXN0LmgiDQo+ICsNCj4gKyNpbmNsdWRlICJpbnRlbF9jb250ZXh0LmgiDQo+ICsj
aW5jbHVkZSAiaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5oIg0KPiArI2luY2x1ZGUgImludGVsX2Vu
Z2luZV9wbS5oIg0KPiArI2luY2x1ZGUgImludGVsX2VuZ2luZS5oIg0KPiArI2luY2x1ZGUgImlu
dGVsX2d0LmgiDQo+ICsNCj4gK3N0YXRpYyB2b2lkIGlkbGVfcHVsc2Uoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkNCj4gK3sNCj4gKwllbmdp
bmUtPndha2VyZWZfc2VyaWFsID0gUkVBRF9PTkNFKGVuZ2luZS0+c2VyaWFsKSArIDE7DQo+ICsJ
aTkxNV9yZXF1ZXN0X2FkZF9hY3RpdmVfYmFycmllcnMocnEpOw0KPiArfQ0KPiArDQo+ICtpbnQg
aW50ZWxfZW5naW5lX3B1bHNlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkNCj4gK3sN
Cj4gKwlzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyIGF0dHIgPSB7IC5wcmlvcml0eSA9IEk5MTVfUFJJ
T1JJVFlfQkFSUklFUiB9Ow0KPiArCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9IGVuZ2luZS0+
a2VybmVsX2NvbnRleHQ7DQo+ICsJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7DQo+ICsJaW50IGVy
ciA9IDA7DQo+ICsNCj4gKwlpZiAoIWludGVsX2VuZ2luZV9oYXNfcHJlZW1wdGlvbihlbmdpbmUp
KQ0KPiArCQlyZXR1cm4gLUVOT0RFVjsNCj4gKw0KPiArCWlmICghaW50ZWxfZW5naW5lX3BtX2dl
dF9pZl9hd2FrZShlbmdpbmUpKQ0KPiArCQlyZXR1cm4gMDsNCj4gKw0KPiArCW11dGV4X2xvY2so
JmNlLT50aW1lbGluZS0+bXV0ZXgpOw0KPiArDQo+ICsJaW50ZWxfY29udGV4dF9lbnRlcihjZSk7
DQo+ICsJcnEgPSBfX2k5MTVfcmVxdWVzdF9jcmVhdGUoY2UsIEdGUF9OT1dBSVQgfCBfX0dGUF9O
T1dBUk4pOw0KPiArCWludGVsX2NvbnRleHRfZXhpdChjZSk7DQo+ICsJaWYgKElTX0VSUihycSkp
IHsNCj4gKwkJZXJyID0gUFRSX0VSUihycSk7DQo+ICsJCWdvdG8gb3V0X3VubG9jazsNCj4gKwl9
DQo+ICsNCj4gKwlycS0+ZmxhZ3MgfD0gSTkxNV9SRVFVRVNUX1NFTlRJTkVMOw0KPiArCWlkbGVf
cHVsc2UoZW5naW5lLCBycSk7DQo+ICsNCj4gKwlfX2k5MTVfcmVxdWVzdF9jb21taXQocnEpOw0K
PiArCV9faTkxNV9yZXF1ZXN0X3F1ZXVlKHJxLCAmYXR0cik7DQo+ICsNCj4gK291dF91bmxvY2s6
DQo+ICsJbXV0ZXhfdW5sb2NrKCZjZS0+dGltZWxpbmUtPm11dGV4KTsNCj4gKwlpbnRlbF9lbmdp
bmVfcG1fcHV0KGVuZ2luZSk7DQo+ICsJcmV0dXJuIGVycjsNCj4gK30NCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuaA0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuaA0KPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLmI5NTA0NTFiNTk5OA0KPiAtLS0g
L2Rldi9udWxsDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9o
ZWFydGJlYXQuaA0KPiBAQCAtMCwwICsxLDE0IEBADQo+ICsvKg0KPiArICogU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVA0KPiArICoNCj4gKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENv
cnBvcmF0aW9uDQo+ICsgKi8NCj4gKw0KPiArI2lmbmRlZiBJTlRFTF9FTkdJTkVfSEVBUlRCRUFU
X0gNCj4gKyNkZWZpbmUgSU5URUxfRU5HSU5FX0hFQVJUQkVBVF9IDQo+ICsNCj4gK3N0cnVjdCBp
bnRlbF9lbmdpbmVfY3M7DQo+ICsNCj4gK2ludCBpbnRlbF9lbmdpbmVfcHVsc2Uoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKTsNCj4gKw0KPiArI2VuZGlmIC8qIElOVEVMX0VOR0lORV9I
RUFSVEJFQVRfSCAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3BtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
cG0uYw0KPiBpbmRleCA0NzJiMjI1OWY2MjkuLjEyYTI2MDhhODg4OSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMNCj4gQEAgLTExMCw3ICsxMTAsNyBA
QCBzdGF0aWMgYm9vbCBzd2l0Y2hfdG9fa2VybmVsX2NvbnRleHQoc3RydWN0DQo+IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQ0KPiAgCWk5MTVfcmVxdWVzdF9hZGRfYWN0aXZlX2JhcnJpZXJzKHJx
KTsNCj4gDQo+ICAJLyogSW5zdGFsbCBvdXJzZWx2ZXMgYXMgYSBwcmVlbXB0aW9uIGJhcnJpZXIg
Ki8NCj4gLQlycS0+c2NoZWQuYXR0ci5wcmlvcml0eSA9IEk5MTVfUFJJT1JJVFlfVU5QUkVFTVBU
QUJMRTsNCj4gKwlycS0+c2NoZWQuYXR0ci5wcmlvcml0eSA9IEk5MTVfUFJJT1JJVFlfQkFSUklF
UjsNCj4gIAlfX2k5MTVfcmVxdWVzdF9jb21taXQocnEpOw0KPiANCj4gIAkvKiBSZWxlYXNlIG91
ciBleGNsdXNpdmUgaG9sZCBvbiB0aGUgZW5naW5lICovDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3ByaW9saXN0X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3ByaW9saXN0X3R5cGVzLmgNCj4gaW5kZXggMjEwMzdhMmUyMDM4Li5hZThiYjNj
YjYyN2UgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcHJpb2xpc3Rf
dHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ByaW9saXN0X3R5cGVz
LmgNCj4gQEAgLTM5LDYgKzM5LDcgQEAgZW51bSB7DQo+ICAgKiBhY3RpdmUgcmVxdWVzdC4NCj4g
ICAqLw0KPiAgI2RlZmluZSBJOTE1X1BSSU9SSVRZX1VOUFJFRU1QVEFCTEUgSU5UX01BWA0KPiAr
I2RlZmluZSBJOTE1X1BSSU9SSVRZX0JBUlJJRVIgSU5UX01BWA0KPiANCj4gICNkZWZpbmUgX19O
T19QUkVFTVBUSU9OIChJOTE1X1BSSU9SSVRZX1dBSVQpDQo+IA0KPiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS91YXBpL2RybS9pOTE1X2RybS5oIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oDQo+
IGluZGV4IDQ2OWRjNTEyY2NhMy4uZGJjODY5MWQ3NWQwIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRl
L3VhcGkvZHJtL2k5MTVfZHJtLmgNCj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5o
DQo+IEBAIC0xNTY1LDYgKzE1NjUsMjEgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3Bh
cmFtIHsNCj4gICAqICAgaTkxNV9jb250ZXh0X2VuZ2luZXNfYm9uZCAoSTkxNV9DT05URVhUX0VO
R0lORVNfRVhUX0JPTkQpDQo+ICAgKi8NCj4gICNkZWZpbmUgSTkxNV9DT05URVhUX1BBUkFNX0VO
R0lORVMJMHhhDQo+ICsNCj4gKy8qDQo+ICsgKiBJOTE1X0NPTlRFWFRfUEFSQU1fUEVSU0lTVEVO
Q0U6DQo+ICsgKg0KPiArICogQWxsb3cgdGhlIGNvbnRleHQgYW5kIGFjdGl2ZSByZW5kZXJpbmcg
dG8gc3Vydml2ZSB0aGUgcHJvY2VzcyB1bnRpbA0KPiArICogY29tcGxldGlvbi4gUGVyc2lzdGVu
Y2UgYWxsb3dzIGZpcmUtYW5kLWZvcmdldCBjbGllbnRzIHRvIHF1ZXVlIHVwIGENCj4gKyAqIGJ1
bmNoIG9mIHdvcmssIGhhbmQgdGhlIG91dHB1dCBvdmVyIHRvIGEgZGlzcGxheSBzZXJ2ZXIgYW5k
IHRoZSBxdWl0Lg0KPiArICogSWYgdGhlIGNvbnRleHQgaXMgbm90IG1hcmtlZCBhcyBwZXJzaXN0
ZW50LCB1cG9uIGNsb3NpbmcgKGVpdGhlciB2aWENCj4gKyAqIGFuIGV4cGxpY2l0IERSTV9JOTE1
X0dFTV9DT05URVhUX0RFU1RST1kgb3IgaW1wbGljaXRseSBmcm9tIGZpbGUNCj4gY2xvc3VyZQ0K
PiArICogb3IgcHJvY2VzcyB0ZXJtaW5hdGlvbiksIHRoZSBjb250ZXh0IGFuZCBhbnkgb3V0c3Rh
bmRpbmcgcmVxdWVzdHMgd2lsbCBiZQ0KPiArICogY2FuY2VsbGVkIChhbmQgZXhwb3J0ZWQgZmVu
Y2VzIGZvciBjYW5jZWxsZWQgcmVxdWVzdHMgbWFya2VkIGFzIC1FSU8pLg0KPiArICoNCj4gKyAq
IEJ5IGRlZmF1bHQsIG5ldyBjb250ZXh0cyBhbGxvdyBwZXJzaXN0ZW5jZS4NCj4gKyAqLw0KPiAr
I2RlZmluZSBJOTE1X0NPTlRFWFRfUEFSQU1fUEVSU0lTVEVOQ0UJMHhiDQo+ICAvKiBNdXN0IGJl
IGtlcHQgY29tcGFjdCAtLSBubyBob2xlcyBhbmQgd2VsbCBkb2N1bWVudGVkICovDQo+IA0KPiAg
CV9fdTY0IHZhbHVlOw0KPiAtLQ0KPiAyLjIzLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
