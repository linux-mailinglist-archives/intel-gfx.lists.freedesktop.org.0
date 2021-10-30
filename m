Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2113E440659
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Oct 2021 02:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29B176EA97;
	Sat, 30 Oct 2021 00:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028CA6EA97
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Oct 2021 00:15:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="230727972"
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="230727972"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 17:15:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="448558258"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga003.jf.intel.com with ESMTP; 29 Oct 2021 17:15:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sat, 30 Oct 2021 01:15:51 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 17:15:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/psr2: Do full fetches when doing
 async flips
Thread-Index: AQHXy2JsUvo0zFK/Z0CWP/vcGcJ2s6vo3ycAgAA8cQCAAAgpAIAAA1mA////BoCAACxEgIAApvyAgAEW/4CAABaVAA==
Date: Sat, 30 Oct 2021 00:15:50 +0000
Message-ID: <37a2279294bedecfe176825faa99488063a10f60.camel@intel.com>
References: <20211027184855.108731-1-jose.souza@intel.com>
 <YXqmfPPnSr3j/mDe@intel.com>
 <ff05e4fa04fe0ebcc79c9b86e249bd5ab5392529.camel@intel.com>
 <YXrgCBB53Zj86a4C@intel.com>
 <bfd7f8ca64b41e4c49d341a5cbcbe761dc471af6.camel@intel.com>
 <YXriBYJxFXJ0KUqn@intel.com>
 <d42046795c78321ab4aa11d634e040d0f36d9723.camel@intel.com>
 <YXuTO0b8GrnhTut7@intel.com>
 <b18442edf3e49add5737a86773a2976911d6f61d.camel@intel.com>
In-Reply-To: <b18442edf3e49add5737a86773a2976911d6f61d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <09B0BB2B40888C47AAFB1E40B3969FA7@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr2: Do full fetches when doing
 async flips
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTEwLTI5IGF0IDIyOjU1ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDIxLTEwLTI5IGF0IDA5OjIyICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+ID4gT24gVGh1LCBPY3QgMjgsIDIwMjEgYXQgMDg6MTg6NDhQTSArMDAwMCwgU291emEsIEpv
c2Ugd3JvdGU6DQo+ID4gPiBPbiBUaHUsIDIwMjEtMTAtMjggYXQgMjA6NDYgKzAzMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+ID4gT24gVGh1LCBPY3QgMjgsIDIwMjEgYXQgMDU6NDM6
NTFQTSArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiA+ID4gT24gVGh1LCAyMDIxLTEw
LTI4IGF0IDIwOjM4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gPiA+ID4gPiBP
biBUaHUsIE9jdCAyOCwgMjAyMSBhdCAwNTowMjo0MVBNICswMDAwLCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiA+ID4gPiA+ID4gT24gVGh1LCAyMDIxLTEwLTI4IGF0IDE2OjMyICswMzAwLCBWaWxs
ZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gT24gV2VkLCBPY3QgMjcsIDIwMjEg
YXQgMTE6NDg6NTVBTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+
ID4gPiA+ID4gPiA+IEFzeW5jIGZsaXBzIGFyZSBub3Qgc3VwcG9ydGVkIGJ5IHNlbGVjdGl2ZSBm
ZXRjaCBhbmQgd2UgaGFkIGEgY2hlY2sNCj4gPiA+ID4gPiA+ID4gPiA+IGZvciB0aGF0IGJ1dCB0
aGF0IGNoZWNrIHdhcyBvbmx5IGV4ZWN1dGVkIHdoZW4gZG9pbmcgbW9kZXNldHMuDQo+ID4gPiA+
ID4gPiA+ID4gPiBTbyBtb3ZpbmcgdGhpcyBjaGVjayB0byB0aGUgcGFnZSBmbGlwIHBhdGgsIHNv
IGl0IGNhbiBiZSBwcm9wZXJseQ0KPiA+ID4gPiA+ID4gPiA+ID4gaGFuZGxlZC4NCj4gPiA+ID4g
PiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+ID4gVGhpcyBmaXggYSBmYWlsdXJlIGluIGttc19h
c3luY19mbGlwc0B0ZXN0LWN1cnNvci4NCj4gPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4g
PiA+ID4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiA+ID4g
PiA+ID4gPiBDYzogSm91bmkgSG9nYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
PiA+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gPiA+
ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDggKystLS0t
LS0NCj4gPiA+ID4gPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiA+ID4gPiA+IGlu
ZGV4IDhkMDhlM2NmMDhjMWYuLmNlNjg1MGVkNzJjNjAgMTAwNjQ0DQo+ID4gPiA+ID4gPiA+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+
ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gPiA+ID4gPiA+ID4gPiBAQCAtNzI5LDEyICs3MjksNiBAQCBzdGF0aWMgYm9vbCBpbnRl
bF9wc3IyX3NlbF9mZXRjaF9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gPiA+ID4gPiA+ID4gPiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPiA+ID4gPiA+ID4gPiA+ICAJ
fQ0KPiA+ID4gPiA+ID4gPiA+ID4gIA0KPiA+ID4gPiA+ID4gPiA+ID4gLQlpZiAoY3J0Y19zdGF0
ZS0+dWFwaS5hc3luY19mbGlwKSB7DQo+ID4gPiA+ID4gPiA+ID4gPiAtCQlkcm1fZGJnX2ttcygm
ZGV2X3ByaXYtPmRybSwNCj4gPiA+ID4gPiA+ID4gPiA+IC0JCQkgICAgIlBTUjIgc2VsIGZldGNo
IG5vdCBlbmFibGVkLCBhc3luYyBmbGlwIGVuYWJsZWRcbiIpOw0KPiA+ID4gPiA+ID4gPiA+ID4g
LQkJcmV0dXJuIGZhbHNlOw0KPiA+ID4gPiA+ID4gPiA+ID4gLQl9DQo+ID4gPiA+ID4gPiA+ID4g
PiAtDQo+ID4gPiA+ID4gPiA+ID4gPiAgCS8qIFdhXzE0MDEwMjU0MTg1IFdhXzE0MDEwMTAzNzky
ICovDQo+ID4gPiA+ID4gPiA+ID4gPiAgCWlmIChJU19UR0xfRElTUExBWV9TVEVQKGRldl9wcml2
LCBTVEVQX0EwLCBTVEVQX0MwKSkgew0KPiA+ID4gPiA+ID4gPiA+ID4gIAkJZHJtX2RiZ19rbXMo
JmRldl9wcml2LT5kcm0sDQo+ID4gPiA+ID4gPiA+ID4gPiBAQCAtMTU5Miw2ICsxNTg2LDggQEAg
c3RhdGljIGJvb2wgcHNyMl9zZWxfZmV0Y2hfcGlwZV9zdGF0ZV9zdXBwb3J0ZWQoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmMNCj4gPiA+ID4gPiA+ID4gPiA+ICB7DQo+ID4gPiA+ID4g
PiA+ID4gPiAgCWlmIChjcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGUuc2NhbGVyX2lkID49IDApDQo+
ID4gPiA+ID4gPiA+ID4gPiAgCQlyZXR1cm4gZmFsc2U7DQo+ID4gPiA+ID4gPiA+ID4gPiArCWlm
IChjcnRjX3N0YXRlLT51YXBpLmFzeW5jX2ZsaXApDQo+ID4gPiA+ID4gPiA+ID4gPiArCQlyZXR1
cm4gZmFsc2U7DQo+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gVGhpcyBsb29rcyBk
b2RneS4gUHJldHR5IHN1cmUgd2UgY2FuJ3QgdHVybiBvZmYgdGhpcyB0aGluZyBkdXJpbmcNCj4g
PiA+ID4gPiA+ID4gPiBhbiBhc3luYyBmbGlwLiBTbyBJIHRoaW5rIHRoZSBjb3JyZWN0IHNob3J0
IHRlcm0gZml4IGlzIHRvIG5vdCBkbw0KPiA+ID4gPiA+ID4gPiA+IGFzeW5jIGZsaXBzIHdpdGgg
cHNyMiBlbmFibGVkLiBUaGUgbG9uZ2VyIHRlcm0gZml4IHdvdWxkIGludm9sdmUNCj4gPiA+ID4g
PiA+ID4gPiB1c2luZyB0aGUgc2FtZSBhcHByb2FjaCBTdGFuIGlzIHByZXBhcmluZyBmb3IgdGhl
IGFzeW5jIGZsaXANCj4gPiA+ID4gPiA+ID4gPiB3YXRlcm1hcmsgdHdlYWtpbmcsIHdoaWNoIGlz
IHRvIGNvbnZlcnQgdGhlIGZpcnN0IGFzeW5jIGZsaXAgaW50bw0KPiA+ID4gPiA+ID4gPiA+IGEg
c3luYyBmbGlwLg0KPiA+ID4gDQo+ID4gPiBZb3UgbWVhbiBkbyBzb21ldGhpbmcgbGlrZSB0aGlz
Pw0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+ID4gPiBpbmRleCAzYjVhOGU5NzEzNDNmLi43ZDI5ZjhjOWRlMGRh
IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+ID4gPiBAQCAtNzcxMCw3ICs3NzEwLDggQEAgc3RhdGljIHZvaWQga2lsbF9i
aWdqb2luZXJfc2xhdmUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gPiAg
c3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2tfYXN5bmMoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+ID4gIHsNCj4gPiA+ICAg
ICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHN0YXRlLT5iYXNl
LmRldik7DQo+ID4gPiAtICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRf
Y3J0Y19zdGF0ZSwgKm5ld19jcnRjX3N0YXRlOw0KPiA+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGU7DQo+ID4gPiArICAgICAgIHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsNCj4gPiA+ICAgICAgICAgY29uc3Qgc3Ry
dWN0IGludGVsX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVfc3RhdGUsICpvbGRfcGxhbmVfc3RhdGU7
DQo+ID4gPiAgICAgICAgIHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7DQo+ID4gPiAgICAgICAg
IGludCBpOw0KPiA+ID4gQEAgLTc3MTgsNiArNzcxOSwxMiBAQCBzdGF0aWMgaW50IGludGVsX2F0
b21pY19jaGVja19hc3luYyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwgc3RydWN0
IGludA0KPiA+ID4gICAgICAgICBvbGRfY3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfb2xk
X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+ID4gICAgICAgICBuZXdfY3J0Y19zdGF0ZSA9
IGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+ID4gDQo+
ID4gPiArICAgICAgIGlmIChuZXdfY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoKSB7
DQo+ID4gPiArICAgICAgICAgICAgICAgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIlBTUjIgc2Vs
ZWN0aXZlIGZldGNoIG5vdCBjb21wYXRpYmxlIHdpdGggYXN5bmMgZmxpcCwgZG9pbmcgYSBzeW5j
IGZsaXAgaW5zdGVhZFxuIik7DQo+ID4gPiArICAgICAgICAgICAgICAgbmV3X2NydGNfc3RhdGUt
PnVhcGkuYXN5bmNfZmxpcCA9IGZhbHNlOw0KPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybiAw
Ow0KPiA+ID4gKyAgICAgICB9DQo+ID4gDQo+ID4gSXQgc2hvdWxkIGp1c3QgcmV0dXJuIC1FSU5W
QUwgaGVyZS4gQW5kIEknZCBwdXQgdGhlIHNvbWV3aGVyZSBhZnRlciB0aGUNCj4gPiBuZWVkc19t
b2Rlc2V0L2h3LmFjdGl2ZSBjaGVja3MgdG8ga2VlcCB0aGluZ3MgaW4gc29tZSBraW5kIG9mDQo+
ID4gcmVhc29uYWJsZSBvcmRlci4NCj4gDQo+IE9rYXksIGVhc3kgZG8gdGhhdCBidXQgdGhhdCB3
b3VsZCBub3QgY2F1c2UgYW55IGlzc3VlcyBmb3IgZGVza3RvcCBlbnZpcm9ubWVudHM/DQo+IFdl
IGFkdmVydGlzZSBhc3luYyBmbGlwIGNhcGFiaWxpdHkgYnV0IHN0YXRlIHdpbGwgYWx3YXlzIGJl
IHJlamVjdGVkIHdoZW4gUFNSMiBpcyBlbmFibGVkLg0KPiANCj4gV2lsbCBhbHNvIG5lZWQgdG8g
c3dpdGNoIHRvIFBTUjEgb3Igc2tpcCBhbGwga21zX2FzeW5jX2ZsaXAgdGVzdHMgd2hlbiBQU1Iy
IHNlbGVjdGl2ZSBmZXRjaCBpcyBlbmFibGVkLg0KDQpQbGVhc2UgZGlzcmVnYXJkIHRoZSBhYm92
ZSBjb21tZW50IGFuZCB0aGlzIHdob2xlIHBhdGNoLg0KRGlkIG1vcmUgZGVidWcgYW5kIGZvdW5k
IGJldHRlciB3YXlzIHRvIHNvbHZlIGFsbCBhc3luYyBmbGlwICsgUFNSIHByb2JsZW1zLg0KDQoN
CklHVCBwYXRjaGVzIHdpbGwgY2hhbmdlIHRoZSBmYWlsdXJlIHRvIHNraXAgYXMgd2UgZG9uJ3Qg
aGF2ZSBhIHdheSBhcm91bmQgaXQ6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvOTY0MzkvDQpLZXJuZWwgcGF0Y2ggZml4aW5nIHBvc3NpYmxlIGNvcnJ1cHRpb25zIHdp
dGggYXN5bmMgZmxpcDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85
NjQ0MC8NCg0KDQo+IA0KPiA+IA0KPiANCg0K
