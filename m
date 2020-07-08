Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9782184DE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 12:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AE5A89B60;
	Wed,  8 Jul 2020 10:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E90DD89B60
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 10:23:05 +0000 (UTC)
IronPort-SDR: pTt4WlbSaM4x9MyIAkJjAFZoHkcvO95HyXYIcVm/KflGqxBdSSfSpQAqhAp+qKlGcE9Ip6V15b
 6zeb7zEzCTTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="149281271"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="149281271"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 03:23:05 -0700
IronPort-SDR: f+hX+hNzDh+dxEJG+DyM5vRuafFQKoUmB6to2w1GZjRtB1xmZTPMlohotBzlC+uRHh889rf0XI
 pdzvUjKjQ7xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="297678527"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga002.jf.intel.com with ESMTP; 08 Jul 2020 03:23:05 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 03:23:04 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.92]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.75]) with mapi id 14.03.0439.000;
 Wed, 8 Jul 2020 03:23:04 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 21/28] drm/i915/dg1: Update voltage
 swing tables for DP
Thread-Index: AQHWUAMgWcDTXp8pu0uTUjfkmPcj2Kj9Y8Fw
Date: Wed, 8 Jul 2020 10:23:04 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734C6C3342@ORSMSX107.amr.corp.intel.com>
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
 <20200701235339.32608-22-lucas.demarchi@intel.com>
In-Reply-To: <20200701235339.32608-22-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 21/28] drm/i915/dg1: Update voltage swing
 tables for DP
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBMdWNh
cyBEZSBNYXJjaGkNCj4gU2VudDogVGh1cnNkYXksIEp1bHkgMiwgMjAyMCA1OjI0IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MyAyMS8yOF0gZHJtL2k5MTUvZGcxOiBVcGRhdGUgdm9sdGFnZSBzd2luZw0KPiB0
YWJsZXMgZm9yIERQDQo+IA0KPiBGcm9tOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50
ZWwuY29tPg0KPiANCj4gREcxJ3MgdnN3aW5nIHRhYmxlcyBhcmUgdGhlIHNhbWUgZm9yIGVEUCBh
bmQgSERNSSBidXQgaGF2ZSBzbGlnaHQNCj4gZGlmZmVyZW5jZXMgZnJvbSBJQ0wvVEdMIGZvciBE
UC4NCj4gDQo+IEJzcGVjOiA0OTI5MQ0KPiBDYzogQ2xpbnRvbiBUYXlsb3IgPENsaW50b24uQS5U
YXlsb3JAaW50ZWwuY29tPg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+IENjOiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNy
aXBhZGFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIHwgMzQgKysrKysrKysrKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IDAyNWQ0MDUyZjZmOC4uOWMyMzBmNTMyYmJlIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTU4
Miw2ICs1ODIsMzQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucw0KPiBl
aGxfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBbXSA9IHsNCj4gIAl7IDB4NiwgMHg3Riwg
MHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLw0KPiAgfTsNCj4g
DQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGNubF9kZGlfYnVmX3RyYW5zDQo+IGRnMV9jb21ib19w
aHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnJbXSA9IHsNCj4gKwkJCQkJCS8qIE5UIG1WIFRyYW5z
IG1WIGRiICAgICovDQo+ICsJeyAweEEsIDB4MzIsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogMzUw
ICAgMzUwICAgICAgMC4wICAgKi8NCj4gKwl7IDB4QSwgMHg0OCwgMHgzNSwgMHgwMCwgMHgwQSB9
LAkvKiAzNTAgICA1MDAgICAgICAzLjEgICAqLw0KPiArCXsgMHhDLCAweDYzLCAweDJGLCAweDAw
LCAweDEwIH0sCS8qIDM1MCAgIDcwMCAgICAgIDYuMCAgICovDQo+ICsJeyAweDYsIDB4N0YsIDB4
MkMsIDB4MDAsIDB4MTMgfSwJLyogMzUwICAgOTAwICAgICAgOC4yICAgKi8NCj4gKwl7IDB4QSwg
MHg0MywgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA1MDAgICA1MDAgICAgICAwLjAgICAqLw0KPiAr
CXsgMHhDLCAweDYwLCAweDM2LCAweDAwLCAweDA5IH0sCS8qIDUwMCAgIDcwMCAgICAgIDIuOSAg
ICovDQo+ICsJeyAweDYsIDB4N0YsIDB4MzAsIDB4MDAsIDB4MEYgfSwJLyogNTAwICAgOTAwICAg
ICAgNS4xICAgKi8NCj4gKwl7IDB4QywgMHg2MCwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA2NTAg
ICA3MDAgICAgICAwLjYgICAqLw0KPiArCXsgMHg2LCAweDdGLCAweDM3LCAweDAwLCAweDA4IH0s
CS8qIDYwMCAgIDkwMCAgICAgIDMuNSAgICovDQo+ICsJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAs
IDB4MDAgfSwJLyogOTAwICAgOTAwICAgICAgMC4wICAgKi8NCj4gK307DQo+ICsNCj4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMNCj4gZGcxX2NvbWJvX3BoeV9kZGlfdHJh
bnNsYXRpb25zX2RwX2hicjJbXSA9IHsNCj4gKwkJCQkJCS8qIE5UIG1WIFRyYW5zIG1WIGRiICAg
ICovDQo+ICsJeyAweEEsIDB4MzIsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogMzUwICAgMzUwICAg
ICAgMC4wICAgKi8NCj4gKwl7IDB4QSwgMHg0OCwgMHgzNSwgMHgwMCwgMHgwQSB9LAkvKiAzNTAg
ICA1MDAgICAgICAzLjEgICAqLw0KPiArCXsgMHhDLCAweDYzLCAweDJGLCAweDAwLCAweDEwIH0s
CS8qIDM1MCAgIDcwMCAgICAgIDYuMCAgICovDQo+ICsJeyAweDYsIDB4N0YsIDB4MkMsIDB4MDAs
IDB4MTMgfSwJLyogMzUwICAgOTAwICAgICAgOC4yICAgKi8NCj4gKwl7IDB4QSwgMHg0MywgMHgz
RiwgMHgwMCwgMHgwMCB9LAkvKiA1MDAgICA1MDAgICAgICAwLjAgICAqLw0KPiArCXsgMHhDLCAw
eDYwLCAweDM2LCAweDAwLCAweDA5IH0sCS8qIDUwMCAgIDcwMCAgICAgIDIuOSAgICovDQo+ICsJ
eyAweDYsIDB4N0YsIDB4MzAsIDB4MDAsIDB4MEYgfSwJLyogNTAwICAgOTAwICAgICAgNS4xICAg
Ki8NCj4gKwl7IDB4QywgMHg1OCwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA2NTAgICA3MDAgICAg
ICAwLjYgICAqLw0KPiArCXsgMHg2LCAweDdGLCAweDM1LCAweDAwLCAweDBBIH0sCS8qIDYwMCAg
IDkwMCAgICAgIDMuNSAgICovDQo+ICsJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSwJ
LyogOTAwICAgOTAwICAgICAgMC4wICAgKi8NCj4gK307DQpGcm9tIHRoZSBiU3BlYyBwYWdlLCB0
aGUgaGJyMiB2YWx1ZXMgYWJvdmUgYXJlIGluY29ycmVjdCBpbiBtb3JlIHRoYW4gb25lIHBsYWNl
Lg0KDQpBbnVzaGENCg0KPiArDQo+ICBzdHJ1Y3QgaWNsX21nX3BoeV9kZGlfYnVmX3RyYW5zIHsN
Cj4gIAl1MzIgY3JpX3R4ZGVlbXBoX292ZXJyaWRlXzExXzY7DQo+ICAJdTMyIGNyaV90eGRlZW1w
aF9vdmVycmlkZV81XzA7DQo+IEBAIC05OTMsNiArMTAyMSwxMiBAQCBpY2xfZ2V0X2NvbWJvX2J1
Zl90cmFucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYsIGludCB0eXBlLCBp
bnQgcmF0ZSwNCj4gIAl9IGVsc2UgaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCAmJiBkZXZf
cHJpdi0NCj4gPnZidC5lZHAubG93X3Zzd2luZykgew0KPiAgCQkqbl9lbnRyaWVzID0NCj4gQVJS
QVlfU0laRShpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjIpOw0KPiAgCQly
ZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyOw0KPiArCX0gZWxz
ZSBpZiAoSVNfREcxKGRldl9wcml2KSAmJiByYXRlID4gMjcwMDAwKSB7DQo+ICsJCSpuX2VudHJp
ZXMgPQ0KPiBBUlJBWV9TSVpFKGRnMV9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIy
KTsNCj4gKwkJcmV0dXJuIGRnMV9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIyOw0K
PiArCX0gZWxzZSBpZiAoSVNfREcxKGRldl9wcml2KSkgew0KPiArCQkqbl9lbnRyaWVzID0NCj4g
QVJSQVlfU0laRShkZzFfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyKTsNCj4gKwkJ
cmV0dXJuIGRnMV9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnI7DQo+ICAJfQ0KPiAN
Cj4gIAkqbl9lbnRyaWVzID0NCj4gQVJSQVlfU0laRShpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xh
dGlvbnNfZHBfaGJyMik7DQo+IC0tDQo+IDIuMjYuMg0KPiANCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0K
PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
