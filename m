Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 754A0CBC88
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 16:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDA5C6EBA0;
	Fri,  4 Oct 2019 14:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F1146EBA4
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 14:01:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 07:01:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="186266853"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
 by orsmga008.jf.intel.com with ESMTP; 04 Oct 2019 07:01:24 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.184]) by
 IRSMSX152.ger.corp.intel.com ([169.254.6.150]) with mapi id 14.03.0439.000;
 Fri, 4 Oct 2019 15:01:24 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 0/4] fix broken state checker and enable
 state checker for icl+
Thread-Index: AQHVeo64lkCH89/Y/EuHgsU7iNBnyKdKfX3g
Date: Fri, 4 Oct 2019 14:01:23 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D0769431E0@IRSMSX106.ger.corp.intel.com>
References: <20191004082610.24664-1-swati2.sharma@intel.com>
In-Reply-To: <20191004082610.24664-1-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjI2Yjg3ZjgtNzI1Yy00NzAzLWJhNDktNjc5NDBhNTUyMzE4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaVVjRlwvb1BBMXptZDhzaEpEMFwvZkZ2UElnbmhwc0E2VVBXZzk4c25DbStjWkZIU3N0Q2QzbWlyZmdERFVuT1AyIn0=
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/4] fix broken state checker and enable
 state checker for icl+
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgU3dh
dGkNCj4gU2hhcm1hDQo+IFNlbnQ6IHBlcmphbnRhaSA0LiBsb2tha3V1dGEgMjAxOSAxMS4yNg0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5p
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBOYXV0aXlhbCwgQW5raXQgSw0KPiA8YW5raXQuay5u
YXV0aXlhbEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAwLzRdIGZp
eCBicm9rZW4gc3RhdGUgY2hlY2tlciBhbmQgZW5hYmxlIHN0YXRlIGNoZWNrZXINCj4gZm9yIGlj
bCsNCj4gDQo+IEluIHRoaXMgcGF0Y2ggc2VyaWVzLCBiYXNpY2FsbHkgYWRkZWQgMyBwYXRjaGVz
ICAxLiBGaXhpbmcgYnJva2VuIHN0YXRlLWNoZWNrZXIgZHVyaW5nDQo+IGJvb3Qgc2luY2UgbGVn
YWN5IHBsYXRmb3Jtcw0KPiAgICAgaS5lLiBwbGF0Zm9ybXMgZm9yIHdoaWNoIHN0YXRlIGNoZWNr
ZXIgd2FzIGFscmVhZHkgZW5hYmxlZCAgMi4gTW92aW5nDQo+IGdhbW1hX2VuYWJsZSBjaGVja3Mg
aW4gYml0X3ByZWNpc2lvbiBmdW5jKCkgdG8gcGxhdGZvcm0NClRlc3RlZCBpbiBCU1cgdGhhdCB3
YXMgc2hvd2luZyBmYW5jeSBjb2xvcnMgcHJldmlvdXNseSAgYW5kIG5vdyBib290aW5nIHRvIGNv
bnNvbGUgd2l0aCBjbGVhbiBjb2xvcnMuDQoNClRlc3RlZC1ieTogSmFuaSBTYWFyaW5lbiA8amFu
aS5zYWFyaW5lbkBpbnRlbC5jb20+DQoNCj4gICAgIHNwZWNpZmljIGZ1bmMoKQ0KPiAgMy4gRW5h
Ymxpbmcgc3RhdGUgY2hlY2tlciBmb3IgSUNMIGFuZCBUR0wNCj4gDQo+IFN3YXRpIFNoYXJtYSAo
NCk6DQo+ICAgW3YyXSBkcm0vaTkxNS9jb2xvcjogZml4IGJyb2tlbiBnYW1tYSBzdGF0ZS1jaGVj
a2VyIGR1cmluZyBib290DQo+ICAgZHJtL2k5MTUvY29sb3I6IG1vdmUgY2hlY2sgb2YgZ2FtbWFf
ZW5hYmxlIHRvIHNwZWNpZmljIGZ1bmMvcGxhdGZvcm0NCj4gICBbdjVdIGRybS9pOTE1L2NvbG9y
OiBFeHRyYWN0IGljbF9yZWFkX2x1dHMoKQ0KPiAgIEZPUl9URVNUSU5HX09OTFk6IFByaW50IHJn
YiB2YWx1ZXMgb2YgaHcgYW5kIHN3IGJsb2JzDQo+IA0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMTY2ICsrKysrKysrKysrKysrKysrKy0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgIHwgICA2ICsNCj4gIDIgZmls
ZXMgY2hhbmdlZCwgMTUyIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQ0KPiANCj4gLS0N
Cj4gMi4yMy4wDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
