Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAE2299898
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Oct 2020 22:13:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 858F46EA65;
	Mon, 26 Oct 2020 21:13:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB8C66EA65
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Oct 2020 21:13:52 +0000 (UTC)
IronPort-SDR: YUv9t9fkBT51bUa0g2ldvOHzbk5wbpwCjjDWkLcFJfqyOjBMLEMQVTQnVSDCOCw9fQWXBMWFmR
 DEjgG1+ged2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="168114120"
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="168114120"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 14:13:52 -0700
IronPort-SDR: iVegRm0kZ/VPOXYUOGzQlNFXuIG914ZgEjE/nftCFxlrLiDf+mu+BxJmtBw5fopBmplwGrZhHo
 z7LilkyBMaiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,421,1596524400"; d="scan'208";a="535515148"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga005.jf.intel.com with ESMTP; 26 Oct 2020 14:13:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Oct 2020 14:13:51 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Oct 2020 14:13:50 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Mon, 26 Oct 2020 21:13:49 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 1/6] drm/i915/display/psr: Calculate selective fetch
 plane registers
Thread-Index: AQHWobROgngAZvP6FUOgo2ILujp40amqdlwA
Date: Mon, 26 Oct 2020 21:13:49 +0000
Message-ID: <9fd5417f2f9c692ff7f21b812a8d2b7d5d1ec8af.camel@intel.com>
References: <20201013230121.331595-1-jose.souza@intel.com>
In-Reply-To: <20201013230121.331595-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <F4E4E8DE628DA8428C3DBADEB006CD5A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/display/psr: Calculate
 selective fetch plane registers
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTEwLTEzIGF0IDE2OjAxIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBBZGQgdGhlIGNhbGN1bGF0aW9ucyB0byBzZXQgcGxhbmUgc2VsZWN0aXZlIGZl
dGNoIHJlZ2lzdGVycyBkZXBlbmRpbmcNCj4gaW4gdGhlIHZhbHVlIG9mIHRoZSBhcmVhIGRhbWFn
ZWQuDQo+IEl0IGlzIHN0aWxsIHVzaW5nIHRoZSB3aG9sZSBwbGFuZSBhcmVhIGFzIGRhbWFnZWQg
YnV0IHRoYXQgd2lsbA0KPiBjaGFuZ2UNCj4gaW4gbmV4dCBwYXRjaGVzLg0KPiANCj4gQlNwZWM6
IDU1MjI5DQo+IENjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+
DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmggICAgfCAgMiArKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyAgICAgIHwgMjIgKysrKysrKysrKysrKystLS0NCj4gLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MTggaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IDBi
NWRmOGU0NDk2Ni4uYWVjZWIzNzhiY2EzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtNjAzLDYgKzYwMyw4
IEBAIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSB7DQo+ICAJdTMyIHBsYW5hcl9zbGF2ZTsNCj4g
IA0KPiAgCXN0cnVjdCBkcm1faW50ZWxfc3ByaXRlX2NvbG9ya2V5IGNrZXk7DQo+ICsNCj4gKwlz
dHJ1Y3QgZHJtX3JlY3QgcHNyMl9zZWxfZmV0Y2hfYXJlYTsNCj4gIH07DQo+ICANCj4gIHN0cnVj
dCBpbnRlbF9pbml0aWFsX3BsYW5lX2NvbmZpZyB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBhNTkxYTQ3NWYxNDguLjc3M2E1YjVmYTA3OCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0x
MTczLDYgKzExNzMsNyBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0Y2go
c3RydWN0DQo+IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7DQo+ICAJZW51bSBw
aXBlIHBpcGUgPSBwbGFuZS0+cGlwZTsNCj4gKwljb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKmNsaXA7
DQo+ICAJdTMyIHZhbDsNCj4gIA0KPiAgCWlmICghY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2Vs
X2ZldGNoKQ0KPiBAQCAtMTE4NCwxNiArMTE4NSwyMCBAQCB2b2lkDQo+IGludGVsX3BzcjJfcHJv
Z3JhbV9wbGFuZV9zZWxfZmV0Y2goc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAlpZiAo
IXZhbCB8fCBwbGFuZS0+aWQgPT0gUExBTkVfQ1VSU09SKQ0KPiAgCQlyZXR1cm47DQo+ICANCj4g
LQl2YWwgPSBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEgPDwgMTYgfCBwbGFuZV9zdGF0ZS0NCj4g
PnVhcGkuZHN0LngxOw0KPiArCWNsaXAgPSAmcGxhbmVfc3RhdGUtPnBzcjJfc2VsX2ZldGNoX2Fy
ZWE7DQo+ICsNCj4gKwl2YWwgPSAoY2xpcC0+eTEgKyBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEp
IDw8IDE2Ow0KDQo+ICsJdmFsIHw9IHBsYW5lX3N0YXRlLT51YXBpLmRzdC54MTsNCj4gIAlpbnRl
bF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfU0VMX0ZFVENIX1BPUyhwaXBlLCBwbGFuZS0N
Cj4gPmlkKSwgdmFsKTsNCj4gIA0KPiAtCXZhbCA9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVtj
b2xvcl9wbGFuZV0ueSA8PCAxNjsNCj4gKwkvKiBUT0RPOiBjb25zaWRlciB0aWxpbmcgYW5kIGF1
eGlsaWFyeSBzdXJmYWNlcyAqLw0KPiArCXZhbCA9IChjbGlwLT55MSArIHBsYW5lX3N0YXRlLT5j
b2xvcl9wbGFuZVtjb2xvcl9wbGFuZV0ueSkgPDwNCj4gMTY7DQo+ICAJdmFsIHw9IHBsYW5lX3N0
YXRlLT5jb2xvcl9wbGFuZVtjb2xvcl9wbGFuZV0ueDsNCj4gIAlpbnRlbF9kZV93cml0ZV9mdyhk
ZXZfcHJpdiwgUExBTkVfU0VMX0ZFVENIX09GRlNFVChwaXBlLCBwbGFuZS0NCj4gPmlkKSwNCj4g
IAkJCSAgdmFsKTsNCj4gIA0KPiAgCS8qIFNpemVzIGFyZSAwIGJhc2VkICovDQo+IC0JdmFsID0g
KChkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTYpIC0gMSkgPDwN
Cj4gMTY7DQo+ICsJdmFsID0gKGRybV9yZWN0X2hlaWdodChjbGlwKSAtIDEpIDw8IDE2Ow0KPiAg
CXZhbCB8PSAoZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTYpIC0g
MTsNCj4gIAlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfU0VMX0ZFVENIX1NJWkUo
cGlwZSwgcGxhbmUtDQo+ID5pZCksIHZhbCk7DQo+ICB9DQo+IEBAIC0xMjY3LDcgKzEyNzIsNyBA
QCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLA0KPiAgDQo+ICAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX3BsYW5lX2luX3N0
YXRlKHN0YXRlLCBwbGFuZSwNCj4gb2xkX3BsYW5lX3N0YXRlLA0KPiAgCQkJCQkgICAgIG5ld19w
bGFuZV9zdGF0ZSwgaSkgew0KPiAtCQlzdHJ1Y3QgZHJtX3JlY3QgdGVtcDsNCj4gKwkJc3RydWN0
IGRybV9yZWN0ICpzZWxfZmV0Y2hfYXJlYSwgdGVtcDsNCj4gIA0KPiAgCQlpZiAobmV3X3BsYW5l
X3N0YXRlLT51YXBpLmNydGMgIT0gY3J0Y19zdGF0ZS0NCj4gPnVhcGkuY3J0YykNCj4gIAkJCWNv
bnRpbnVlOw0KPiBAQCAtMTI5MCw4ICsxMjk1LDEzIEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRj
aF91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCSAqIEZv
ciBub3cgZG9pbmcgYSBzZWxlY3RpdmUgZmV0Y2ggaW4gdGhlIHdob2xlIHBsYW5lDQo+IGFyZWEs
DQo+ICAJCSAqIG9wdGltaXphdGlvbnMgd2lsbCBjb21lIGluIHRoZSBmdXR1cmUuDQo+ICAJCSAq
Lw0KPiAtCQl0ZW1wLnkxID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCj4gLQkJdGVt
cC55MiA9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTI7DQo+ICsJCXNlbF9mZXRjaF9hcmVh
ID0gJm5ld19wbGFuZV9zdGF0ZS0+cHNyMl9zZWxfZmV0Y2hfYXJlYTsNCj4gKwkJc2VsX2ZldGNo
X2FyZWEtPnkxID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLnNyYy55MSA+Pg0KPiAxNjsNCj4gKwkJ
c2VsX2ZldGNoX2FyZWEtPnkyID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLnNyYy55MiA+Pg0KPiAx
NjsNCj4gKw0KPiArCQl0ZW1wID0gKnNlbF9mZXRjaF9hcmVhOw0KPiArCQl0ZW1wLnkxICs9IG5l
d19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEgPj4gMTY7DQo+ICsJCXRlbXAueTIgKz0gbmV3X3Bs
YW5lX3N0YXRlLT51YXBpLmRzdC55MSA+PiAxNjsNCkl0IGFkZHMgc3JjIHRvIGRzdC4gDQpGb3Ig
dGhlIHdob2xlIHBsYW5lIGRhbWFnZSBhcmVhLCB0aGVzZSBwcmV2aW91cyBjb2RlIGxvb2tzIGNv
cnJlY3QuDQoNCiB0ZW1wLnkxID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCiB0ZW1w
LnkyID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MjsNCg0KPiAgCQljbGlwX2FyZWFfdXBk
YXRlKCZwaXBlX2NsaXAsICZ0ZW1wKTsNCj4gIAl9DQo+ICANCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
