Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9851C4E741E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 14:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C6B10EAB6;
	Fri, 25 Mar 2022 13:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D972110EAB6
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 13:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648214528; x=1679750528;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8W2Lpw2EPVaKzHeDPu5/ciySTBo4/tBD+MBzDajo2Qo=;
 b=aO49i4ciuS4Crrnr8UUn9oFOMAUZi6kLgdBaLq9t3/0/6AgW5CdyDibQ
 r8rP2zxORt/nbt0O04jmVQVHARwh1YSssB0pGzyLUwk+HF4uJ9ZgBwRXC
 NnxBUWTKmTHu95itDd2afZUTkJ0Dy18dH9Q/zWif/T+IzPIcbtIMYITo0
 c3VQh6pFbZ8Twoeikc42FNHVTavgFGm634QUF2lcAheT1SfXBN2G2A4x9
 szCPF+KAE/JhtcPoecZESYBY1qm2rag3DnO9Fu2LU0x2jqQPaRTn35xZ+
 Jk2oAGVP952wPAe+p+uIFOgWyRIaK8+jt4NRFZT95ygjQPoqroPQpPyd3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="345068924"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="345068924"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 06:22:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="786527453"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 25 Mar 2022 06:22:08 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 25 Mar 2022 06:22:07 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Mar 2022 18:52:05 +0530
Received: from bgsmsx606.gar.corp.intel.com ([10.67.234.8]) by
 BGSMSX606.gar.corp.intel.com ([10.67.234.8]) with mapi id 15.01.2308.021;
 Fri, 25 Mar 2022 18:52:05 +0530
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsb: modified to drm_info in
 dsb_prepare()
Thread-Index: AQHYP1LWrHoRFGrpEkivWazVV+nYw6zN4qeAgAI0JjA=
Date: Fri, 25 Mar 2022 13:22:04 +0000
Message-ID: <768a2c9eec6e4427984b1d68757902d7@intel.com>
References: <20220324074300.21294-1-animesh.manna@intel.com>
 <176fa37d-3c9a-15ee-bb5d-b75c33d2e498@linux.intel.com>
In-Reply-To: <176fa37d-3c9a-15ee-bb5d-b75c33d2e498@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: modified to drm_info in
 dsb_prepare()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGFzLCBOaXJtb3kgPG5p
cm1veS5kYXNAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjQsIDIw
MjIgMjozOSBQTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
PjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJ
bnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZHNiOiBtb2RpZmllZCB0byBkcm1faW5mbyBpbg0K
PiBkc2JfcHJlcGFyZSgpDQo+IA0KPiANCj4gT24gMy8yNC8yMDIyIDg6NDMgQU0sIEFuaW1lc2gg
TWFubmEgd3JvdGU6DQo+ID4gVGhlIHJlcXVlc3QgdG8gYXFxdWlyZSBnZW0gcmVzb3VyY2VzIGlz
IGZhaWxpbmcgZm9yIERTQiBpbiByYXJlDQo+ID4gc2NlbmFyaW8gd2hlcmUgaXQgaXMgYnVzeSBh
bmQgdGhlIHJlZ2lzdGVyIHByb2dyYW1taW5nIHdpbGwgYmUgZG9uZQ0KPiA+IHRocm91Z2ggbW1p
byBmYWxsYmFjayBwYXRoLg0KPiA+DQo+ID4gRFNCIGhhcyBleHRyYSBhZHZhbnRhZ2Ugb2YgZmFz
dGVyIHJlZ2lzdGVyIHByb2dyYW1taW5nIHdoaWNoIG1heSBnbw0KPiA+IGF3YXkgdGhyb3VnaCBt
bWlvIHBhdGguIEFkZGluZyB3YWl0IGZvciBnZW0gcmVzb3VyY2UgYWxzbyBtYXkgbm90IGJlDQo+
ID4gcmlnaHQgYXMgYW55d2F5cyBsb3NpbmcgdGltZS4NCj4gPg0KPiA+IFRvIG1ha2UgdGhlIENJ
IGV4ZWN1dGlvbiBoYXBweSByZXBsYWNlZCBkcm1fZGJnX2ttcygpIHRvIGRybV9pbmZvKCkNCj4g
PiBmb3IgcHJpbnRpbmcgZGVidWYgaW5mbyBkdXJpbmcgZHNiIGJ1ZmZlciBwcmVwYXJhdGlvbi4N
Cj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuYyB8IDggKysrKy0tLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYw0KPiA+IGluZGV4IGIzNGE2NzMwOTk3Ni4uYjY4ZGQ3YmQ1MjcxIDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4g
QEAgLTI3NSw3ICsyNzUsNyBAQCB2b2lkIGludGVsX2RzYl9wcmVwYXJlKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpDQo+ID4NCj4gPiAgIAlkc2IgPSBrbWFsbG9jKHNp
emVvZigqZHNiKSwgR0ZQX0tFUk5FTCk7DQo+ID4gICAJaWYgKCFkc2IpIHsNCj4gPiAtCQlkcm1f
ZXJyKCZpOTE1LT5kcm0sICJEU0Igb2JqZWN0IGNyZWF0aW9uIGZhaWxlZFxuIik7DQo+ID4gKwkJ
ZHJtX2luZm8oJmk5MTUtPmRybSwgIkRTQiBvYmplY3QgY3JlYXRpb24gZmFpbGVkXG4iKTsNCj4g
PiAgIAkJcmV0dXJuOw0KPiA+ICAgCX0NCj4gPg0KPiA+IEBAIC0yODMsMTQgKzI4MywxNCBAQCB2
b2lkIGludGVsX2RzYl9wcmVwYXJlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNf
c3RhdGUpDQo+ID4NCj4gPiAgIAlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFs
KGk5MTUsIERTQl9CVUZfU0laRSk7DQo+ID4gICAJaWYgKElTX0VSUihvYmopKSB7DQo+ID4gLQkJ
ZHJtX2VycigmaTkxNS0+ZHJtLCAiR2VtIG9iamVjdCBjcmVhdGlvbiBmYWlsZWRcbiIpOw0KPiA+
ICsJCWRybV9pbmZvKCZpOTE1LT5kcm0sICJHZW0gb2JqZWN0IGNyZWF0aW9uIGZhaWxlZFxuIik7
DQo+IA0KPiBJZiBDSSBpcyBoYXBweSB3aXRoIGRybV93YXJuIHRoZW4gaXQgbWFrZXMgc2Vuc2Ug
dG8gdXNlIGRybV93YXJuLg0KDQpDaGVja2VkIHdpdGggQ0kgdGVhbSwgc2VlbXMgZHJtX3dhcm4g
YWxzbyBjb25zaWRlcmVkIGFzIGJ1ZywgaXMgaXQgb2sgdG8gdXNlIGRybV9pbmZvPw0KDQo+IA0K
PiANCj4gPiAgIAkJa2ZyZWUoZHNiKTsNCj4gPiAgIAkJZ290byBvdXQ7DQo+ID4gICAJfQ0KPiA+
DQo+ID4gICAJdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluKG9iaiwgTlVMTCwgMCwgMCwg
MCk7DQo+ID4gICAJaWYgKElTX0VSUih2bWEpKSB7DQo+ID4gLQkJZHJtX2VycigmaTkxNS0+ZHJt
LCAiVm1hIGNyZWF0aW9uIGZhaWxlZFxuIik7DQo+ID4gKwkJZHJtX2luZm8oJmk5MTUtPmRybSwg
IlZtYSBjcmVhdGlvbiBmYWlsZWRcbiIpOw0KPiANCj4gDQo+IFRoZXNlIG1lc3NhZ2VzIGFyZSBi
aXQgdmFndWUsIGFkZCAiRFNCIFZNQSBjcmVhdGlvbiBmYWlsZWQiIG9yIHNvbWV0aGluZw0KPiBz
aW1pbGFyLg0KPiANCj4gV2l0aCB0aGF0IEFja2VkLWJ5OiBOaXJtb3kgRGFzIDxuaXJtb3kuZGFz
QGludGVsLmNvbT4NCg0KVGhhbmtzIGZvciByZXZpZXcsIHdpbGwgbW9kaWZ5IGluIG5leHQgdmVy
c2lvbi4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCiANCj4gDQo+IA0KPiBOaXJtb3kNCj4gDQo+IA0K
PiA+ICAgCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7DQo+ID4gICAJCWtmcmVlKGRzYik7DQo+
ID4gICAJCWdvdG8gb3V0Ow0KPiA+IEBAIC0yOTgsNyArMjk4LDcgQEAgdm9pZCBpbnRlbF9kc2Jf
cHJlcGFyZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKQ0KPiA+DQo+
ID4gICAJYnVmID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQodm1hLT5vYmosIEk5
MTVfTUFQX1dDKTsNCj4gPiAgIAlpZiAoSVNfRVJSKGJ1ZikpIHsNCj4gPiAtCQlkcm1fZXJyKCZp
OTE1LT5kcm0sICJDb21tYW5kIGJ1ZmZlciBjcmVhdGlvbiBmYWlsZWRcbiIpOw0KPiA+ICsJCWRy
bV9pbmZvKCZpOTE1LT5kcm0sICJDb21tYW5kIGJ1ZmZlciBjcmVhdGlvbiBmYWlsZWRcbiIpOw0K
PiA+ICAgCQlpOTE1X3ZtYV91bnBpbl9hbmRfcmVsZWFzZSgmdm1hLA0KPiBJOTE1X1ZNQV9SRUxF
QVNFX01BUCk7DQo+ID4gICAJCWtmcmVlKGRzYik7DQo+ID4gICAJCWdvdG8gb3V0Ow0K
