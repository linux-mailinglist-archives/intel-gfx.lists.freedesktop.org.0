Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFF6286C18
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 02:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B076E9E3;
	Thu,  8 Oct 2020 00:33:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 719406E9E3
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 00:33:50 +0000 (UTC)
IronPort-SDR: TZT1twVbuKdKOSDQEk4Hx17p1ncDXwIng1h6vCZpDyAPxIIQjbomdYkXes55VvHj9W9fzBI+tw
 YuOeiN9Blz0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="164423272"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="164423272"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 17:33:49 -0700
IronPort-SDR: m/VJ8QUOd8PGckAtLWOTOIAIYW5Zd6TEe1bT/ay8v0rF9T/vjVz8dGq/XKtrwNzuzMNTla8N04
 i/daGIzpNxXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="518075668"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 07 Oct 2020 17:33:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 7 Oct 2020 17:33:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 7 Oct 2020 17:33:48 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Wed, 7 Oct 2020 17:33:48 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/3] drm/i915/vbt: Fix backlight parsing
 for VBT 234+
Thread-Index: AQHWlrA44rxEePJen0KRvmXz3wJr4amNPyCAgAAfLoA=
Date: Thu, 8 Oct 2020 00:33:48 +0000
Message-ID: <ec4d0b5cd6eb09acc53c374b4dac70fb9c41b4c9.camel@intel.com>
References: <20200929223419.146925-1-jose.souza@intel.com>
 <20201007224539.GL2863995@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20201007224539.GL2863995@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <BBBFF20A82C43541B9E63028CFDE803A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/vbt: Fix backlight parsing
 for VBT 234+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTEwLTA3IGF0IDE1OjQ1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUdWUsIFNlcCAyOSwgMjAyMCBhdCAwMzozNDoxN1BNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIHdyb3RlOg0KPiA+IENoaWxkIG1pbl9icmlnaHRuZXNzIGlzIG9ic29sZXRlIGZyb20g
VkJUIDIzNCssIGluc3RlYWQgdGhlIG5ldw0KPiA+IG1pbl9icmlnaHRuZXNzIGZpZWxkIGluIHRo
ZSBtYWluIHN0cnVjdHVyZSBzaG91bGQgYmUgdXNlZC4NCj4gPiANCj4gPiBUaGlzIG5ldyBmaWVs
ZCBpcyAxNiBiaXRzIHdpZGUsIHNvIGJhY2tsaWdodF9wcmVjaXNpb25fYml0cyBpcyBuZWVkZWQN
Cj4gPiB0byBjaGVjayBpZiB2YWx1ZSBuZWVkcyB0byBiZSBzY2FsZWQgZG93biBidXQgaXQgaXMg
b25seSBhdmFpbGFibGUgaW4NCj4gPiBWQlQgMjM2KyBzbyB3b3JraW5nIGFyb3VuZCBpdCBieSB1
c2luZyB0aGUgYWxzbyBuZXcgYmFja2xpZ2h0X2xldmVsDQo+ID4gaW4gdGhlIG1haW4gc3RydWN0
Lg0KPiA+IA0KPiA+IHYyOg0KPiA+IC0gbWlzc2VkIHRoYXQgYmFja2xpZ2h0X2RhdGEtPmxldmVs
IGlzIGFsc28gb2Jzb2xldGUNCj4gPiANCj4gPiBCU3BlYzogMjAxNDkNCj4gPiBTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8
IDMwICsrKysrKysrKysrKysrKysrLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmJ0X2RlZnMuaCB8IDEyICsrKysrKy0tDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQs
IDM4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPiBpbmRleCA0NzE2NDg0YWY2MmQuLjU4
ZTU2NTdhNzdiYiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Jpb3MuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jDQo+ID4gQEAgLTQyNSw2ICs0MjUsNyBAQCBwYXJzZV9sZnBfYmFja2xpZ2h0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiDCoAljb25zdCBzdHJ1Y3QgYmRi
X2xmcF9iYWNrbGlnaHRfZGF0YSAqYmFja2xpZ2h0X2RhdGE7DQo+ID4gwqAJY29uc3Qgc3RydWN0
IGxmcF9iYWNrbGlnaHRfZGF0YV9lbnRyeSAqZW50cnk7DQo+ID4gwqAJaW50IHBhbmVsX3R5cGUg
PSBkZXZfcHJpdi0+dmJ0LnBhbmVsX3R5cGU7DQo+ID4gKwl1MTYgbGV2ZWw7DQo+ID4gwqANCj4g
PiANCj4gPiANCj4gPiANCj4gPiDCoAliYWNrbGlnaHRfZGF0YSA9IGZpbmRfc2VjdGlvbihiZGIs
IEJEQl9MVkRTX0JBQ0tMSUdIVCk7DQo+ID4gwqAJaWYgKCFiYWNrbGlnaHRfZGF0YSkNCj4gPiBA
QCAtNDU5LDE0ICs0NjAsMzkgQEAgcGFyc2VfbGZwX2JhY2tsaWdodChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gwqANCj4gPiANCj4gPiANCj4gPiANCj4gPiDCoAlkZXZf
cHJpdi0+dmJ0LmJhY2tsaWdodC5wd21fZnJlcV9oeiA9IGVudHJ5LT5wd21fZnJlcV9oejsNCj4g
PiDCoAlkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5hY3RpdmVfbG93X3B3bSA9IGVudHJ5LT5hY3Rp
dmVfbG93X3B3bTsNCj4gPiAtCWRldl9wcml2LT52YnQuYmFja2xpZ2h0Lm1pbl9icmlnaHRuZXNz
ID0gZW50cnktPm1pbl9icmlnaHRuZXNzOw0KPiA+ICsNCj4gPiArCWlmIChiZGItPnZlcnNpb24g
Pj0gMjM0KSB7DQo+ID4gKwkJYm9vbCBzY2FsZSA9IGZhbHNlOw0KPiA+ICsJCXUxNiBtaW5fbGV2
ZWw7DQo+ID4gKw0KPiA+ICsJCWxldmVsID0gYmFja2xpZ2h0X2RhdGEtPmJhY2tsaWdodF9sZXZl
bFtwYW5lbF90eXBlXS5sZXZlbDsNCj4gPiArCQltaW5fbGV2ZWwgPSBiYWNrbGlnaHRfZGF0YS0+
YmFja2xpZ2h0X21pbl9sZXZlbFtwYW5lbF90eXBlXS5sZXZlbDsNCj4gPiArDQo+ID4gKwkJaWYg
KGJkYi0+dmVyc2lvbiA+PSAyMzYpDQo+ID4gKwkJCXNjYWxlID0gYmFja2xpZ2h0X2RhdGEtPmJh
Y2tsaWdodF9wcmVjaXNpb25fYml0c1twYW5lbF90eXBlXSA9PSAxNjsNCj4gPiArCQllbHNlDQo+
ID4gKwkJCXNjYWxlID0gbGV2ZWwgPiAyNTU7DQo+IA0KPiBJJ20gbm90IHN1cmUgSSBmb2xsb3cg
dGhlICdlbHNlJyBhcm0gaGVyZS4gIE9uIHZlcnNpb24gMjM0LzIzNSB3ZSdkIGhhdmUNCj4gMTYt
Yml0IGxldmVsIHZhbHVlcy4gIEluIHRoZSBhYnNlbmNlIG9mIGFueSBvdGhlciBwcmVjaXNpb24g
aW5mb3JtYXRpb24NCj4gd291bGRuJ3Qgd2UgYXNzdW1lIHRoYXQgYWxsIHRoZSBiaXRzIGFyZSB1
c2VkIGFuZCB0aGF0IHdlIGhhdmUgYSBmdWxsDQo+IDE2LWJpdCBwcmVjaXNpb24/ICBJZiB0aGUg
bGV2ZWwgaXMgPCAyNTYgKG9yIGZvciB0aGF0IG1hdHRlciBpZiB3ZSBoYXZlDQo+IGFueSB2YWx1
ZSB3aGVyZSBsZXZlbCAmIDB4RkYgaXMgbm9uLXplcm8pIHdvdWxkbid0IHRoYXQgZGVmaW5pdGVs
eSBtZWFuDQo+IHRoYXQgdGhlcmUgYXJlIDE2LWJpdHMgb2YgcHJlY2lzaW9uIHNpbmNlIG90aGVy
d2lzZSB0aG9zZSBsb3cgYml0cyB3b3VsZA0KPiBoYXZlIHRvIGJlIDAncz8NCg0KTXkgdW5kZXJz
dGFuZCBpcyB0aGF0IGluIHZlcnNpb24gMjM0IG9yIDIzNSBhbGwgYnJpZ2h0bmVzcyBsZXZlbHMg
Y291bGQgYmUgc2V0IGFzIDE2Yml0cyBvciA4Yml0cyB3aWRlIGJ5IHZlbmRvcnMgYW5kIGl0IGRp
ZCBub3QgaGFkIGEgY2xlYXIgd2F5IGZvcg0KZHJpdmVyIHRvIGtub3cgd2hhdCBpdCBpcywgdGhl
biB2ZXJzaW9uIDIzNiBjYW1lIGZpeGluZyBpdC4NCg0KU28gd29ya2luZyBhcm91bmQgaXQgYnkg
dXNpbmcgdGhlIHJlZ3VsYXIgYnJpZ2h0bmVzcyBsZXZlbChzdXBwb3NlZCB0aGUgb25lIHRoYXQg
dmVuZG9yIHdhbnRzIHRoZSBwYW5lbCB0byBoYXZlIGJ5IGRlZmF1bHQpIGFuZCB3ZSBjYW4gc3Vw
cG9zZSB0aGF0IGl0DQp3aWxsIGJlIGhpZ2hlciB0aGFuIHRoZSBtaW5pbXVtIHNvIGZvciAxNmJp
dHMgb2YgcHJlY2lzaW9uIGl0IHdpbGwgYmUgaGlnaGVyIHRoYW4gMjU1Lg0KQW55d2F5cyBJIGRv
dWJ0IHRoYXQgYW55IHByb2R1Y3Rpb24gcHJvZHVjdCB3aWxsIGhhdmUgVkJUIHZlcnNpb24gMjM0
IG9yIDIzNS4NCg0KPiANCj4gPiArDQo+ID4gKwkJaWYgKHNjYWxlKQ0KPiA+ICsJCQltaW5fbGV2
ZWwgPSBtaW5fbGV2ZWwgLyAyNTU7DQo+ID4gKw0KPiA+ICsJCWlmIChtaW5fbGV2ZWwgPiAyNTUp
IHsNCj4gPiArCQkJZHJtX3dhcm4oJmRldl9wcml2LT5kcm0sICJCYWNrbGlnaHQgbWluIGxldmVs
ID4gMjU1XG4iKTsNCj4gPiArCQkJbGV2ZWwgPSAyNTU7DQo+ID4gKwkJfQ0KPiA+ICsJCWRldl9w
cml2LT52YnQuYmFja2xpZ2h0Lm1pbl9icmlnaHRuZXNzID0gbWluX2xldmVsOw0KPiA+ICsJfSBl
bHNlIHsNCj4gPiArCQlsZXZlbCA9IGJhY2tsaWdodF9kYXRhLT5sZXZlbFtwYW5lbF90eXBlXTsN
Cj4gPiArCQlkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5taW5fYnJpZ2h0bmVzcyA9IGVudHJ5LT5t
aW5fYnJpZ2h0bmVzczsNCj4gPiArCX0NCj4gPiArDQo+ID4gwqAJZHJtX2RiZ19rbXMoJmRldl9w
cml2LT5kcm0sDQo+ID4gwqAJCSAgICAiVkJUIGJhY2tsaWdodCBQV00gbW9kdWxhdGlvbiBmcmVx
dWVuY3kgJXUgSHosICINCj4gPiDCoAkJICAgICJhY3RpdmUgJXMsIG1pbiBicmlnaHRuZXNzICV1
LCBsZXZlbCAldSwgY29udHJvbGxlciAldVxuIiwNCj4gPiDCoAkJICAgIGRldl9wcml2LT52YnQu
YmFja2xpZ2h0LnB3bV9mcmVxX2h6LA0KPiA+IMKgCQkgICAgZGV2X3ByaXYtPnZidC5iYWNrbGln
aHQuYWN0aXZlX2xvd19wd20gPyAibG93IiA6ICJoaWdoIiwNCj4gPiDCoAkJICAgIGRldl9wcml2
LT52YnQuYmFja2xpZ2h0Lm1pbl9icmlnaHRuZXNzLA0KPiA+IC0JCSAgICBiYWNrbGlnaHRfZGF0
YS0+bGV2ZWxbcGFuZWxfdHlwZV0sDQo+ID4gKwkJICAgIGxldmVsLA0KPiA+IMKgCQkgICAgZGV2
X3ByaXYtPnZidC5iYWNrbGlnaHQuY29udHJvbGxlcik7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiAN
Cj4gPiANCj4gPiANCj4gPiANCj4gPiANCj4gPiANCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oDQo+ID4gaW5kZXggNTRiY2M2YTY5NDdj
Li5iNDc0MmM0ZmRlOTcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92YnRfZGVmcy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92YnRfZGVmcy5oDQo+ID4gQEAgLTc4Miw3ICs3ODIsNyBAQCBzdHJ1Y3QgbGZw
X2JhY2tsaWdodF9kYXRhX2VudHJ5IHsNCj4gPiDCoAl1OCBhY3RpdmVfbG93X3B3bToxOw0KPiA+
IMKgCXU4IG9ic29sZXRlMTo1Ow0KPiA+IMKgCXUxNiBwd21fZnJlcV9oejsNCj4gPiAtCXU4IG1p
bl9icmlnaHRuZXNzOw0KPiA+ICsJdTggbWluX2JyaWdodG5lc3M7IC8qIE9ic29sZXRlIGZyb20g
MjM0KyAqLw0KPiA+IMKgCXU4IG9ic29sZXRlMjsNCj4gPiDCoAl1OCBvYnNvbGV0ZTM7DQo+ID4g
wqB9IF9fcGFja2VkOw0KPiA+IEBAIC03OTIsMTEgKzc5MiwxOSBAQCBzdHJ1Y3QgbGZwX2JhY2ts
aWdodF9jb250cm9sX21ldGhvZCB7DQo+ID4gwqAJdTggY29udHJvbGxlcjo0Ow0KPiA+IMKgfSBf
X3BhY2tlZDsNCj4gPiDCoA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+
IA0KPiA+ICtzdHJ1Y3QgbGZwX2JhY2tsaWdodF9sZXZlbCB7DQo+ID4gKwl1MzIgbGV2ZWwgOiAx
NjsNCj4gPiArCXUzMiByZXNlcnZlZCA6IDE2Ow0KPiA+ICt9IF9fcGFja2VkOw0KPiA+ICsNCj4g
PiDCoHN0cnVjdCBiZGJfbGZwX2JhY2tsaWdodF9kYXRhIHsNCj4gPiDCoAl1OCBlbnRyeV9zaXpl
Ow0KPiA+IMKgCXN0cnVjdCBsZnBfYmFja2xpZ2h0X2RhdGFfZW50cnkgZGF0YVsxNl07DQo+ID4g
LQl1OCBsZXZlbFsxNl07DQo+ID4gKwl1OCBsZXZlbFsxNl07IC8qIE9ic29sZXRlIGZyb20gMjM0
KyAqLw0KPiA+IMKgCXN0cnVjdCBsZnBfYmFja2xpZ2h0X2NvbnRyb2xfbWV0aG9kIGJhY2tsaWdo
dF9jb250cm9sWzE2XTsNCj4gPiArCXN0cnVjdCBsZnBfYmFja2xpZ2h0X2xldmVsIGJhY2tsaWdo
dF9sZXZlbFsxNl07CQkvKiAyMzQrICovDQo+ID4gKwlzdHJ1Y3QgbGZwX2JhY2tsaWdodF9sZXZl
bCBiYWNrbGlnaHRfbWluX2xldmVsWzE2XTsJLyogMjM0KyAqLw0KPiANCj4gVGVjaG5pY2FsbHkg
dGhlc2UgdHdvIGFyZSBkZXNjcmliZWQgYXMgImJyaWdodG5lc3MgbGV2ZWwiIHJhdGhlciB0aGFu
DQo+ICJiYWNrbGlnaHQgbGV2ZWwiIGluIHRoZSBzcGVjLiAgTWF0Y2hpbmcgdGhlIHNwZWMncyB0
ZXJtaW5vbG9neSBtaWdodA0KPiBtYWtlIHRoaXMgc2xpZ2h0bHkgZWFzaWVyIHRvIGZvbGxvdyB3
aGVuIHBlb3BsZSBsb29rIGF0IGl0IGluIHRoZQ0KPiBmdXR1cmUsIGJ1dCB1cCB0byB5b3UuDQoN
Ck9rYXkgd2lsbCByZW5hbWUgdGhvc2UsIHRha2UgYSBsb29rIGluIHRoZSBjb21tZW50IGFib3Zl
IHNvIHdlIGhhdmUgYW4gYWdyZWVtZW50IGZvciB0aGUgdGhlIG5leHQgdmVyc2lvbi4NCg0KdGhh
bmtzDQoNCj4gDQo+IA0KPiBNYXR0DQo+IA0KPiA+ICsJdTggYmFja2xpZ2h0X3ByZWNpc2lvbl9i
aXRzWzE2XTsJCQkJCS8qIDIzNisgKi8NCj4gPiDCoH0gX19wYWNrZWQ7DQo+ID4gwqANCj4gPiAN
Cj4gPiANCj4gPiANCj4gPiANCj4gPiANCj4gPiANCj4gPiANCj4gPiDCoC8qDQo+ID4gLS0gDQo+
ID4gMi4yOC4wDQo+ID4gDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18NCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
