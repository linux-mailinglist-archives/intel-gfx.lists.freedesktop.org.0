Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D35285082
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 19:13:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39B3C6E4DD;
	Tue,  6 Oct 2020 17:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43FA86E4DD
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 17:13:32 +0000 (UTC)
IronPort-SDR: Dmjvmt6TrF9WEhoIhFMEm0Y8/4/FPspbWyICRYLmbti2Guf0ek8xlvehdquwc69XLOqcGaSmCZ
 HCdEENUZqOhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161970284"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161970284"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 10:10:41 -0700
IronPort-SDR: tM9bg6zY6haxUigq8WLEItzioRWH6740GoAEJzl4rkeViI9PpZMopIUZjUU+2QAcwvZYkRxDCc
 E+pZIec5EbPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="353569690"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Oct 2020 10:10:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 6 Oct 2020 10:10:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 6 Oct 2020 10:10:40 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 6 Oct 2020 10:10:40 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/3] drm/i915/vbt: Fix backlight parsing
 for VBT 234+
Thread-Index: AQHWlrA44rxEePJen0KRvmXz3wJr4amKx3gAgACIsIA=
Date: Tue, 6 Oct 2020 17:10:40 +0000
Message-ID: <66f38b44f1f8d0bbca66fe2401a165df81c97622.camel@intel.com>
References: <20200929223419.146925-1-jose.souza@intel.com>
 <87wo03k9mz.fsf@intel.com>
In-Reply-To: <87wo03k9mz.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <22D5222C05DE80439F232CC1AEAF226A@intel.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTEwLTA2IGF0IDEyOjA0ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAyOSBTZXAgMjAyMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOg0KPiA+IENoaWxkIG1pbl9icmlnaHRuZXNzIGlzIG9ic29sZXRlIGZy
b20gVkJUIDIzNCssIGluc3RlYWQgdGhlIG5ldw0KPiA+IG1pbl9icmlnaHRuZXNzIGZpZWxkIGlu
IHRoZSBtYWluIHN0cnVjdHVyZSBzaG91bGQgYmUgdXNlZC4NCj4gPiANCj4gPiBUaGlzIG5ldyBm
aWVsZCBpcyAxNiBiaXRzIHdpZGUsIHNvIGJhY2tsaWdodF9wcmVjaXNpb25fYml0cyBpcyBuZWVk
ZWQNCj4gPiB0byBjaGVjayBpZiB2YWx1ZSBuZWVkcyB0byBiZSBzY2FsZWQgZG93biBidXQgaXQg
aXMgb25seSBhdmFpbGFibGUgaW4NCj4gPiBWQlQgMjM2KyBzbyB3b3JraW5nIGFyb3VuZCBpdCBi
eSB1c2luZyB0aGUgYWxzbyBuZXcgYmFja2xpZ2h0X2xldmVsDQo+ID4gaW4gdGhlIG1haW4gc3Ry
dWN0Lg0KPiA+IA0KPiA+IHYyOg0KPiA+IC0gbWlzc2VkIHRoYXQgYmFja2xpZ2h0X2RhdGEtPmxl
dmVsIGlzIGFsc28gb2Jzb2xldGUNCj4gPiANCj4gPiBCU3BlYzogMjAxNDkNCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
PiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAg
ICB8IDMwICsrKysrKysrKysrKysrKysrLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCB8IDEyICsrKysrKy0tDQo+ID4gwqAyIGZpbGVzIGNoYW5n
ZWQsIDM4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPiBpbmRleCA0NzE2NDg0YWY2MmQu
LjU4ZTU2NTdhNzdiYiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jDQo+ID4gQEAgLTQyNSw2ICs0MjUsNyBAQCBwYXJzZV9sZnBfYmFja2xpZ2h0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiDCoAljb25zdCBzdHJ1Y3Qg
YmRiX2xmcF9iYWNrbGlnaHRfZGF0YSAqYmFja2xpZ2h0X2RhdGE7DQo+ID4gwqAJY29uc3Qgc3Ry
dWN0IGxmcF9iYWNrbGlnaHRfZGF0YV9lbnRyeSAqZW50cnk7DQo+ID4gwqAJaW50IHBhbmVsX3R5
cGUgPSBkZXZfcHJpdi0+dmJ0LnBhbmVsX3R5cGU7DQo+ID4gKwl1MTYgbGV2ZWw7DQo+ID4gwqAN
Cj4gPiANCj4gPiANCj4gPiANCj4gPiDCoAliYWNrbGlnaHRfZGF0YSA9IGZpbmRfc2VjdGlvbihi
ZGIsIEJEQl9MVkRTX0JBQ0tMSUdIVCk7DQo+ID4gwqAJaWYgKCFiYWNrbGlnaHRfZGF0YSkNCj4g
PiBAQCAtNDU5LDE0ICs0NjAsMzkgQEAgcGFyc2VfbGZwX2JhY2tsaWdodChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gwqANCj4gPiANCj4gPiANCj4gPiANCj4gPiDCoAlk
ZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5wd21fZnJlcV9oeiA9IGVudHJ5LT5wd21fZnJlcV9oejsN
Cj4gPiDCoAlkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5hY3RpdmVfbG93X3B3bSA9IGVudHJ5LT5h
Y3RpdmVfbG93X3B3bTsNCj4gPiAtCWRldl9wcml2LT52YnQuYmFja2xpZ2h0Lm1pbl9icmlnaHRu
ZXNzID0gZW50cnktPm1pbl9icmlnaHRuZXNzOw0KPiA+ICsNCj4gPiArCWlmIChiZGItPnZlcnNp
b24gPj0gMjM0KSB7DQo+ID4gKwkJYm9vbCBzY2FsZSA9IGZhbHNlOw0KPiA+ICsJCXUxNiBtaW5f
bGV2ZWw7DQo+ID4gKw0KPiA+ICsJCWxldmVsID0gYmFja2xpZ2h0X2RhdGEtPmJhY2tsaWdodF9s
ZXZlbFtwYW5lbF90eXBlXS5sZXZlbDsNCj4gPiArCQltaW5fbGV2ZWwgPSBiYWNrbGlnaHRfZGF0
YS0+YmFja2xpZ2h0X21pbl9sZXZlbFtwYW5lbF90eXBlXS5sZXZlbDsNCj4gPiArDQo+ID4gKwkJ
aWYgKGJkYi0+dmVyc2lvbiA+PSAyMzYpDQo+ID4gKwkJCXNjYWxlID0gYmFja2xpZ2h0X2RhdGEt
PmJhY2tsaWdodF9wcmVjaXNpb25fYml0c1twYW5lbF90eXBlXSA9PSAxNjsNCj4gPiArCQllbHNl
DQo+ID4gKwkJCXNjYWxlID0gbGV2ZWwgPiAyNTU7DQo+ID4gKw0KPiA+ICsJCWlmIChzY2FsZSkN
Cj4gPiArCQkJbWluX2xldmVsID0gbWluX2xldmVsIC8gMjU1Ow0KPiA+ICsNCj4gPiArCQlpZiAo
bWluX2xldmVsID4gMjU1KSB7DQo+ID4gKwkJCWRybV93YXJuKCZkZXZfcHJpdi0+ZHJtLCAiQmFj
a2xpZ2h0IG1pbiBsZXZlbCA+IDI1NVxuIik7DQo+ID4gKwkJCWxldmVsID0gMjU1Ow0KPiA+ICsJ
CX0NCj4gPiArCQlkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5taW5fYnJpZ2h0bmVzcyA9IG1pbl9s
ZXZlbDsNCj4gPiArCX0gZWxzZSB7DQo+ID4gKwkJbGV2ZWwgPSBiYWNrbGlnaHRfZGF0YS0+bGV2
ZWxbcGFuZWxfdHlwZV07DQo+ID4gKwkJZGV2X3ByaXYtPnZidC5iYWNrbGlnaHQubWluX2JyaWdo
dG5lc3MgPSBlbnRyeS0+bWluX2JyaWdodG5lc3M7DQo+ID4gKwl9DQo+ID4gKw0KPiA+IMKgCWRy
bV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiA+IMKgCQkgICAgIlZCVCBiYWNrbGlnaHQgUFdN
IG1vZHVsYXRpb24gZnJlcXVlbmN5ICV1IEh6LCAiDQo+ID4gwqAJCSAgICAiYWN0aXZlICVzLCBt
aW4gYnJpZ2h0bmVzcyAldSwgbGV2ZWwgJXUsIGNvbnRyb2xsZXIgJXVcbiIsDQo+ID4gwqAJCSAg
ICBkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5wd21fZnJlcV9oeiwNCj4gPiDCoAkJICAgIGRldl9w
cml2LT52YnQuYmFja2xpZ2h0LmFjdGl2ZV9sb3dfcHdtID8gImxvdyIgOiAiaGlnaCIsDQo+ID4g
wqAJCSAgICBkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5taW5fYnJpZ2h0bmVzcywNCj4gPiAtCQkg
ICAgYmFja2xpZ2h0X2RhdGEtPmxldmVsW3BhbmVsX3R5cGVdLA0KPiA+ICsJCSAgICBsZXZlbCwN
Cj4gPiDCoAkJICAgIGRldl9wcml2LT52YnQuYmFja2xpZ2h0LmNvbnRyb2xsZXIpOw0KPiA+IMKg
fQ0KPiA+IMKgDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiA+IGluZGV4IDU0YmNjNmE2OTQ3Yy4uYjQ3NDJj
NGZkZTk3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmJ0X2RlZnMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmJ0X2RlZnMuaA0KPiA+IEBAIC03ODIsNyArNzgyLDcgQEAgc3RydWN0IGxmcF9iYWNrbGln
aHRfZGF0YV9lbnRyeSB7DQo+ID4gwqAJdTggYWN0aXZlX2xvd19wd206MTsNCj4gPiDCoAl1OCBv
YnNvbGV0ZTE6NTsNCj4gPiDCoAl1MTYgcHdtX2ZyZXFfaHo7DQo+ID4gLQl1OCBtaW5fYnJpZ2h0
bmVzczsNCj4gPiArCXU4IG1pbl9icmlnaHRuZXNzOyAvKiBPYnNvbGV0ZSBmcm9tIDIzNCsgKi8N
Cj4gPiDCoAl1OCBvYnNvbGV0ZTI7DQo+ID4gwqAJdTggb2Jzb2xldGUzOw0KPiA+IMKgfSBfX3Bh
Y2tlZDsNCj4gPiBAQCAtNzkyLDExICs3OTIsMTkgQEAgc3RydWN0IGxmcF9iYWNrbGlnaHRfY29u
dHJvbF9tZXRob2Qgew0KPiA+IMKgCXU4IGNvbnRyb2xsZXI6NDsNCj4gPiDCoH0gX19wYWNrZWQ7
DQo+ID4gwqANCj4gPiANCj4gPiANCj4gPiANCj4gPiArc3RydWN0IGxmcF9iYWNrbGlnaHRfbGV2
ZWwgew0KPiA+ICsJdTMyIGxldmVsIDogMTY7DQo+ID4gKwl1MzIgcmVzZXJ2ZWQgOiAxNjsNCj4g
DQo+IFRoYXQgbG9va3MgbGlrZSB0d28gdTE2J3MgdG8gbWUuIDspDQoNCk9rYXksIGFueXRoaW5n
IGVsc2UgdG8gYmUgY2hhbmdlZCBpbiB0aGUgbmV4dCB2ZXJzaW9uPw0KDQo+IA0KPiBCUiwNCj4g
SmFuaS4NCj4gDQo+IA0KPiA+ICt9IF9fcGFja2VkOw0KPiA+ICsNCj4gPiDCoHN0cnVjdCBiZGJf
bGZwX2JhY2tsaWdodF9kYXRhIHsNCj4gPiDCoAl1OCBlbnRyeV9zaXplOw0KPiA+IMKgCXN0cnVj
dCBsZnBfYmFja2xpZ2h0X2RhdGFfZW50cnkgZGF0YVsxNl07DQo+ID4gLQl1OCBsZXZlbFsxNl07
DQo+ID4gKwl1OCBsZXZlbFsxNl07IC8qIE9ic29sZXRlIGZyb20gMjM0KyAqLw0KPiA+IMKgCXN0
cnVjdCBsZnBfYmFja2xpZ2h0X2NvbnRyb2xfbWV0aG9kIGJhY2tsaWdodF9jb250cm9sWzE2XTsN
Cj4gPiArCXN0cnVjdCBsZnBfYmFja2xpZ2h0X2xldmVsIGJhY2tsaWdodF9sZXZlbFsxNl07CQkv
KiAyMzQrICovDQo+ID4gKwlzdHJ1Y3QgbGZwX2JhY2tsaWdodF9sZXZlbCBiYWNrbGlnaHRfbWlu
X2xldmVsWzE2XTsJLyogMjM0KyAqLw0KPiA+ICsJdTggYmFja2xpZ2h0X3ByZWNpc2lvbl9iaXRz
WzE2XTsJCQkJCS8qIDIzNisgKi8NCj4gPiDCoH0gX19wYWNrZWQ7DQo+ID4gwqANCj4gPiANCj4g
PiANCj4gPiANCj4gPiDCoC8qDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
