Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C572FD951
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 20:19:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75AA06E17E;
	Wed, 20 Jan 2021 19:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A38736E17E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 19:19:37 +0000 (UTC)
IronPort-SDR: Ts/Ihf+RbZet92wxs6R2hBM8yFTLNyKbKRJvM60BZcsfK3r5Yun7ElJPfwBfzNlSfTwFr5toq8
 ovIPGaN8rMOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="240705161"
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="240705161"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 11:19:33 -0800
IronPort-SDR: x9aVjw+WT3vRNvpY262xrKTqXKVFWYAOcBCYG5p+Y3ghlCPJl9qmZEfzYJBuB7xvi3/B5LTDQF
 sfFMcXaKluBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="391661634"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 20 Jan 2021 11:19:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 11:19:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 11:19:32 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Wed, 20 Jan 2021 11:19:32 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915: Fix ICL MG PHY vswing handling
Thread-Index: AQHWzNh5Whfy0CE3u0KoX1A7ccUhaaoxrxyA
Date: Wed, 20 Jan 2021 19:19:32 +0000
Message-ID: <87447f5395a33eecb3feb785d0057fedb863c110.camel@intel.com>
References: <20201207203512.1718-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201207203512.1718-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <E00564A22FF31747A0316F1477DE4EE9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix ICL MG PHY vswing handling
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

T24gTW9uLCAyMDIwLTEyLTA3IGF0IDIyOjM1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIE1IIFBIWSB2c3dpbmcgdGFibGUgZG9lcyBoYXZlIGFsbCB0aGUgZW50cmllcyB0
aGVzZSBkYXlzLiBHZXQNCj4gcmlkIG9mIHRoZSBvbGQgaGFja3MgaW4gdGhlIGNvZGUgd2hpY2gg
Y2xhaW0gb3RoZXJ3aXNlLg0KPiANCj4gVGhpcyBoYWNrIHdhcyB0b3RhbGx5IGJvZ3VzIGFueXdh
eS4gVGhlIGNvcnJlY3Qgd2F5IHRvIGhhbmRsZSB0aGUNCj4gbGFjayBvZiB0aG9zZSB0d28gZW50
cmllcyB3b3VsZCBoYXZlIGJlZW4gdG8gZGVjbGFyZSBvdXIgbWF4DQo+IHZzd2luZyBhbmQgcHJl
LWVtcGggdG8gYm90aCBiZSBsZXZlbCAyLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IENjOiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gQ2M6IENsaW50b24gVGF5bG9yIDxj
bGludG9uLmEudGF5bG9yQGludGVsLmNvbT4NCj4gRml4ZXM6IDlmN2ZmYTI5Nzk3OCAoImRybS9p
OTE1L3RjL2ljbDogVXBkYXRlIFRDIHZzd2luZyB0YWJsZXMiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNyArKystLS0tDQo+
IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCA1MTkzNDcz
YzgzOGMuLmMzYTE1Y2U2NjQ3OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jDQo+IEBAIC0yNzYwLDEyICsyNzYwLDExIEBAIHN0YXRpYyB2b2lkIGljbF9t
Z19waHlfZGRpX3Zzd2luZ19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwN
Cj4gwqAJdTMyIHZhbDsNCj4gwqANCj4gDQo+IA0KPiANCj4gwqAJZGRpX3RyYW5zbGF0aW9ucyA9
IGljbF9nZXRfbWdfYnVmX3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsICZuX2VudHJpZXMpOw0K
PiAtCS8qIFRoZSB0YWJsZSBkb2VzIG5vdCBoYXZlIHZhbHVlcyBmb3IgbGV2ZWwgMyBhbmQgbGV2
ZWwgOS4gKi8NCj4gLQlpZiAobGV2ZWwgPj0gbl9lbnRyaWVzIHx8IGxldmVsID09IDMgfHwgbGV2
ZWwgPT0gOSkgew0KPiArCWlmIChsZXZlbCA+PSBuX2VudHJpZXMpIHsNCj4gwqAJCWRybV9kYmdf
a21zKCZkZXZfcHJpdi0+ZHJtLA0KPiDCoAkJCSAgICAiRERJIHRyYW5zbGF0aW9uIG5vdCBmb3Vu
ZCBmb3IgbGV2ZWwgJWQuIFVzaW5nICVkIGluc3RlYWQuIiwNCj4gLQkJCSAgICBsZXZlbCwgbl9l
bnRyaWVzIC0gMik7DQo+IC0JCWxldmVsID0gbl9lbnRyaWVzIC0gMjsNCj4gKwkJCSAgICBsZXZl
bCwgbl9lbnRyaWVzIC0gMSk7DQo+ICsJCWxldmVsID0gbl9lbnRyaWVzIC0gMTsNCj4gwqAJfQ0K
PiDCoA0KPiANCj4gDQo+IA0KPiDCoAkvKiBTZXQgTUdfVFhfTElOS19QQVJBTVMgY3JpX3VzZV9m
czMyIHRvIDAuICovDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
