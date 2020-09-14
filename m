Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 718CA26924C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 18:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74CA36E519;
	Mon, 14 Sep 2020 16:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6D26E519
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 16:58:42 +0000 (UTC)
IronPort-SDR: LNOtSpU7WiRHApqeYxXPAOjqHG0lDvyZa+hmb0/IyT6jLdeowymsAo+FAmhW5vtoKJl0D5LKjr
 NmsufL1jErOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="158399911"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="158399911"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 09:58:39 -0700
IronPort-SDR: Cm41Fziwh5mA3tIgMuCts7H4Je5aw1XoPGMjZltqxk1H5NkIBShkFfEUwyKDxhyBObJxlRe4Pk
 7fd79/3LPJKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="506420212"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 14 Sep 2020 09:58:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Sep 2020 09:58:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Sep 2020 09:58:33 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 14 Sep 2020 09:58:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [10/12] drm/i915: Introduce HPD_PORT_TC<n>
Thread-Index: AQHWhfmeGoZRUukdGE6j1qxeDb20iqlksswAgAQC34CAACUigA==
Date: Mon, 14 Sep 2020 16:58:33 +0000
Message-ID: <eb854ce65015611df9c9edabfd9a17a15651ba07.camel@intel.com>
References: <20200630215601.28557-11-ville.syrjala@linux.intel.com>
 <339a1180e5fb4d762b15aa7bce90da9db6cd8cdb.camel@intel.com>
 <20200914144841.GP6112@intel.com>
In-Reply-To: <20200914144841.GP6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <3A1083C86E37314380279D09A5842C3F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [10/12] drm/i915: Introduce HPD_PORT_TC<n>
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

T24gTW9uLCAyMDIwLTA5LTE0IGF0IDE3OjQ4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFNhdCwgU2VwIDEyLCAyMDIwIGF0IDAxOjMwOjIzQU0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFdlZCwgMjAyMC0wNy0wMSBhdCAwMDo1NSArMDMwMCwgVmlsbGUgU3ly
amFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8DQo+ID4gPiB2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbQ0KPiA+ID4gDQo+ID4gPiANCj4gPiA+IE1ha2UgYSBjbGVh
biBzcGxpdCBiZXR3ZWVuIGhwZCBwaW5zIGZvciBEREkgdnMuIFRDLiBUaGlzIG1hdGNoZXMNCj4g
PiA+IGhvdyB0aGUgYWN0dWFsIGhhcmR3YXJlIGlzIHNwbGl0Lg0KPiA+ID4gDQo+ID4gPiBBbmQg
d2l0aCB0aGlzIHdlIG1vdmUgdGhlIERESS9QSFktPkhQRCBwaW4gbWFwcGluZyBpbnRvIHRoZSBl
bmNvZGVyDQo+ID4gPiBpbml0IGluc3RlYWQgb2YgaGF2aW5nIHRvIHJlbWFwIHlldCBhZ2FpbiBp
biB0aGUgaW50ZXJydXB0IGNvZGUuDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8DQo+ID4gPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbQ0KPiA+ID4g
DQo+ID4gPiANCj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgICAgIHwgIDY1ICsrKysrKysrKy0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyB8ICAyNSArLS0tDQo+ID4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgfCAgMTcgKy0tDQo+ID4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgICAgfCAxMjEgKysrKystLS0t
LS0tLS0tLS0tLQ0KPiA+ID4gIDQgZmlsZXMgY2hhbmdlZCwgMTAyIGluc2VydGlvbnMoKyksIDEy
NiBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jDQo+ID4gPiBpbmRleCBkMDI0NDkxNzM4YjMuLmEyYzk4MTVjNWFiYyAxMDA2
NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4g
PiA+IEBAIC00ODQ3LDYgKzQ4NDcsNTcgQEAgaW50ZWxfZGRpX21heF9sYW5lcyhzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kcG9ydCkNCj4gPiA+ICAJcmV0dXJuIG1heF9sYW5lczsN
Cj4gPiA+ICB9DQo+ID4gPiAgDQo+ID4gPiArc3RhdGljIGVudW0gaHBkX3BpbiB0Z2xfaHBkX3Bp
bihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gPiArCQkJCWVudW0gcG9y
dCBwb3J0KQ0KPiA+ID4gK3sNCj4gPiA+ICsJaWYgKHBvcnQgPj0gUE9SVF9EKQ0KPiA+ID4gKwkJ
cmV0dXJuIEhQRF9QT1JUX1RDMSArIHBvcnQgLSBQT1JUX0Q7DQo+ID4gPiArCWVsc2UNCj4gPiA+
ICsJCXJldHVybiBIUERfUE9SVF9BICsgcG9ydCAtIFBPUlRfQTsNCj4gPiA+ICt9DQo+ID4gPiAr
DQo+ID4gPiArc3RhdGljIGVudW0gaHBkX3BpbiBya2xfaHBkX3BpbihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gPiArCQkJCWVudW0gcG9ydCBwb3J0KQ0KPiA+ID4gK3sN
Cj4gPiA+ICsJaWYgKEhBU19QQ0hfVEdQKGRldl9wcml2KSkNCj4gPiA+ICsJCXJldHVybiB0Z2xf
aHBkX3BpbihkZXZfcHJpdiwgcG9ydCk7DQo+ID4gPiArDQo+ID4gPiArCWlmIChwb3J0ID49IFBP
UlRfRCkNCj4gPiA+ICsJCXJldHVybiBIUERfUE9SVF9DICsgcG9ydCAtIFBPUlRfRDsNCj4gPiAN
Cj4gPiBUaGUgYWJvdmUgbG9va3Mgd3JvbmcsIGZvciBpdCB3b3VsZCBtYXRjaCB3aXRoIG9ubHkg
dGhlIHJldHVybiBiZWxsb3cuDQo+IA0KPiBPbiBya2wrdGdwIHdlIHdhbnQ6DQo+IFBPUlRfQSAo
RERJIEEpICAgLT4gSFBEX1BPUlRfQQ0KPiBQT1JUX0IgKERESSBCKSAgIC0+IEhQRF9QT1JUX0IN
Cj4gUE9SVF9EIChEREkgVEMxKSAtPiBIUERfUE9SVF9UQzENCj4gUE9SVF9FIChEREkgVEMyKSAt
PiBIUERfUE9SVF9UQzINCj4gDQo+IE9uIHJrbCtjbXAgd2Ugd2FudDoNCj4gUE9SVF9BIChEREkg
QSkgICAtPiBIUERfUE9SVF9BDQo+IFBPUlRfQiAoRERJIEIpICAgLT4gSFBEX1BPUlRfQg0KPiBQ
T1JUX0QgKERESSBUQzEpIC0+IEhQRF9QT1JUX0MNCj4gUE9SVF9FIChEREkgVEMyKSAtPiBIUERf
UE9SVF9EDQoNCm9vaGggb2theSwgbWlzc2VkIHRoaXMuDQoNCj4gDQo+ID4gPiArCWVsc2UNCj4g
PiA+ICsJCXJldHVybiBIUERfUE9SVF9BICsgcG9ydCAtIFBPUlRfQTsNCj4gPiA+ICt9DQo+ID4g
PiArDQo+ID4gPiArc3RhdGljIGVudW0gaHBkX3BpbiBpY2xfaHBkX3BpbihzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gPiArCQkJCWVudW0gcG9ydCBwb3J0KQ0KPiA+ID4g
K3sNCj4gPiA+ICsJaWYgKHBvcnQgPj0gUE9SVF9DKQ0KPiA+ID4gKwkJcmV0dXJuIEhQRF9QT1JU
X1RDMSArIHBvcnQgLSBQT1JUX0M7DQo+ID4gPiArCWVsc2UNCj4gPiA+ICsJCXJldHVybiBIUERf
UE9SVF9BICsgcG9ydCAtIFBPUlRfQTsNCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4gPiArc3RhdGlj
IGVudW0gaHBkX3BpbiBlaGxfaHBkX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsDQo+ID4gPiArCQkJCWVudW0gcG9ydCBwb3J0KQ0KPiA+ID4gK3sNCj4gPiA+ICsJaWYgKHBv
cnQgPT0gUE9SVF9EKQ0KPiA+ID4gKwkJcmV0dXJuIEhQRF9QT1JUX0E7DQo+ID4gPiArDQo+ID4g
PiArCWlmIChIQVNfUENIX01DQyhkZXZfcHJpdikpDQo+ID4gPiArCQlyZXR1cm4gaWNsX2hwZF9w
aW4oZGV2X3ByaXYsIHBvcnQpOw0KPiA+IA0KPiA+IE1heWJlIGNhbGwgdGdsX2hwZF9waW4oKSBm
b3IgSEFTX1BDSF9NQ0MoKT8gVGhlIGNvZGUgYmVsbG93IHdpbGwgbWF0Y2ggYnV0IGp1c3QgZm9y
IGNvbnNpc3RlbmN5Lg0KPiANCj4gT24ganNsK21jYyB3ZSB3YW50Og0KPiBQT1JUX0EvRCAoRERJ
IEEvRCkgLT4gSFBEX1BPUlRfQQ0KPiBQT1JUX0IgICAoRERJIEIpICAgLT4gSFBEX1BPUlRfQg0K
PiBQT1JUX0MgICAoRERJIEMpICAgLT4gSFBEX1BPUlRfVEMxDQo+IA0KPiBvbiBqc2wraWNwIHdl
IHdhbnQ6DQo+IFBPUlRfQS9EIChEREkgQS9EKSAtPiBIUERfUE9SVF9BDQo+IFBPUlRfQiAgIChE
REkgQikgICAtPiBIUERfUE9SVF9CDQo+IFBPUlRfQyAgIChEREkgQykgICAtPiBIUERfUE9SVF9D
DQo+IA0KPiANCg0KVGhlIGFib3ZlIHdvdWxkIGJlIHRoZSBvdXRwdXQgb2YgdGdsX2hwZF9waW4o
KSBidXQgb2theSBhcyBpdCBjYW4gYmUgYXNzb2NpYXRlIHdpdGggU1BULCBMUFQsIElDUCBhbmQg
VEdQIGJldHRlciBrZWVwIHRoZSBjdXJyZW50IGNvZGUuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
