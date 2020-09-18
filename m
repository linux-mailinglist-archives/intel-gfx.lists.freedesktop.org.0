Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A2426F540
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 07:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E77C6ECA5;
	Fri, 18 Sep 2020 05:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0407988007
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Sep 2020 05:00:54 +0000 (UTC)
IronPort-SDR: Q3emA1D0CugFPpiWKbvgX/3YANQ6ndtDJLFVEJLfpCkEL5vZ+NfEzjwLA1lRyNSzPxy+xcCEhP
 GMY7davBTdrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="157241870"
X-IronPort-AV: E=Sophos;i="5.77,273,1596524400"; d="scan'208";a="157241870"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 22:00:49 -0700
IronPort-SDR: lryhBhMthNZTr8guYUJYwoI34gvbVaIakUVfo18FW91/qCLlbtWkdymG5WLhpczRV/6wKIlbon
 5GF/4o9jrvzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,273,1596524400"; d="scan'208";a="332451701"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2020 22:00:48 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 22:00:47 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 10:30:45 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 10:30:45 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915: Extract
 intel_dp_output_format()
Thread-Index: AQHWjTuzCx7EKmcj/U+faiMBaQ4dBqlt1jig
Date: Fri, 18 Sep 2020 05:00:45 +0000
Message-ID: <24fe575e346948dc84148329eaf101fc@intel.com>
References: <20200917214335.3569-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200917214335.3569-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Extract
 intel_dp_output_format()
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogRnJpZGF5LCBTZXB0ZW1iZXIgMTgsIDIwMjAgMzoxNCBBTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggMS8zXSBkcm0vaTkxNTogRXh0cmFjdCBpbnRlbF9kcF9vdXRwdXRfZm9ybWF0KCkNCj4g
DQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IA0KPiBSZWZhY3RvciB0aGUgb3V0cHV0X2Zvcm1hdCBjYWxjdWxhdGlvbiBpbnRvIGEgaGVs
cGVyIHNvIHRoYXQgd2UgY2FuIHJldXNlIGl0DQo+IGZvciBtb2RlIHZhbGlkYXRpb24gYXMgd2Vs
bC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQoNCkxvb2tzIGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVmFuZGl0
YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQoNClRoYW5rcywNClZhbmRp
dGENCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAz
MiArKysrKysrKysrKysrKystLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0
aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IGJmMWU5Y2YxYzBmMy4uYWQ5YjhiMTZmYWRiIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC01OTIsNiAr
NTkyLDIyIEBAIHN0YXRpYyB1OCBpbnRlbF9kcF9kc2NfZ2V0X3NsaWNlX2NvdW50KHN0cnVjdA0K
PiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiArc3RhdGlj
IGVudW0gaW50ZWxfb3V0cHV0X2Zvcm1hdA0KPiAraW50ZWxfZHBfb3V0cHV0X2Zvcm1hdChzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLA0KPiArCQkgICAgICAgY29uc3Qgc3RydWN0IGRy
bV9kaXNwbGF5X21vZGUgKm1vZGUpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0N
Cj4gaW50ZWxfYXR0YWNoZWRfZHAodG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOw0KPiAr
CWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9pbmZvICppbmZvID0gJmNvbm5lY3Rvci0+ZGlzcGxh
eV9pbmZvOw0KPiArDQo+ICsJaWYgKCFkcm1fbW9kZV9pc180MjBfb25seShpbmZvLCBtb2RlKSkN
Cj4gKwkJcmV0dXJuIElOVEVMX09VVFBVVF9GT1JNQVRfUkdCOw0KPiArDQo+ICsJaWYgKGludGVs
X2RwLT5kZnAueWNiY3JfNDQ0X3RvXzQyMCkNCj4gKwkJcmV0dXJuIElOVEVMX09VVFBVVF9GT1JN
QVRfWUNCQ1I0NDQ7DQo+ICsJZWxzZQ0KPiArCQlyZXR1cm4gSU5URUxfT1VUUFVUX0ZPUk1BVF9Z
Q0JDUjQyMDsNCj4gK30NCj4gKw0KPiAgc3RhdGljIGJvb2wgaW50ZWxfZHBfaGRpc3BsYXlfYmFk
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAkJCQkgIGludCBoZGlzcGxh
eSkNCj4gIHsNCj4gQEAgLTI0MzAsMjcgKzI0NDYsMjAgQEAgaW50ZWxfZHBfY29tcHV0ZV9saW5r
X2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgIH0NCj4gDQo+ICBzdGF0
aWMgaW50DQo+IC1pbnRlbF9kcF95Y2JjcjQyMF9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwNCj4gLQkJCSBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gK2lu
dGVsX2RwX3ljYmNyNDIwX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwNCj4gIAkJCSBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkg
IHsNCj4gIAlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gY29ubl9zdGF0ZS0+Y29u
bmVjdG9yOw0KPiAtCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9pbmZvICppbmZvID0gJmNvbm5l
Y3Rvci0+ZGlzcGxheV9pbmZvOw0KPiAgCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICph
ZGp1c3RlZF9tb2RlID0NCj4gIAkJJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7DQo+IA0K
PiAgCWlmICghY29ubmVjdG9yLT55Y2Jjcl80MjBfYWxsb3dlZCkNCj4gIAkJcmV0dXJuIDA7DQo+
IA0KPiAtCWlmICghZHJtX21vZGVfaXNfNDIwX29ubHkoaW5mbywgYWRqdXN0ZWRfbW9kZSkpDQo+
IC0JCXJldHVybiAwOw0KPiArCWNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPSBpbnRlbF9kcF9v
dXRwdXRfZm9ybWF0KGNvbm5lY3RvciwNCj4gK2FkanVzdGVkX21vZGUpOw0KPiANCj4gLQlpZiAo
aW50ZWxfZHAtPmRmcC55Y2Jjcl80NDRfdG9fNDIwKSB7DQo+IC0JCWNydGNfc3RhdGUtPm91dHB1
dF9mb3JtYXQgPQ0KPiBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDQ0Ow0KPiArCWlmIChjcnRj
X3N0YXRlLT5vdXRwdXRfZm9ybWF0ICE9DQo+IElOVEVMX09VVFBVVF9GT1JNQVRfWUNCQ1I0MjAp
DQo+ICAJCXJldHVybiAwOw0KPiAtCX0NCj4gLQ0KPiAtCWNydGNfc3RhdGUtPm91dHB1dF9mb3Jt
YXQgPSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwOw0KPiANCj4gIAlyZXR1cm4gaW50ZWxf
cGNoX3BhbmVsX2ZpdHRpbmcoY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSk7ICB9IEBAIC0NCj4gMjcx
MCw4ICsyNzE5LDcgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29k
ZXINCj4gKmVuY29kZXIsDQo+ICAJaWYgKGxzcGNvbi0+YWN0aXZlKQ0KPiAgCQlsc3Bjb25feWNi
Y3I0MjBfY29uZmlnKCZpbnRlbF9jb25uZWN0b3ItPmJhc2UsDQo+IHBpcGVfY29uZmlnKTsNCj4g
IAllbHNlDQo+IC0JCXJldCA9IGludGVsX2RwX3ljYmNyNDIwX2NvbmZpZyhpbnRlbF9kcCwgcGlw
ZV9jb25maWcsDQo+IC0JCQkJCSAgICAgICBjb25uX3N0YXRlKTsNCj4gKwkJcmV0ID0gaW50ZWxf
ZHBfeWNiY3I0MjBfY29uZmlnKHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsNCj4gIAlpZiAocmV0
KQ0KPiAgCQlyZXR1cm4gcmV0Ow0KPiANCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
