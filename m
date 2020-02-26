Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8F8170BD7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 23:47:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0EAE6E1B1;
	Wed, 26 Feb 2020 22:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1DF6E1B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 22:47:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 14:47:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="230581871"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga007.fm.intel.com with ESMTP; 26 Feb 2020 14:47:24 -0800
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Feb 2020 14:47:25 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.49]) with mapi id 14.03.0439.000;
 Wed, 26 Feb 2020 14:47:25 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4] drm/i915/tgl: Add Wa_1606054188:tgl
Thread-Index: AQHV62MD5cdgps78/USkBfpPh35QcqgunP+A
Date: Wed, 26 Feb 2020 22:47:24 +0000
Message-ID: <4dbedbcb4202dc473038367129de1a5b1e5e9e17.camel@intel.com>
References: <20200201082834.10163-1-matthew.s.atwood@intel.com>
 <20200224223651.3801646-1-matthew.d.roper@intel.com>
In-Reply-To: <20200224223651.3801646-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.234]
Content-ID: <16E7296F290F204FB629DD012D2ABCB1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/tgl: Add Wa_1606054188:tgl
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

T24gTW9uLCAyMDIwLTAyLTI0IGF0IDE0OjM2IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBG
cm9tOiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+DQo+IA0KPiBPbiBU
aWdlciBMYWtlIHdlIGRvIG5vdCBzdXBwb3J0IHNvdXJjZSBrZXlpbmcgaW4gdGhlIHBpeGVsIGZv
cm1hdHMNCj4gUDAxMCwNCj4gUDAxMiwgUDAxNi4NCj4gDQo+IHYyOiBNb3ZlIFdBIHRvIGVuZCBv
ZiBmdW5jdGlvbi4gQ3JlYXRlIGhlbHBlciBmdW5jdGlvbiBmb3IgZm9ybWF0DQo+IGNoZWNrLiBM
ZXNzIHZlcmJvc2UgZGVidWdnaW5nIG1lc3NhZ2luZy4NCj4gDQo+IHYzOiB3aGl0ZXNwYWNlDQo+
IA0KPiB2NChNYXR0Uik6DQo+ICAtIEFjdHVhbGx5IHJldHVybiBFSU5WQUwgdG8gcmVqZWN0IHRo
aXMgY29tYmluYXRpb24uDQo+ICAtIFBhc3MgZm9ybWF0IHBhcmFtZXRlciBhcyB1MzIuDQo+ICAt
IE1ha2UgdGVzdCBUR0wtc3BlY2lmaWMgZm9yIG5vdy4NCj4gIC0gU3dpdGNoIHRvIHBlci1kZXZp
Y2UgbG9nZ2luZy4NCj4gIC0gU2hvcnRlbi9zaW1wbGlmeSBjb21tZW50Lg0KDQpSZXZpZXdlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+
IEJzcGVjOiA1Mjg5MA0KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4NCj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+DQo+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+DQo+IFNp
Z25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDIxDQo+
ICsrKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMo
KykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUu
Yw0KPiBpbmRleCA3YWJlZWZlOGRjZTUuLmRjN2QzZjNmNGViMyAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+IEBAIC0yMDc3LDYgKzIwNzcs
MTggQEAgdmx2X3Nwcml0ZV9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19z
dGF0ZSwNCj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gIA0KPiArc3RhdGljIGJvb2wgaW50ZWxfZm9y
bWF0X2lzX3AwMXgodTMyIGZvcm1hdCkNCj4gK3sNCj4gKwlzd2l0Y2ggKGZvcm1hdCkgew0KPiAr
CWNhc2UgRFJNX0ZPUk1BVF9QMDEwOg0KPiArCWNhc2UgRFJNX0ZPUk1BVF9QMDEyOg0KPiArCWNh
c2UgRFJNX0ZPUk1BVF9QMDE2Og0KPiArCQlyZXR1cm4gdHJ1ZTsNCj4gKwlkZWZhdWx0Og0KPiAr
CQlyZXR1cm4gZmFsc2U7DQo+ICsJfQ0KPiArfQ0KPiArDQo+ICBzdGF0aWMgaW50IHNrbF9wbGFu
ZV9jaGVja19mYihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwN
Cj4gIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZQ0KPiAqcGxhbmVfc3Rh
dGUpDQo+ICB7DQo+IEBAIC0yMTU1LDYgKzIxNjcsMTUgQEAgc3RhdGljIGludCBza2xfcGxhbmVf
Y2hlY2tfZmIoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+
ICAJCXJldHVybiAtRUlOVkFMOw0KPiAgCX0NCj4gIA0KPiArCS8qIFdhXzE2MDYwNTQxODg6dGds
ICovDQo+ICsJaWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikgJiYNCj4gKwkgICAgcGxhbmVfc3Rh
dGUtPmNrZXkuZmxhZ3MgJiBJOTE1X1NFVF9DT0xPUktFWV9TT1VSQ0UgJiYNCj4gKwkgICAgaW50
ZWxfZm9ybWF0X2lzX3AwMXgoZmItPmZvcm1hdC0+Zm9ybWF0KSkgew0KPiArCQlkcm1fZGJnX2tt
cygmZGV2X3ByaXYtPmRybSwNCj4gKwkJCSAgICAiU291cmNlIGNvbG9yIGtleWluZyBub3Qgc3Vw
cG9ydGVkIHdpdGgNCj4gUDAxeCBmb3JtYXRzXG4iKTsNCj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+
ICsJfQ0KPiArDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+ICANCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
