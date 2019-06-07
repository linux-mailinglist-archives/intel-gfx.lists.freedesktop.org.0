Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F829393A6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 19:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D31789A44;
	Fri,  7 Jun 2019 17:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 259AB89A44
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 17:50:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 10:50:35 -0700
X-ExtLoop1: 1
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga007.jf.intel.com with ESMTP; 07 Jun 2019 10:50:34 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 10:50:34 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.58]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 10:50:34 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 02/23] drm/i915: Tune down WARNs about TBT AUX power
 well enabling
Thread-Index: AQHVGuYUMgDflOjaXk2h/wIeWaQYDKaQ8o6A
Date: Fri, 7 Jun 2019 17:50:34 +0000
Message-ID: <d0c2d70f301ce311345129d48324f4d4becc2c9a.camel@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-3-imre.deak@intel.com>
In-Reply-To: <20190604145826.16424-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.212]
Content-ID: <8262764AFD765848BF2BE96379CAD31A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/23] drm/i915: Tune down WARNs about TBT
 AUX power well enabling
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

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBIVyBjb21wbGV0aW9uIGZsYWcgZm9yIHRoZSBUQlQgQVVYIHBvd2VyIHdlbGwgZW5hYmxpbmcv
ZGlzYWJsaW5nDQo+IGdldHMgc3R1Y2sgaWYgdGhlIGZpcm13YXJlIHRlYXJzIGRvd24gdGhlIFRC
VCBEUCB0dW5uZWwgYmVmb3JlIHRoZQ0KPiBjb21wbGV0aW9uLg0KPiANCj4gV2Ugc2hvdWxkbid0
IGNvbXBsYWluIGFib3V0IHRoZSB0aW1lb3V0LCBzaW5jZSBpdCdzIGV4cGVjdGVkIHRvDQo+IGhh
cHBlbg0KPiBhbmQgZG9lc24ndCBjYXVzZSBmdXJ0aGVyIGlzc3Vlcy4gV2Ugc3VwcHJlc3MgdGhl
IGRpc2FibGluZyB0aW1lb3V0DQo+IGFscmVhZHksIGRvIHRoZSBzYW1lIGZvciBlbmFibGluZy4N
Cg0KVGhpcyB3YXMgZG9jdW1lbnRlZCBpbiBzcGVjPw0KDQo+IA0KPiBDYzogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBSb2RyaWdvIFZpdmkgPHJv
ZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVh
a0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxh
eV9wb3dlci5jIHwgMTUgKysrKysrKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5z
ZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gaW5kZXggMjc4YTdlZGM5NGY1Li4yNDlhNWZhNTVk
ZjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMN
Cj4gQEAgLTI2OCwxMSArMjY4LDE2IEBAIHN0YXRpYyB2b2lkDQo+IGhzd193YWl0X2Zvcl9wb3dl
cl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJaW50
IHB3X2lkeCA9IHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pZHg7DQo+ICANCj4gIAkvKiBUaW1lb3V0
IGZvciBQVzE6MTAgdXMsIEFVWDpub3Qgc3BlY2lmaWVkLCBvdGhlciBQV3M6MjAgdXMuDQo+ICov
DQo+IC0JV0FSTl9PTihpbnRlbF93YWl0X2Zvcl9yZWdpc3RlcigmZGV2X3ByaXYtPnVuY29yZSwN
Cj4gLQkJCQkJcmVncy0+ZHJpdmVyLA0KPiAtCQkJCQlIU1dfUFdSX1dFTExfQ1RMX1NUQVRFKHB3
X2lkeCksDQo+IC0JCQkJCUhTV19QV1JfV0VMTF9DVExfU1RBVEUocHdfaWR4KSwNCj4gLQkJCQkJ
MSkpOw0KPiArCWlmIChpbnRlbF93YWl0X2Zvcl9yZWdpc3RlcigmZGV2X3ByaXYtPnVuY29yZSwN
Cj4gKwkJCQkgICAgcmVncy0+ZHJpdmVyLA0KPiArCQkJCSAgICBIU1dfUFdSX1dFTExfQ1RMX1NU
QVRFKHB3X2lkeCksDQo+ICsJCQkJICAgIEhTV19QV1JfV0VMTF9DVExfU1RBVEUocHdfaWR4KSwN
Cj4gKwkJCQkgICAgMSkpIHsNCj4gKwkJRFJNX0RFQlVHX0tNUygiJXMgZm9yY2VkIG9mZlxuIiwg
cG93ZXJfd2VsbC0+ZGVzYy0NCj4gPm5hbWUpOw0KDQpNYXliZSAiJXMgcG93ZXIgd2VsbCBlbmFi
bGUgdGltZW91dCI/DQpBbnl3YXlzIHdlIGNhbiBmaXggdGhhdCBsYXR0ZXIuDQoNClJldmlld2Vk
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiAr
DQo+ICsJCS8qIEFuIEFVWCB0aW1lb3V0IGlzIGV4cGVjdGVkIGlmIHRoZSBUQlQgRFAgdHVubmVs
IGlzDQo+IGRvd24uICovDQo+ICsJCVdBUk5fT04oIXBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pc190
Y190YnQpOw0KPiArCX0NCj4gIH0NCj4gIA0KPiAgc3RhdGljIHUzMiBoc3dfcG93ZXJfd2VsbF9y
ZXF1ZXN0ZXJzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdiwNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
