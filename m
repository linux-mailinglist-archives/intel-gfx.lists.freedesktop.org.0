Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C0B1280F5
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 17:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F0326E127;
	Fri, 20 Dec 2019 16:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC8736E105
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 16:53:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 08:53:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="222523751"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga001.fm.intel.com with ESMTP; 20 Dec 2019 08:53:23 -0800
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 20 Dec 2019 08:53:22 -0800
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.67]) by
 FMSMSX151.amr.corp.intel.com ([169.254.7.125]) with mapi id 14.03.0439.000;
 Fri, 20 Dec 2019 08:53:22 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v5 3/7] drm/i915/tgl: Select master transcoder for MST
 stream
Thread-Index: AQHVt0pkLvsyZeiVy0qQmGWSbUkfPafDsQIAgAASeYA=
Date: Fri, 20 Dec 2019 16:53:22 +0000
Message-ID: <fa59bd3005e0ae580e99bb7e4c26fbbca9b83779.camel@intel.com>
References: <20191220152954.83276-1-jose.souza@intel.com>
 <20191220152954.83276-3-jose.souza@intel.com>
 <20191220154710.GO1208@intel.com>
In-Reply-To: <20191220154710.GO1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.207.149]
Content-ID: <DF55BD4C110B1F41ADB1FB2F6433E764@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 3/7] drm/i915/tgl: Select master
 transcoder for MST stream
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTEyLTIwIGF0IDE3OjQ3ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgRGVjIDIwLCAyMDE5IGF0IDA3OjI5OjUwQU0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gT24gVEdMIHRoZSBibGVuZGluZyBvZiBhbGwgdGhl
IHN0cmVhbXMgaGF2ZSBtb3ZlZCBmcm9tIERESSB0bw0KPiA+IHRyYW5zY29kZXIsIHNvIG5vdyBl
dmVyeSB0cmFuc2NvZGVyIHdvcmtpbmcgb3ZlciB0aGUgc2FtZSBNU1QgcG9ydA0KPiA+IG11c3QN
Cj4gPiBzZW5kIGl0cyBzdHJlYW0gdG8gYSBtYXN0ZXIgdHJhbnNjb2RlciBhbmQgbWFzdGVyIHdp
bGwgc2VuZCB0byBEREkNCj4gPiByZXNwZWN0aW5nIHRoZSB0aW1lIHNsb3RzLg0KPiA+IA0KPiA+
IFNvIGhlcmUgYWRkaW5nIGFsbCB0aGUgQ1JUQ3MgdGhhdCBzaGFyZXMgdGhlIHNhbWUgTVNUIHN0
cmVhbSBpZg0KPiA+IG5lZWRlZCBhbmQgY29tcHV0aW5nIHRoZWlyIHN0YXRlIGFnYWluLCBpdCB3
aWxsIHBpY2sgdGhlIGxvd2VzdA0KPiA+IHBpcGUvdHJhbnNjb2RlciBhbW9uZyB0aGUgb25lcyBp
biB0aGUgc2FtZSBzdHJlYW0gdG8gYmUgbWFzdGVyLg0KPiA+IA0KPiA+IE1vc3Qgb2YgdGhlIHRp
bWUgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoKSBlbmFibGVzIHBpcGVzIGluIGENCj4gPiBj
cmVzY2VudCBvcmRlciBidXQgZHVlIEREQiBvdmVybGFwcGluZyBpdCBtaWdodCBub3QgaGFwcGVu
LCB0aGlzDQo+ID4gc2NlbmFyaW9zIHdpbGwgYmUgaGFuZGxlZCBpbiB0aGUgbmV4dCBwYXRjaC4N
Cj4gPiANCj4gPiB2MjoNCj4gPiAtIFVzaW5nIHJlY2VudGx5IGFkZGVkIGludGVsX2NydGNfc3Rh
dGVfcmVzZXQoKSB0byBzZXQNCj4gPiBtc3RfbWFzdGVyX3RyYW5zY29kZXIgdG8gaW52YWxpZCB0
cmFuc2NvZGVyIGZvciBhbGwgbm9uIGdlbjEyICYgTVNUDQo+ID4gY29kZSBwYXRocw0KPiA+IC0g
U2V0dGluZyBsb3dlc3QgcGlwZS90cmFuc2NvZGVyIGFzIG1hc3RlciwgcHJldmlvdXNseSBpdCB3
YXMgdGhlDQo+ID4gZmlyc3Qgb25lIGJ1dCBzZXR0aW5nIGEgcHJlZGljdGFibGUgb25lIHdpbGwg
aGVscCBpbiBmdXR1cmUgTVNUIGUNCj4gPiBwb3J0IHN5bmMgaW50ZWdyYXRpb24NCj4gPiAtIE1v
dmluZyB0byBpbnRlbCB0eXBlIGFzIG11Y2ggYXMgd2UgY2FuDQo+ID4gDQo+ID4gdjM6DQo+ID4g
LSBOb3cgaW50ZWxfZHBfbXN0X21hc3Rlcl90cmFuc19jb21wdXRlKCkgcmV0dXJucyB0aGUgTVNU
IG1hc3Rlcg0KPiA+IHRyYW5zY29kZXINCj4gPiAtIFJlcGxhY2VkIHN0ZGJvb2wuaCBieSBsaW51
eC90eXBlcy5oDQo+ID4gLSBTa2lwIHRoZSBjb25uZWN0b3IgYmVpbmcgY2hlY2tlZCBpbg0KPiA+
IGludGVsX2RwX21zdF9hdG9taWNfbWFzdGVyX3RyYW5zX2NoZWNrKCkNCj4gPiAtIFVzaW5nIHBp
cGUgaW5zdGVhZCBvZiB0cmFuc2NvZGVyIHRvIGNvbXB1dGUgTVNUIG1hc3Rlcg0KPiA+IA0KPiA+
IHY0Og0KPiA+IC0gcmVuYW1lZCBjb25uZWN0b3Jfc3RhdGUgdG8gY29ubl9zdGF0ZQ0KPiA+IA0K
PiA+IHY1Og0KPiA+IC0gSW1wcm92ZWQgdGhlIHBhcmFtZXRlcnMgb2YgaW50ZWxfZHBfbXN0X21h
c3Rlcl90cmFuc19jb21wdXRlKCkgdG8NCj4gPiBzaW1wbHkgY29kZQ0KPiA+IC0gQWRkZWQgY2Fs
bCBkcm1fYXRvbWljX2FkZF9hZmZlY3RlZF9wbGFuZXMoKSBpbg0KPiA+IGludGVsX2RwX21zdF9h
dG9taWNfbWFzdGVyX3RyYW5zX2NoZWNrKCkgYXMgaGVscGVyIGNvdWxkIG5vdCBkbyBpdA0KPiA+
IGZvciB1cw0KPiA+IC0gUmVtb3ZlZCAiaWYgKHJldCkiIGxlZnQgb3ZlciBmcm9tIHYzIGNoYW5n
ZXMNCj4gPiANCj4gPiBCU3BlYzogNTA0OTMNCj4gPiBCU3BlYzogNDkxOTANCj4gPiBDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBDYzogTHVj
YXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgICB8ICAx
NCArKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oICAg
fCAgIDQgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAg
ICAgfCAgMTQgKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgIHwgIDEyICstDQo+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaCAgICB8ICAgMyArDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbXN0LmMgICB8IDE0MA0KPiA+ICsrKysrKysrKysrKysrKystLQ0KPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5oICAgfCAgIDUgKw0KPiA+ICA3IGZp
bGVzIGNoYW5nZWQsIDE3OSBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkNCj4gPiANCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMu
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYw0KPiA+
IGluZGV4IGI3ZGRhMThiNmYyOS4uMGViOTczZjY1OTc3IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jDQo+ID4gQEAgLTE5Miw2ICsxOTIs
MjAgQEAgaW50ZWxfY29ubmVjdG9yX25lZWRzX21vZGVzZXQoc3RydWN0DQo+ID4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgCQkJCQkJCQkJDQo+ID4gICAgIG5ld19jb25uX3N0YXRl
LT5jcnRjKSkpOw0KPiA+ICB9DQo+ID4gIA0KPiA+ICtzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9jb25u
ZWN0b3Jfc3RhdGUgKg0KPiA+ICtpbnRlbF9hdG9taWNfZ2V0X2RpZ2l0YWxfY29ubmVjdG9yX3N0
YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPiAqc3RhdGUsDQo+ID4gKwkJCQkJIHN0
cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gPiAqY29ubmVjdG9yKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1
Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZTsNCj4gPiArDQo+ID4gKwljb25uX3N0
YXRlID0gZHJtX2F0b21pY19nZXRfY29ubmVjdG9yX3N0YXRlKCZzdGF0ZS0+YmFzZSwNCj4gPiAr
CQkJCQkJICAgICZjb25uZWN0b3ItPmJhc2UpOw0KPiA+ICsJaWYgKElTX0VSUihjb25uX3N0YXRl
KSkNCj4gPiArCQlyZXR1cm4gRVJSX0NBU1QoY29ubl9zdGF0ZSk7DQo+ID4gKw0KPiA+ICsJcmV0
dXJuIHRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKGNvbm5fc3RhdGUpOw0KPiA+ICt9
DQo+ID4gKw0KPiA+ICAvKioNCj4gPiAgICogaW50ZWxfY3J0Y19kdXBsaWNhdGVfc3RhdGUgLSBk
dXBsaWNhdGUgY3J0YyBzdGF0ZQ0KPiA+ICAgKiBAY3J0YzogZHJtIGNydGMNCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaA0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaA0KPiA+IGluZGV4IGE3
ZDFhODU3NmM0OC4uNzRjNzQ5ZGJmYjRmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oDQo+ID4gQEAgLTE3LDYgKzE3LDcgQEAgc3RydWN0
IGRybV9kZXZpY2U7DQo+ID4gIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOw0KPiA+ICBzdHJ1Y3Qg
ZHJtX3Byb3BlcnR5Ow0KPiA+ICBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlOw0KPiA+ICtzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yOw0KPiA+ICBzdHJ1Y3QgaW50ZWxfY3J0YzsNCj4gPiAgc3RydWN0
IGludGVsX2NydGNfc3RhdGU7DQo+ID4gIA0KPiA+IEBAIC0zNCw2ICszNSw5IEBAIHN0cnVjdCBk
cm1fY29ubmVjdG9yX3N0YXRlICoNCj4gPiAgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3JfZHVwbGlj
YXRlX3N0YXRlKHN0cnVjdCBkcm1fY29ubmVjdG9yDQo+ID4gKmNvbm5lY3Rvcik7DQo+ID4gIGJv
b2wgaW50ZWxfY29ubmVjdG9yX25lZWRzX21vZGVzZXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZQ0KPiA+ICpzdGF0ZSwNCj4gPiAgCQkJCSAgIHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3IpOw0KPiA+ICtzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUgKg0KPiA+ICtp
bnRlbF9hdG9taWNfZ2V0X2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUNCj4gPiAqc3RhdGUsDQo+ID4gKwkJCQkJIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IN
Cj4gPiAqY29ubmVjdG9yKTsNCj4gPiAgDQo+ID4gIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqaW50
ZWxfY3J0Y19kdXBsaWNhdGVfc3RhdGUoc3RydWN0IGRybV9jcnRjDQo+ID4gKmNydGMpOw0KPiA+
ICB2b2lkIGludGVsX2NydGNfZGVzdHJveV9zdGF0ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBpbmRl
eCBjOWJhN2Q3ZjM3ODcuLmMzYWM5NTBlNzlhOCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IEBAIC0xODk5LDggKzE4OTksMTMgQEAgaW50
ZWxfZGRpX3RyYW5zY29kZXJfZnVuY19yZWdfdmFsX2dldChjb25zdA0KPiA+IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ICAJCXRlbXAgfD0gVFJBTlNfRERJX01PREVf
U0VMRUNUX0RQX01TVDsNCj4gPiAgCQl0ZW1wIHw9IERESV9QT1JUX1dJRFRIKGNydGNfc3RhdGUt
PmxhbmVfY291bnQpOw0KPiA+ICANCj4gPiAtCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MikNCj4gPiAtCQkJdGVtcCB8PQ0KPiA+IFRSQU5TX0RESV9NU1RfVFJBTlNQT1JUX1NFTEVDVChj
cnRjX3N0YXRlLT5jcHVfdHJhbnNjb2Rlcik7DQo+ID4gKwkJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpIHsNCj4gPiArCQkJZW51bSB0cmFuc2NvZGVyIG1hc3RlcjsNCj4gPiArDQo+ID4g
KwkJCW1hc3RlciA9IGNydGNfc3RhdGUtPm1zdF9tYXN0ZXJfdHJhbnNjb2RlcjsNCj4gPiArCQkJ
V0FSTl9PTihtYXN0ZXIgPT0gSU5WQUxJRF9UUkFOU0NPREVSKTsNCj4gPiArCQkJdGVtcCB8PSBU
UkFOU19ERElfTVNUX1RSQU5TUE9SVF9TRUxFQ1QobWFzdGVyKTsNCj4gPiArCQl9DQo+ID4gIAl9
IGVsc2Ugew0KPiA+ICAJCXRlbXAgfD0gVFJBTlNfRERJX01PREVfU0VMRUNUX0RQX1NTVDsNCj4g
PiAgCQl0ZW1wIHw9IERESV9QT1JUX1dJRFRIKGNydGNfc3RhdGUtPmxhbmVfY291bnQpOw0KPiA+
IEBAIC00NDA1LDYgKzQ0MTAsMTEgQEAgdm9pZCBpbnRlbF9kZGlfZ2V0X2NvbmZpZyhzdHJ1Y3QN
Cj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAJCXBpcGVfY29uZmlnLT5vdXRwdXRf
dHlwZXMgfD0gQklUKElOVEVMX09VVFBVVF9EUF9NU1QpOw0KPiA+ICAJCXBpcGVfY29uZmlnLT5s
YW5lX2NvdW50ID0NCj4gPiAgCQkJKCh0ZW1wICYgRERJX1BPUlRfV0lEVEhfTUFTSykgPj4NCj4g
PiBERElfUE9SVF9XSURUSF9TSElGVCkgKyAxOw0KPiA+ICsNCj4gPiArCQlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMikNCj4gPiArCQkJcGlwZV9jb25maWctPm1zdF9tYXN0ZXJfdHJhbnNj
b2RlciA9DQo+ID4gKwkJCQkJUkVHX0ZJRUxEX0dFVChUUkFOU19ERElfTVNUX1RSQQ0KPiA+IE5T
UE9SVF9TRUxFQ1RfTUFTSywgdGVtcCk7DQo+ID4gKw0KPiA+ICAJCWludGVsX2RwX2dldF9tX24o
aW50ZWxfY3J0YywgcGlwZV9jb25maWcpOw0KPiA+ICAJCWJyZWFrOw0KPiA+ICAJZGVmYXVsdDoN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+ID4gaW5kZXggZmM3NzgyOWVhOTU4Li5lYjk3YWQ1NjJjOTYgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC00Niw2
ICs0Niw3IEBADQo+ID4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2NydC5oIg0KPiA+ICAjaW5j
bHVkZSAiZGlzcGxheS9pbnRlbF9kZGkuaCINCj4gPiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxf
ZHAuaCINCj4gPiArI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZHBfbXN0LmgiDQo+ID4gICNpbmNs
dWRlICJkaXNwbGF5L2ludGVsX2RzaS5oIg0KPiA+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9k
dm8uaCINCj4gPiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZ21idXMuaCINCj4gPiBAQCAtMTE2
MjcsNiArMTE2MjgsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX3N0YXRlX3Jlc2V0KHN0cnVj
dA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gIAljcnRjX3N0YXRlLT5o
c3dfd29ya2Fyb3VuZF9waXBlID0gSU5WQUxJRF9QSVBFOw0KPiA+ICAJY3J0Y19zdGF0ZS0+b3V0
cHV0X2Zvcm1hdCA9IElOVEVMX09VVFBVVF9GT1JNQVRfSU5WQUxJRDsNCj4gPiAgCWNydGNfc3Rh
dGUtPnNjYWxlcl9zdGF0ZS5zY2FsZXJfaWQgPSAtMTsNCj4gPiArCWNydGNfc3RhdGUtPm1zdF9t
YXN0ZXJfdHJhbnNjb2RlciA9IElOVkFMSURfVFJBTlNDT0RFUjsNCj4gPiAgfQ0KPiA+ICANCj4g
PiAgc3RhdGljIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICppbnRlbF9jcnRjX3N0YXRlX2FsbG9j
KHN0cnVjdA0KPiA+IGludGVsX2NydGMgKmNydGMpDQo+ID4gQEAgLTEyNDg0LDYgKzEyNDg2LDkg
QEAgc3RhdGljIHZvaWQgaW50ZWxfZHVtcF9waXBlX2NvbmZpZyhjb25zdA0KPiA+IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywNCj4gPiAgCQkJICAgICAgcGlwZV9jb25maWct
PmNzY19tb2RlLCBwaXBlX2NvbmZpZy0NCj4gPiA+Z2FtbWFfbW9kZSwNCj4gPiAgCQkJICAgICAg
cGlwZV9jb25maWctPmdhbW1hX2VuYWJsZSwgcGlwZV9jb25maWctDQo+ID4gPmNzY19lbmFibGUp
Ow0KPiA+ICANCj4gPiArCURSTV9ERUJVR19LTVMoIk1TVCBtYXN0ZXIgdHJhbnNjb2RlcjogJXNc
biIsDQo+ID4gKwkJICAgICAgdHJhbnNjb2Rlcl9uYW1lKHBpcGVfY29uZmlnLQ0KPiA+ID5tc3Rf
bWFzdGVyX3RyYW5zY29kZXIpKTsNCj4gPiArDQo+ID4gIGR1bXBfcGxhbmVzOg0KPiA+ICAJaWYg
KCFzdGF0ZSkNCj4gPiAgCQlyZXR1cm47DQo+ID4gQEAgLTEzMjY0LDYgKzEzMjY5LDggQEAgaW50
ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRl
ICpjdXJyZW50X2NvbmZpZywNCj4gPiAgCVBJUEVfQ09ORl9DSEVDS19JKGRzYy5kc2Nfc3BsaXQp
Ow0KPiA+ICAJUElQRV9DT05GX0NIRUNLX0koZHNjLmNvbXByZXNzZWRfYnBwKTsNCj4gPiAgDQo+
ID4gKwlQSVBFX0NPTkZfQ0hFQ0tfSShtc3RfbWFzdGVyX3RyYW5zY29kZXIpOw0KPiA+ICsNCj4g
PiAgI3VuZGVmIFBJUEVfQ09ORl9DSEVDS19YDQo+ID4gICN1bmRlZiBQSVBFX0NPTkZfQ0hFQ0tf
SQ0KPiA+ICAjdW5kZWYgUElQRV9DT05GX0NIRUNLX0JPT0wNCj4gPiBAQCAtMTQzNDgsNyArMTQz
NTUsNyBAQCBzdGF0aWMgdm9pZA0KPiA+IGludGVsX2NvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiA+ICAJdTMyIGhhbmRsZWQgPSAwOw0K
PiA+ICAJaW50IGk7DQo+ID4gIA0KPiA+IC0JLyogT25seSBkaXNhYmxlIHBvcnQgc3luYyBzbGF2
ZXMgKi8NCj4gPiArCS8qIE9ubHkgZGlzYWJsZSBwb3J0IHN5bmMgYW5kIE1TVCBzbGF2ZXMgKi8N
Cj4gPiAgCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLA0K
PiA+IG9sZF9jcnRjX3N0YXRlLA0KPiA+ICAJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgew0K
PiA+ICAJCWlmICghbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpDQo+ID4gQEAgLTE0MzYy
LDcgKzE0MzY5LDggQEAgc3RhdGljIHZvaWQNCj4gPiBpbnRlbF9jb21taXRfbW9kZXNldF9kaXNh
YmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gPiAgCQkgKiBzbGF2ZSBD
UlRDcyBhcmUgZGlzYWJsZWQgZmlyc3QgYW5kIHRoZW4gbWFzdGVyIENSVEMNCj4gPiBzaW5jZQ0K
PiA+ICAJCSAqIFNsYXZlIHZibGFua3MgYXJlIG1hc2tlZCB0aWxsIE1hc3RlciBWYmxhbmtzLg0K
PiA+ICAJCSAqLw0KPiA+IC0JCWlmICghaXNfdHJhbnNfcG9ydF9zeW5jX3NsYXZlKG9sZF9jcnRj
X3N0YXRlKSkNCj4gPiArCQlpZiAoIWlzX3RyYW5zX3BvcnRfc3luY19zbGF2ZShvbGRfY3J0Y19z
dGF0ZSkgJiYNCj4gPiArCQkgICAgIWludGVsX2RwX21zdF9pc19zbGF2ZV90cmFucyhvbGRfY3J0
Y19zdGF0ZSkpDQo+ID4gIAkJCWNvbnRpbnVlOw0KPiA+ICANCj4gPiAgCQlpbnRlbF9wcmVfcGxh
bmVfdXBkYXRlKHN0YXRlLCBjcnRjKTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gaW5kZXggODNlYTA0MTQ5
Yjc3Li42MzBhOTQ4OTJiN2IgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IEBAIC0xMDU0LDYgKzEwNTQs
OSBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7DQo+ID4gIA0KPiA+ICAJLyogQml0bWFzayB0
byBpbmRpY2F0ZSBzbGF2ZXMgYXR0YWNoZWQgKi8NCj4gPiAgCXU4IHN5bmNfbW9kZV9zbGF2ZXNf
bWFzazsNCj4gPiArDQo+ID4gKwkvKiBPbmx5IHZhbGlkIG9uIFRHTCsgKi8NCj4gPiArCWVudW0g
dHJhbnNjb2RlciBtc3RfbWFzdGVyX3RyYW5zY29kZXI7DQo+ID4gIH07DQo+ID4gIA0KPiA+ICBz
dHJ1Y3QgaW50ZWxfY3J0YyB7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMNCj4gPiBpbmRleCA3YWEwOTc1YzMzYjcuLmE2MjM3ZGE5YWM1MiAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3Qu
Yw0KPiA+IEBAIC04NywxMCArODcsNTMgQEAgc3RhdGljIGludA0KPiA+IGludGVsX2RwX21zdF9j
b21wdXRlX2xpbmtfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAJ
cmV0dXJuIDA7DQo+ID4gIH0NCj4gPiAgDQo+ID4gKy8qDQo+ID4gKyAqIEl0ZXJhdGUgb3ZlciBh
bGwgY29ubmVjdG9ycyBhbmQgcmV0dXJuIHRoZSBzbWFsbGVzdCB0cmFuc2NvZGVyDQo+ID4gaW4g
dGhlIE1TVA0KPiA+ICsgKiBzdHJlYW0NCj4gPiArICovDQo+ID4gK3N0YXRpYyBlbnVtIHRyYW5z
Y29kZXINCj4gPiAraW50ZWxfZHBfbXN0X21hc3Rlcl90cmFuc19jb21wdXRlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUNCj4gPiAqc3RhdGUsDQo+ID4gKwkJCQkgIHN0cnVjdCBpbnRlbF9kcCAq
bXN0X3BvcnQpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaWdpdGFs
X2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZTsNCj4gPiArCXN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3RvcjsNCj4gPiArCWVudW0gcGlwZSByZXQgPSBJOTE1X01BWF9QSVBFUzsNCj4g
PiArCWludCBpOw0KPiA+ICsNCj4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTIpDQo+
ID4gKwkJcmV0dXJuIElOVkFMSURfVFJBTlNDT0RFUjsNCj4gPiArDQo+ID4gKwlmb3JfZWFjaF9u
ZXdfaW50ZWxfY29ubmVjdG9yX2luX3N0YXRlKHN0YXRlLCBjb25uZWN0b3IsDQo+ID4gY29ubl9z
dGF0ZSwgaSkgew0KPiA+ICsJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOw0K
PiA+ICsJCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOw0KPiA+ICsNCj4gPiArCQlpZiAoY29ubmVj
dG9yLT5tc3RfcG9ydCAhPSBtc3RfcG9ydCB8fCAhY29ubl9zdGF0ZS0NCj4gPiA+YmFzZS5jcnRj
KQ0KPiA+ICsJCQljb250aW51ZTsNCj4gPiArDQo+ID4gKwkJY3J0YyA9IHRvX2ludGVsX2NydGMo
Y29ubl9zdGF0ZS0+YmFzZS5jcnRjKTsNCj4gPiArCQljcnRjX3N0YXRlID0gaW50ZWxfYXRvbWlj
X2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwNCj4gPiBjcnRjKTsNCj4gPiArCQlpZiAoIWNydGNf
c3RhdGUtPnVhcGkuYWN0aXZlKQ0KPiA+ICsJCQljb250aW51ZTsNCj4gPiArDQo+ID4gKwkJLyoN
Cj4gPiArCQkgKiBVc2luZyBjcnRjLT5waXBlIGJlY2F1c2UgY3J0Y19zdGF0ZS0+Y3B1X3RyYW5z
Y29kZXINCj4gPiBpcw0KPiA+ICsJCSAqIGNvbXB1dGVkLCBzbyBvdGhlcnMgQ1JUQ3MgY291bGQg
aGF2ZSBub24tY29tcHV0ZWQNCj4gPiArCQkgKiBjcHVfdHJhbnNjb2Rlcg0KPiA+ICsJCSAqLw0K
PiA+ICsJCWlmIChjcnRjLT5waXBlIDwgcmV0KQ0KPiA+ICsJCQlyZXQgPSBjcnRjLT5waXBlOw0K
PiA+ICsJfQ0KPiANCj4gU3RpbGwgaGFzIHRoZSBwcm9ibGVtIHRoYXQgcmV0PT1JOTE1X01BWF9Q
SVBFUyBpZiBubyBhY3RpdmUgY3J0Y3MgaW4NCj4gdGhlDQo+IHN0YXRlLg0KPiANCj4gSSBndWVz
cyBhIHNpbXBsZQ0KPiBpZiAocmV0ID09IE1BWF9QSVBFUykNCj4gCXJldHVybiBJTlZBTElEOw0K
PiBzaG91bGQgZG8gaGVyZS4gT3Igc29tZXRoaW5nIHNpbWlsYXIuDQoNCkl0IHdvdWxkIG5ldmVy
IGhhcHBlbiwgaWYgaXQgaXMgY29tcHV0aW5nIHN0YXRlIGZvciB0aGlzIE1TVCBjb25uZWN0b3IN
Cml0IGlzIGFjdGl2ZSwgc28gaXQgY2FuIGJlIG1hc3Rlci4gQnV0IG9rYXkgYWRkaW5nIGl0IGFu
eXdheXMuDQoNCj4gDQo+IFdpdGggdGhhdCBmaXhlZCB0aGlzIGlzDQo+IFJldmlld2VkLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gRnV0
dXJlIHRob3VnaHRzIGJhc2VkIG9uIHdoYXQgSSBwcm90b3R5cGVkIGluDQo+IGdpdDovL2dpdGh1
Yi5jb20vdnN5cmphbGEvbGludXguZ2l0IHBvcnRfc3luY19zdHVmZg0KPiB3b3VsZCBiZSB0byBz
aW1wbHkgY29tcHV0ZSB0aGUgYml0bWFzayBvZiB0cmFuc2NvZGVycyBoZXJlLCBhbmQgdGhlbg0K
PiBsZXQgdGhlIGNhbGxlciBwaWNrIHRoZSBmaXJzdCB3aXRoIGZmcygpLTEuIFdlIGNvdWxkIHBv
dGVudGlhbGx5DQo+IG9wdGltaXplIHRoYXQgYXBwcm9hY2ggYSBiaXQgYnkgb25seSBjb21wdXRp
bmcgZWFjaCBkaXN0aW5jdCBiaXRtYXNrDQo+IG9ubHkgb25jZSBhbmQgc3RvcmluZyB0aGVtIHRl
bXBvcmFydWx0IGluIGVnLiBpbnRlbF9hdG9taWNfc3RhdGUuDQo+IFRoZW4gZWFjaCBlbmNvZGVy
IHdvdWxkIGp1c3QgYXNzaWduOg0KPiBtc3RfbWFzdGVyID0gZmZzKHByZWNvbXB1dGVkX21zdF9i
aXRtYXNrW2NwdV90cmFuc2NvZGVyXSkgLSAxOw0KPiANCj4gDQo+ID4gKw0KPiA+ICsJLyogU2lt
cGxlIGNhc3Qgd29ya3MgYmVjYXVzZSBUR0wgZG9uJ3QgaGF2ZSBhIGVEUCB0cmFuc2NvZGVyICov
DQo+ID4gKwlyZXR1cm4gKGVudW0gdHJhbnNjb2RlcilyZXQ7DQo+ID4gK30NCj4gPiArDQo+ID4g
IHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyDQo+ID4gKmVuY29kZXIsDQo+ID4gIAkJCQkgICAgICAgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUNCj4gPiAqcGlwZV9jb25maWcsDQo+ID4gIAkJCQkgICAgICAgc3RydWN0IGRybV9jb25uZWN0
b3Jfc3RhdGUNCj4gPiAqY29ubl9zdGF0ZSkNCj4gPiAgew0KPiA+ICsJc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUgPQ0KPiA+IHRvX2ludGVsX2F0b21pY19zdGF0ZShjb25uX3N0YXRl
LT5zdGF0ZSk7DQo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gPiAgCXN0cnVjdCBpbnRlbF9kcF9tc3RfZW5jb2Rl
ciAqaW50ZWxfbXN0ID0gZW5jX3RvX21zdCgmZW5jb2Rlci0NCj4gPiA+YmFzZSk7DQo+ID4gIAlz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gJmludGVsX21zdC0+cHJpbWFyeS0+ZHA7DQo+ID4g
QEAgLTE1NCwyNCArMTk3LDkxIEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfbXN0X2NvbXB1dGVfY29u
ZmlnKHN0cnVjdA0KPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gIA0KPiA+ICAJaW50
ZWxfZGRpX2NvbXB1dGVfbWluX3ZvbHRhZ2VfbGV2ZWwoZGV2X3ByaXYsIHBpcGVfY29uZmlnKTsN
Cj4gPiAgDQo+ID4gKwlwaXBlX2NvbmZpZy0+bXN0X21hc3Rlcl90cmFuc2NvZGVyID0NCj4gPiBp
bnRlbF9kcF9tc3RfbWFzdGVyX3RyYW5zX2NvbXB1dGUoc3RhdGUsIGludGVsX2RwKTsNCj4gPiAr
DQo+ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4gPiArLyoNCj4gPiArICogSWYgb25l
IG9mIHRoZSBjb25uZWN0b3JzIGluIGEgTVNUIHN0cmVhbSBuZWVkcyBhIG1vZGVzZXQsIG1hcmsN
Cj4gPiBhbGwgQ1JUQ3MNCj4gPiArICogdGhhdCBzaGFyZXMgdGhlIHNhbWUgTVNUIHN0cmVhbSBh
cyBtb2RlIGNoYW5nZWQsDQo+ID4gKyAqIGludGVsX21vZGVzZXRfcGlwZV9jb25maWcoKStpbnRl
bF9jcnRjX2NoZWNrX2Zhc3RzZXQoKSB3aWxsDQo+ID4gdGFrZSBjYXJlIHRvIGRvDQo+ID4gKyAq
IGEgZmFzdHNldCB3aGVuIHBvc3NpYmxlLg0KPiA+ICsgKi8NCj4gPiArc3RhdGljIGludA0KPiA+
ICtpbnRlbF9kcF9tc3RfYXRvbWljX21hc3Rlcl90cmFuc19jaGVjayhzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yDQo+ID4gKmNvbm5lY3RvciwNCj4gPiArCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlDQo+ID4gKnN0YXRlKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7DQo+ID4gKwlzdHJ1Y3Qg
ZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXIgY29ubmVjdG9yX2xpc3RfaXRlcjsNCj4gPiArCXN0cnVj
dCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcl9pdGVyOw0KPiA+ICsNCj4gPiArCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpIDwgMTIpDQo+ID4gKwkJcmV0dXJuICAwOw0KPiA+ICsNCj4gPiArCWlm
ICghaW50ZWxfY29ubmVjdG9yX25lZWRzX21vZGVzZXQoc3RhdGUsICZjb25uZWN0b3ItPmJhc2Up
KQ0KPiA+ICsJCXJldHVybiAwOw0KPiA+ICsNCj4gPiArCWRybV9jb25uZWN0b3JfbGlzdF9pdGVy
X2JlZ2luKCZkZXZfcHJpdi0+ZHJtLA0KPiA+ICZjb25uZWN0b3JfbGlzdF9pdGVyKTsNCj4gPiAr
CWZvcl9lYWNoX2ludGVsX2Nvbm5lY3Rvcl9pdGVyKGNvbm5lY3Rvcl9pdGVyLA0KPiA+ICZjb25u
ZWN0b3JfbGlzdF9pdGVyKSB7DQo+ID4gKwkJc3RydWN0IGludGVsX2RpZ2l0YWxfY29ubmVjdG9y
X3N0YXRlICpjb25uX2l0ZXJfc3RhdGU7DQo+ID4gKwkJc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGU7DQo+ID4gKwkJc3RydWN0IGludGVsX2NydGMgKmNydGM7DQo+ID4gKwkJaW50
IHJldDsNCj4gPiArDQo+ID4gKwkJaWYgKGNvbm5lY3Rvcl9pdGVyLT5tc3RfcG9ydCAhPSBjb25u
ZWN0b3ItPm1zdF9wb3J0IHx8DQo+ID4gKwkJICAgIGNvbm5lY3Rvcl9pdGVyID09IGNvbm5lY3Rv
cikNCj4gPiArCQkJY29udGludWU7DQo+ID4gKw0KPiA+ICsJCWNvbm5faXRlcl9zdGF0ZSA9DQo+
ID4gaW50ZWxfYXRvbWljX2dldF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZShzdGF0ZSwNCj4gPiAr
CQkJCQkJCQkJDQo+ID4gICAgY29ubmVjdG9yX2l0ZXIpOw0KPiA+ICsJCWlmIChJU19FUlIoY29u
bl9pdGVyX3N0YXRlKSkgew0KPiA+ICsJCQlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNv
bm5lY3Rvcl9saXN0X2l0ZQ0KPiA+IHIpOw0KPiA+ICsJCQlyZXR1cm4gUFRSX0VSUihjb25uX2l0
ZXJfc3RhdGUpOw0KPiA+ICsJCX0NCj4gPiArDQo+ID4gKwkJaWYgKCFjb25uX2l0ZXJfc3RhdGUt
PmJhc2UuY3J0YykNCj4gPiArCQkJY29udGludWU7DQo+ID4gKw0KPiA+ICsJCWNydGMgPSB0b19p
bnRlbF9jcnRjKGNvbm5faXRlcl9zdGF0ZS0+YmFzZS5jcnRjKTsNCj4gPiArCQljcnRjX3N0YXRl
ID0gaW50ZWxfYXRvbWljX2dldF9jcnRjX3N0YXRlKCZzdGF0ZS0+YmFzZSwNCj4gPiBjcnRjKTsN
Cj4gPiArCQlpZiAoSVNfRVJSKGNydGNfc3RhdGUpKSB7DQo+ID4gKwkJCWRybV9jb25uZWN0b3Jf
bGlzdF9pdGVyX2VuZCgmY29ubmVjdG9yX2xpc3RfaXRlDQo+ID4gcik7DQo+ID4gKwkJCXJldHVy
biBQVFJfRVJSKGNydGNfc3RhdGUpOw0KPiA+ICsJCX0NCj4gPiArDQo+ID4gKwkJcmV0ID0gZHJt
X2F0b21pY19hZGRfYWZmZWN0ZWRfcGxhbmVzKCZzdGF0ZS0+YmFzZSwNCj4gPiAmY3J0Yy0+YmFz
ZSk7DQo+ID4gKwkJaWYgKHJldCkgew0KPiA+ICsJCQlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9l
bmQoJmNvbm5lY3Rvcl9saXN0X2l0ZQ0KPiA+IHIpOw0KPiA+ICsJCQlyZXR1cm4gcmV0Ow0KPiA+
ICsJCX0NCj4gPiArCQljcnRjX3N0YXRlLT51YXBpLm1vZGVfY2hhbmdlZCA9IHRydWU7DQo+ID4g
Kwl9DQo+ID4gKwlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5lY3Rvcl9saXN0X2l0
ZXIpOw0KPiA+ICsNCj4gPiAgCXJldHVybiAwOw0KPiA+ICB9DQo+ID4gIA0KPiA+ICBzdGF0aWMg
aW50DQo+ID4gIGludGVsX2RwX21zdF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3RvciwNCj4gPiAtCQkJICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+
ID4gKwkJCSAgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKl9zdGF0ZSkNCj4gPiAgew0KPiA+ICsJ
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUgPQ0KPiA+IHRvX2ludGVsX2F0b21pY19z
dGF0ZShfc3RhdGUpOw0KPiA+ICAJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm5ld19jb25u
X3N0YXRlID0NCj4gPiAtCQlkcm1fYXRvbWljX2dldF9uZXdfY29ubmVjdG9yX3N0YXRlKHN0YXRl
LCBjb25uZWN0b3IpOw0KPiA+ICsJCWRybV9hdG9taWNfZ2V0X25ld19jb25uZWN0b3Jfc3RhdGUo
JnN0YXRlLT5iYXNlLA0KPiA+IGNvbm5lY3Rvcik7DQo+ID4gIAlzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
cl9zdGF0ZSAqb2xkX2Nvbm5fc3RhdGUgPQ0KPiA+IC0JCWRybV9hdG9taWNfZ2V0X29sZF9jb25u
ZWN0b3Jfc3RhdGUoc3RhdGUsIGNvbm5lY3Rvcik7DQo+ID4gKwkJZHJtX2F0b21pY19nZXRfb2xk
X2Nvbm5lY3Rvcl9zdGF0ZSgmc3RhdGUtPmJhc2UsDQo+ID4gY29ubmVjdG9yKTsNCj4gPiAgCXN0
cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3RvciA9DQo+ID4gIAkJdG9faW50ZWxf
Y29ubmVjdG9yKGNvbm5lY3Rvcik7DQo+ID4gIAlzdHJ1Y3QgZHJtX2NydGMgKm5ld19jcnRjID0g
bmV3X2Nvbm5fc3RhdGUtPmNydGM7DQo+ID4gIAlzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9t
Z3IgKm1ncjsNCj4gPiAgCWludCByZXQ7DQo+ID4gIA0KPiA+IC0JcmV0ID0gaW50ZWxfZGlnaXRh
bF9jb25uZWN0b3JfYXRvbWljX2NoZWNrKGNvbm5lY3Rvciwgc3RhdGUpOw0KPiA+ICsJcmV0ID0g
aW50ZWxfZGlnaXRhbF9jb25uZWN0b3JfYXRvbWljX2NoZWNrKGNvbm5lY3RvciwgJnN0YXRlLQ0K
PiA+ID5iYXNlKTsNCj4gPiArCWlmIChyZXQpDQo+ID4gKwkJcmV0dXJuIHJldDsNCj4gPiArDQo+
ID4gKwlyZXQgPSBpbnRlbF9kcF9tc3RfYXRvbWljX21hc3Rlcl90cmFuc19jaGVjayhpbnRlbF9j
b25uZWN0b3IsDQo+ID4gc3RhdGUpOw0KPiA+ICAJaWYgKHJldCkNCj4gPiAgCQlyZXR1cm4gcmV0
Ow0KPiA+ICANCj4gPiBAQCAtMTgyLDEyICsyOTIsOSBAQCBpbnRlbF9kcF9tc3RfYXRvbWljX2No
ZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yDQo+ID4gKmNvbm5lY3RvciwNCj4gPiAgCSAqIGNvbm5l
Y3Rvcg0KPiA+ICAJICovDQo+ID4gIAlpZiAobmV3X2NydGMpIHsNCj4gPiAtCQlzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICppbnRlbF9zdGF0ZSA9DQo+ID4gLQkJCXRvX2ludGVsX2F0b21pY19z
dGF0ZShzdGF0ZSk7DQo+ID4gIAkJc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMgPQ0KPiA+
IHRvX2ludGVsX2NydGMobmV3X2NydGMpOw0KPiA+ICAJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlID0NCj4gPiAtCQkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShp
bnRlbF9zdGF0ZSwNCj4gPiAtCQkJCQkJCWludGVsX2NydGMpOw0KPiA+ICsJCQlpbnRlbF9hdG9t
aWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLA0KPiA+IGludGVsX2NydGMpOw0KPiA+ICANCj4g
PiAgCQlpZiAoIWNydGNfc3RhdGUgfHwNCj4gPiAgCQkgICAgIWRybV9hdG9taWNfY3J0Y19uZWVk
c19tb2Rlc2V0KCZjcnRjX3N0YXRlLT51YXBpKQ0KPiA+IHx8DQo+ID4gQEAgLTE5Niw3ICszMDMs
NyBAQCBpbnRlbF9kcF9tc3RfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yDQo+ID4g
KmNvbm5lY3RvciwNCj4gPiAgCX0NCj4gPiAgDQo+ID4gIAltZ3IgPSAmZW5jX3RvX21zdChvbGRf
Y29ubl9zdGF0ZS0+YmVzdF9lbmNvZGVyKS0+cHJpbWFyeS0NCj4gPiA+ZHAubXN0X21ncjsNCj4g
PiAtCXJldCA9IGRybV9kcF9hdG9taWNfcmVsZWFzZV92Y3BpX3Nsb3RzKHN0YXRlLCBtZ3IsDQo+
ID4gKwlyZXQgPSBkcm1fZHBfYXRvbWljX3JlbGVhc2VfdmNwaV9zbG90cygmc3RhdGUtPmJhc2Us
IG1nciwNCj4gPiAgCQkJCQkgICAgICAgaW50ZWxfY29ubmVjdG9yLT5wb3J0KTsNCj4gPiAgDQo+
ID4gIAlyZXR1cm4gcmV0Ow0KPiA+IEBAIC0yNDAsNiArMzQ3LDggQEAgc3RhdGljIHZvaWQgaW50
ZWxfbXN0X3Bvc3RfZGlzYWJsZV9kcChzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KPiA+ICANCj4gPiAgCWludGVsX2RwLT5hY3RpdmVfbXN0X2xpbmtzLS07DQo+ID4gIAlsYXN0
X21zdF9zdHJlYW0gPSBpbnRlbF9kcC0+YWN0aXZlX21zdF9saW5rcyA9PSAwOw0KPiA+ICsJV0FS
Tl9PTihJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyICYmIGxhc3RfbXN0X3N0cmVhbSAmJg0KPiA+
ICsJCSFpbnRlbF9kcF9tc3RfaXNfbWFzdGVyX3RyYW5zKG9sZF9jcnRjX3N0YXRlKSk7DQo+ID4g
IA0KPiA+ICAJaW50ZWxfY3J0Y192Ymxhbmtfb2ZmKG9sZF9jcnRjX3N0YXRlKTsNCj4gPiAgDQo+
ID4gQEAgLTMxNyw2ICs0MjYsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcHJlX2VuYWJsZV9k
cChzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAJY29ubmVjdG9yLT5l
bmNvZGVyID0gZW5jb2RlcjsNCj4gPiAgCWludGVsX21zdC0+Y29ubmVjdG9yID0gY29ubmVjdG9y
Ow0KPiA+ICAJZmlyc3RfbXN0X3N0cmVhbSA9IGludGVsX2RwLT5hY3RpdmVfbXN0X2xpbmtzID09
IDA7DQo+ID4gKwlXQVJOX09OKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgJiYgZmlyc3RfbXN0
X3N0cmVhbSAmJg0KPiA+ICsJCSFpbnRlbF9kcF9tc3RfaXNfbWFzdGVyX3RyYW5zKHBpcGVfY29u
ZmlnKSk7DQo+ID4gIA0KPiA+ICAJRFJNX0RFQlVHX0tNUygiYWN0aXZlIGxpbmtzICVkXG4iLCBp
bnRlbF9kcC0+YWN0aXZlX21zdF9saW5rcyk7DQo+ID4gIA0KPiA+IEBAIC03MjIsMyArODMzLDE0
IEBAIGludGVsX2RwX21zdF9lbmNvZGVyX2NsZWFudXAoc3RydWN0DQo+ID4gaW50ZWxfZGlnaXRh
bF9wb3J0ICppbnRlbF9kaWdfcG9ydCkNCj4gPiAgCWRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyX2Rl
c3Ryb3koJmludGVsX2RwLT5tc3RfbWdyKTsNCj4gPiAgCS8qIGVuY29kZXJzIHdpbGwgZ2V0IGtp
bGxlZCBieSBub3JtYWwgY2xlYW51cCAqLw0KPiA+ICB9DQo+ID4gKw0KPiA+ICtib29sIGludGVs
X2RwX21zdF9pc19tYXN0ZXJfdHJhbnMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
PiAqY3J0Y19zdGF0ZSkNCj4gPiArew0KPiA+ICsJcmV0dXJuIGNydGNfc3RhdGUtPm1zdF9tYXN0
ZXJfdHJhbnNjb2RlciA9PSBjcnRjX3N0YXRlLQ0KPiA+ID5jcHVfdHJhbnNjb2RlcjsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiArYm9vbCBpbnRlbF9kcF9tc3RfaXNfc2xhdmVfdHJhbnMoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSkNCj4gPiArew0KPiA+ICsJcmV0
dXJuIGNydGNfc3RhdGUtPm1zdF9tYXN0ZXJfdHJhbnNjb2RlciAhPSBJTlZBTElEX1RSQU5TQ09E
RVINCj4gPiAmJg0KPiA+ICsJICAgICAgIGNydGNfc3RhdGUtPm1zdF9tYXN0ZXJfdHJhbnNjb2Rl
ciAhPSBjcnRjX3N0YXRlLQ0KPiA+ID5jcHVfdHJhbnNjb2RlcjsNCj4gPiArfQ0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5oDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5oDQo+ID4gaW5kZXgg
ZjY2MGFkODBkYjA0Li44NTQ3MjRmNjhmMDkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmgNCj4gPiBAQCAtNiwxMCArNiwxNSBAQA0KPiA+
ICAjaWZuZGVmIF9fSU5URUxfRFBfTVNUX0hfXw0KPiA+ICAjZGVmaW5lIF9fSU5URUxfRFBfTVNU
X0hfXw0KPiA+ICANCj4gPiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+DQo+ID4gKw0KPiA+ICBz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0Ow0KPiA+ICtzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsN
Cj4gPiAgDQo+ID4gIGludCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9pbml0KHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQNCj4gPiAqaW50ZWxfZGlnX3BvcnQsIGludCBjb25uX2lkKTsNCj4gPiAgdm9p
ZCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9jbGVhbnVwKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQN
Cj4gPiAqaW50ZWxfZGlnX3BvcnQpOw0KPiA+ICBpbnQgaW50ZWxfZHBfbXN0X2VuY29kZXJfYWN0
aXZlX2xpbmtzKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQNCj4gPiAqaW50ZWxfZGlnX3BvcnQp
Ow0KPiA+ICtib29sIGludGVsX2RwX21zdF9pc19tYXN0ZXJfdHJhbnMoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gK2Jvb2wgaW50ZWxfZHBfbXN0
X2lzX3NsYXZlX3RyYW5zKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNf
c3RhdGUpOw0KPiA+ICANCj4gPiAgI2VuZGlmIC8qIF9fSU5URUxfRFBfTVNUX0hfXyAqLw0KPiA+
IC0tIA0KPiA+IDIuMjQuMQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
