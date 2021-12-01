Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B034653CA
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 18:17:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C951E6E868;
	Wed,  1 Dec 2021 17:17:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E6D06E868
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 17:17:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="235235311"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="235235311"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 09:14:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="477612582"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 01 Dec 2021 09:14:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:14:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:13:59 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 09:13:59 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 01/14] drm/i915: Get rid of the 64bit
 PLANE_CC_VAL mmio
Thread-Index: AQHX5sfHPBVgPTbgdk2Yb3i+2fR+j6weZnCA
Date: Wed, 1 Dec 2021 17:13:59 +0000
Message-ID: <74347fbf9f530ed8ef60e4e365e6f8c71db74e94.camel@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20211201152552.7821-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <FCC62FFA61D54D45BF4C68734F56DA60@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/14] drm/i915: Get rid of the 64bit
 PLANE_CC_VAL mmio
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTEyLTAxIGF0IDE3OjI1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTGV0J3MganVzdCBzdGljayB0byAzMmJpdCBtbWlvIGFjY2Vzc2VzIHNvIHdlIGNhbiBn
ZXQgcmlkDQo+IG9mIHRoZSBiYXJlICJ1bmNvcmUiIHJlZyBhY2Nlc3MgaW4gZGlzcGxheSBjb2Rl
LiBUaGUgcmVnaXN0ZXINCj4gYXJlIGRlZmluZWQgYXMgMzJiaXQgaW4gdGhlIHNwZWMgYW55d2F5
Lg0KPiANCj4gV2UgY291bGQgZGVmaW5lIGEgNjRiaXQgImRlIiB2YXJpYW50IEkgc3VwcG9zZSwg
YnV0IGRvZXNuJ3QNCj4gcmVhbGx5IG1ha2UgbXVjaCBzZW5zZSBqdXN0IGZvciB0aGlzIG9uZSBj
YXNlLCBhbmQgd2hlbiB3ZQ0KPiBzdGFydCB0byB1c2UgdGhlIERTQiBmb3IgdGhpcyBzdHVmZiB3
ZSdkIGFsc28gbmVlZCBhbm90aGVyDQo+IDY0Yml0IHZhcmlhbnQgZm9yIHRoYXQuIEp1c3QgZWFz
aWVyIHRvIGRvIDMyYml0IGFsd2F5cy4NCj4gDQo+IFdoaWxlIGF0IGl0IHdlIGNhbiByZW9yZGVy
IHN0dWZmIGEgYml0IHNvIHRoYXQgd2Ugd3JpdGUgdGhlDQo+IHJlZ2lzdGVycyBpbiBvcmRlciBv
ZiBpbmNyZWFzaW5nIG9mZnNldCAobW9yZSBvciBsZXNzKS4NCg0KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFu
ZS5jIHwgMTEgKysrKysrKy0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICAgICAgICAgICAgIHwgMTIgKysrKysrLS0tLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQs
IDEzIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gaW5kZXggMjg4
OTA4NzZiZGViLi44NDViOTk4NDRlYzYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IEBAIC0xMDQ3LDYgKzEwNDcs
MTMgQEAgc2tsX3Byb2dyYW1fcGxhbmVfbm9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwN
Cj4gIAlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfU0laRShwaXBlLCBwbGFuZV9p
ZCksDQo+ICAJCQkgIChzcmNfaCA8PCAxNikgfCBzcmNfdyk7DQo+ICANCj4gKwlpZiAoaW50ZWxf
ZmJfaXNfcmNfY2NzX2NjX21vZGlmaWVyKGZiLT5tb2RpZmllcikpIHsNCj4gKwkJaW50ZWxfZGVf
d3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NDX1ZBTChwaXBlLCBwbGFuZV9pZCwgMCksDQo+ICsJ
CQkJICBsb3dlcl8zMl9iaXRzKHBsYW5lX3N0YXRlLT5jY3ZhbCkpOw0KPiArCQlpbnRlbF9kZV93
cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfQ0NfVkFMKHBpcGUsIHBsYW5lX2lkLCAxKSwNCj4gKwkJ
CQkgIHVwcGVyXzMyX2JpdHMocGxhbmVfc3RhdGUtPmNjdmFsKSk7DQo+ICsJfQ0KPiArDQo+ICAJ
aWYgKGljbF9pc19oZHJfcGxhbmUoZGV2X3ByaXYsIHBsYW5lX2lkKSkNCj4gIAkJaW50ZWxfZGVf
d3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NVU19DVEwocGlwZSwgcGxhbmVfaWQpLA0KPiAgCQkJ
CSAgcGxhbmVfc3RhdGUtPmN1c19jdGwpOw0KPiBAQCAtMTA1NCwxMCArMTA2MSw2IEBAIHNrbF9w
cm9ncmFtX3BsYW5lX25vYXJtKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJaWYgKGZi
LT5mb3JtYXQtPmlzX3l1diAmJiBpY2xfaXNfaGRyX3BsYW5lKGRldl9wcml2LCBwbGFuZV9pZCkp
DQo+ICAJCWljbF9wcm9ncmFtX2lucHV0X2NzYyhwbGFuZSwgY3J0Y19zdGF0ZSwgcGxhbmVfc3Rh
dGUpOw0KPiAgDQo+IC0JaWYgKGludGVsX2ZiX2lzX3JjX2Njc19jY19tb2RpZmllcihmYi0+bW9k
aWZpZXIpKQ0KPiAtCQlpbnRlbF91bmNvcmVfd3JpdGU2NF9mdygmZGV2X3ByaXYtPnVuY29yZSwN
Cj4gLQkJCQkJUExBTkVfQ0NfVkFMKHBpcGUsIHBsYW5lX2lkKSwgcGxhbmVfc3RhdGUtPmNjdmFs
KTsNCj4gLQ0KPiAgCXNrbF93cml0ZV9wbGFuZV93bShwbGFuZSwgY3J0Y19zdGF0ZSk7DQo+ICAN
Cj4gIAlpbnRlbF9wc3IyX3Byb2dyYW1fcGxhbmVfc2VsX2ZldGNoKHBsYW5lLCBjcnRjX3N0YXRl
LCBwbGFuZV9zdGF0ZSwgY29sb3JfcGxhbmUpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4g
aW5kZXggMzQ1MDgxODgwMmMyLi4zYzA0NzFmMjBlNTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaA0KPiBAQCAtNzM2MywxMiArNzM2MywxMiBAQCBlbnVtIHsNCj4gICNkZWZpbmUgX1BM
QU5FX05WMTJfQlVGX0NGR18xX0EJCTB4NzAyNzgNCj4gICNkZWZpbmUgX1BMQU5FX05WMTJfQlVG
X0NGR18yX0EJCTB4NzAzNzgNCj4gIA0KPiAtI2RlZmluZSBfUExBTkVfQ0NfVkFMXzFfQgkJCTB4
NzExYjQNCj4gLSNkZWZpbmUgX1BMQU5FX0NDX1ZBTF8yX0IJCQkweDcxMmI0DQo+IC0jZGVmaW5l
IF9QTEFORV9DQ19WQUxfMShwaXBlKQlfUElQRShwaXBlLCBfUExBTkVfQ0NfVkFMXzFfQSwgX1BM
QU5FX0NDX1ZBTF8xX0IpDQo+IC0jZGVmaW5lIF9QTEFORV9DQ19WQUxfMihwaXBlKQlfUElQRShw
aXBlLCBfUExBTkVfQ0NfVkFMXzJfQSwgX1BMQU5FX0NDX1ZBTF8yX0IpDQo+IC0jZGVmaW5lIFBM
QU5FX0NDX1ZBTChwaXBlLCBwbGFuZSkJXA0KPiAtCV9NTUlPX1BMQU5FKHBsYW5lLCBfUExBTkVf
Q0NfVkFMXzEocGlwZSksIF9QTEFORV9DQ19WQUxfMihwaXBlKSkNCj4gKyNkZWZpbmUgX1BMQU5F
X0NDX1ZBTF8xX0IJCTB4NzExYjQNCj4gKyNkZWZpbmUgX1BMQU5FX0NDX1ZBTF8yX0IJCTB4NzEy
YjQNCj4gKyNkZWZpbmUgX1BMQU5FX0NDX1ZBTF8xKHBpcGUsIGR3KQkoX1BJUEUocGlwZSwgX1BM
QU5FX0NDX1ZBTF8xX0EsIF9QTEFORV9DQ19WQUxfMV9CKSArIChkdykgKiA0KQ0KPiArI2RlZmlu
ZSBfUExBTkVfQ0NfVkFMXzIocGlwZSwgZHcpCShfUElQRShwaXBlLCBfUExBTkVfQ0NfVkFMXzJf
QSwgX1BMQU5FX0NDX1ZBTF8yX0IpICsgKGR3KSAqIDQpDQo+ICsjZGVmaW5lIFBMQU5FX0NDX1ZB
TChwaXBlLCBwbGFuZSwgZHcpIFwNCj4gKwlfTU1JT19QTEFORSgocGxhbmUpLCBfUExBTkVfQ0Nf
VkFMXzEoKHBpcGUpLCAoZHcpKSwgX1BMQU5FX0NDX1ZBTF8yKChwaXBlKSwgKGR3KSkpDQo+ICAN
Cj4gIC8qIElucHV0IENTQyBSZWdpc3RlciBEZWZpbml0aW9ucyAqLw0KPiAgI2RlZmluZSBfUExB
TkVfSU5QVVRfQ1NDX1JZX0dZXzFfQQkweDcwMUUwDQoNCg==
