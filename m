Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D3B27DD5E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 02:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2CD089CA8;
	Wed, 30 Sep 2020 00:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C4089A4E
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 00:29:10 +0000 (UTC)
IronPort-SDR: iELQ7VjkOWeKymrSKwEB6D8NMUQ2F/Ou+Nagvd1zhW2Lh/ygkMGMeGA27wOOeLmCdxUW2Cm02Y
 D94R3atcW2CQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="141730833"
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="141730833"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 17:29:06 -0700
IronPort-SDR: ftQ3AbZ5kFGBcSeL/Ba8bju4tHqxhFkobe0CxzmnSXOcCKBB6abVN2BIiEyw5hKP6zmqfkf4vA
 CieP0tTBZvvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="351343391"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga007.jf.intel.com with ESMTP; 29 Sep 2020 17:29:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 29 Sep 2020 17:29:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 29 Sep 2020 17:29:05 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 29 Sep 2020 17:29:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Read DIMM size in Gb rather than GB
Thread-Index: AQHWlmJnf1kGGKHg5keHawsP+9CfhqmAyuYA
Date: Wed, 30 Sep 2020 00:29:04 +0000
Message-ID: <02a5b91b31675181820e8455bb9dd137da33a0a1.camel@intel.com>
References: <20200929131312.12999-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200929131312.12999-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <71CD9A8A807C6B4E9BB9452DEAFEED98@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Read DIMM size in Gb rather than
 GB
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

T24gVHVlLCAyMDIwLTA5LTI5IGF0IDE2OjEzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiA+DQo+IA0KPiBDTkwrIGNhbiByZXBvcnQgRElNTSBzaXplcyBpbiAuNSBHQiB1bml0cy4g
SW4gb3JkZXIgdG8gbm90IHRyYXVuY2F0ZQ0KPiBhd2F5IHRoZSAuNSBHQiBsZXQncyBzd2l0Y2gg
dG8gc3RvcmluZyB0aGUgRElNTSBzaXplIGluIEdiIHVuaXRzLg0KPiANCg0KUmV2aWV3ZWQtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IENjOiBT
d2F0aSBTaGFybWEgPA0KPiBzd2F0aTIuc2hhcm1hQGludGVsLmNvbQ0KPiA+DQo+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8DQo+IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
DQo+ID4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMgfCAyMyAr
KysrKysrKysrKystLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDExIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RyYW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYw0KPiBp
bmRleCA4YWExMmNhZDkzY2UuLjQ3NTQyOTZhMjUwZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RyYW0uYw0KPiBAQCAtNyw3ICs3LDggQEANCj4gICNpbmNsdWRlICJpbnRlbF9kcmFtLmgi
DQo+ICANCj4gIHN0cnVjdCBkcmFtX2RpbW1faW5mbyB7DQo+IC0JdTggc2l6ZSwgd2lkdGgsIHJh
bmtzOw0KPiArCXUxNiBzaXplOw0KPiArCXU4IHdpZHRoLCByYW5rczsNCj4gIH07DQo+ICANCj4g
IHN0cnVjdCBkcmFtX2NoYW5uZWxfaW5mbyB7DQo+IEBAIC00MSwxMCArNDIsMTAgQEAgc3RhdGlj
IGludCBpbnRlbF9kaW1tX251bV9kZXZpY2VzKGNvbnN0IHN0cnVjdCBkcmFtX2RpbW1faW5mbyAq
ZGltbSkNCj4gIAlyZXR1cm4gZGltbS0+cmFua3MgKiA2NCAvIChkaW1tLT53aWR0aCA/OiAxKTsN
Cj4gIH0NCj4gIA0KPiAtLyogUmV0dXJucyB0b3RhbCBHQiBmb3IgdGhlIHdob2xlIERJTU0gKi8N
Cj4gKy8qIFJldHVybnMgdG90YWwgR2IgZm9yIHRoZSB3aG9sZSBESU1NICovDQo+ICBzdGF0aWMg
aW50IHNrbF9nZXRfZGltbV9zaXplKHUxNiB2YWwpDQo+ICB7DQo+IC0JcmV0dXJuIHZhbCAmIFNL
TF9EUkFNX1NJWkVfTUFTSzsNCj4gKwlyZXR1cm4gKHZhbCAmIFNLTF9EUkFNX1NJWkVfTUFTSykg
KiA4Ow0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgaW50IHNrbF9nZXRfZGltbV93aWR0aCh1MTYgdmFs
KQ0KPiBAQCAtNzQsMTAgKzc1LDEwIEBAIHN0YXRpYyBpbnQgc2tsX2dldF9kaW1tX3JhbmtzKHUx
NiB2YWwpDQo+ICAJcmV0dXJuIHZhbCArIDE7DQo+ICB9DQo+ICANCj4gLS8qIFJldHVybnMgdG90
YWwgR0IgZm9yIHRoZSB3aG9sZSBESU1NICovDQo+ICsvKiBSZXR1cm5zIHRvdGFsIEdiIGZvciB0
aGUgd2hvbGUgRElNTSAqLw0KPiAgc3RhdGljIGludCBjbmxfZ2V0X2RpbW1fc2l6ZSh1MTYgdmFs
KQ0KPiAgew0KPiAtCXJldHVybiAodmFsICYgQ05MX0RSQU1fU0laRV9NQVNLKSAvIDI7DQo+ICsJ
cmV0dXJuICh2YWwgJiBDTkxfRFJBTV9TSVpFX01BU0spICogOCAvIDI7DQo+ICB9DQo+ICANCj4g
IHN0YXRpYyBpbnQgY25sX2dldF9kaW1tX3dpZHRoKHUxNiB2YWwpDQo+IEBAIC0xMTAsOCArMTEx
LDggQEAgc3RhdGljIGludCBjbmxfZ2V0X2RpbW1fcmFua3ModTE2IHZhbCkNCj4gIHN0YXRpYyBi
b29sDQo+ICBza2xfaXNfMTZnYl9kaW1tKGNvbnN0IHN0cnVjdCBkcmFtX2RpbW1faW5mbyAqZGlt
bSkNCj4gIHsNCj4gLQkvKiBDb252ZXJ0IHRvdGFsIEdCIHRvIEdiIHBlciBEUkFNIGRldmljZSAq
Lw0KPiAtCXJldHVybiA4ICogZGltbS0+c2l6ZSAvIChpbnRlbF9kaW1tX251bV9kZXZpY2VzKGRp
bW0pID86IDEpID09IDE2Ow0KPiArCS8qIENvbnZlcnQgdG90YWwgR2IgdG8gR2IgcGVyIERSQU0g
ZGV2aWNlICovDQo+ICsJcmV0dXJuIGRpbW0tPnNpemUgLyAoaW50ZWxfZGltbV9udW1fZGV2aWNl
cyhkaW1tKSA/OiAxKSA9PSAxNjsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQNCj4gQEAgLTEz
MCw3ICsxMzEsNyBAQCBza2xfZHJhbV9nZXRfZGltbV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LA0KPiAgCX0NCj4gIA0KPiAgCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+IC0J
CSAgICAiQ0gldSBESU1NICVjIHNpemU6ICV1IEdCLCB3aWR0aDogWCV1LCByYW5rczogJXUsIDE2
R2IgRElNTXM6ICVzXG4iLA0KPiArCQkgICAgIkNIJXUgRElNTSAlYyBzaXplOiAldSBHYiwgd2lk
dGg6IFgldSwgcmFua3M6ICV1LCAxNkdiIERJTU1zOiAlc1xuIiwNCj4gIAkJICAgIGNoYW5uZWws
IGRpbW1fbmFtZSwgZGltbS0+c2l6ZSwgZGltbS0+d2lkdGgsIGRpbW0tPnJhbmtzLA0KPiAgCQkg
ICAgeWVzbm8oc2tsX2lzXzE2Z2JfZGltbShkaW1tKSkpOw0KPiAgfQ0KPiBAQCAtMzU0LDkgKzM1
NSw5IEBAIHN0YXRpYyB2b2lkIGJ4dF9nZXRfZGltbV9pbmZvKHN0cnVjdCBkcmFtX2RpbW1faW5m
byAqZGltbSwgdTMyIHZhbCkNCj4gIA0KPiAgCS8qDQo+ICAJICogU2l6ZSBpbiByZWdpc3RlciBp
cyBHYiBwZXIgRFJBTSBkZXZpY2UuIENvbnZlcnQgdG8gdG90YWwNCj4gLQkgKiBHQiB0byBtYXRj
aCB0aGUgd2F5IHdlIHJlcG9ydCB0aGlzIGZvciBub24tTFAgcGxhdGZvcm1zLg0KPiArCSAqIEdi
IHRvIG1hdGNoIHRoZSB3YXkgd2UgcmVwb3J0IHRoaXMgZm9yIG5vbi1MUCBwbGF0Zm9ybXMuDQo+
ICAJICovDQo+IC0JZGltbS0+c2l6ZSA9IGJ4dF9nZXRfZGltbV9zaXplKHZhbCkgKiBpbnRlbF9k
aW1tX251bV9kZXZpY2VzKGRpbW0pIC8gODsNCj4gKwlkaW1tLT5zaXplID0gYnh0X2dldF9kaW1t
X3NpemUodmFsKSAqIGludGVsX2RpbW1fbnVtX2RldmljZXMoZGltbSk7DQo+ICB9DQo+ICANCj4g
IHN0YXRpYyBpbnQgYnh0X2dldF9kcmFtX2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpDQo+IEBAIC00MDQsNyArNDA1LDcgQEAgc3RhdGljIGludCBieHRfZ2V0X2RyYW1faW5mbyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIAkJCSAgICBkcmFtX2luZm8tPnR5cGUg
IT0gdHlwZSk7DQo+ICANCj4gIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gLQkJCSAgICAi
Q0gldSBESU1NIHNpemU6ICV1IEdCLCB3aWR0aDogWCV1LCByYW5rczogJXUsIHR5cGU6ICVzXG4i
LA0KPiArCQkJICAgICJDSCV1IERJTU0gc2l6ZTogJXUgR2IsIHdpZHRoOiBYJXUsIHJhbmtzOiAl
dSwgdHlwZTogJXNcbiIsDQo+ICAJCQkgICAgaSAtIEJYVF9EX0NSX0RSUDBfRFVOSVRfU1RBUlQs
DQo+ICAJCQkgICAgZGltbS5zaXplLCBkaW1tLndpZHRoLCBkaW1tLnJhbmtzLA0KPiAgCQkJICAg
IGludGVsX2RyYW1fdHlwZV9zdHIodHlwZSkpOw0KPiANCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
