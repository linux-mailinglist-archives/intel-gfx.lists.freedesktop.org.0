Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C4E4C19E9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 18:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64CE710F3A6;
	Wed, 23 Feb 2022 17:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32AEB10F3A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 17:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645637552; x=1677173552;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZZxzW7xTGDLFjXUdak3Or8qnEGXr4dh6vK5FpL2b9gI=;
 b=FW0DdErQWTs8uvZwmnFtls9BkLI/z0ac0Mj5eqqnGJfYZVsyEv8OY7AP
 emqYVSR1OTtwoxAQoPIH12bUByPLuwJPS7x1saAckb10BhgfanRLuo7DJ
 iehoCdVr7TCc7SG1rrABF3xucRLbyUbmiR3rolBsN/UaDZPJefCT3a8CS
 +WEm6IOMyTFQBJip43WdWkJqeVhKJ52Fc6rVp5mZM99+hKULsSFyoj4Ny
 YjBfduqkEQu9tBbhFDybQ+6iK2Wj5+ZLZWsDffBAn9+LZyD5uA4wnqMh/
 A6ErfAYQHmDXhxMg00koWdK74uwyZ5Sr4/+4JhtRmPy403DnU+bSmyI7D g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="252226744"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="252226744"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 09:32:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="508529377"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 23 Feb 2022 09:32:30 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 23 Feb 2022 09:32:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 23 Feb 2022 09:32:29 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 23 Feb 2022 09:32:29 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v2] drm/i915/psr: Set "SF Partial Frame Enable" also on
 full update
Thread-Index: AQHYKLO32W3aDu0fS0OfLidgMR2vtqyh7AKA
Date: Wed, 23 Feb 2022 17:32:29 +0000
Message-ID: <4cb2fee5d362cf2ac7172ad1405d164c6b0206dd.camel@intel.com>
References: <20220223124807.3284451-1-jouni.hogander@intel.com>
In-Reply-To: <20220223124807.3284451-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <1601838886E2B64C99F51941F7DF15C9@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Set "SF Partial Frame
 Enable" also on full update
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
Cc: "mharpau@gmail.com" <mharpau@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTAyLTIzIGF0IDE0OjQ4ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnRseSB3ZSBhcmUgb2JzZXJ2aW5nIG9jY2FzaW9uYWwgc2NyZWVuIGZsaWNrZXJp
bmcgd2hlbg0KPiBQU1IyIHNlbGVjdGl2ZSBmZXRjaCBpcyBlbmFibGVkLiBNb3JlIHNwZWNpZmlj
YWxseSBnbGl0Y2ggc2VlbXMNCj4gdG8gaGFwcGVuIG9uIGZ1bGwgZnJhbWUgdXBkYXRlIHdoZW4g
Y3Vyc29yIG1vdmVzIHRvIGNvb3Jkcw0KPiB4ID0gLTEgb3IgeSA9IC0xLg0KPiANCj4gQWNjb3Jk
aW5nIHRvIEJzcGVjIFNGIFNpbmdsZSBmdWxsIGZyYW1lIHNob3VsZCBub3QgYmUgc2V0IGlmDQo+
IFNGIFBhcnRpYWwgRnJhbWUgRW5hYmxlIGlzIG5vdCBzZXQuIFRoaXMgaGFwcGVuZWQgdG8gYmUg
dHJ1ZSBmb3INCj4gQURMUCBhcyBQU1IyX01BTl9UUktfQ1RMX0VOQUJMRSBpcyBhbHdheXMgc2V0
IGFuZCBmb3IgQURMUCBpdCdzDQo+IGFjdHVhbGx5ICJTRiBQYXJ0aWFsIEZyYW1lIEVuYWJsZSIg
KEJpdCAzMSkuDQo+IA0KPiBTZXR0aW5nICJTRiBQYXJ0aWFsIEZyYW1lIEVuYWJsZSIgYml0IGFs
c28gb24gZnVsbCB1cGRhdGUgc2VlbXMgdG8NCj4gZml4IHNjcmVlbiBmbGlja2VyaW5nLg0KPiAN
Cj4gQWxzbyBtYWtlIGNvZGUgbW9yZSBjbGVhciBieSBzZXR0aW5nIFBTUjJfTUFOX1RSS19DVExf
RU5BQkxFDQo+IG9ubHkgaWYgbm90IG9uIEFETFAgYXMgdGhpcyBiaXQgZG9lc24ndCBleGlzdCBp
biBBRExQLg0KDQpCaXQgZXhpc3QgYnV0IGhhcyBhbm90aGVyIG5hbWUuDQoNCj4gDQo+IEJzcGVj
OiA0OTI3NA0KPiANCj4gdjI6IEZpeCBNaWhhaSBIYXJwYXUgZW1haWwgYWRkcmVzcw0KPiANCj4g
UmVwb3J0ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+DQo+IENjOiBNaWhhaSBI
YXJwYXUgPG1oYXJwYXVAZ21haWwuY29tPg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiBCdWd6aWxsYTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy81MDc3DQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyMCArKysrKysrKysrKysrKysrKystLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8ICAxICsNCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAyZTBiMDkyZjRi
NmIuLjkwYWNhNzVlMDVlMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IEBAIC0xNDM5LDYgKzE0MzksMTMgQEAgc3RhdGljIGlubGluZSB1MzIgbWFu
X3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJhbWVfYml0X2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZQ0KPiAgCSAgICAgICBQU1IyX01BTl9UUktfQ1RMX1NGX1NJTkdMRV9GVUxMX0ZSQU1FOw0KPiAg
fQ0KPiAgDQo+ICtzdGF0aWMgaW5saW5lIHUzMiBtYW5fdHJrX2N0bF9wYXJ0aWFsX2ZyYW1lX2Jp
dF9nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiArew0KPiArCXJldHVy
biBJU19BTERFUkxBS0VfUChkZXZfcHJpdikgPw0KPiArCSAgICAgICBBRExQX1BTUjJfTUFOX1RS
S19DVExfU0ZfUEFSVElBTF9GUkFNRV9VUERBVEUgOg0KPiArCSAgICAgICBQU1IyX01BTl9UUktf
Q1RMX1NGX1BBUlRJQUxfRlJBTUVfVVBEQVRFOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBw
c3JfZm9yY2VfaHdfdHJhY2tpbmdfZXhpdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAg
ew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50
ZWxfZHApOw0KPiBAQCAtMTU0Myw3ICsxNTUwLDE3IEBAIHN0YXRpYyB2b2lkIHBzcjJfbWFuX3Ry
a19jdGxfY2FsYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIHsNCj4g
IAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFw
aS5jcnRjKTsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGNydGMtPmJhc2UuZGV2KTsNCj4gLQl1MzIgdmFsID0gUFNSMl9NQU5fVFJLX0NUTF9FTkFCTEU7
DQo+ICsJdTMyIHZhbCA9IDA7DQo+ICsNCj4gKwkvKg0KPiArCSAqIEFETF9QIGRvZXNuJ3QgaGF2
ZSBIVyB0cmFja2luZyBub3IgbWFudWFsIHRyYWNraW5nIGVuYWJsZQ0KPiArCSAqIGJpdA0KPiAr
CSAqLw0KDQpOaXQ6IFVubmVjZXNzYXJ5IGNvbW1lbnQuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiArCWlmICghSVNfQUxE
RVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiArCQl2YWwgPSBQU1IyX01BTl9UUktfQ1RMX0VOQUJMRTsN
Cj4gKw0KPiArCS8qIFNGIHBhcnRpYWwgZnJhbWUgZW5hYmxlIGhhcyB0byBiZSBzZXQgZXZlbiBv
biBmdWxsIHVwZGF0ZSAqLw0KPiArCXZhbCB8PSBtYW5fdHJrX2N0bF9wYXJ0aWFsX2ZyYW1lX2Jp
dF9nZXQoZGV2X3ByaXYpOw0KPiAgDQo+ICAJaWYgKGZ1bGxfdXBkYXRlKSB7DQo+ICAJCS8qDQo+
IEBAIC0xNTYzLDcgKzE1ODAsNiBAQCBzdGF0aWMgdm9pZCBwc3IyX21hbl90cmtfY3RsX2NhbGMo
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJfSBlbHNlIHsNCj4gIAkJ
ZHJtX1dBUk5fT04oY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYsIGNsaXAtPnkxICUgNCB8fCBj
bGlwLT55MiAlIDQpOw0KPiAgDQo+IC0JCXZhbCB8PSBQU1IyX01BTl9UUktfQ1RMX1NGX1BBUlRJ
QUxfRlJBTUVfVVBEQVRFOw0KPiAgCQl2YWwgfD0gUFNSMl9NQU5fVFJLX0NUTF9TVV9SRUdJT05f
U1RBUlRfQUREUihjbGlwLT55MSAvIDQgKyAxKTsNCj4gIAkJdmFsIHw9IFBTUjJfTUFOX1RSS19D
VExfU1VfUkVHSU9OX0VORF9BRERSKGNsaXAtPnkyIC8gNCArIDEpOw0KPiAgCX0NCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oDQo+IGluZGV4IDJiOGEzMDg2ZWQzNS4uODliYmI2NGU1MjBkIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTIzMTYsNiArMjMxNiw3IEBADQo+ICAj
ZGVmaW5lICBBRExQX1BTUjJfTUFOX1RSS19DVExfU1VfUkVHSU9OX1NUQVJUX0FERFIodmFsKQlS
RUdfRklFTERfUFJFUChBRExQX1BTUjJfTUFOX1RSS19DVExfU1VfUkVHSU9OX1NUQVJUX0FERFJf
TUFTSywgdmFsKQ0KPiAgI2RlZmluZSAgQURMUF9QU1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9F
TkRfQUREUl9NQVNLCQlSRUdfR0VOTUFTSygxMiwgMCkNCj4gICNkZWZpbmUgIEFETFBfUFNSMl9N
QU5fVFJLX0NUTF9TVV9SRUdJT05fRU5EX0FERFIodmFsKQkJUkVHX0ZJRUxEX1BSRVAoQURMUF9Q
U1IyX01BTl9UUktfQ1RMX1NVX1JFR0lPTl9FTkRfQUREUl9NQVNLLCB2YWwpDQo+ICsjZGVmaW5l
ICBBRExQX1BTUjJfTUFOX1RSS19DVExfU0ZfUEFSVElBTF9GUkFNRV9VUERBVEUJCVJFR19CSVQo
MzEpDQo+ICAjZGVmaW5lICBBRExQX1BTUjJfTUFOX1RSS19DVExfU0ZfU0lOR0xFX0ZVTExfRlJB
TUUJCVJFR19CSVQoMTQpDQo+ICAjZGVmaW5lICBBRExQX1BTUjJfTUFOX1RSS19DVExfU0ZfQ09O
VElOVU9TX0ZVTExfRlJBTUUJCVJFR19CSVQoMTMpDQo+ICANCg0K
