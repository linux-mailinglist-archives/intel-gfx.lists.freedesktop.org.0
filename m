Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B76074653F7
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 18:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A86CE890C8;
	Wed,  1 Dec 2021 17:31:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40AD0890C8
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 17:31:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="234012039"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="234012039"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 09:31:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="540900166"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 01 Dec 2021 09:31:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:31:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:31:34 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 09:31:34 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 13/14] drm/i915: Declutter color key register
 stuff
Thread-Index: AQHX5sfmkkzbk/OlfEq5zJmp2ACSUqwea1uA
Date: Wed, 1 Dec 2021 17:31:34 +0000
Message-ID: <79e88d427a6e6d21d187597034eedde63a845f39.camel@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20211201152552.7821-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <424FFA8CF83DE8489B542947468399F5@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 13/14] drm/i915: Declutter color key
 register stuff
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

T24gV2VkLCAyMDIxLTEyLTAxIGF0IDE3OjI1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQWRkIGEgZmV3IHNtYWxsIGhlbHBlcnMgdG8gY2FsY3VsYXRlIHRoZSBjb2xvciBrZXkg
cmVnaXN0ZXINCj4gdmFsdWVzLiBDbGVhbnMgdXAgc2tsX3Byb2dyYW1fcGxhbmVfYXJtKCkgYSBi
aXQuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9z
a2xfdW5pdmVyc2FsX3BsYW5lLmMgICAgfCA0NSArKysrKysrKysrKysrLS0tLS0tDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5l
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0K
PiBpbmRleCBjN2RlNjQzZDE2ZGQuLjkyMjcwNjc5YTk5YyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gQEAgLTEw
MDEsNiArMTAwMSwzNCBAQCBzdGF0aWMgdTMyIHNrbF9wbGFuZV9hdXhfZGlzdChjb25zdCBzdHJ1
Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLA0KPiAgCXJldHVybiBhdXhfZGlzdDsN
Cj4gIH0NCj4gIA0KPiArc3RhdGljIHUzMiBza2xfcGxhbmVfa2V5dmFsKGNvbnN0IHN0cnVjdCBp
bnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+ICt7DQo+ICsJY29uc3Qgc3RydWN0IGRy
bV9pbnRlbF9zcHJpdGVfY29sb3JrZXkgKmtleSA9ICZwbGFuZV9zdGF0ZS0+Y2tleTsNCj4gKw0K
PiArCXJldHVybiBrZXktPm1pbl92YWx1ZTsNCj4gK30NCj4gKw0KPiArc3RhdGljIHUzMiBza2xf
cGxhbmVfa2V5bWF4KGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUp
DQo+ICt7DQo+ICsJY29uc3Qgc3RydWN0IGRybV9pbnRlbF9zcHJpdGVfY29sb3JrZXkgKmtleSA9
ICZwbGFuZV9zdGF0ZS0+Y2tleTsNCj4gKwl1OCBhbHBoYSA9IHBsYW5lX3N0YXRlLT5ody5hbHBo
YSA+PiA4Ow0KPiArDQo+ICsJcmV0dXJuIChrZXktPm1heF92YWx1ZSAmIDB4ZmZmZmZmKSB8IFBM
QU5FX0tFWU1BWF9BTFBIQShhbHBoYSk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB1MzIgc2tsX3Bs
YW5lX2tleW1zayhjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0K
PiArew0KPiArCWNvbnN0IHN0cnVjdCBkcm1faW50ZWxfc3ByaXRlX2NvbG9ya2V5ICprZXkgPSAm
cGxhbmVfc3RhdGUtPmNrZXk7DQo+ICsJdTggYWxwaGEgPSBwbGFuZV9zdGF0ZS0+aHcuYWxwaGEg
Pj4gODsNCj4gKwl1MzIga2V5bXNrOw0KPiArDQo+ICsJa2V5bXNrID0ga2V5LT5jaGFubmVsX21h
c2sgJiAweDdmZmZmZmY7DQo+ICsJaWYgKGFscGhhIDwgMHhmZikNCj4gKwkJa2V5bXNrIHw9IFBM
QU5FX0tFWU1TS19BTFBIQV9FTkFCTEU7DQo+ICsNCj4gKwlyZXR1cm4ga2V5bXNrOw0KPiArfQ0K
PiArDQo+ICBzdGF0aWMgdm9pZCBpY2xfcGxhbmVfY3NjX2xvYWRfYmxhY2soc3RydWN0IGludGVs
X3BsYW5lICpwbGFuZSkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IHRvX2k5MTUocGxhbmUtPmJhc2UuZGV2KTsNCj4gQEAgLTEwOTQsMTEgKzExMjIsOSBAQCBza2xf
cHJvZ3JhbV9wbGFuZV9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7DQo+
ICAJZW51bSBwbGFuZV9pZCBwbGFuZV9pZCA9IHBsYW5lLT5pZDsNCj4gIAllbnVtIHBpcGUgcGlw
ZSA9IHBsYW5lLT5waXBlOw0KPiAtCWNvbnN0IHN0cnVjdCBkcm1faW50ZWxfc3ByaXRlX2NvbG9y
a2V5ICprZXkgPSAmcGxhbmVfc3RhdGUtPmNrZXk7DQo+ICAJdTMyIHggPSBwbGFuZV9zdGF0ZS0+
dmlldy5jb2xvcl9wbGFuZVtjb2xvcl9wbGFuZV0ueDsNCj4gIAl1MzIgeSA9IHBsYW5lX3N0YXRl
LT52aWV3LmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS55Ow0KPiAtCXUzMiBrZXltc2ssIGtleW1h
eCwgcGxhbmVfY29sb3JfY3RsID0gMDsNCj4gLQl1OCBhbHBoYSA9IHBsYW5lX3N0YXRlLT5ody5h
bHBoYSA+PiA4Ow0KPiArCXUzMiBwbGFuZV9jb2xvcl9jdGwgPSAwOw0KPiAgCXUzMiBwbGFuZV9j
dGwgPSBwbGFuZV9zdGF0ZS0+Y3RsOw0KPiAgCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7DQo+ICAN
Cj4gQEAgLTExMDgsMTggKzExMzQsMTEgQEAgc2tsX3Byb2dyYW1fcGxhbmVfYXJtKHN0cnVjdCBp
bnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJCXBsYW5lX2NvbG9yX2N0bCA9IHBsYW5lX3N0YXRlLT5j
b2xvcl9jdGwgfA0KPiAgCQkJZ2xrX3BsYW5lX2NvbG9yX2N0bF9jcnRjKGNydGNfc3RhdGUpOw0K
PiAgDQo+IC0Ja2V5bWF4ID0gKGtleS0+bWF4X3ZhbHVlICYgMHhmZmZmZmYpIHwgUExBTkVfS0VZ
TUFYX0FMUEhBKGFscGhhKTsNCj4gLQ0KPiAtCWtleW1zayA9IGtleS0+Y2hhbm5lbF9tYXNrICYg
MHg3ZmZmZmZmOw0KPiAtCWlmIChhbHBoYSA8IDB4ZmYpDQo+IC0JCWtleW1zayB8PSBQTEFORV9L
RVlNU0tfQUxQSEFfRU5BQkxFOw0KPiAtDQo+ICAJc3Bpbl9sb2NrX2lycXNhdmUoJmRldl9wcml2
LT51bmNvcmUubG9jaywgaXJxZmxhZ3MpOw0KPiAgDQo+IC0JaW50ZWxfZGVfd3JpdGVfZncoZGV2
X3ByaXYsIFBMQU5FX0tFWVZBTChwaXBlLCBwbGFuZV9pZCksDQo+IC0JCQkgIGtleS0+bWluX3Zh
bHVlKTsNCj4gLQlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfS0VZTVNLKHBpcGUs
IHBsYW5lX2lkKSwga2V5bXNrKTsNCj4gLQlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExB
TkVfS0VZTUFYKHBpcGUsIHBsYW5lX2lkKSwga2V5bWF4KTsNCj4gKwlpbnRlbF9kZV93cml0ZV9m
dyhkZXZfcHJpdiwgUExBTkVfS0VZVkFMKHBpcGUsIHBsYW5lX2lkKSwgc2tsX3BsYW5lX2tleXZh
bChwbGFuZV9zdGF0ZSkpOw0KPiArCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9L
RVlNU0socGlwZSwgcGxhbmVfaWQpLCBza2xfcGxhbmVfa2V5bXNrKHBsYW5lX3N0YXRlKSk7DQo+
ICsJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0tFWU1BWChwaXBlLCBwbGFuZV9p
ZCksIHNrbF9wbGFuZV9rZXltYXgocGxhbmVfc3RhdGUpKTsNCj4gIA0KPiAgCWludGVsX2RlX3dy
aXRlX2Z3KGRldl9wcml2LCBQTEFORV9PRkZTRVQocGlwZSwgcGxhbmVfaWQpLA0KPiAgCQkJICBQ
TEFORV9PRkZTRVRfWSh5KSB8IFBMQU5FX09GRlNFVF9YKHgpKTsNCg0K
