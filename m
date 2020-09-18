Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EE226F543
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 07:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06E126ECA8;
	Fri, 18 Sep 2020 05:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C996F6ECA8
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Sep 2020 05:02:51 +0000 (UTC)
IronPort-SDR: CKbAEiz/JUDR/RiVmFzZfEgqrDMqjt61aYxUvxalrjK04TBEE9XqUgIlDoFpXMm1G1FKNjktVE
 f5h0p6iVciNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="221413501"
X-IronPort-AV: E=Sophos;i="5.77,273,1596524400"; d="scan'208";a="221413501"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 22:02:47 -0700
IronPort-SDR: NbhVbqDHQsSB4PkIoNQsVIRbQKLJjdcgIjRE2O0UG1Y8hFjzOKFhg8eLfD70kvn2RCefACOzR5
 +8c/Qj1FwBvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,273,1596524400"; d="scan'208";a="344618141"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Sep 2020 22:02:46 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 22:02:45 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 10:32:43 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.1713.004;
 Fri, 18 Sep 2020 10:32:43 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: Use the correct bpp when
 validating "4:2:0 only" modes
Thread-Index: AQHWjTu5wpk9tlTbSEqK46YmqJZXk6lt10bg
Date: Fri, 18 Sep 2020 05:02:43 +0000
Message-ID: <a9ddfa68ec7846889322b924f51d8c12@intel.com>
References: <20200917214335.3569-1-ville.syrjala@linux.intel.com>
 <20200917214335.3569-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20200917214335.3569-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use the correct bpp when
 validating "4:2:0 only" modes
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogRnJpZGF5LCBTZXB0ZW1iZXIgMTgsIDIwMjAgMzoxNCBBTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggMy8zXSBkcm0vaTkxNTogVXNlIHRoZSBjb3JyZWN0IGJwcCB3aGVuDQo+IHZhbGlkYXRp
bmcgIjQ6MjowIG9ubHkiIG1vZGVzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gV2hlbiB2YWxpZGF0aW5nIGEgIllDYkNy
IDQ6MjowIG9ubHkiIG1vZGUgd2UgbXVzdCB0YWtlIGludG8gYWNjb3VudCB0aGUNCj4gZmFjdCB0
aGF0IHdlJ3JlIGdvaW5nIHRvIGJlIG91dHB1dHRpbmcgWUNiQ3INCj4gNDoyOjAgb3IgNDo0OjQg
KHdoZW4gYSBEUC0+SERNSSBwcm90b2NvbCBjb252ZXJ0ZXIgaXMgZG9pbmcgdGhlIDQ6MjowDQo+
IGRvd25zYW1wbGluZykuIEZvciBZQ2JDciA0OjQ6NCB0aGUgbWluaW11bSBvdXRwdXQgYnBjIGlz
IDgsIGZvciBZQ2JDciA0OjI6MA0KPiBpdCdsbCBiZSBoYWxmIHRoYXQuIFRoZSBjdXJyZW50bHkg
aGFyZGNvZGVkIDZicGMgaXMgb25seSBjb3JyZWN0IGZvciBSR0IgNDo0OjQsDQo+IHdoaWNoIHdl
IHdpbGwgbmV2ZXIgdXNlIHdpdGggdGhlc2Uga2luZHMgb2YgbW9kZXMuIEZpZ3VyZSBvdXQgd2hh
dCB3ZSdyZQ0KPiBnb2luZyB0byBvdXRwdXQgYW5kIHVzZSB0aGUgY29ycmVjdCBtaW4gYnBwIHZh
bHVlIHRvIHZhbGlkYXRlIHdoZXRoZXIgdGhlDQo+IGxpbmsgaGFzIHN1ZmZpY2llbnQgYmFuZHdp
ZHRoLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCkxvb2tzIGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVmFuZGl0
YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQoNClRoYW5rcywNClZhbmRp
dGENCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA1
NSArKysrKysrKysrKysrKystLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzMgaW5zZXJ0
aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IGFhNDgwMWE4MTIzZC4uNTRhNGI4MWVhM2ZmIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC02MDgsNiAr
NjA4LDM3IEBAIGludGVsX2RwX291dHB1dF9mb3JtYXQoc3RydWN0IGRybV9jb25uZWN0b3INCj4g
KmNvbm5lY3RvciwNCj4gIAkJcmV0dXJuIElOVEVMX09VVFBVVF9GT1JNQVRfWUNCQ1I0MjA7DQo+
ICB9DQo+IA0KPiAraW50IGludGVsX2RwX21pbl9icHAoZW51bSBpbnRlbF9vdXRwdXRfZm9ybWF0
IG91dHB1dF9mb3JtYXQpIHsNCj4gKwlpZiAob3V0cHV0X2Zvcm1hdCA9PSBJTlRFTF9PVVRQVVRf
Rk9STUFUX1JHQikNCj4gKwkJcmV0dXJuIDYgKiAzOw0KPiArCWVsc2UNCj4gKwkJcmV0dXJuIDgg
KiAzOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IGludGVsX2RwX291dHB1dF9icHAoZW51bSBp
bnRlbF9vdXRwdXRfZm9ybWF0IG91dHB1dF9mb3JtYXQsDQo+ICtpbnQgYnBwKSB7DQo+ICsJLyoN
Cj4gKwkgKiBicHAgdmFsdWUgd2FzIGFzc3VtZWQgdG8gUkdCIGZvcm1hdC4gQW5kIFlDYkNyIDQ6
MjowIG91dHB1dA0KPiArCSAqIGZvcm1hdCBvZiB0aGUgbnVtYmVyIG9mIGJ5dGVzIHBlciBwaXhl
bCB3aWxsIGJlIGhhbGYgdGhlIG51bWJlcg0KPiArCSAqIG9mIGJ5dGVzIG9mIFJHQiBwaXhlbC4N
Cj4gKwkgKi8NCj4gKwlpZiAob3V0cHV0X2Zvcm1hdCA9PSBJTlRFTF9PVVRQVVRfRk9STUFUX1lD
QkNSNDIwKQ0KPiArCQlicHAgLz0gMjsNCj4gKw0KPiArCXJldHVybiBicHA7DQo+ICt9DQo+ICsN
Cj4gK3N0YXRpYyBpbnQNCj4gK2ludGVsX2RwX21vZGVfbWluX291dHB1dF9icHAoc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gKwkJCSAgICAgY29uc3Qgc3RydWN0IGRybV9kaXNw
bGF5X21vZGUgKm1vZGUpIHsNCj4gKwllbnVtIGludGVsX291dHB1dF9mb3JtYXQgb3V0cHV0X2Zv
cm1hdCA9DQo+ICsJCWludGVsX2RwX291dHB1dF9mb3JtYXQoY29ubmVjdG9yLCBtb2RlKTsNCj4g
Kw0KPiArCXJldHVybiBpbnRlbF9kcF9vdXRwdXRfYnBwKG91dHB1dF9mb3JtYXQsDQo+ICtpbnRl
bF9kcF9taW5fYnBwKG91dHB1dF9mb3JtYXQpKTsgfQ0KPiArDQo+ICBzdGF0aWMgYm9vbCBpbnRl
bF9kcF9oZGlzcGxheV9iYWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAg
CQkJCSAgaW50IGhkaXNwbGF5KQ0KPiAgew0KPiBAQCAtNjg3LDcgKzcxOCw4IEBAIGludGVsX2Rw
X21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gIAltYXhf
bGFuZXMgPSBpbnRlbF9kcF9tYXhfbGFuZV9jb3VudChpbnRlbF9kcCk7DQo+IA0KPiAgCW1heF9y
YXRlID0gaW50ZWxfZHBfbWF4X2RhdGFfcmF0ZShtYXhfbGlua19jbG9jaywgbWF4X2xhbmVzKTsN
Cj4gLQltb2RlX3JhdGUgPSBpbnRlbF9kcF9saW5rX3JlcXVpcmVkKHRhcmdldF9jbG9jaywgMTgp
Ow0KPiArCW1vZGVfcmF0ZSA9IGludGVsX2RwX2xpbmtfcmVxdWlyZWQodGFyZ2V0X2Nsb2NrLA0K
PiArDQo+IGludGVsX2RwX21vZGVfbWluX291dHB1dF9icHAoY29ubmVjdG9yLCBtb2RlKSk7DQo+
IA0KPiAgCWlmIChpbnRlbF9kcF9oZGlzcGxheV9iYWQoZGV2X3ByaXYsIG1vZGUtPmhkaXNwbGF5
KSkNCj4gIAkJcmV0dXJuIE1PREVfSF9JTExFR0FMOw0KPiBAQCAtMjExMSwxOSArMjE0Myw2IEBA
IGludGVsX2RwX2FkanVzdF9jb21wbGlhbmNlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmlu
dGVsX2RwLA0KPiAgCX0NCj4gIH0NCj4gDQo+IC1zdGF0aWMgaW50IGludGVsX2RwX291dHB1dF9i
cHAoZW51bSBpbnRlbF9vdXRwdXRfZm9ybWF0IG91dHB1dF9mb3JtYXQsDQo+IGludCBicHApIC17
DQo+IC0JLyoNCj4gLQkgKiBicHAgdmFsdWUgd2FzIGFzc3VtZWQgdG8gUkdCIGZvcm1hdC4gQW5k
IFlDYkNyIDQ6MjowIG91dHB1dA0KPiAtCSAqIGZvcm1hdCBvZiB0aGUgbnVtYmVyIG9mIGJ5dGVz
IHBlciBwaXhlbCB3aWxsIGJlIGhhbGYgdGhlIG51bWJlcg0KPiAtCSAqIG9mIGJ5dGVzIG9mIFJH
QiBwaXhlbC4NCj4gLQkgKi8NCj4gLQlpZiAob3V0cHV0X2Zvcm1hdCA9PSBJTlRFTF9PVVRQVVRf
Rk9STUFUX1lDQkNSNDIwKQ0KPiAtCQlicHAgLz0gMjsNCj4gLQ0KPiAtCXJldHVybiBicHA7DQo+
IC19DQo+IC0NCj4gIC8qIE9wdGltaXplIGxpbmsgY29uZmlnIGluIG9yZGVyOiBtYXggYnBwLCBt
aW4gY2xvY2ssIG1pbiBsYW5lcyAqLyAgc3RhdGljIGludA0KPiBpbnRlbF9kcF9jb21wdXRlX2xp
bmtfY29uZmlnX3dpZGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgQEAgLTIzNDYsMTQNCj4g
KzIzNjUsNiBAQCBzdGF0aWMgaW50IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiANCj4gLWludCBp
bnRlbF9kcF9taW5fYnBwKGVudW0gaW50ZWxfb3V0cHV0X2Zvcm1hdCBvdXRwdXRfZm9ybWF0KSAt
ew0KPiAtCWlmIChvdXRwdXRfZm9ybWF0ID09IElOVEVMX09VVFBVVF9GT1JNQVRfUkdCKQ0KPiAt
CQlyZXR1cm4gNiAqIDM7DQo+IC0JZWxzZQ0KPiAtCQlyZXR1cm4gOCAqIDM7DQo+IC19DQo+IC0N
Cj4gIHN0YXRpYyBpbnQNCj4gIGludGVsX2RwX2NvbXB1dGVfbGlua19jb25maWcoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpwaXBlX2NvbmZpZywNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+
IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
