Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AF83DD0C9
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 08:51:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2423A6E03D;
	Mon,  2 Aug 2021 06:51:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB96D6E18F
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 06:51:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10063"; a="274464290"
X-IronPort-AV: E=Sophos;i="5.84,288,1620716400"; d="scan'208";a="274464290"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2021 23:51:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,288,1620716400"; d="scan'208";a="419204837"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 01 Aug 2021 23:51:15 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Sun, 1 Aug 2021 23:51:14 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 2 Aug 2021 12:21:12 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Mon, 2 Aug 2021 12:21:12 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Kai
 Vehmanen" <kai.vehmanen@linux.intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>
Thread-Topic: [PATCH v3 1/1] drm/i915/dg1: Adjust the AUDIO power domain
Thread-Index: AQHXhHZjcp6RwWfktkCduuJluDmbhKtfyymA
Date: Mon, 2 Aug 2021 06:51:12 +0000
Message-ID: <7a304277a022456c846ad25e560a19b8@intel.com>
References: <20210729121858.16897-1-anshuman.gupta@intel.com>
 <20210729121858.16897-2-anshuman.gupta@intel.com>
In-Reply-To: <20210729121858.16897-2-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 1/1] drm/i915/dg1: Adjust the AUDIO power
 domain
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR3VwdGEsIEFuc2h1bWFu
IDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDI5LCAy
MDIxIDU6NDkgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+OyBHdXB0YSwgQW5zaHVtYW4NCj4gPGFu
c2h1bWFuLmd1cHRhQGludGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+OyBLYWkNCj4gVmVobWFuZW4gPGthaS52ZWhtYW5lbkBsaW51eC5pbnRl
bC5jb20+OyBTaGFua2FyLCBVbWENCj4gPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIHYzIDEvMV0gZHJtL2k5MTUvZGcxOiBBZGp1c3QgdGhlIEFVRElPIHBvd2VyIGRv
bWFpbg0KPiANCj4gREcxIGFuZCBYRV9QTEQgcGxhdGZvcm1zIGhhcyBBdWRpbyBNTUlPL1ZFUkJT
IGxpZXMgaW4gUEcwIHBvd2VyIHdlbGwuDQo+IEFkanVzdGluZyB0aGUgcG93ZXIgZG9tYWluIGFj
Y29yZGluZ2x5IHRvIFBPV0VSX0RPTUFJTl9BVURJT19WRVJCUyBmb3INCj4gYXVkaW8gZGV0ZWN0
aW9uIGFuZCBQT1dFUl9ET01BSU5fQVVESU8gZm9yIGF1ZGlvIHBsYXliYWNrLg0KPiANCj4gV2hp
bGUgZG9pbmcgdGhpcyBpdCByZXF1aXJlcyB0byB1c2UgUE9XRVJfRE9NQUlOX0FVRElPX01NSU8g
cG93ZXINCj4gZG9tYWluIGluc3RlYWQgb2YgUE9XRVJfRE9NQUlOX0FVRElPIGluIGNydGMgcG93
ZXIgZG9tYWluIG1hc2sgYW5kDQo+IFBPV0VSX0RPTUFJTl9BVURJT19QTEFZQkFDSyB3aXRoIGlu
dGVsX2Rpc3BsYXlfcG93ZXJfe2dldCwgcHV0fSB0bw0KPiBlbmFibGUvZGlzYWJsZSBkaXNwbGF5
IGF1ZGlvIGNvZGVjIHBvd2VyLg0KPiANCj4gSXQgd2lsbCBzYXZlIHRoZSBwb3dlciBpbiB1c2Ug
Y2FzZXMgd2hlbiBEUC9IRE1JIGNvbm5lY3RvcnMgY29uZmlndXJlZCB3aXRoDQo+IFBJUEVfQSB3
aXRob3V0IGFueSBhdWRpbyBwbGF5YmFjay4NCj4gDQo+IHYxOiBDaGFuZ2VzIHNpbmNlIFJGQw0K
PiAtIGNoYW5nZWQgcG93ZXIgZG9tYWluIG5hbWVzLiBbSW1yZV0NCj4gLSBSZW1vdmVkIFRDezMs
Nn0sIEFVWF9VU0JDezMsNn0gYW5kIFRCVCBmcm9tIERHMQ0KPiAgIHBvd2VyIHdlbGwgYW5kIFBX
XzMgcG93ZXIgZG9tYWlucy4gW0ltcmVdDQo+IC0gRml4ZWQgdGhlIG9yZGVyIG9mIHBvd2Ugd2Vs
bHMgLCBwb3dlciBkb21haW5zIGFuZCBpdHMNCj4gICByZWdpc3RyYXRpb24uIFtJbXJlXQ0KPiAN
Cj4gdjI6DQo+IC0gTm90IGFsbG93ZSBEQyBzdGF0ZXMgd2hlbiBBVURJT19NTUlPIGRvbWFpbiBl
bmFibGVkLiBbSW1yZV0NCj4gDQo+IHYzOg0KPiAtIFNxdWFzaGVzIHRoZSBjb21taXRzIG9mIHNl
cmllcyB0byBhdm9pZCBidWlsZCBmYWlsdXJlLg0KSGkgSW1yZSAsDQpBZnRlciBjaGFuZ2luZyB0
aGUgUE9XRVJfRE9NQUlOX0FVRElPIHRvIFBPV0VSX0RPTUFJTl9BVURJT19QTEFZQkFDSw0KSXQg
cmVxdWlyZWQgdG8gc3F1YXNoZXMgcGF0Y2hlcyBvZiBzZXJpZXMgdG8gYSBzaW5nbGUgcGF0Y2gg
dG8gYXZvaWQgYW55IGJ1aWxkIGZhaWx1cmVzDQpEdXJpbmcgYmlzZWN0LiBBcyBlYXJsaWVyIHUg
aGF2ZSBwcm92aWRlZCB5b3VyIFJCIG9uIHBhdGNoIHNldCwgDQpJcyBpdCBvayB0byBtZXJnZSB0
aGUgcGF0Y2ggaW4gY3VycmVudCBmb3JtPw0KVGhhbmtzLA0KQW5zaHVtYW4gR3VwdGEgIA0KPiAN
Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IENjOiBLYWkgVmVobWFuZW4gPGthaS52ZWhtYW5lbkBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBV
bWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBDYzogSW1yZSBEZWFrIDxpbXJl
LmRlYWtAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFA
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXVkaW8uYyAgICB8ICAgNCArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyAgICAgIHwgICAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyAgfCAgIDIgKy0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuYyAgICB8IDIzNCArKysrKysrKysrKysrKysrLS0NCj4gIC4uLi9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCAgICB8ICAgMyArLQ0KPiAgNSBmaWxlcyBj
aGFuZ2VkLCAyMjUgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jDQo+IGluZGV4IDVmNGYzMTZi
M2FiNS4uNTMyMjM3NTg4NTExIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F1ZGlvLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdWRpby5jDQo+IEBAIC0xMDAxLDcgKzEwMDEsNyBAQCBzdGF0aWMgdW5zaWduZWQg
bG9uZw0KPiBpOTE1X2F1ZGlvX2NvbXBvbmVudF9nZXRfcG93ZXIoc3RydWN0IGRldmljZSAqa2Rl
dikNCj4gIAkvKiBDYXRjaCBwb3RlbnRpYWwgaW1wZWRhbmNlIG1pc21hdGNoZXMgYmVmb3JlIHRo
ZXkgb2NjdXIhICovDQo+ICAJQlVJTERfQlVHX09OKHNpemVvZihpbnRlbF93YWtlcmVmX3QpID4g
c2l6ZW9mKHVuc2lnbmVkIGxvbmcpKTsNCj4gDQo+IC0JcmV0ID0gaW50ZWxfZGlzcGxheV9wb3dl
cl9nZXQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9BVURJTyk7DQo+ICsJcmV0ID0gaW50ZWxfZGlz
cGxheV9wb3dlcl9nZXQoZGV2X3ByaXYsDQo+IFBPV0VSX0RPTUFJTl9BVURJT19QTEFZQkFDSyk7
DQo+IA0KPiAgCWlmIChkZXZfcHJpdi0+YXVkaW9fcG93ZXJfcmVmY291bnQrKyA9PSAwKSB7DQo+
ICAJCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gOSkgew0KPiBAQCAtMTAzNCw3ICsxMDM0
LDcgQEAgc3RhdGljIHZvaWQgaTkxNV9hdWRpb19jb21wb25lbnRfcHV0X3Bvd2VyKHN0cnVjdA0K
PiBkZXZpY2UgKmtkZXYsDQo+ICAJCWlmIChJU19HRU1JTklMQUtFKGRldl9wcml2KSkNCj4gIAkJ
CWdsa19mb3JjZV9hdWRpb19jZGNsayhkZXZfcHJpdiwgZmFsc2UpOw0KPiANCj4gLQlpbnRlbF9k
aXNwbGF5X3Bvd2VyX3B1dChkZXZfcHJpdiwgUE9XRVJfRE9NQUlOX0FVRElPLCBjb29raWUpOw0K
PiArCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9wcml2LA0KPiBQT1dFUl9ET01BSU5fQVVE
SU9fUExBWUJBQ0ssDQo+ICtjb29raWUpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIGk5MTVf
YXVkaW9fY29tcG9uZW50X2NvZGVjX3dha2Vfb3ZlcnJpZGUoc3RydWN0IGRldmljZSAqa2RldiwN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IDA2
MWE2NjNmNDNiOC4uYWYwY2VmYjZiMzExIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTM0NjMsNyArMzQ2Myw3IEBAIHN0YXRpYyBib29sIGlu
dGVsX2RkaV9pc19hdWRpb19lbmFibGVkKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwNCj4gIAlpZiAoY3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9FRFApDQo+ICAJCXJl
dHVybiBmYWxzZTsNCj4gDQo+IC0JaWYgKCFpbnRlbF9kaXNwbGF5X3Bvd2VyX2lzX2VuYWJsZWQo
ZGV2X3ByaXYsDQo+IFBPV0VSX0RPTUFJTl9BVURJTykpDQo+ICsJaWYgKCFpbnRlbF9kaXNwbGF5
X3Bvd2VyX2lzX2VuYWJsZWQoZGV2X3ByaXYsDQo+ICtQT1dFUl9ET01BSU5fQVVESU9fTU1JTykp
DQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+ICAJcmV0dXJuIGludGVsX2RlX3JlYWQoZGV2X3By
aXYsIEhTV19BVURfUElOX0VMRF9DUF9WTEQpICYgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggOTdhMjE2ZWRmNjAwLi5jYWZkN2E5
NWQ5ZDcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+IEBAIC0zOTMzLDcgKzM5MzMsNyBAQCBzdGF0aWMgdTY0IGdldF9jcnRjX3Bvd2Vy
X2RvbWFpbnMoc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJfQ0K
PiANCj4gIAlpZiAoSEFTX0RESShkZXZfcHJpdikgJiYgY3J0Y19zdGF0ZS0+aGFzX2F1ZGlvKQ0K
PiAtCQltYXNrIHw9IEJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVRElPKTsNCj4gKwkJbWFzayB8PSBC
SVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJT19NTUlPKTsNCj4gDQo+ICAJaWYgKGNydGNfc3RhdGUt
PnNoYXJlZF9kcGxsKQ0KPiAgCQltYXNrIHw9IEJJVF9VTEwoUE9XRVJfRE9NQUlOX0RJU1BMQVlf
Q09SRSk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jDQo+IGluZGV4IDgxZWZjNzdiYWRhMC4uMjY3NWI0OGQ3MDdlIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYw0KPiBAQCAtMTA2LDggKzEwNiwxMCBAQCBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFp
bl9zdHIoZW51bQ0KPiBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW4pDQo+ICAJCXJl
dHVybiAiUE9SVF9PVEhFUiI7DQo+ICAJY2FzZSBQT1dFUl9ET01BSU5fVkdBOg0KPiAgCQlyZXR1
cm4gIlZHQSI7DQo+IC0JY2FzZSBQT1dFUl9ET01BSU5fQVVESU86DQo+IC0JCXJldHVybiAiQVVE
SU8iOw0KPiArCWNhc2UgUE9XRVJfRE9NQUlOX0FVRElPX01NSU86DQo+ICsJCXJldHVybiAiQVVE
SU9fTU1JTyI7DQo+ICsJY2FzZSBQT1dFUl9ET01BSU5fQVVESU9fUExBWUJBQ0s6DQo+ICsJCXJl
dHVybiAiQVVESU9fUExBWUJBSyI7DQo+ICAJY2FzZSBQT1dFUl9ET01BSU5fQVVYX0E6DQo+ICAJ
CXJldHVybiAiQVVYX0EiOw0KPiAgCWNhc2UgUE9XRVJfRE9NQUlOX0FVWF9COg0KPiBAQCAtMjUx
OSw3ICsyNTIxLDggQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfbWFza19pbl9zZXQoc3RydWN0
DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9S
VF9EU0kpIHwJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0NSVCkgfAkJXA0KPiAg
CUJJVF9VTEwoUE9XRVJfRE9NQUlOX1ZHQSkgfAkJCVwNCj4gLQlCSVRfVUxMKFBPV0VSX0RPTUFJ
Tl9BVURJTykgfAkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVRElPX01NSU8pIHwJCVwN
Cj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJT19QTEFZQkFDSykgfAkJXA0KPiAgCUJJVF9V
TEwoUE9XRVJfRE9NQUlOX0FVWF9CKSB8CQlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fQVVY
X0MpIHwJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9HTUJVUykgfAkJXA0KPiBAQCAtMjU2
OSw3ICsyNTcyLDggQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfbWFza19pbl9zZXQoc3RydWN0
DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9S
VF9ERElfRF9MQU5FUykgfAlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9EU0kpIHwJ
CVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9WR0EpIHwJCQlcDQo+IC0JQklUX1VMTChQT1dF
Ul9ET01BSU5fQVVESU8pIHwJCVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJT19NTUlP
KSB8CQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVESU9fUExBWUJBQ0spIHwJCVwNCj4g
IAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQikgfAkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX0FVWF9DKSB8CQlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0QpIHwJCVwNCj4g
QEAgLTI2MDIsNyArMjYwNiw4IEBAIGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X21hc2tfaW5fc2V0
KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX1BPUlRfRERJX0RfTEFORVMpIHwJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JU
X0NSVCkgfCAvKiBEREkgRSAqLwlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fVkdBKSB8CQkJ
CVwNCj4gLQlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJTykgfAkJCVwNCj4gKwlCSVRfVUxMKFBP
V0VSX0RPTUFJTl9BVURJT19NTUlPKSB8CQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVE
SU9fUExBWUJBQ0spIHwJCQlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fSU5JVCkpDQo+IA0K
PiAgI2RlZmluZSBCRFdfRElTUExBWV9QT1dFUl9ET01BSU5TICgJCQlcDQo+IEBAIC0yNjE4LDcg
KzI2MjMsOCBAQCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9tYXNrX2luX3NldChzdHJ1Y3QNCj4g
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RE
SV9EX0xBTkVTKSB8CQlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9DUlQpIHwgLyog
RERJIEUgKi8JXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1ZHQSkgfAkJCQlcDQo+IC0JQklU
X1VMTChQT1dFUl9ET01BSU5fQVVESU8pIHwJCQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5f
QVVESU9fTU1JTykgfAkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVRElPX1BMQVlCQUNL
KSB8CQkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0lOSVQpKQ0KPiANCj4gICNkZWZpbmUg
U0tMX0RJU1BMQVlfUE9XRVJXRUxMXzJfUE9XRVJfRE9NQUlOUyAoCQlcDQo+IEBAIC0yNjM2LDcg
KzI2NDIsOCBAQCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9tYXNrX2luX3NldChzdHJ1Y3QNCj4g
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQikg
fCAgICAgICAgICAgICAgICAgICAgICAgXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9D
KSB8CQkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9EKSB8CQkJXA0KPiAtCUJJVF9V
TEwoUE9XRVJfRE9NQUlOX0FVRElPKSB8CQkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FV
RElPX01NSU8pIHwJCVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJT19QTEFZQkFDSykg
fAkJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9WR0EpIHwJCQkJXA0KPiAgCUJJVF9VTEwo
UE9XRVJfRE9NQUlOX0lOSVQpKQ0KPiAgI2RlZmluZSBTS0xfRElTUExBWV9ERElfSU9fQV9FX1BP
V0VSX0RPTUFJTlMgKAkJXA0KPiBAQCAtMjY3MSw3ICsyNjc4LDggQEAgaW50ZWxfZGlzcGxheV9w
b3dlcl9wdXRfbWFza19pbl9zZXQoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+
ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfQ19MQU5FUykgfAkJXA0KPiAgCUJJVF9V
TEwoUE9XRVJfRE9NQUlOX0FVWF9CKSB8CQkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FV
WF9DKSB8CQkJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVRElPKSB8CQkJXA0KPiArCUJJ
VF9VTEwoUE9XRVJfRE9NQUlOX0FVRElPX01NSU8pIHwJCVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RP
TUFJTl9BVURJT19QTEFZQkFDSykgfAkJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9WR0Ep
IHwJCQkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0lOSVQpKQ0KPiAgI2RlZmluZSBCWFRf
RElTUExBWV9EQ19PRkZfUE9XRVJfRE9NQUlOUyAoCQlcDQo+IEBAIC0yNzA0LDcgKzI3MTIsOCBA
QCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9tYXNrX2luX3NldChzdHJ1Y3QNCj4gZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9DX0xBTkVT
KSB8CQlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0IpIHwgICAgICAgICAgICAgICAg
ICAgICAgIFwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQykgfAkJCVwNCj4gLQlCSVRf
VUxMKFBPV0VSX0RPTUFJTl9BVURJTykgfAkJCVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9B
VURJT19NTUlPKSB8CQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVESU9fUExBWUJBQ0sp
IHwJCQlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fVkdBKSB8CQkJCVwNCj4gIAlCSVRfVUxM
KFBPV0VSX0RPTUFJTl9JTklUKSkNCj4gICNkZWZpbmUgR0xLX0RJU1BMQVlfRERJX0lPX0FfUE9X
RVJfRE9NQUlOUyAoCQlcDQo+IEBAIC0yNzU5LDcgKzI3NjgsOCBAQCBpbnRlbF9kaXNwbGF5X3Bv
d2VyX3B1dF9tYXNrX2luX3NldChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4g
IAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfQykgfAkJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RP
TUFJTl9BVVhfRCkgfAkJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfRikgfAkJCVwN
Cj4gLQlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJTykgfAkJCVwNCj4gKwlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9BVURJT19NTUlPKSB8CQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVESU9f
UExBWUJBQ0spIHwJCQlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fVkdBKSB8CQkJCVwNCj4g
IAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9JTklUKSkNCj4gICNkZWZpbmUgQ05MX0RJU1BMQVlfRERJ
X0FfSU9fUE9XRVJfRE9NQUlOUyAoCQlcDQo+IEBAIC0yODQxLDcgKzI4NTEsOCBAQCBpbnRlbF9k
aXNwbGF5X3Bvd2VyX3B1dF9tYXNrX2luX3NldChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfRV9UQlQpIHwJCVwNCj4gIAlCSVRf
VUxMKFBPV0VSX0RPTUFJTl9BVVhfRl9UQlQpIHwJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJ
Tl9WR0EpIHwJCQlcDQo+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fQVVESU8pIHwJCQlcDQo+ICsJ
QklUX1VMTChQT1dFUl9ET01BSU5fQVVESU9fTU1JTykgfAkJXA0KPiArCUJJVF9VTEwoUE9XRVJf
RE9NQUlOX0FVRElPX1BMQVlCQUNLKSB8CQkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0lO
SVQpKQ0KPiAgCS8qDQo+ICAJICogLSB0cmFuc2NvZGVyIFdEDQo+IEBAIC0yOTMzLDcgKzI5NDQs
OCBAQCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9tYXNrX2luX3NldChzdHJ1Y3QNCj4gZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEJUNSkgfAkJ
XA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9UQlQ2KSB8CQlcDQo+ICAJQklUX1VMTChQ
T1dFUl9ET01BSU5fVkdBKSB8CQkJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVRElPKSB8
CQkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVRElPX01NSU8pIHwJCVwNCj4gKwlCSVRf
VUxMKFBPV0VSX0RPTUFJTl9BVURJT19QTEFZQkFDSykgfAkJCVwNCj4gIAlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9JTklUKSkNCj4gDQo+ICAjZGVmaW5lIFRHTF9QV18yX1BPV0VSX0RPTUFJTlMgKAkJ
CVwNCj4gQEAgLTMwMDMsNyArMzAxNSw4IEBAIGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X21hc2tf
aW5fc2V0KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgCVJLTF9QV180X1BP
V0VSX0RPTUFJTlMgfAkJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QSVBFX0IpIHwJCQlc
DQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUElQRV9CX1BBTkVMX0ZJVFRFUikgfAlcDQo+IC0J
QklUX1VMTChQT1dFUl9ET01BSU5fQVVESU8pIHwJCQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01B
SU5fQVVESU9fTU1JTykgfAkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVRElPX1BMQVlC
QUNLKSB8CQkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1ZHQSkgfAkJCVwNCj4gIAlCSVRf
VUxMKFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0IpIHwJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RP
TUFJTl9QT1JUX0RESV9MQU5FU19UQzEpIHwJXA0KPiBAQCAtMzA0MCw2ICszMDUzLDM1IEBAIGlu
dGVsX2Rpc3BsYXlfcG93ZXJfcHV0X21hc2tfaW5fc2V0KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2
YXRlICppOTE1LA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9CKSB8CQkJXA0KPiAgCUJJ
VF9VTEwoUE9XRVJfRE9NQUlOX0lOSVQpKQ0KPiANCj4gKy8qDQo+ICsgKiBERzEgb253YXJkcyBB
dWRpbyBNTUlPL1ZFUkJTIGxpZXMgaW4gUEcwIHBvd2VyIHdlbGwuDQo+ICsgKi8NCj4gKyNkZWZp
bmUgREcxX1BXXzNfUE9XRVJfRE9NQUlOUyAoCQkJXA0KPiArCVRHTF9QV180X1BPV0VSX0RPTUFJ
TlMgfAkJCVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QSVBFX0IpIHwJCQlcDQo+ICsJQklU
X1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9CKSB8CQlcDQo+ICsJQklUX1VMTChQT1dFUl9E
T01BSU5fUElQRV9CX1BBTkVMX0ZJVFRFUikgfAlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5f
UE9SVF9ERElfTEFORVNfVEMxKSB8CVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RE
SV9MQU5FU19UQzIpIHwJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9VU0JDMSkgfAkJ
XA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9VU0JDMikgfAkJXA0KPiArCUJJVF9VTEwo
UE9XRVJfRE9NQUlOX1ZHQSkgfAkJCVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJT19Q
TEFZQkFDSykgfAkJCVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9JTklUKSkNCj4gKw0KPiAr
I2RlZmluZSBERzFfUFdfMl9QT1dFUl9ET01BSU5TICgJCQlcDQo+ICsJREcxX1BXXzNfUE9XRVJf
RE9NQUlOUyB8CQkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfVkRTQ19Q
VzIpIHwJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0lOSVQpKQ0KPiArDQo+ICsjZGVmaW5l
IERHMV9ESVNQTEFZX0RDX09GRl9QT1dFUl9ET01BSU5TICgJCVwNCj4gKwlERzFfUFdfM19QT1dF
Ul9ET01BSU5TIHwJCQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVESU9fTU1JTykgfAkJ
XA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX01PREVTRVQpIHwJCQlcDQo+ICsJQklUX1VMTChQ
T1dFUl9ET01BSU5fQVVYX0EpIHwJCQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0Ip
IHwJCQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fSU5JVCkpDQo+ICsNCj4gIC8qDQo+ICAg
KiBYRV9MUEQgUG93ZXIgRG9tYWlucw0KPiAgICoNCj4gQEAgLTMwODUsNyArMzEyNyw3IEBAIGlu
dGVsX2Rpc3BsYXlfcG93ZXJfcHV0X21hc2tfaW5fc2V0KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2
YXRlICppOTE1LA0KPiAgCVhFTFBEX1BXX0JfUE9XRVJfRE9NQUlOUyB8CQkJXA0KPiAgCVhFTFBE
X1BXX0NfUE9XRVJfRE9NQUlOUyB8CQkJXA0KPiAgCVhFTFBEX1BXX0RfUE9XRVJfRE9NQUlOUyB8
CQkJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVRElPKSB8CQkJXA0KPiArCUJJVF9VTEwo
UE9XRVJfRE9NQUlOX0FVRElPX1BMQVlCQUNLKSB8CQkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX1ZHQSkgfAkJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9DX0xBTkVT
KSB8CVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9MQU5FU19EX1hFTFBEKSB8
CVwNCj4gQEAgLTMxMjYsNiArMzE2OCw3IEBAIGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X21hc2tf
aW5fc2V0KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiANCj4gICNkZWZpbmUg
WEVMUERfRElTUExBWV9EQ19PRkZfUE9XRVJfRE9NQUlOUyAoCQlcDQo+ICAJWEVMUERfUFdfMl9Q
T1dFUl9ET01BSU5TIHwJCQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVESU9fTU1JTykg
fAkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX01PREVTRVQpIHwJCQlcDQo+ICAJQklUX1VM
TChQT1dFUl9ET01BSU5fQVVYX0EpIHwJCQlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fQVVY
X0IpIHwJCQlcDQo+IEBAIC00NjU0LDYgKzQ2OTcsMTY1IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aTkxNV9wb3dlcl93ZWxsX2Rlc2MNCj4gcmtsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJfSwNCj4g
IH07DQo+IA0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyBkZzFf
cG93ZXJfd2VsbHNbXSA9IHsNCj4gKwl7DQo+ICsJCS5uYW1lID0gImFsd2F5cy1vbiIsDQo+ICsJ
CS5hbHdheXNfb24gPSB0cnVlLA0KPiArCQkuZG9tYWlucyA9IFBPV0VSX0RPTUFJTl9NQVNLLA0K
PiArCQkub3BzID0gJmk5eHhfYWx3YXlzX29uX3Bvd2VyX3dlbGxfb3BzLA0KPiArCQkuaWQgPSBE
SVNQX1BXX0lEX05PTkUsDQo+ICsJfSwNCj4gKwl7DQo+ICsJCS5uYW1lID0gInBvd2VyIHdlbGwg
MSIsDQo+ICsJCS8qIEhhbmRsZWQgYnkgdGhlIERNQyBmaXJtd2FyZSAqLw0KPiArCQkuYWx3YXlz
X29uID0gdHJ1ZSwNCj4gKwkJLmRvbWFpbnMgPSAwLA0KPiArCQkub3BzID0gJmhzd19wb3dlcl93
ZWxsX29wcywNCj4gKwkJLmlkID0gU0tMX0RJU1BfUFdfMSwNCj4gKwkJew0KPiArCQkJLmhzdy5y
ZWdzID0gJmhzd19wb3dlcl93ZWxsX3JlZ3MsDQo+ICsJCQkuaHN3LmlkeCA9IElDTF9QV19DVExf
SURYX1BXXzEsDQo+ICsJCQkuaHN3Lmhhc19mdXNlcyA9IHRydWUsDQo+ICsJCX0sDQo+ICsJfSwN
Cj4gKwl7DQo+ICsJCS5uYW1lID0gIkRDIG9mZiIsDQo+ICsJCS5kb21haW5zID0gREcxX0RJU1BM
QVlfRENfT0ZGX1BPV0VSX0RPTUFJTlMsDQo+ICsJCS5vcHMgPSAmZ2VuOV9kY19vZmZfcG93ZXJf
d2VsbF9vcHMsDQo+ICsJCS5pZCA9IFNLTF9ESVNQX0RDX09GRiwNCj4gKwl9LA0KPiArCXsNCj4g
KwkJLm5hbWUgPSAicG93ZXIgd2VsbCAyIiwNCj4gKwkJLmRvbWFpbnMgPSBERzFfUFdfMl9QT1dF
Ul9ET01BSU5TLA0KPiArCQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywNCj4gKwkJLmlkID0g
U0tMX0RJU1BfUFdfMiwNCj4gKwkJew0KPiArCQkJLmhzdy5yZWdzID0gJmhzd19wb3dlcl93ZWxs
X3JlZ3MsDQo+ICsJCQkuaHN3LmlkeCA9IElDTF9QV19DVExfSURYX1BXXzIsDQo+ICsJCQkuaHN3
Lmhhc19mdXNlcyA9IHRydWUsDQo+ICsJCX0sDQo+ICsJfSwNCj4gKwl7DQo+ICsJCS5uYW1lID0g
InBvd2VyIHdlbGwgMyIsDQo+ICsJCS5kb21haW5zID0gREcxX1BXXzNfUE9XRVJfRE9NQUlOUywN
Cj4gKwkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMsDQo+ICsJCS5pZCA9IElDTF9ESVNQX1BX
XzMsDQo+ICsJCXsNCj4gKwkJCS5oc3cucmVncyA9ICZoc3dfcG93ZXJfd2VsbF9yZWdzLA0KPiAr
CQkJLmhzdy5pZHggPSBJQ0xfUFdfQ1RMX0lEWF9QV18zLA0KPiArCQkJLmhzdy5pcnFfcGlwZV9t
YXNrID0gQklUKFBJUEVfQiksDQo+ICsJCQkuaHN3Lmhhc192Z2EgPSB0cnVlLA0KPiArCQkJLmhz
dy5oYXNfZnVzZXMgPSB0cnVlLA0KPiArCQl9LA0KPiArCX0sDQo+ICsJew0KPiArCQkubmFtZSA9
ICJEREkgQSBJTyIsDQo+ICsJCS5kb21haW5zID0gSUNMX0RESV9JT19BX1BPV0VSX0RPTUFJTlMs
DQo+ICsJCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLA0KPiArCQkuaWQgPSBESVNQX1BXX0lE
X05PTkUsDQo+ICsJCXsNCj4gKwkJCS5oc3cucmVncyA9ICZpY2xfZGRpX3Bvd2VyX3dlbGxfcmVn
cywNCj4gKwkJCS5oc3cuaWR4ID0gSUNMX1BXX0NUTF9JRFhfRERJX0EsDQo+ICsJCX0NCj4gKwl9
LA0KPiArCXsNCj4gKwkJLm5hbWUgPSAiRERJIEIgSU8iLA0KPiArCQkuZG9tYWlucyA9IElDTF9E
RElfSU9fQl9QT1dFUl9ET01BSU5TLA0KPiArCQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywN
Cj4gKwkJLmlkID0gRElTUF9QV19JRF9OT05FLA0KPiArCQl7DQo+ICsJCQkuaHN3LnJlZ3MgPSAm
aWNsX2RkaV9wb3dlcl93ZWxsX3JlZ3MsDQo+ICsJCQkuaHN3LmlkeCA9IElDTF9QV19DVExfSURY
X0RESV9CLA0KPiArCQl9DQo+ICsJfSwNCj4gKwl7DQo+ICsJCS5uYW1lID0gIkRESSBJTyBUQzEi
LA0KPiArCQkuZG9tYWlucyA9IFRHTF9ERElfSU9fVEMxX1BPV0VSX0RPTUFJTlMsDQo+ICsJCS5v
cHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLA0KPiArCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsDQo+
ICsJCXsNCj4gKwkJCS5oc3cucmVncyA9ICZpY2xfZGRpX3Bvd2VyX3dlbGxfcmVncywNCj4gKwkJ
CS5oc3cuaWR4ID0gVEdMX1BXX0NUTF9JRFhfRERJX1RDMSwNCj4gKwkJfSwNCj4gKwl9LA0KPiAr
CXsNCj4gKwkJLm5hbWUgPSAiRERJIElPIFRDMiIsDQo+ICsJCS5kb21haW5zID0gVEdMX0RESV9J
T19UQzJfUE9XRVJfRE9NQUlOUywNCj4gKwkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMsDQo+
ICsJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwNCj4gKwkJew0KPiArCQkJLmhzdy5yZWdzID0gJmlj
bF9kZGlfcG93ZXJfd2VsbF9yZWdzLA0KPiArCQkJLmhzdy5pZHggPSBUR0xfUFdfQ1RMX0lEWF9E
RElfVEMyLA0KPiArCQl9LA0KPiArCX0sDQo+ICsJew0KPiArCQkubmFtZSA9ICJBVVggQSIsDQo+
ICsJCS5kb21haW5zID0gVEdMX0FVWF9BX0lPX1BPV0VSX0RPTUFJTlMsDQo+ICsJCS5vcHMgPSAm
aWNsX2F1eF9wb3dlcl93ZWxsX29wcywNCj4gKwkJLmlkID0gRElTUF9QV19JRF9OT05FLA0KPiAr
CQl7DQo+ICsJCQkuaHN3LnJlZ3MgPSAmaWNsX2F1eF9wb3dlcl93ZWxsX3JlZ3MsDQo+ICsJCQku
aHN3LmlkeCA9IElDTF9QV19DVExfSURYX0FVWF9BLA0KPiArCQl9LA0KPiArCX0sDQo+ICsJew0K
PiArCQkubmFtZSA9ICJBVVggQiIsDQo+ICsJCS5kb21haW5zID0gVEdMX0FVWF9CX0lPX1BPV0VS
X0RPTUFJTlMsDQo+ICsJCS5vcHMgPSAmaWNsX2F1eF9wb3dlcl93ZWxsX29wcywNCj4gKwkJLmlk
ID0gRElTUF9QV19JRF9OT05FLA0KPiArCQl7DQo+ICsJCQkuaHN3LnJlZ3MgPSAmaWNsX2F1eF9w
b3dlcl93ZWxsX3JlZ3MsDQo+ICsJCQkuaHN3LmlkeCA9IElDTF9QV19DVExfSURYX0FVWF9CLA0K
PiArCQl9LA0KPiArCX0sDQo+ICsJew0KPiArCQkubmFtZSA9ICJBVVggVVNCQzEiLA0KPiArCQku
ZG9tYWlucyA9IFRHTF9BVVhfSU9fVVNCQzFfUE9XRVJfRE9NQUlOUywNCj4gKwkJLm9wcyA9ICZp
Y2xfYXV4X3Bvd2VyX3dlbGxfb3BzLA0KPiArCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsDQo+ICsJ
CXsNCj4gKwkJCS5oc3cucmVncyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfcmVncywNCj4gKwkJCS5o
c3cuaWR4ID0gVEdMX1BXX0NUTF9JRFhfQVVYX1RDMSwNCj4gKwkJCS5oc3cuaXNfdGNfdGJ0ID0g
ZmFsc2UsDQo+ICsJCX0sDQo+ICsJfSwNCj4gKwl7DQo+ICsJCS5uYW1lID0gIkFVWCBVU0JDMiIs
DQo+ICsJCS5kb21haW5zID0gVEdMX0FVWF9JT19VU0JDMl9QT1dFUl9ET01BSU5TLA0KPiArCQku
b3BzID0gJmljbF9hdXhfcG93ZXJfd2VsbF9vcHMsDQo+ICsJCS5pZCA9IERJU1BfUFdfSURfTk9O
RSwNCj4gKwkJew0KPiArCQkJLmhzdy5yZWdzID0gJmljbF9hdXhfcG93ZXJfd2VsbF9yZWdzLA0K
PiArCQkJLmhzdy5pZHggPSBUR0xfUFdfQ1RMX0lEWF9BVVhfVEMyLA0KPiArCQkJLmhzdy5pc190
Y190YnQgPSBmYWxzZSwNCj4gKwkJfSwNCj4gKwl9LA0KPiArCXsNCj4gKwkJLm5hbWUgPSAicG93
ZXIgd2VsbCA0IiwNCj4gKwkJLmRvbWFpbnMgPSBUR0xfUFdfNF9QT1dFUl9ET01BSU5TLA0KPiAr
CQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywNCj4gKwkJLmlkID0gRElTUF9QV19JRF9OT05F
LA0KPiArCQl7DQo+ICsJCQkuaHN3LnJlZ3MgPSAmaHN3X3Bvd2VyX3dlbGxfcmVncywNCj4gKwkJ
CS5oc3cuaWR4ID0gSUNMX1BXX0NUTF9JRFhfUFdfNCwNCj4gKwkJCS5oc3cuaGFzX2Z1c2VzID0g
dHJ1ZSwNCj4gKwkJCS5oc3cuaXJxX3BpcGVfbWFzayA9IEJJVChQSVBFX0MpLA0KPiArCQl9DQo+
ICsJfSwNCj4gKwl7DQo+ICsJCS5uYW1lID0gInBvd2VyIHdlbGwgNSIsDQo+ICsJCS5kb21haW5z
ID0gVEdMX1BXXzVfUE9XRVJfRE9NQUlOUywNCj4gKwkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9v
cHMsDQo+ICsJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwNCj4gKwkJew0KPiArCQkJLmhzdy5yZWdz
ID0gJmhzd19wb3dlcl93ZWxsX3JlZ3MsDQo+ICsJCQkuaHN3LmlkeCA9IFRHTF9QV19DVExfSURY
X1BXXzUsDQo+ICsJCQkuaHN3Lmhhc19mdXNlcyA9IHRydWUsDQo+ICsJCQkuaHN3LmlycV9waXBl
X21hc2sgPSBCSVQoUElQRV9EKSwNCj4gKwkJfSwNCj4gKwl9LA0KPiArfTsNCj4gKw0KPiAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyB4ZWxwZF9wb3dlcl93ZWxsc1td
ID0gew0KPiAgCXsNCj4gIAkJLm5hbWUgPSAiYWx3YXlzLW9uIiwNCj4gQEAgLTUxMzgsNyArNTM0
MCw5IEBAIGludCBpbnRlbF9wb3dlcl9kb21haW5zX2luaXQoc3RydWN0DQo+IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQ0KPiAgCQllcnIgPSAwOw0KPiAgCX0gZWxzZSBpZiAoRElTUExBWV9W
RVIoZGV2X3ByaXYpID49IDEzKSB7DQo+ICAJCWVyciA9IHNldF9wb3dlcl93ZWxscyhwb3dlcl9k
b21haW5zLCB4ZWxwZF9wb3dlcl93ZWxscyk7DQo+IC0JfSBlbHNlIGlmIChJU19BTERFUkxBS0Vf
UyhkZXZfcHJpdikgfHwgSVNfREcxKGRldl9wcml2KSkgew0KPiArCX0gZWxzZSBpZiAoSVNfREcx
KGRldl9wcml2KSkgew0KPiArCQllcnIgPSBzZXRfcG93ZXJfd2VsbHMocG93ZXJfZG9tYWlucywg
ZGcxX3Bvd2VyX3dlbGxzKTsNCj4gKwl9IGVsc2UgaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2
KSkgew0KPiAgCQllcnIgPSBzZXRfcG93ZXJfd2VsbHNfbWFzayhwb3dlcl9kb21haW5zLCB0Z2xf
cG93ZXJfd2VsbHMsDQo+IA0KPiBCSVRfVUxMKFRHTF9ESVNQX1BXX1RDX0NPTERfT0ZGKSk7DQo+
ICAJfSBlbHNlIGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkgew0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaA0KPiBpbmRl
eCBhZDc4OGJiZDcyN2QuLjUyMTA3MmJlNDEyYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgNCj4gQEAgLTc2LDcgKzc2
LDggQEAgZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiB7DQo+ICAJUE9XRVJfRE9NQUlO
X1BPUlRfQ1JULA0KPiAgCVBPV0VSX0RPTUFJTl9QT1JUX09USEVSLA0KPiAgCVBPV0VSX0RPTUFJ
Tl9WR0EsDQo+IC0JUE9XRVJfRE9NQUlOX0FVRElPLA0KPiArCVBPV0VSX0RPTUFJTl9BVURJT19N
TUlPLA0KPiArCVBPV0VSX0RPTUFJTl9BVURJT19QTEFZQkFDSywNCj4gIAlQT1dFUl9ET01BSU5f
QVVYX0EsDQo+ICAJUE9XRVJfRE9NQUlOX0FVWF9CLA0KPiAgCVBPV0VSX0RPTUFJTl9BVVhfQywN
Cj4gLS0NCj4gMi4yNi4yDQoNCg==
