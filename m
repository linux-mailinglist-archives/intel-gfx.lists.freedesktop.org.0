Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3E5179C65
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 00:25:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5CA56E11E;
	Wed,  4 Mar 2020 23:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9480F6EB7D
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 23:25:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 15:25:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,515,1574150400"; d="scan'208";a="439298938"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga005.fm.intel.com with ESMTP; 04 Mar 2020 15:25:44 -0800
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Mar 2020 15:25:44 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX126.amr.corp.intel.com ([169.254.1.129]) with mapi id 14.03.0439.000;
 Wed, 4 Mar 2020 15:25:43 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915: Don't check for wm changes
 until we've compute the wms fully
Thread-Index: AQHV7na1YwcN62ujbEGgCdWX8B8R3ag4HwKAgAC/WoCAAMOJAA==
Date: Wed, 4 Mar 2020 23:25:42 +0000
Message-ID: <e8400308a790eb317b345a9164916c7f044a5cd9.camel@intel.com>
References: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
 <20200228203552.30273-2-ville.syrjala@linux.intel.com>
 <2f65710060a20a9d0622b545ee269ab2682e75cb.camel@intel.com>
 <20200304114649.GC13686@intel.com>
In-Reply-To: <20200304114649.GC13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.241]
Content-ID: <DF9757DCE222294C9FD581149D175943@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Don't check for wm changes
 until we've compute the wms fully
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

T24gV2VkLCAyMDIwLTAzLTA0IGF0IDEzOjQ2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgTWFyIDA0LCAyMDIwIGF0IDEyOjIxOjAxQU0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIEZyaSwgMjAyMC0wMi0yOCBhdCAyMjozNSArMDIwMCwgVmlsbGUgU3ly
amFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IEN1cnJlbnRseSB3ZSdyZSBjb21wYXJpbmcg
dGhlIHdhdGVybWFya3MgYmV0d2VlbiB0aGUgb2xkIGFuZCBuZXcNCj4gPiA+IHN0YXRlcw0KPiA+
ID4gYmVmb3JlIHdlJ3ZlIGZ1bGx5IGNvbXB1dGVkIHRoZSBuZXcgd2F0ZXJtYXJrcy4gSW4gcGFy
dGljdWxhcg0KPiA+ID4gc2tsX2J1aWxkX3BpcGVfd20oKSB3aWxsIG5vdCBhY2NvdW50IGZvciB0
aGUgYW1vdW50IG9mIGRkYiBzcGFjZQ0KPiA+ID4gd2UnbGwNCj4gPiA+IGhhdmUuIFRoYXQgaW5m
b3JtYXRpb24gaXMgb25seSBhdmFpbGFibGUgZHVyaW5nIHNrbF9jb21wdXRlX2RkYigpDQo+ID4g
PiB3aGljaCB3aWxsIHByb2NlZWQgdG8gemVybyBvdXQgYW55IHdhdGVybWFyayBsZXZlbCBleGNl
ZWRpbmcgdGhlDQo+ID4gPiBkZGIgYWxsb2NhdGlvbi4gSWYgd2UncmUgc2hvcnQgb24gZGRiIHNw
YWNlIHRoaXMgd2lsbCBlbmQgdXANCj4gPiA+IGFkZGluZyB0aGUgcGxhbmUgdG8gdGhlIHN0YXRl
IGR1ZSBlcnJvbm91c2x5IGRldGVybWluaW5nIHRoYXQgdGhlDQo+ID4gPiB3YXRlcm1hcmtzIGhh
dmUgY2hhbmdlZC4gRml4IHRoZSBwcm9ibGVtIGJ5IGRlZmVycmluZw0KPiA+ID4gc2tsX3dtX2Fk
ZF9hZmZlY3RlZF9wbGFuZXMoKSB1bnRpbCB3ZSBoYXZlIHRoZSBmaW5hbCB3YXRlcm1hcmtzDQo+
ID4gPiBjb21wdXRlZC4NCj4gPiA+IA0KPiA+ID4gTm90aWNlZCB0aGlzIHdoZW4gdHJ5aW5nIGVu
YWJsZSB0cmFuc2l0aW9uIHdhdGVybWFya3Mgb24gZ2xrLg0KPiA+ID4gV2Ugbm93IGNvbXB1dGVk
IHRoZSB0cmFuc193bSBhcyAyOCwgYnV0IHdlIG9ubHkgaGFkIDE0IGJsb2Nrcw0KPiA+ID4gb2Yg
ZGRiLCBhbmQgdGh1cyBza2xfY29tcHV0ZV9kZGIoKSBlbmRlZCB1cCBkaXNhYmxpbmcgdGhlIGN1
cnNvcg0KPiA+ID4gdHJhbnNfd20gZXZlcnkgdGltZS4gVGh1cyB3ZSBlbmRlZCB1cCBhZGRpbmcg
dGhlIGN1cnNvciB0byBldmVyeQ0KPiA+ID4gY29tbWl0IHRoYXQgZGlkbid0IGFjdHVhbGx5IGFm
ZmVjdCB0aGUgY3Vyc29yIGF0IGFsbC4NCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IC0tLQ0K
PiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCAxNiArKysrKysrKysrKyst
LS0tDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiA+IGlu
ZGV4IDM5Mjk5ODExYjY1MC4uYTNkNzZlNjljYWFlIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYw0KPiA+ID4gQEAgLTU3NjIsMTYgKzU3NjIsMjQgQEAgc2tsX2NvbXB1dGVf
d20oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiA+ID4gKnN0YXRlKQ0KPiA+ID4gIAkJcmV0
ID0gc2tsX2J1aWxkX3BpcGVfd20obmV3X2NydGNfc3RhdGUpOw0KPiA+ID4gIAkJaWYgKHJldCkN
Cj4gPiA+ICAJCQlyZXR1cm4gcmV0Ow0KPiA+ID4gLQ0KPiA+ID4gLQkJcmV0ID0gc2tsX3dtX2Fk
ZF9hZmZlY3RlZF9wbGFuZXMoc3RhdGUsIGNydGMpOw0KPiA+ID4gLQkJaWYgKHJldCkNCj4gPiA+
IC0JCQlyZXR1cm4gcmV0Ow0KPiA+ID4gIAl9DQo+ID4gPiAgDQo+ID4gPiAgCXJldCA9IHNrbF9j
b21wdXRlX2RkYihzdGF0ZSk7DQo+ID4gPiAgCWlmIChyZXQpDQo+ID4gPiAgCQlyZXR1cm4gcmV0
Ow0KPiA+ID4gIA0KPiA+ID4gKwkvKg0KPiA+ID4gKwkgKiBza2xfY29tcHV0ZV9kZGIoKSB3aWxs
IGhhdmUgYWRqdXN0ZWQgdGhlIGZpbmFsIHdhdGVybWFya3MNCj4gPiA+ICsJICogYmFzZWQgb24g
aG93IG11Y2ggZGRiIGlzIGF2YWlsYWJsZS4gTm93IHdlIGNhbiBhY3R1YWxseQ0KPiA+ID4gKwkg
KiBjaGVjayBpZiB0aGUgZmluYWwgd2F0ZXJtYXJrcyBjaGFuZ2VkLg0KPiA+ID4gKwkgKi8NCj4g
PiA+ICsJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsDQo+
ID4gPiBvbGRfY3J0Y19zdGF0ZSwNCj4gPiA+ICsJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkg
ew0KPiA+ID4gKwkJcmV0ID0gc2tsX3dtX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3RhdGUsIGNydGMp
Ow0KPiA+ID4gKwkJaWYgKHJldCkNCj4gPiA+ICsJCQlyZXR1cm4gcmV0Ow0KPiA+ID4gKwl9DQo+
ID4gDQo+ID4gc2tsX2NvbXB1dGVfZGRiKCkgaXMgYWxyZWFkeSBjYWxsaW5nIHNrbF93bV9hZGRf
YWZmZWN0ZWRfcGxhbmVzKCkNCj4gPiBhZnRlcg0KPiA+IGRvIHRoZSBkZGIgYWxsb2NhdGlvbiBm
b3IgZWFjaCBwaXBlLCBzbyB3ZSBjb3VsZCByZW1vdmUgdGhpcyBjaHVuaywNCj4gDQo+IHNrbF9j
b21wdXRlX2RkYigpIGNhbGxzIHNrbF8qZGRiKl9hZGRfYWZmZWN0ZWRfcGxhbmVzKCksIHdoaWNo
IGlzIGENCj4gZGlmZmVyZW50IHRoaW5nLi4NCg0KVGhhbmtzDQoNClJldmlld2VkLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gPiB3aXRo
IHRoYXQ6DQo+ID4gDQo+ID4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiA+IA0KPiA+ID4gKw0KPiA+ID4gIAlza2xfcHJpbnRfd21f
Y2hhbmdlcyhzdGF0ZSk7DQo+ID4gPiAgDQo+ID4gPiAgCXJldHVybiAwOw0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
