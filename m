Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A88403957A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 21:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6864889E8C;
	Fri,  7 Jun 2019 19:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40BC389E8C
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 19:23:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 12:23:33 -0700
X-ExtLoop1: 1
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2019 12:23:33 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 12:23:33 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.164]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 12:23:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 05/23] drm/i915: Don't enable the DDI-IO
 power in the TypeC TBT-alt mode
Thread-Index: AQHVGuYeWtrU9zVoAkOgqJlMPbnvZaaRDIeA
Date: Fri, 7 Jun 2019 19:23:32 +0000
Message-ID: <d85b927c209eafb0aba5028bb74b8848abc063ef.camel@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-6-imre.deak@intel.com>
In-Reply-To: <20190604145826.16424-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.212]
Content-ID: <6DBAC742714E9C4FAAC50121800977D4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/23] drm/i915: Don't enable the DDI-IO
 power in the TypeC TBT-alt mode
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

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFj
Y29yZGluZyB0byB0aGUgc3BlYyB3ZSBzaG91bGQgbm90IGVuYWJsZSB0aGUgRERJLUlPIHBvd2Vy
IGRvbWFpbiBpZg0KPiB0aGUgVHlwZUMgcG9ydCBpcyBpbiB0aGUgVEJULWFsdCBtb2RlLCBzbyBk
byB0aGF0IG9ubHkgaW4gdGhlIG90aGVyDQo+IFR5cGVDIG1vZGVzIG9yIGZvciBub24tVHlwZUMg
cG9ydHMuDQoNCldpdGg6DQpCU3BlYzogMjIyNDMNCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBDYzogTWFuYXNpIE5h
dmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4NCj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8
YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RkaS5jIHwgMTEgKysrKysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZGkuYw0KPiBp
bmRleCBhMzU3NGYxNGEzZDAuLjhmMjIzZDQ4ZDU2MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGRpLmMNCj4gQEAgLTMxMTEsNyArMzExMSwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlf
cHJlX2VuYWJsZV9kcChzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIA0KPiAg
CWludGVsX2RkaV9jbGtfc2VsZWN0KGVuY29kZXIsIGNydGNfc3RhdGUpOw0KPiAgDQo+IC0JaW50
ZWxfZGlzcGxheV9wb3dlcl9nZXQoZGV2X3ByaXYsIGRpZ19wb3J0LQ0KPiA+ZGRpX2lvX3Bvd2Vy
X2RvbWFpbik7DQo+ICsJaWYgKCFpbnRlbF9wb3J0X2lzX3RjKGRldl9wcml2LCBwb3J0KSB8fA0K
PiArCSAgICBkaWdfcG9ydC0+dGNfbW9kZSAhPSBUQ19QT1JUX1RCVF9BTFQpDQo+ICsJCWludGVs
X2Rpc3BsYXlfcG93ZXJfZ2V0KGRldl9wcml2LA0KPiArCQkJCQlkaWdfcG9ydC0+ZGRpX2lvX3Bv
d2VyX2RvbWFpbik7DQo+ICANCj4gIAlpY2xfcHJvZ3JhbV9tZ19kcF9tb2RlKGRpZ19wb3J0KTsN
Cj4gIAlpY2xfZGlzYWJsZV9waHlfY2xvY2tfZ2F0aW5nKGRpZ19wb3J0KTsNCj4gQEAgLTMyOTMs
OCArMzI5NiwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2RwKHN0cnVj
dA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCWludGVsX2VkcF9wYW5lbF92ZGRfb24o
aW50ZWxfZHApOw0KPiAgCWludGVsX2VkcF9wYW5lbF9vZmYoaW50ZWxfZHApOw0KPiAgDQo+IC0J
aW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfdW5jaGVja2VkKGRldl9wcml2LA0KPiAtCQkJCQkgIGRp
Z19wb3J0LQ0KPiA+ZGRpX2lvX3Bvd2VyX2RvbWFpbik7DQo+ICsJaWYgKCFpbnRlbF9wb3J0X2lz
X3RjKGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KSB8fA0KPiArCSAgICBkaWdfcG9ydC0+dGNfbW9k
ZSAhPSBUQ19QT1JUX1RCVF9BTFQpDQo+ICsJCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X3VuY2hl
Y2tlZChkZXZfcHJpdiwNCj4gKwkJCQkJCSAgZGlnX3BvcnQtDQo+ID5kZGlfaW9fcG93ZXJfZG9t
YWluKTsNCj4gIA0KPiAgCWludGVsX2RkaV9jbGtfZGlzYWJsZShlbmNvZGVyKTsNCj4gIH0NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
