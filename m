Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DE3189D83
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A012C6E8F6;
	Wed, 18 Mar 2020 14:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D00F6E8F6
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:02:09 +0000 (UTC)
IronPort-SDR: DOoqw+qiI1qEtTxotKGVrmyoJccQUJQdlwOkdqODCpL8tIsJROAYO7m4pJnh6nTTqIq6PzYgTQ
 clxccRYNgRbQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 07:02:08 -0700
IronPort-SDR: 74krKj3G1yw0dIbNHdHo1MiZXvYzScX3PsZ2FXNQybbO7tC6fvfWbzABJQPseg84XV4nVrOS47
 CaCvDXTbA0+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="244832389"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga003.jf.intel.com with ESMTP; 18 Mar 2020 07:02:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Mar 2020 07:02:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Mar 2020 07:02:07 -0700
Received: from BGSMSX108.gar.corp.intel.com (10.223.4.192) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 18 Mar 2020 07:02:07 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX108.gar.corp.intel.com ([169.254.8.19]) with mapi id 14.03.0439.000;
 Wed, 18 Mar 2020 19:32:04 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
Thread-Index: AQHV/RTdJvWeZ84SjEekeReP5HUDGahN5SuAgAB7TQA=
Date: Wed, 18 Mar 2020 14:02:04 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F824355C9@BGSMSX104.gar.corp.intel.com>
References: <20200318113009.16757-1-uma.shankar@intel.com>
 <20200318120716.GA27671@intel.com>
In-Reply-To: <20200318120716.GA27671@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
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
Cc: "Khor, Swee Aun" <swee.aun.khor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR3VwdGEsIEFuc2h1bWFu
IDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggMTgs
IDIwMjAgNTozNyBQTQ0KPiBUbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+
DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBLaG9yLCBTd2VlIEF1biA8
c3dlZS5hdW4ua2hvckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFU
Q0hdIGRybS9pOTE1L2Rpc3BsYXk6IFRyaWdnZXIgTW9kZXNldCBhdCBib290IGZvciBhdWRpbw0K
PiBjb2RlYyBpbml0DQo+IA0KPiBPbiAyMDIwLTAzLTE4IGF0IDE3OjAwOjA5ICswNTMwLCBVbWEg
U2hhbmthciB3cm90ZToNCj4gPiBJZiBleHRlcm5hbCBtb25pdG9ycyBhcmUgY29ubmVjdGVkIGR1
cmluZyBib290IHVwLCBkcml2ZXIgdXNlcyB0aGUNCj4gPiBzYW1lIG1vZGUgcHJvZ3JhbW1lZCBi
eSBCSU9TIGFuZCBhdm9pZHMgYSBmdWxsIG1vZGVzZXQuDQo+ID4gVGhpcyByZXN1bHRzIGluIGRp
c3BsYXkgYXVkaW8gY29kZWMgbGVmdCB1bmluaXRpYWxpemVkIGFuZCBkaXNwbGF5DQo+ID4gYXVk
aW8gZmFpbHMgdG8gd29yayB0aWxsIHVzZXIgdHJpZ2dlcnMgYSBtb2Rlc2V0Lg0KPiA+DQo+ID4g
VGhpcyBwYXRjaCBmaXhlcyB0aGUgc2FtZSBieSB0cmlnZ2VyaW5nIGEgbW9kZXNldCBhdCBib290
Lg0KPiA+DQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+DQo+ID4gQ2M6IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVuQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50
ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFN3ZWVBdW4gS2hvciA8c3dlZS5hdW4ua2hvckBp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgICAgIHwgNCArKysrDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIHwgOCArKysrKysrKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICAgICAgICAgICB8IDMgKysrDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTUg
aW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMNCj4gPiBpbmRleCA3M2QwZjQ2NDhjMDYuLmJhMzgwYWZhNzNhNiAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IEBAIC0z
NzA0LDYgKzM3MDQsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3VwZGF0ZV9waXBlKHN0cnVj
dCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyLA0KPiA+ICAJCQkJICBjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkJCSAgY29uc3Qgc3RydWN0IGRybV9j
b25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpICB7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gPiArDQo+ID4g
KwkvKiBDbGVhciB0aGUgYm9vdGZsYWcgKi8NCj4gPiArCWRldl9wcml2LT5ib290ZmxhZyA9IGZh
bHNlOw0KPiA+DQo+ID4gIAlpZiAoIWludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5U
RUxfT1VUUFVUX0hETUkpKQ0KPiA+ICAJCWludGVsX2RkaV91cGRhdGVfcGlwZV9kcChlbmNvZGVy
LCBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsgZGlmZg0KPiA+IC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggOGYyM2M0ZDUxYzMzLi5hMTQ4
NzUzOTQ5NWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC0xNDc1MSw2ICsxNDc1MSwxMCBAQCBzdGF0aWMgaW50IGlu
dGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2RldmljZQ0KPiAqZGV2LA0KPiA+ICAJCWlmIChu
ZXdfY3J0Y19zdGF0ZS0+aHcubW9kZS5wcml2YXRlX2ZsYWdzICE9DQo+ID4gIAkJICAgIG9sZF9j
cnRjX3N0YXRlLT5ody5tb2RlLnByaXZhdGVfZmxhZ3MpDQo+ID4gIAkJCW5ld19jcnRjX3N0YXRl
LT51YXBpLm1vZGVfY2hhbmdlZCA9IHRydWU7DQo+ID4gKw0KPiA+ICsJCS8qIFNldCBtb2RlX2No
YW5nZSB0byBpbml0IGF1ZGlvIGNvZGUgb25jZSBhdCBib290ICovDQo+ID4gKwkJaWYgKGRldl9w
cml2LT5ib290ZmxhZyAmJiBuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQ0KPiA+ICsJCQluZXdf
Y3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSB0cnVlOw0KPiBJIHdvdWxkIHByZWZlciB0
byBjb21wdXRlIGNydGNfc3RhdGUtPmhhc19hdWRpbyBpbiBjb21wdXRlX2NvbmZpZyBhdCBib290
IHVwICBhbmQNCj4gdGhlbiBmb3JjZSBhIGZ1bGwgbW9kZXNldCBpbiBpbnRlbF9waXBlX2NvbmZp
Z19jb21wYXJlKCksIHRoaXMgd2F5IGF0b21pY2FsbHkgd2UNCj4gY2FuIGZvcmNlIHRoZSBmdWxs
IG1vZGVzZXQgb24gYm9vdCB1cC4NCg0KVW5mb3J0dW5hdGVseSB0aGUgYXVkaW8gc3RhdGUgaXMg
bm90IHlldCBkZXRlY3RlZCBoZXJlIGF0IGJvb3R1cCAocmVhZCBvZiBFRElEIG5vdCB5ZXQgZG9u
ZSksDQpoZW5jZSBFRElEIGRhdGEgaXMgbm90IGF2YWlsYWJsZS4gV2UgdHJpZWQgdG8gZXhwbG9y
ZSB0aGlzIHBhdGggYnV0IHRoaXMgZGlkbid0IHdvcmtlZCBvdXQuIFdlDQpmb3JjZWQgbW9kZXNl
dCBhdCBpbnRlbF9pbml0aWFsX2NvbW1pdCBidXQgZHVlIHRvIHRoZSBhYm92ZSByZWFzb24sIHRo
aW5ncyBkaWRuJ3Qgd29ya2VkIG91dC4NCg0KUmVnYXJkcywNClVtYSBTaGFua2FyDQoNCj4gVGhh
bmtzLA0KPiBBbnNodW1hbiBHdXB0YS4NCj4gPiAgCX0NCj4gPg0KPiA+ICAJcmV0ID0gZHJtX2F0
b21pY19oZWxwZXJfY2hlY2tfbW9kZXNldChkZXYsICZzdGF0ZS0+YmFzZSk7IEBADQo+ID4gLTE3
NjU1LDExICsxNzY1OSwxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF91cGRhdGVfZmRpX3BsbF9mcmVx
KHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+DQo+ID4gIHN0YXRp
YyBpbnQgaW50ZWxfaW5pdGlhbF9jb21taXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikgIHsNCj4g
PiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsNCj4g
PiAgCXN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSA9IE5VTEw7DQo+ID4gIAlzdHJ1Y3Qg
ZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggY3R4Ow0KPiA+ICAJc3RydWN0IGludGVsX2NydGMgKmNy
dGM7DQo+ID4gIAlpbnQgcmV0ID0gMDsNCj4gPg0KPiA+ICsJLyogU2V0IEZsYWcgdG8gdHJpZ2dl
ciBtb2Rlc2V0IGZvciBhdWRpbyBjb2RlYyBpbml0ICovDQo+ID4gKwlkZXZfcHJpdi0+Ym9vdGZs
YWcgPSB0cnVlOw0KPiA+ICsNCj4gPiAgCXN0YXRlID0gZHJtX2F0b21pY19zdGF0ZV9hbGxvYyhk
ZXYpOw0KPiA+ICAJaWYgKCFzdGF0ZSkNCj4gPiAgCQlyZXR1cm4gLUVOT01FTTsNCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBpbmRleCBhN2VhMWQ4NTUzNTkuLjIwNzE5NmY5NjMyYg0K
PiA+IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gQEAgLTEyMTAsNiAr
MTIxMCw5IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsNCj4gPiAgCSAqIE5PVEU6IFRoaXMg
aXMgdGhlIGRyaTEvdW1zIGR1bmdlb24sIGRvbid0IGFkZCBzdHVmZiBoZXJlLiBZb3VyIHBhdGNo
DQo+ID4gIAkgKiB3aWxsIGJlIHJlamVjdGVkLiBJbnN0ZWFkIGxvb2sgZm9yIGEgYmV0dGVyIHBs
YWNlLg0KPiA+ICAJICovDQo+ID4gKw0KPiA+ICsJLyogRmxhZyB0byB0cmlnZ2VyIG1vZGVzZXQg
Zm9yIEF1ZGlvIGNvZGVjIGluaXQgb25jZSBkdXJpbmcgYm9vdCAqLw0KPiA+ICsJYm9vbCBib290
ZmxhZzsNCj4gPiAgfTsNCj4gPg0KPiA+ICBzdGF0aWMgaW5saW5lIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICp0b19pOTE1KGNvbnN0IHN0cnVjdA0KPiA+IGRybV9kZXZpY2UgKmRldikNCj4gPiAt
LQ0KPiA+IDIuMjIuMA0KPiA+DQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
