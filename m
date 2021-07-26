Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 526333D6887
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 23:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B345C72FF5;
	Mon, 26 Jul 2021 21:19:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D30886E878
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 21:19:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="297894812"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="297894812"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 14:19:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="474132224"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2021 14:19:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 26 Jul 2021 14:19:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 26 Jul 2021 14:19:05 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Mon, 26 Jul 2021 14:19:05 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915/display/psr2: Fix cursor
 updates using legacy apis
Thread-Index: AQHXeqhGGOBLYnvo40SjmcyU5srBTatV0e+A
Date: Mon, 26 Jul 2021 21:19:05 +0000
Message-ID: <e31a2ddd1f2c4f2c8eb1e3e2c0a943c9@intel.com>
References: <20210717011227.204494-1-jose.souza@intel.com>
 <20210717011227.204494-3-jose.souza@intel.com>
In-Reply-To: <20210717011227.204494-3-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display/psr2: Fix cursor
 updates using legacy apis
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3PDqQ0K
PiBSb2JlcnRvIGRlIFNvdXphDQo+IFNlbnQ6IEZyaWRheSwgSnVseSAxNiwgMjAyMSA2OjEyIFBN
DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRl
bC1nZnhdIFtQQVRDSCAzLzRdIGRybS9pOTE1L2Rpc3BsYXkvcHNyMjogRml4IGN1cnNvciB1cGRh
dGVzDQo+IHVzaW5nIGxlZ2FjeSBhcGlzDQo+IA0KPiBUaGUgZmFzdCBwYXRoIG9ubHkgdXBkYXRl
cyBjdXJzb3IgcmVnaXN0ZXIgd2hhdCB3aWxsIG5vdCBjYXVzZSBhbnkgdXBkYXRlcyBpbg0KPiB0
aGUgc2NyZWVuIHdoZW4gdXNpbmcgUFNSMiBzZWxlY3RpdmUgZmV0Y2guDQo+IA0KPiBUaGUgb25s
eSBvcHRpb24gdGhhdCB3ZSBoYXZlIGlzIHRvIGdvIHRyb3VnaCB0aGUgc2xvdyBwYXRjaCB0aGF0
IHdpbGwgZG8gZnVsbA0Kcy8gdHJvdWdoL1Rocm91Z2gNCg0KPiBhdG9taWMgY29tbWl0LCB0aGF0
IHdpbGwgdHJpZ2dlciB0aGUgUFNSMiBzZWxlY3RpdmUgZmV0Y2ggY29tcHV0ZSBhbmQNCj4gcHJv
Z3JhbWluZyBjYWxscy4NCj4gDQo+IFdpdGhvdXQgdGhpcyBwYXRjaCBpcyBwb3NzaWJsZSB0byBz
ZWUgYSBtb3VzZSBtb3ZlbWVudCBsYWcgaW4gR25vbWUgd2hlbg0KPiBQU1IyIHNlbGVjdGl2ZSBm
ZXRjaCBpcyBlbmFibGVkLg0KPiANCj4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcu
bXVuQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQpBc3N1bWluZyB0aGlzIHdhcyB0ZXN0ZWQgb24gZ25vbWUs
IHRoZSBjaGFuZ2UgbWFrZXMgc2Vuc2UuDQoNClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2Eg
PGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jIHwgOCArKysrKystLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiBpbmRleCBmNjFhMjVmYjg3ZTkw
Li5jNzYxOGZlZjAxNDM5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N1cnNvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3Vyc29yLmMNCj4gQEAgLTYyOSwxMiArNjI5LDE2IEBAIGludGVsX2xlZ2FjeV9jdXJz
b3JfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUNCj4gKl9wbGFuZSwNCj4gDQo+ICAJLyoNCj4gIAkg
KiBXaGVuIGNydGMgaXMgaW5hY3RpdmUgb3IgdGhlcmUgaXMgYSBtb2Rlc2V0IHBlbmRpbmcsDQo+
IC0JICogd2FpdCBmb3IgaXQgdG8gY29tcGxldGUgaW4gdGhlIHNsb3dwYXRoDQo+ICsJICogd2Fp
dCBmb3IgaXQgdG8gY29tcGxldGUgaW4gdGhlIHNsb3dwYXRoLg0KPiArCSAqIFBTUjIgc2VsZWN0
aXZlIGZldGNoIGFsc28gcmVxdWlyZXMgdGhlIHNsb3cgcGF0aCBhcw0KPiArCSAqIFBTUjIgcGxh
bmUgYW5kIHRyYW5zY29kZXIgcmVnaXN0ZXJzIGNhbiBvbmx5IGJlIHVwZGF0ZWQgZHVyaW5nDQo+
ICsJICogdmJsYW5rLg0KPiAgCSAqDQo+ICAJICogRklYTUUgYmlnam9pbmVyIGZhc3RwYXRoIHdv
dWxkIGJlIGdvb2QNCj4gIAkgKi8NCj4gIAlpZiAoIWNydGNfc3RhdGUtPmh3LmFjdGl2ZSB8fCBp
bnRlbF9jcnRjX25lZWRzX21vZGVzZXQoY3J0Y19zdGF0ZSkNCj4gfHwNCj4gLQkgICAgY3J0Y19z
dGF0ZS0+dXBkYXRlX3BpcGUgfHwgY3J0Y19zdGF0ZS0+Ymlnam9pbmVyKQ0KPiArCSAgICBjcnRj
X3N0YXRlLT51cGRhdGVfcGlwZSB8fCBjcnRjX3N0YXRlLT5iaWdqb2luZXIgfHwNCj4gKwkgICAg
Y3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoKQ0KPiAgCQlnb3RvIHNsb3c7DQo+IA0K
PiAgCS8qDQo+IC0tDQo+IDIuMzIuMA0KPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
