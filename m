Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 707534C48B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 02:36:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CECCE6E487;
	Thu, 20 Jun 2019 00:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 862656E487
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 00:36:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 17:36:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="160513445"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga008.fm.intel.com with ESMTP; 19 Jun 2019 17:36:04 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 17:36:04 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.75]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 17:36:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/ehl: Add voltage level
 requirement table
Thread-Index: AQHVJihE+rIKWkFw4EuM/lT+ZrVEUaajUYIAgADXzAA=
Date: Thu, 20 Jun 2019 00:36:03 +0000
Message-ID: <24e239b79bc519e80d95ee0f78cea75fd95193c7.camel@intel.com>
References: <20190618225035.31816-1-jose.souza@intel.com>
 <20190618225035.31816-3-jose.souza@intel.com>
 <20190619114340.GW5942@intel.com>
In-Reply-To: <20190619114340.GW5942@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <FEC8ED58818BD84CAB6E301BBF323D70@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/ehl: Add voltage level
 requirement table
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

T24gV2VkLCAyMDE5LTA2LTE5IGF0IDE0OjQzICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSnVuIDE4LCAyMDE5IGF0IDAzOjUwOjM1UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gRUhMIGhhcyBpdCBvd24gdm9sdGFnZSBsZXZlbCBy
ZXF1aXJlbWVudCBkZXBlbmRpbmcgb24gY2QgY2xvY2suDQo+ID4gDQo+ID4gQlNwZWM6IDIxODA5
DQo+ID4gQ2M6IENsaW50IFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+DQo+ID4g
Q2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDIz
ICsrKysrKysrKysrKysrKysNCj4gPiAtLS0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gaW5kZXggMjZjMTdlY2YyMDgzLi41
NzVhYjFhOTZiYmMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jDQo+ID4gQEAgLTE4NzIsOCArMTg3MiwxNyBAQCBzdGF0aWMgdm9pZCBpY2xf
c2V0X2NkY2xrKHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ICAJ
ZGV2X3ByaXYtPmNkY2xrLmh3LnZvbHRhZ2VfbGV2ZWwgPSBjZGNsa19zdGF0ZS0+dm9sdGFnZV9s
ZXZlbDsNCj4gPiAgfQ0KPiA+ICANCj4gPiAtc3RhdGljIHU4IGljbF9jYWxjX3ZvbHRhZ2VfbGV2
ZWwoaW50IGNkY2xrKQ0KPiA+ICtzdGF0aWMgdTggaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdiwgaW50IGNkY2xrKQ0KPiA+ICB7DQo+
ID4gKwlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7DQo+ID4gKwkJaWYgKGNkY2xrID4g
MzEyMDAwKQ0KPiA+ICsJCQlyZXR1cm4gMjsNCj4gPiArCQllbHNlIGlmIChjZGNsayA+IDE4MDAw
MCkNCj4gPiArCQkJcmV0dXJuIDE7DQo+ID4gKwkJZWxzZQ0KPiA+ICsJCQlyZXR1cm4gMDsNCj4g
PiArCX0NCj4gPiArDQo+ID4gIAlpZiAoY2RjbGsgPiA1NTY4MDApDQo+ID4gIAkJcmV0dXJuIDI7
DQo+ID4gIAllbHNlIGlmIChjZGNsayA+IDMxMjAwMCkNCj4gDQo+IEkgd291bGQgbW92ZSB0aGUg
cmVzdCBpbnRvIGFuZCBlbHNlIGJyYW5jaCB0byBtYWtlIGl0IGNsZWFyIHRoZQ0KPiB0d28gYXJl
IGp1c3QgdGhlIHR3byBzaWRlcyBvZiB0aGUgc2FtZSBjb2luLg0KDQpZb3UgbWVhbiBsaWtlIHRo
aXM/DQoNCnN0YXRpYyB1OCBpY2xfY2FsY192b2x0YWdlX2xldmVsKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwgaW50DQpjZGNsaykNCnsNCglpZiAoSVNfRUxLSEFSVExBS0UoZGV2
X3ByaXYpKSB7DQoJCWlmIChjZGNsayA+IDMxMjAwMCkNCgkJCXJldHVybiAyOw0KCQllbHNlIGlm
IChjZGNsayA+IDE4MDAwMCkNCgkJCXJldHVybiAxOw0KCQllbHNlDQoJCQlyZXR1cm4gMDsNCgl9
IGVsc2Ugew0KCQlpZiAoY2RjbGsgPiA1NTY4MDApDQoJCQlyZXR1cm4gMjsNCgkJZWxzZSBpZiAo
Y2RjbGsgPiAzMTIwMDApDQoJCQlyZXR1cm4gMTsNCgkJZWxzZQ0KCQkJcmV0dXJuIDA7DQoJfQ0K
fQ0KDQoNCj4gDQo+ID4gQEAgLTE5MzAsNyArMTkzOSw3IEBAIHN0YXRpYyB2b2lkIGljbF9nZXRf
Y2RjbGsoc3RydWN0DQo+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIAkgKiBh
dCBsZWFzdCB3aGF0IHRoZSBDRENMSyBmcmVxdWVuY3kgcmVxdWlyZXMuDQo+ID4gIAkgKi8NCj4g
PiAgCWNkY2xrX3N0YXRlLT52b2x0YWdlX2xldmVsID0NCj4gPiAtCQlpY2xfY2FsY192b2x0YWdl
X2xldmVsKGNkY2xrX3N0YXRlLT5jZGNsayk7DQo+ID4gKwkJaWNsX2NhbGNfdm9sdGFnZV9sZXZl
bChkZXZfcHJpdiwgY2RjbGtfc3RhdGUtPmNkY2xrKTsNCj4gPiAgfQ0KPiA+ICANCj4gPiAgc3Rh
dGljIHZvaWQgaWNsX2luaXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQ0KPiA+IEBAIC0xOTY2LDcgKzE5NzUsOCBAQCBzdGF0aWMgdm9pZCBpY2xfaW5pdF9jZGNsayhz
dHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiAgCXNhbml0aXplZF9z
dGF0ZS52Y28gPSBpY2xfY2FsY19jZGNsa19wbGxfdmNvKGRldl9wcml2LA0KPiA+ICAJCQkJCQkg
ICAgIHNhbml0aXplZF9zdGF0ZS5jZA0KPiA+IGNsayk7DQo+ID4gIAlzYW5pdGl6ZWRfc3RhdGUu
dm9sdGFnZV9sZXZlbCA9DQo+ID4gLQkJCQlpY2xfY2FsY192b2x0YWdlX2xldmVsKHNhbml0aXpl
ZF9zdGF0ZS4NCj4gPiBjZGNsayk7DQo+ID4gKwkJCQlpY2xfY2FsY192b2x0YWdlX2xldmVsKGRl
dl9wcml2LA0KPiA+ICsJCQkJCQkgICAgICAgc2FuaXRpemVkX3N0YXRlLg0KPiA+IGNkY2xrKTsN
Cj4gPiAgDQo+ID4gIAlpY2xfc2V0X2NkY2xrKGRldl9wcml2LCAmc2FuaXRpemVkX3N0YXRlLCBJ
TlZBTElEX1BJUEUpOw0KPiA+ICB9DQo+ID4gQEAgLTE5NzcsNyArMTk4Nyw4IEBAIHN0YXRpYyB2
b2lkIGljbF91bmluaXRfY2RjbGsoc3RydWN0DQo+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpDQo+ID4gIA0KPiA+ICAJY2RjbGtfc3RhdGUuY2RjbGsgPSBjZGNsa19zdGF0ZS5ieXBhc3M7
DQo+ID4gIAljZGNsa19zdGF0ZS52Y28gPSAwOw0KPiA+IC0JY2RjbGtfc3RhdGUudm9sdGFnZV9s
ZXZlbCA9DQo+ID4gaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChjZGNsa19zdGF0ZS5jZGNsayk7DQo+
ID4gKwljZGNsa19zdGF0ZS52b2x0YWdlX2xldmVsID0gaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChk
ZXZfcHJpdiwNCj4gPiArCQkJCQkJCSAgIGNkY2xrX3N0YXRlLg0KPiA+IGNkY2xrKTsNCj4gPiAg
DQo+ID4gIAlpY2xfc2V0X2NkY2xrKGRldl9wcml2LCAmY2RjbGtfc3RhdGUsIElOVkFMSURfUElQ
RSk7DQo+ID4gIH0NCj4gPiBAQCAtMjU2OCw3ICsyNTc5LDcgQEAgc3RhdGljIGludCBpY2xfbW9k
ZXNldF9jYWxjX2NkY2xrKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+
ID4gIAlzdGF0ZS0+Y2RjbGsubG9naWNhbC52Y28gPSB2Y287DQo+ID4gIAlzdGF0ZS0+Y2RjbGsu
bG9naWNhbC5jZGNsayA9IGNkY2xrOw0KPiA+ICAJc3RhdGUtPmNkY2xrLmxvZ2ljYWwudm9sdGFn
ZV9sZXZlbCA9DQo+ID4gLQkJbWF4KGljbF9jYWxjX3ZvbHRhZ2VfbGV2ZWwoY2RjbGspLA0KPiA+
ICsJCW1heChpY2xfY2FsY192b2x0YWdlX2xldmVsKGRldl9wcml2LCBjZGNsayksDQo+ID4gIAkJ
ICAgIGNubF9jb21wdXRlX21pbl92b2x0YWdlX2xldmVsKHN0YXRlKSk7DQo+ID4gIA0KPiA+ICAJ
aWYgKCFzdGF0ZS0+YWN0aXZlX2NydGNzKSB7DQo+ID4gQEAgLTI1NzksNyArMjU5MCw3IEBAIHN0
YXRpYyBpbnQgaWNsX21vZGVzZXRfY2FsY19jZGNsayhzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQ0KPiA+ICAJCXN0YXRlLT5jZGNsay5hY3R1YWwudmNvID0gdmNvOw0KPiA+
ICAJCXN0YXRlLT5jZGNsay5hY3R1YWwuY2RjbGsgPSBjZGNsazsNCj4gPiAgCQlzdGF0ZS0+Y2Rj
bGsuYWN0dWFsLnZvbHRhZ2VfbGV2ZWwgPQ0KPiA+IC0JCQlpY2xfY2FsY192b2x0YWdlX2xldmVs
KGNkY2xrKTsNCj4gPiArCQkJaWNsX2NhbGNfdm9sdGFnZV9sZXZlbChkZXZfcHJpdiwgY2RjbGsp
Ow0KPiA+ICAJfSBlbHNlIHsNCj4gPiAgCQlzdGF0ZS0+Y2RjbGsuYWN0dWFsID0gc3RhdGUtPmNk
Y2xrLmxvZ2ljYWw7DQo+ID4gIAl9DQo+ID4gLS0gDQo+ID4gMi4yMi4wDQo+ID4gDQo+ID4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
