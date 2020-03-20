Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 740F218C75E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 07:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32DF66E03E;
	Fri, 20 Mar 2020 06:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BAA66E03E
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 06:19:44 +0000 (UTC)
IronPort-SDR: mbI+R2L1RIuuYvdywcnyseeI2/Uyo2mI7yuwHc2THiZ7mdIgVTJ78uM1us+GDWtnorSg2B2AR+
 t+7rJHPpf4Qw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 23:19:43 -0700
IronPort-SDR: igVVTgsnnFXbziqvCDpq1Tdbii65pTw+ccOdYWpXAfGIfbRQTx5S1Xm8/tW9Ij/DsrRxjG1vX/
 y7c7kL6nDUwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,283,1580803200"; d="scan'208";a="263975336"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga002.jf.intel.com with ESMTP; 19 Mar 2020 23:19:43 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Mar 2020 23:19:42 -0700
Received: from BGSMSX108.gar.corp.intel.com (10.223.4.192) by
 fmsmsx123.amr.corp.intel.com (10.18.125.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Mar 2020 23:19:42 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX108.gar.corp.intel.com ([169.254.8.19]) with mapi id 14.03.0439.000;
 Fri, 20 Mar 2020 11:49:38 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
Thread-Index: AQHV/RTdJvWeZ84SjEekeReP5HUDGahP7GUAgAEX5XA=
Date: Fri, 20 Mar 2020 06:19:37 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82437F00@BGSMSX104.gar.corp.intel.com>
References: <20200318113009.16757-1-uma.shankar@intel.com>
 <469075d16551fe95e2fdadfd6ffd1538a8f3a657.camel@intel.com>
In-Reply-To: <469075d16551fe95e2fdadfd6ffd1538a8f3a657.camel@intel.com>
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
Cc: "Khor, Swee Aun" <swee.aun.khor@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291emEsIEpvc2UgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDIwLCAyMDIwIDEyOjM2
IEFNDQo+IFRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEtob3IsIFN3ZWUgQXVuIDxzd2VlLmF1bi5r
aG9yQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5
MTUvZGlzcGxheTogVHJpZ2dlciBNb2Rlc2V0IGF0IGJvb3QgZm9yIGF1ZGlvDQo+IGNvZGVjIGlu
aXQNCj4gDQo+IE9uIFdlZCwgMjAyMC0wMy0xOCBhdCAxNzowMCArMDUzMCwgVW1hIFNoYW5rYXIg
d3JvdGU6DQo+ID4gSWYgZXh0ZXJuYWwgbW9uaXRvcnMgYXJlIGNvbm5lY3RlZCBkdXJpbmcgYm9v
dCB1cCwgZHJpdmVyIHVzZXMgdGhlDQo+ID4gc2FtZSBtb2RlIHByb2dyYW1tZWQgYnkgQklPUyBh
bmQgYXZvaWRzIGEgZnVsbCBtb2Rlc2V0Lg0KPiA+IFRoaXMgcmVzdWx0cyBpbiBkaXNwbGF5IGF1
ZGlvIGNvZGVjIGxlZnQgdW5pbml0aWFsaXplZCBhbmQgZGlzcGxheQ0KPiA+IGF1ZGlvIGZhaWxz
IHRvIHdvcmsgdGlsbCB1c2VyIHRyaWdnZXJzIGEgbW9kZXNldC4NCj4gPg0KPiA+IFRoaXMgcGF0
Y2ggZml4ZXMgdGhlIHNhbWUgYnkgdHJpZ2dlcmluZyBhIG1vZGVzZXQgYXQgYm9vdC4NCj4gDQo+
IFdlIGhhZCB0aGUgc2FtZSBpc3N1ZSBmb3IgUFNSLCB0YWtlIGEgbG9vayB0byB0aGUgZml4Og0K
PiBjb21taXQgMzNlMDU5YTJlNGRmNDU0MzU5ZjY0MmYyMjM1YWYzOWRlOWQzZTkxNA0KPiBkcm0v
aTkxNS9wc3I6IEZvcmNlIFBTUiBwcm9iZSBvbmx5IGFmdGVyIGZ1bGwgaW5pdGlhbGl6YXRpb24N
Cj4gDQo+IE1heWJlIG1ha2UgdGhpcyBldmVuIG1vcmUgZ2VuZXJpYy4NCg0KWWVhaCB0aGlzIGxv
b2tzIHRvIGRlYWxpbmcgd2l0aCBhbG1vc3QgYSBzaW1pbGFyIG5lZWQuIFRoYW5rcyBmb3IgcG9p
bnRpbmcgdGhpcyBvdXQsDQp3aWxsIHRyeSB0byBjb21lIHVwIHdpdGggYSBnZW5lcmFsaXplZCBz
b2x1dGlvbi4NCg0KUmVnYXJkcywNClVtYSBTaGFua2FyDQoNCj4gPg0KPiA+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IENjOiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPiA+IENjOiBL
YWkgVmVobWFuZW4gPGthaS52ZWhtYW5lbkBsaW51eC5pbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBTd2VlQXVuIEtob3IgPHN3ZWUuYXVuLmtob3JAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICB8IDQgKysrKw0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDggKysr
KysrKysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAg
fCAzICsrKw0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykNCj4gPg0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gaW5kZXgg
NzNkMGY0NjQ4YzA2Li5iYTM4MGFmYTczYTYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBAQCAtMzcwNCw2ICszNzA0LDEwIEBAIHN0YXRp
YyB2b2lkIGludGVsX2RkaV91cGRhdGVfcGlwZShzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLA0KPiA+ICAJCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpj
cnRjX3N0YXRlLA0KPiA+ICAJCQkJICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZQ0K
PiA+ICpjb25uX3N0YXRlKQ0KPiA+ICB7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gPiArDQo+ID4gKwkvKiBD
bGVhciB0aGUgYm9vdGZsYWcgKi8NCj4gPiArCWRldl9wcml2LT5ib290ZmxhZyA9IGZhbHNlOw0K
PiA+DQo+ID4gIAlpZiAoIWludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VU
UFVUX0hETUkpKQ0KPiA+ICAJCWludGVsX2RkaV91cGRhdGVfcGlwZV9kcChlbmNvZGVyLCBjcnRj
X3N0YXRlLCBjb25uX3N0YXRlKTsgZGlmZg0KPiA+IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggOGYyM2M0ZDUxYzMzLi5hMTQ4NzUzOTQ5
NWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiA+IEBAIC0xNDc1MSw2ICsxNDc1MSwxMCBAQCBzdGF0aWMgaW50IGludGVsX2F0
b21pY19jaGVjayhzdHJ1Y3QNCj4gPiBkcm1fZGV2aWNlICpkZXYsDQo+ID4gIAkJaWYgKG5ld19j
cnRjX3N0YXRlLT5ody5tb2RlLnByaXZhdGVfZmxhZ3MgIT0NCj4gPiAgCQkgICAgb2xkX2NydGNf
c3RhdGUtPmh3Lm1vZGUucHJpdmF0ZV9mbGFncykNCj4gPiAgCQkJbmV3X2NydGNfc3RhdGUtPnVh
cGkubW9kZV9jaGFuZ2VkID0gdHJ1ZTsNCj4gPiArDQo+ID4gKwkJLyogU2V0IG1vZGVfY2hhbmdl
IHRvIGluaXQgYXVkaW8gY29kZSBvbmNlIGF0IGJvb3QgKi8NCj4gPiArCQlpZiAoZGV2X3ByaXYt
PmJvb3RmbGFnICYmIG5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmUpDQo+ID4gKwkJCW5ld19jcnRj
X3N0YXRlLT51YXBpLm1vZGVfY2hhbmdlZCA9IHRydWU7DQo+ID4gIAl9DQo+ID4NCj4gPiAgCXJl
dCA9IGRybV9hdG9taWNfaGVscGVyX2NoZWNrX21vZGVzZXQoZGV2LCAmc3RhdGUtPmJhc2UpOyBA
QA0KPiA+IC0xNzY1NSwxMSArMTc2NTksMTUgQEAgc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX2Zk
aV9wbGxfZnJlcShzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPg0K
PiA+ICBzdGF0aWMgaW50IGludGVsX2luaXRpYWxfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYpICB7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGRldik7DQo+ID4gIAlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBOVUxMOw0KPiA+
ICAJc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4IGN0eDsNCj4gPiAgCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjOw0KPiA+ICAJaW50IHJldCA9IDA7DQo+ID4NCj4gPiArCS8qIFNldCBGbGFn
IHRvIHRyaWdnZXIgbW9kZXNldCBmb3IgYXVkaW8gY29kZWMgaW5pdCAqLw0KPiA+ICsJZGV2X3By
aXYtPmJvb3RmbGFnID0gdHJ1ZTsNCj4gPiArDQo+ID4gIAlzdGF0ZSA9IGRybV9hdG9taWNfc3Rh
dGVfYWxsb2MoZGV2KTsNCj4gPiAgCWlmICghc3RhdGUpDQo+ID4gIAkJcmV0dXJuIC1FTk9NRU07
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggaW5kZXggYTdlYTFkODU1MzU5Li4yMDcx
OTZmOTYzMmINCj4gPiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+IEBA
IC0xMjEwLDYgKzEyMTAsOSBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7DQo+ID4gIAkgKiBO
T1RFOiBUaGlzIGlzIHRoZSBkcmkxL3VtcyBkdW5nZW9uLCBkb24ndCBhZGQgc3R1ZmYgaGVyZS4N
Cj4gPiBZb3VyIHBhdGNoDQo+ID4gIAkgKiB3aWxsIGJlIHJlamVjdGVkLiBJbnN0ZWFkIGxvb2sg
Zm9yIGEgYmV0dGVyIHBsYWNlLg0KPiA+ICAJICovDQo+ID4gKw0KPiA+ICsJLyogRmxhZyB0byB0
cmlnZ2VyIG1vZGVzZXQgZm9yIEF1ZGlvIGNvZGVjIGluaXQgb25jZSBkdXJpbmcNCj4gPiBib290
ICovDQo+ID4gKwlib29sIGJvb3RmbGFnOw0KPiA+ICB9Ow0KPiA+DQo+ID4gIHN0YXRpYyBpbmxp
bmUgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKnRvX2k5MTUoY29uc3Qgc3RydWN0DQo+ID4gZHJt
X2RldmljZSAqZGV2KQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
