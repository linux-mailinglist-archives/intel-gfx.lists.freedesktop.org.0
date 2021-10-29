Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FEF44059E
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Oct 2021 00:55:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 798AC6EA8E;
	Fri, 29 Oct 2021 22:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92EC06EA8E
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 22:55:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="254355786"
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="254355786"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 15:55:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,194,1631602800"; d="scan'208";a="487747062"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga007.jf.intel.com with ESMTP; 29 Oct 2021 15:55:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 23:55:02 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 15:55:01 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/psr2: Do full fetches when doing
 async flips
Thread-Index: AQHXy2JsUvo0zFK/Z0CWP/vcGcJ2s6vo3ycAgAA8cQCAAAgpAIAAA1mA////BoCAACxEgIAApvyAgAEW/4A=
Date: Fri, 29 Oct 2021 22:55:01 +0000
Message-ID: <b18442edf3e49add5737a86773a2976911d6f61d.camel@intel.com>
References: <20211027184855.108731-1-jose.souza@intel.com>
 <YXqmfPPnSr3j/mDe@intel.com>
 <ff05e4fa04fe0ebcc79c9b86e249bd5ab5392529.camel@intel.com>
 <YXrgCBB53Zj86a4C@intel.com>
 <bfd7f8ca64b41e4c49d341a5cbcbe761dc471af6.camel@intel.com>
 <YXriBYJxFXJ0KUqn@intel.com>
 <d42046795c78321ab4aa11d634e040d0f36d9723.camel@intel.com>
 <YXuTO0b8GrnhTut7@intel.com>
In-Reply-To: <YXuTO0b8GrnhTut7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <29AA3147BB2DAA409CC9CE48F1CD5A26@intel.com>
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

T24gRnJpLCAyMDIxLTEwLTI5IGF0IDA5OjIyICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgT2N0IDI4LCAyMDIxIGF0IDA4OjE4OjQ4UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMS0xMC0yOCBhdCAyMDo0NiArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gVGh1LCBPY3QgMjgsIDIwMjEgYXQgMDU6NDM6NTFQTSAr
MDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiA+IE9uIFRodSwgMjAyMS0xMC0yOCBhdCAy
MDozOCArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiA+IE9uIFRodSwgT2N0
IDI4LCAyMDIxIGF0IDA1OjAyOjQxUE0gKzAwMDAsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+ID4g
PiA+ID4gT24gVGh1LCAyMDIxLTEwLTI4IGF0IDE2OjMyICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qg
d3JvdGU6DQo+ID4gPiA+ID4gPiA+IE9uIFdlZCwgT2N0IDI3LCAyMDIxIGF0IDExOjQ4OjU1QU0g
LTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6DQo+ID4gPiA+ID4gPiA+ID4gQXN5
bmMgZmxpcHMgYXJlIG5vdCBzdXBwb3J0ZWQgYnkgc2VsZWN0aXZlIGZldGNoIGFuZCB3ZSBoYWQg
YSBjaGVjaw0KPiA+ID4gPiA+ID4gPiA+IGZvciB0aGF0IGJ1dCB0aGF0IGNoZWNrIHdhcyBvbmx5
IGV4ZWN1dGVkIHdoZW4gZG9pbmcgbW9kZXNldHMuDQo+ID4gPiA+ID4gPiA+ID4gU28gbW92aW5n
IHRoaXMgY2hlY2sgdG8gdGhlIHBhZ2UgZmxpcCBwYXRoLCBzbyBpdCBjYW4gYmUgcHJvcGVybHkN
Cj4gPiA+ID4gPiA+ID4gPiBoYW5kbGVkLg0KPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4g
PiA+IFRoaXMgZml4IGEgZmFpbHVyZSBpbiBrbXNfYXN5bmNfZmxpcHNAdGVzdC1jdXJzb3IuDQo+
ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gPiA+ID4gQ2M6IEpvdW5pIEhvZ2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gPiA+
ID4gLS0tDQo+ID4gPiA+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgfCA4ICsrLS0tLS0tDQo+ID4gPiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+
ID4gPiA+ID4gaW5kZXggOGQwOGUzY2YwOGMxZi4uY2U2ODUwZWQ3MmM2MCAxMDA2NDQNCj4gPiA+
ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+ID4gPiA+ID4gPiA+IEBAIC03MjksMTIgKzcyOSw2IEBAIHN0YXRpYyBib29s
IGludGVsX3BzcjJfc2VsX2ZldGNoX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLA0KPiA+ID4gPiA+ID4gPiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPiA+ID4gPiA+ID4gPiAg
CX0NCj4gPiA+ID4gPiA+ID4gPiAgDQo+ID4gPiA+ID4gPiA+ID4gLQlpZiAoY3J0Y19zdGF0ZS0+
dWFwaS5hc3luY19mbGlwKSB7DQo+ID4gPiA+ID4gPiA+ID4gLQkJZHJtX2RiZ19rbXMoJmRldl9w
cml2LT5kcm0sDQo+ID4gPiA+ID4gPiA+ID4gLQkJCSAgICAiUFNSMiBzZWwgZmV0Y2ggbm90IGVu
YWJsZWQsIGFzeW5jIGZsaXAgZW5hYmxlZFxuIik7DQo+ID4gPiA+ID4gPiA+ID4gLQkJcmV0dXJu
IGZhbHNlOw0KPiA+ID4gPiA+ID4gPiA+IC0JfQ0KPiA+ID4gPiA+ID4gPiA+IC0NCj4gPiA+ID4g
PiA+ID4gPiAgCS8qIFdhXzE0MDEwMjU0MTg1IFdhXzE0MDEwMTAzNzkyICovDQo+ID4gPiA+ID4g
PiA+ID4gIAlpZiAoSVNfVEdMX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9D
MCkpIHsNCj4gPiA+ID4gPiA+ID4gPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4g
PiA+ID4gPiA+ID4gPiBAQCAtMTU5Miw2ICsxNTg2LDggQEAgc3RhdGljIGJvb2wgcHNyMl9zZWxf
ZmV0Y2hfcGlwZV9zdGF0ZV9zdXBwb3J0ZWQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmMNCj4gPiA+ID4gPiA+ID4gPiAgew0KPiA+ID4gPiA+ID4gPiA+ICAJaWYgKGNydGNfc3RhdGUt
PnNjYWxlcl9zdGF0ZS5zY2FsZXJfaWQgPj0gMCkNCj4gPiA+ID4gPiA+ID4gPiAgCQlyZXR1cm4g
ZmFsc2U7DQo+ID4gPiA+ID4gPiA+ID4gKwlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlw
KQ0KPiA+ID4gPiA+ID4gPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiA+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gPiA+IFRoaXMgbG9va3MgZG9kZ3kuIFByZXR0eSBzdXJlIHdlIGNhbid0IHR1cm4gb2Zm
IHRoaXMgdGhpbmcgZHVyaW5nDQo+ID4gPiA+ID4gPiA+IGFuIGFzeW5jIGZsaXAuIFNvIEkgdGhp
bmsgdGhlIGNvcnJlY3Qgc2hvcnQgdGVybSBmaXggaXMgdG8gbm90IGRvDQo+ID4gPiA+ID4gPiA+
IGFzeW5jIGZsaXBzIHdpdGggcHNyMiBlbmFibGVkLiBUaGUgbG9uZ2VyIHRlcm0gZml4IHdvdWxk
IGludm9sdmUNCj4gPiA+ID4gPiA+ID4gdXNpbmcgdGhlIHNhbWUgYXBwcm9hY2ggU3RhbiBpcyBw
cmVwYXJpbmcgZm9yIHRoZSBhc3luYyBmbGlwDQo+ID4gPiA+ID4gPiA+IHdhdGVybWFyayB0d2Vh
a2luZywgd2hpY2ggaXMgdG8gY29udmVydCB0aGUgZmlyc3QgYXN5bmMgZmxpcCBpbnRvDQo+ID4g
PiA+ID4gPiA+IGEgc3luYyBmbGlwLg0KPiA+IA0KPiA+IFlvdSBtZWFuIGRvIHNvbWV0aGluZyBs
aWtlIHRoaXM/DQo+ID4gDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBpbmRleCAzYjVhOGU5NzEzNDNmLi43ZDI5ZjhjOWRlMGRh
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gPiBAQCAtNzcxMCw3ICs3NzEwLDggQEAgc3RhdGljIHZvaWQga2lsbF9iaWdqb2lu
ZXJfc2xhdmUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gIHN0YXRpYyBp
bnQgaW50ZWxfYXRvbWljX2NoZWNrX2FzeW5jKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gPiAgew0KPiA+ICAgICAgICAgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7DQo+ID4g
LSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsICpu
ZXdfY3J0Y19zdGF0ZTsNCj4gPiArICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpvbGRfY3J0Y19zdGF0ZTsNCj4gPiArICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpu
ZXdfY3J0Y19zdGF0ZTsNCj4gPiAgICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqbmV3X3BsYW5lX3N0YXRlLCAqb2xkX3BsYW5lX3N0YXRlOw0KPiA+ICAgICAgICAgc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZTsNCj4gPiAgICAgICAgIGludCBpOw0KPiA+IEBAIC03NzE4LDYg
Kzc3MTksMTIgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2tfYXN5bmMoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsIHN0cnVjdCBpbnQNCj4gPiAgICAgICAgIG9sZF9jcnRj
X3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+
ID4gICAgICAgICBuZXdfY3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3Rh
dGUoc3RhdGUsIGNydGMpOw0KPiA+IA0KPiA+ICsgICAgICAgaWYgKG5ld19jcnRjX3N0YXRlLT5l
bmFibGVfcHNyMl9zZWxfZmV0Y2gpIHsNCj4gPiArICAgICAgICAgICAgICAgZHJtX2RiZ19rbXMo
Jmk5MTUtPmRybSwgIlBTUjIgc2VsZWN0aXZlIGZldGNoIG5vdCBjb21wYXRpYmxlIHdpdGggYXN5
bmMgZmxpcCwgZG9pbmcgYSBzeW5jIGZsaXAgaW5zdGVhZFxuIik7DQo+ID4gKyAgICAgICAgICAg
ICAgIG5ld19jcnRjX3N0YXRlLT51YXBpLmFzeW5jX2ZsaXAgPSBmYWxzZTsNCj4gPiArICAgICAg
ICAgICAgICAgcmV0dXJuIDA7DQo+ID4gKyAgICAgICB9DQo+IA0KPiBJdCBzaG91bGQganVzdCBy
ZXR1cm4gLUVJTlZBTCBoZXJlLiBBbmQgSSdkIHB1dCB0aGUgc29tZXdoZXJlIGFmdGVyIHRoZQ0K
PiBuZWVkc19tb2Rlc2V0L2h3LmFjdGl2ZSBjaGVja3MgdG8ga2VlcCB0aGluZ3MgaW4gc29tZSBr
aW5kIG9mDQo+IHJlYXNvbmFibGUgb3JkZXIuDQoNCk9rYXksIGVhc3kgZG8gdGhhdCBidXQgdGhh
dCB3b3VsZCBub3QgY2F1c2UgYW55IGlzc3VlcyBmb3IgZGVza3RvcCBlbnZpcm9ubWVudHM/DQpX
ZSBhZHZlcnRpc2UgYXN5bmMgZmxpcCBjYXBhYmlsaXR5IGJ1dCBzdGF0ZSB3aWxsIGFsd2F5cyBi
ZSByZWplY3RlZCB3aGVuIFBTUjIgaXMgZW5hYmxlZC4NCg0KV2lsbCBhbHNvIG5lZWQgdG8gc3dp
dGNoIHRvIFBTUjEgb3Igc2tpcCBhbGwga21zX2FzeW5jX2ZsaXAgdGVzdHMgd2hlbiBQU1IyIHNl
bGVjdGl2ZSBmZXRjaCBpcyBlbmFibGVkLg0KDQo+IA0KDQo=
