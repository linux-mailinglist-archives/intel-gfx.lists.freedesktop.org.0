Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A95A0EBB71
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 01:39:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984366F6A6;
	Fri,  1 Nov 2019 00:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 029016F6A6
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 00:39:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 17:39:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,253,1569308400"; d="scan'208";a="194508357"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga008.jf.intel.com with ESMTP; 31 Oct 2019 17:39:37 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 31 Oct 2019 17:39:36 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 fmsmsx122.amr.corp.intel.com ([169.254.5.107]) with mapi id 14.03.0439.000;
 Thu, 31 Oct 2019 17:39:36 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 4/5] drm/i915: avoid reading DP_TP_CTL twice
Thread-Index: AQHVjsDpyCr//wEPh06B5kiM9STGuqd18YGA
Date: Fri, 1 Nov 2019 00:39:36 +0000
Message-ID: <a9300b4d8c98d8f35c60008799b1444eb736d814.camel@intel.com>
References: <20191030012448.14937-1-lucas.demarchi@intel.com>
 <20191030012448.14937-5-lucas.demarchi@intel.com>
In-Reply-To: <20191030012448.14937-5-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <46BDCFDDA93A4548B35BAC54B4432B39@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: avoid reading DP_TP_CTL twice
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

T24gVHVlLCAyMDE5LTEwLTI5IGF0IDE4OjI0IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEp1c3QgYXZvaWQgdGhlIGFkZGl0aW9uYWwgcmVhZCBpbiBjYXNlIERQX1RQX0NUTCBpcyBl
bmFibGVkOg0KPiByZWFkIGl0IG9uY2UgYW5kIHNhdmUgdGhlIHZhbHVlLg0KDQpSZXZpZXdlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAz
MyArKysrKysrKysrKystLS0tLS0tLQ0KPiAtLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5z
ZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggMmNlOTk4NTI5ZDA4Li40MWI5YjlhNjc3MmEg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAt
NDE0OCwzNyArNDE0OCwzOCBAQCBzdGF0aWMgdm9pZA0KPiBpbnRlbF9kZGlfcHJlcGFyZV9saW5r
X3JldHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPQ0KPiAgCQl0b19pOTE1KGludGVsX2RpZ19wb3J0LT5iYXNlLmJh
c2UuZGV2KTsNCj4gIAllbnVtIHBvcnQgcG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7
DQo+IC0JdTMyIHZhbDsNCj4gKwl1MzIgZHBfdHBfY3RsLCBkZGlfYnVmX2N0bDsNCj4gIAlib29s
IHdhaXQgPSBmYWxzZTsNCj4gIA0KPiAtCWlmIChJOTE1X1JFQUQoaW50ZWxfZHAtPnJlZ3MuZHBf
dHBfY3RsKSAmIERQX1RQX0NUTF9FTkFCTEUpIHsNCj4gLQkJdmFsID0gSTkxNV9SRUFEKERESV9C
VUZfQ1RMKHBvcnQpKTsNCj4gLQkJaWYgKHZhbCAmIERESV9CVUZfQ1RMX0VOQUJMRSkgew0KPiAt
CQkJdmFsICY9IH5ERElfQlVGX0NUTF9FTkFCTEU7DQo+IC0JCQlJOTE1X1dSSVRFKERESV9CVUZf
Q1RMKHBvcnQpLCB2YWwpOw0KPiArCWRwX3RwX2N0bCA9IEk5MTVfUkVBRChpbnRlbF9kcC0+cmVn
cy5kcF90cF9jdGwpOw0KPiArDQo+ICsJaWYgKGRwX3RwX2N0bCAmIERQX1RQX0NUTF9FTkFCTEUp
IHsNCj4gKwkJZGRpX2J1Zl9jdGwgPSBJOTE1X1JFQUQoRERJX0JVRl9DVEwocG9ydCkpOw0KPiAr
CQlpZiAoZGRpX2J1Zl9jdGwgJiBERElfQlVGX0NUTF9FTkFCTEUpIHsNCj4gKwkJCUk5MTVfV1JJ
VEUoRERJX0JVRl9DVEwocG9ydCksDQo+ICsJCQkJICAgZGRpX2J1Zl9jdGwgJiB+RERJX0JVRl9D
VExfRU5BQkxFKTsNCj4gIAkJCXdhaXQgPSB0cnVlOw0KPiAgCQl9DQo+ICANCj4gLQkJdmFsID0g
STkxNV9SRUFEKGludGVsX2RwLT5yZWdzLmRwX3RwX2N0bCk7DQo+IC0JCXZhbCAmPSB+KERQX1RQ
X0NUTF9FTkFCTEUgfCBEUF9UUF9DVExfTElOS19UUkFJTl9NQVNLKTsNCj4gLQkJdmFsIHw9IERQ
X1RQX0NUTF9MSU5LX1RSQUlOX1BBVDE7DQo+IC0JCUk5MTVfV1JJVEUoaW50ZWxfZHAtPnJlZ3Mu
ZHBfdHBfY3RsLCB2YWwpOw0KPiArCQlkcF90cF9jdGwgJj0gfihEUF9UUF9DVExfRU5BQkxFIHwN
Cj4gRFBfVFBfQ1RMX0xJTktfVFJBSU5fTUFTSyk7DQo+ICsJCWRwX3RwX2N0bCB8PSBEUF9UUF9D
VExfTElOS19UUkFJTl9QQVQxOw0KPiArCQlJOTE1X1dSSVRFKGludGVsX2RwLT5yZWdzLmRwX3Rw
X2N0bCwgZHBfdHBfY3RsKTsNCj4gIAkJUE9TVElOR19SRUFEKGludGVsX2RwLT5yZWdzLmRwX3Rw
X2N0bCk7DQo+ICANCj4gIAkJaWYgKHdhaXQpDQo+ICAJCQlpbnRlbF93YWl0X2RkaV9idWZfaWRs
ZShkZXZfcHJpdiwgcG9ydCk7DQo+ICAJfQ0KPiAgDQo+IC0JdmFsID0gRFBfVFBfQ1RMX0VOQUJM
RSB8DQo+IC0JICAgICAgRFBfVFBfQ1RMX0xJTktfVFJBSU5fUEFUMSB8IERQX1RQX0NUTF9TQ1JB
TUJMRV9ESVNBQkxFOw0KPiArCWRwX3RwX2N0bCA9IERQX1RQX0NUTF9FTkFCTEUgfA0KPiArCQkg
ICAgRFBfVFBfQ1RMX0xJTktfVFJBSU5fUEFUMSB8DQo+IERQX1RQX0NUTF9TQ1JBTUJMRV9ESVNB
QkxFOw0KPiAgCWlmIChpbnRlbF9kcC0+bGlua19tc3QpDQo+IC0JCXZhbCB8PSBEUF9UUF9DVExf
TU9ERV9NU1Q7DQo+ICsJCWRwX3RwX2N0bCB8PSBEUF9UUF9DVExfTU9ERV9NU1Q7DQo+ICAJZWxz
ZSB7DQo+IC0JCXZhbCB8PSBEUF9UUF9DVExfTU9ERV9TU1Q7DQo+ICsJCWRwX3RwX2N0bCB8PSBE
UF9UUF9DVExfTU9ERV9TU1Q7DQo+ICAJCWlmIChkcm1fZHBfZW5oYW5jZWRfZnJhbWVfY2FwKGlu
dGVsX2RwLT5kcGNkKSkNCj4gLQkJCXZhbCB8PSBEUF9UUF9DVExfRU5IQU5DRURfRlJBTUVfRU5B
QkxFOw0KPiArCQkJZHBfdHBfY3RsIHw9IERQX1RQX0NUTF9FTkhBTkNFRF9GUkFNRV9FTkFCTEU7
DQo+ICAJfQ0KPiAtCUk5MTVfV1JJVEUoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsLCB2YWwpOw0K
PiArCUk5MTVfV1JJVEUoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsLCBkcF90cF9jdGwpOw0KPiAg
CVBPU1RJTkdfUkVBRChpbnRlbF9kcC0+cmVncy5kcF90cF9jdGwpOw0KPiAgDQo+ICAJaW50ZWxf
ZHAtPkRQIHw9IERESV9CVUZfQ1RMX0VOQUJMRTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
