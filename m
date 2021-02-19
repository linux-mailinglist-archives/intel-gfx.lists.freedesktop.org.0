Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C250031FFBC
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 21:16:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11F676EBA5;
	Fri, 19 Feb 2021 20:16:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED9866EBA1
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 20:16:27 +0000 (UTC)
IronPort-SDR: gGqtTJcFrOyHUqLclwwMf4linWtHueWOMSsA5maiNx4/jD5ku3LXXyxVSntXWoxqLzM+2PdqT9
 1vSfFo3hA8Hg==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="184010800"
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; d="scan'208";a="184010800"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 12:16:26 -0800
IronPort-SDR: aFqKSKFXiGjE9bNSplztynKbunsEmn5WfkuYOIkC7kVrtuuYqkRl9AMfPfiBWUvRUSVDduswsK
 pwNNBhwbsdJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; d="scan'208";a="440397821"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga001.jf.intel.com with ESMTP; 19 Feb 2021 12:16:26 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Feb 2021 12:16:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Feb 2021 12:16:26 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Fri, 19 Feb 2021 12:16:26 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/display: Read planes watermarks during initial
 state readout
Thread-Index: AQHXBvN/s+ADyysxskWkQeTzaFny6KpgaBQAgAAIzQA=
Date: Fri, 19 Feb 2021 20:16:25 +0000
Message-ID: <3c15a574a5673471c2e3b747e24e4608c3b49f31.camel@intel.com>
References: <20210219191623.163775-1-jose.souza@intel.com>
 <YDAVngWZmA1KAqTy@intel.com>
In-Reply-To: <YDAVngWZmA1KAqTy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <72576A69DB1E4A4694A063F448A2B291@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Read planes watermarks
 during initial state readout
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTAyLTE5IGF0IDIxOjQ2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgRmViIDE5LCAyMDIxIGF0IDExOjE2OjIzQU0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gV2l0aG91dCB0aGlzIHJlYWRvdXQgYWxsIHBsYW5lIHdh
dGVybWFya3Mgd2lsbCBiZSBrZXB0IGF0IHplcm8gaW4gdGhlDQo+ID4gaW5pdGlhbCBzdGF0ZSBy
ZWFkb3VudCBjYXVzaW5nIHR3byBwcm9ibGVtcy4NCj4gPiANCj4gPiBBbGwgYWN0aXZlIHBsYW5l
cyB3aWxsIGFsd2F5cyBoYXZlIHRoZWlyIHdhdGVybWFya3MgcHJvZ3JhbW1lZA0KPiA+IGFnYWlu
LCBldmVuIGlmIHdoYXQgZmlybXdhcmUgcHJvZ3JhbW1lZCBtYXRjaGVzIHdpdGggdGhlIHNhbml0
aXplZA0KPiA+IHN0YXRlIGR1cmluZyBkcml2ZXIgdGFrZW92ZXIuDQo+ID4gDQo+ID4gU3RhdGUg
bWlzbWF0Y2ggZXJyb3JzIGluIGRpc2FibGVkIHBsYW5lcyBhcyB3YXRlcm1hcmtzIHdpbGwgZXJy
b25lb3VzDQo+ID4gbWF0Y2ggd2l0aCB0aGUgY2FsY3VsYXRlZCBzdGF0ZSBpZiBmaXJtd2FyZSBs
ZWZ0IHdhdGVybWFyayByZWdpc3RlcnMNCj4gPiB3aXRoIG5vbi16ZXJvIHZhbHVlcy4NCj4gPiAN
Cj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMiArKw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+ID4gaW5kZXggZDBkYTg4NzUxYzcyLi4xNGZiYTQ0MTFiZTcgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC0x
MzYyMCw2ICsxMzYyMCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX21vZGVzZXRfcmVhZG91dF9od19z
dGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQ0KPiA+IMKgCQkJZHJtX2NhbGNfdGltZXN0YW1w
aW5nX2NvbnN0YW50cygmc2xhdmUtPmJhc2UsDQo+ID4gwqAJCQkJCQkJJnNsYXZlX2NydGNfc3Rh
dGUtPmh3LmFkanVzdGVkX21vZGUpOw0KPiA+IMKgCQl9DQo+ID4gKw0KPiA+ICsJCXNrbF9waXBl
X3dtX2dldF9od19zdGF0ZShjcnRjLCAmY3J0Y19zdGF0ZS0+d20uc2tsLm9wdGltYWwpOw0KPiAN
Cj4gU3RyYW5nZS4gc2tsX3dtX2dldF9od19zdGF0ZSgpIHNob3VsZCBiZSBkb2luZyB0aGlzIGFs
cmVhZHkuDQoNCkl0IGlzIG9ubHkgZG9pbmcgc29tZSBkZGIgcmVhZG91dHMgbm90aW5nIHJlbGF0
ZWQgdG8gcGxhbmUgd2F0ZXJtYXJrcywgbWF5YmUgY2FsbCBza2xfcGlwZV93bV9nZXRfaHdfc3Rh
dGUoKSBmcm9tIHRoZXJlIHdvdWxkIGJlIGJldHRlcj8NCg0KPiANCj4gPiDCoAl9DQo+ID4gwqB9
DQo+ID4gwqANCj4gPiANCj4gPiANCj4gPiANCj4gPiAtLSANCj4gPiAyLjMwLjENCj4gDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
