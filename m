Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 025D215235E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 00:49:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D546F416;
	Tue,  4 Feb 2020 23:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2C36F416
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 23:49:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 15:49:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,403,1574150400"; d="scan'208";a="311203796"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga001.jf.intel.com with ESMTP; 04 Feb 2020 15:49:38 -0800
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 4 Feb 2020 15:49:37 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 FMSMSX161.amr.corp.intel.com ([10.18.125.9]) with mapi id 14.03.0439.000;
 Tue, 4 Feb 2020 15:49:16 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Kasireddy,
 Vivek" <vivek.kasireddy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/ehl: Check VBT before updating
 the transcoder for pipe
Thread-Index: AQHV2u8QUDNTJUMC7kulcn80mUO1FKgLYg2AgADHZACAABI3gA==
Date: Tue, 4 Feb 2020 23:49:15 +0000
Message-ID: <74130cffc98d8753169fdb387fbe67c347eb6f27.camel@intel.com>
References: <20200204000242.30542-1-vivek.kasireddy@intel.com>
 <87blqe39u6.fsf@intel.com>
 <20200204144404.75f5f332@vkasired-desk2.fm.intel.com>
In-Reply-To: <20200204144404.75f5f332@vkasired-desk2.fm.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.237]
Content-ID: <8BC21EAF366CF846B36FFF6C8213AF86@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Check VBT before updating the
 transcoder for pipe
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

SSBndWVzcyBhIGJldHRlciBzb2x1dGlvbiB3b3VsZCBiZSBkbyB0aGUgSFcgc3RhdGUgc2FuaXRp
emF0aW9uIGR1cmluZw0KdGhlIEhXIHJlYWRvdXQoaW50ZWxfbW9kZXNldF9zZXR1cF9od19zdGF0
ZSgpKQ0KDQpPbiBUdWUsIDIwMjAtMDItMDQgYXQgMTQ6NDQgLTA4MDAsIFZpdmVrIEthc2lyZWRk
eSB3cm90ZToNCj4gT24gVHVlLCA0IEZlYiAyMDIwIDEyOjUwOjI1ICswMjAwDQo+IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiBIaSBKYW5pLA0KPiAN
Cj4gPiBPbiBNb24sIDAzIEZlYiAyMDIwLCBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRk
eUBpbnRlbC5jb20+DQo+ID4gd3JvdGU6DQo+ID4gPiBTaW5jZSB0aGUgcGlwZS0+dHJhbnNjb2Rl
ciBtYXBwaW5nIGlzIG5vdCBleHBlY3RlZCB0byBjaGFuZ2UNCj4gPiA+IHVubGVzcw0KPiA+ID4g
dGhlcmUgaXMgZWl0aGVyIGVEUCBvciBEU0kgY29ubmVjdG9ycyBwcmVzZW50LCBjaGVjayB0aGUg
VkJUIHRvDQo+ID4gPiBjb25maXJtIHRoZWlyIHByZXNlbmNlIGluIGFkZGl0aW9uIHRvIGNoZWNr
aW5nDQo+ID4gPiBUUkFOU19ERElfRlVOQ19DVEwodHJhbnNjb2RlcikuIFRoaXMgYWRkaXRpb25h
bCBjaGVjayBpcyBuZWVkZWQNCj4gPiA+IG9uDQo+ID4gPiBwbGF0Zm9ybXMgbGlrZSBFbGtoYXJ0
IExha2UgYmVjYXVzZSB3ZSBjYW5ub3QganVzdCByZWx5IG9uDQo+ID4gPiBHT1AvRmlybXdhcmUg
cHJvZ3JhbW1lZCB2YWx1ZXMgaW4gVFJBTlNfRERJX0ZVTkNfQ1RMKHRyYW5zY29kZXIpDQo+ID4g
PiBiZWZvcmUgdXBkYXRpbmcgdGhlIHRyYW5zY29kZXIgbWFwcGluZy4NCj4gPiA+IA0KPiA+ID4g
VGhpcyBwYXRjaCBpcyBvbmx5IHJlbGV2YW50IHRvIEVITCAtLSBhbmQgYSBuby1vcCBvbiBvdGhl
cnMgLS0NCj4gPiA+IGJlY2F1c2Ugc29tZSBvZiB0aGUgUEhZcyBhcmUgc2hhcmVkIGJldHdlZW4g
dGhlIGRpZmZlcmVudCBERElzDQo+ID4gPiBhbmQNCj4gPiA+IHdlIHJlbHkgb24gdGhlIFZCVCB0
byBwcmVzZW50IHRoZSBtb3N0IGFjY3VyYXRlIGluZm9ybWF0aW9uIHRvDQo+ID4gPiB0aGUNCj4g
PiA+IGRyaXZlci4NCj4gPiA+IA0KPiA+ID4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+DQo+ID4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVr
Lmthc2lyZWRkeUBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE1DQo+ID4gPiArKysrKysrKysrKysrKy0N
Cj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
PiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgaW5kZXgNCj4gPiA+IGMwZTUwMDJjZTY0Yy4uNGIzOGYyOTNiZDg4IDEwMDY0
NCAtLS0NCj4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgKysrDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIEBAIC0xMDgwNSw2DQo+ID4gPiArMTA4MDUsMTggQEAgc3RhdGljIHZvaWQgaHN3X2dldF9k
ZGlfcGxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiAqZGV2X3ByaXYsIGVudW0gcG9y
dCBwb3J0LCBwaXBlX2NvbmZpZy0+c2hhcmVkX2RwbGwgPQ0KPiA+ID4gaW50ZWxfZ2V0X3NoYXJl
ZF9kcGxsX2J5X2lkKGRldl9wcml2LCBpZCk7IH0gDQo+ID4gPiArc3RhdGljIGJvb2wgZWhsX3Zi
dF9lZHBfZHNpX3ByZXNlbnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiA+ICpkZXZfcHJp
diwNCj4gPiA+ICsJCQkJICAgIGVudW0gdHJhbnNjb2RlciB0cmFuc2NvZGVyKQ0KPiA+ID4gK3sN
Cj4gPiA+ICsJYm9vbCBlZHBfcHJlc2VudCA9IGludGVsX2Jpb3NfaXNfcG9ydF9wcmVzZW50KGRl
dl9wcml2LA0KPiA+ID4gUE9SVF9BKTsNCj4gPiA+ICsJYm9vbCBkc2lfcHJlc2VudCA9IGludGVs
X2Jpb3NfaXNfZHNpX3ByZXNlbnQoZGV2X3ByaXYsDQo+ID4gPiBOVUxMKTsgKw0KPiA+ID4gKwlp
ZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQ0KPiA+ID4gKwkJcmV0dXJuIHRyYW5zY29kZXIg
PT0gVFJBTlNDT0RFUl9FRFAgPyBlZHBfcHJlc2VudA0KPiA+ID4gOiBkc2lfcHJlc2VudDsgKw0K
PiA+ID4gKwlyZXR1cm4gdHJ1ZTsNCj4gPiA+ICt9ICANCj4gPiANCj4gPiBPbmUgb2YgdGhvc2Ug
dGhpbmdzLi4uIHRoaXMganVtcHMgb3V0IGFuZCBpbW1lZGlhdGVseSBmZWVscyBhbGwNCj4gPiB3
cm9uZywNCj4gPiBqdXN0IGxpa2UgZWhsX3ZidF9kZGlfZF9wcmVzZW50KCkgZmVlbHMgYWxsIHdy
b25nIGluDQo+ID4gaW50ZWxfY29tYm9fcGh5LmMuIEJ1dCBJIGRvbid0IGtub3cgd2hhdCB3b3Vs
ZCBiZSB0aGUgcmlnaHQgdGhpbmcNCj4gPiB0bw0KPiA+IGRvIHdpdGhvdXQgc3BlbmRpbmcgdGlt
ZSB0aGF0IEkgZG9uJ3QgaGF2ZSBvbiB0aGlzLg0KPiANCj4gSXMgdGhlcmUgYSBwYXJ0aWN1bGFy
IGFwcHJvYWNoIHlvdSB3YW50IG1lIHRvIHRha2UgdG8gYWRkcmVzcyB0aGlzDQo+IGlzc3VlPyBB
bGwgSSBhbSB0cnlpbmcgdG8gZG8gaXMgYWRkcmVzcyB0aGUgcGxhdXNpYmxlIHNjZW5hcmlvKHMp
DQo+IHdoZXJlDQo+IHRoZSBHT1AvZmlybXdhcmUgbWF5IHByb2dyYW0gdGhlIGhhcmR3YXJlIGlu
IGEgY2VydGFpbiB3YXkgdGhhdCBzZWVtcw0KPiBpbmNvcnJlY3QgZnJvbSB3aGF0IGk5MTUgZG9l
cyBiYXNlZCBvbiB0aGUgaW5mbyBpbiB0aGUgVkJULiBJDQo+IG5vdGljZWQgDQo+IHRoaXMgaXNz
dWUgb24gdGhlIEVITCBib2FyZCBJIGFtIHdvcmtpbmcgb247IHRoZXJlZm9yZSwgSSBsaW1pdGVk
IHRoZQ0KPiBmaXggdG8gRUhMIG9ubHkuDQo+IA0KPiBUaGFua3MsDQo+IFZpdmVrIA0KPiANCj4g
PiBCUiwNCj4gPiBKYW5pLg0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+ID4gKw0KPiA+ID4gIHN0YXRp
YyBib29sIGhzd19nZXRfdHJhbnNjb2Rlcl9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywN
Cj4gPiA+ICAJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gKnBpcGVfY29u
ZmlnLCB1NjQgKnBvd2VyX2RvbWFpbl9tYXNrLA0KPiA+ID4gQEAgLTEwODQ0LDcgKzEwODU2LDgg
QEAgc3RhdGljIGJvb2wNCj4gPiA+IGhzd19nZXRfdHJhbnNjb2Rlcl9zdGF0ZShzdHJ1Y3QNCj4g
PiA+IGludGVsX2NydGMgKmNydGMsIA0KPiA+ID4gIAkJdG1wID0gaW50ZWxfZGVfcmVhZChkZXZf
cHJpdiwNCj4gPiA+ICAJCQkJICAgIFRSQU5TX0RESV9GVU5DX0NUTChwYW5lbF90cmFuc2NvZGVy
DQo+ID4gPiApKTsNCj4gPiA+IC0JCWlmICghKHRtcCAmIFRSQU5TX0RESV9GVU5DX0VOQUJMRSkp
DQo+ID4gPiArCQlpZiAoISh0bXAgJiBUUkFOU19ERElfRlVOQ19FTkFCTEUpIHx8DQo+ID4gPiAr
CQkgICAgIWVobF92YnRfZWRwX2RzaV9wcmVzZW50KGRldl9wcml2LA0KPiA+ID4gcGFuZWxfdHJh
bnNjb2RlcikpIGNvbnRpbnVlOw0KPiA+ID4gIA0KPiA+ID4gIAkJLyogIA0KPiANCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
