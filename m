Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 337F3399FBD
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 13:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F9186E1D6;
	Thu,  3 Jun 2021 11:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F2F6E1D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 11:25:04 +0000 (UTC)
IronPort-SDR: lB3GWTeNrnn4aW1hRVNwwFyer56tim+ESmb8KxvtaEiZMaDHF45Zw0i0VLCnotejGY29zWT7BS
 YaVDMjzYdJRw==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="289651877"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="289651877"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 04:25:03 -0700
IronPort-SDR: gr4OKLEsgdjiQmxUbDf7UgUuT6cleocd+FAsxbQiaJAfgoIhIYIbXWgKgxsGHwl9zGfmHaAp4Q
 SiQvuca1mzzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="550008310"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 03 Jun 2021 04:25:03 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 04:25:02 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 16:54:59 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.008;
 Thu, 3 Jun 2021 16:54:59 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in DSC
 disable
Thread-Index: AQHXWEerkFFEh6R0kUCekRWWk2uIg6sBidmAgABuaXD//7Q1gIAAcXSQ
Date: Thu, 3 Jun 2021 11:24:59 +0000
Message-ID: <86877ca0c9ff4ebab0b269b91b6c3979@intel.com>
References: <20210603065356.15435-1-vandita.kulkarni@intel.com>
 <eedaa66fa17944aeb96aa353c58db2e9@intel.com>
 <1e70025aa4e04a5396721ad4e7609340@intel.com> <87czt3p9oc.fsf@intel.com>
In-Reply-To: <87czt3p9oc.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in
 DSC disable
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEp1bmUgMywgMjAyMSAzOjExIFBN
DQo+IFRvOiBLdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+OyBT
YWFyaW5lbiwgSmFuaQ0KPiA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBp
bnRlbC5jb20+OyBOYXZhcmUsIE1hbmFzaSBEDQo+IDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBSRTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9kc2M6IFJlbW92
ZSByZWR1bmRhbnQgY2hlY2tzIGluDQo+IERTQyBkaXNhYmxlDQo+IA0KPiBPbiBUaHUsIDAzIEp1
biAyMDIxLCAiS3Vsa2FybmksIFZhbmRpdGEiIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4N
Cj4gd3JvdGU6DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IFNh
YXJpbmVuLCBKYW5pIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT4NCj4gPj4gU2VudDogVGh1cnNk
YXksIEp1bmUgMywgMjAyMSAxOjA3IFBNDQo+ID4+IFRvOiBLdWxrYXJuaSwgVmFuZGl0YSA8dmFu
ZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPj4gZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+PiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+
ID4+IFN1YmplY3Q6IFJFOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2RzYzogUmVtb3Zl
IHJlZHVuZGFudA0KPiA+PiBjaGVja3MgaW4gRFNDIGRpc2FibGUNCj4gPj4NCj4gPj4gSGksDQo+
ID4+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gPiBGcm9tOiBJbnRlbC1nZngg
PGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4+
ID4gT2YgVmFuZGl0YSBLdWxrYXJuaQ0KPiA+PiA+IFNlbnQ6IHRvcnN0YWkgMy4ga2Vzw6RrdXV0
YSAyMDIxIDkuNTQNCj4gPj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiA+PiA+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPj4gPiBT
dWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2RzYzogUmVtb3ZlIHJlZHVuZGFu
dCBjaGVja3MNCj4gPj4gPiBpbiBEU0MgZGlzYWJsZQ0KPiA+PiA+DQo+ID4+ID4gVGhlcmUgY2Fu
IGJlIGEgY2hhbmNlIHRoYXQgcHJlIG9zIGhhcyBlbmFibGVkIERTQyBhbmQgZHJpdmVyJ3MNCj4g
Pj4gPiBjb21wdXRlIGNvbmZpZyB3b3VsZCBub3QgbmVlZCBkc2MgdG8gYmUgZW5hYmxlZCwgaW4g
c3VjaCBjYXNlIGlmIHdlDQo+ID4+ID4gY2hlY2sgb24gY29tcHV0ZSBjb25maWcncyBjb21wcmVz
c2lvbiBzdGF0ZSB0byBkaXNhYmxlLCB3ZSBtaWdodA0KPiA+PiA+IGVuZCB1cCBpbiBzdGF0ZQ0K
PiA+PiBtaXNtYXRjaC4NCj4gPj4NCj4gPj4gSSBhc3N1bWUgdGhpcyBmaXhlcyByZWFsIGdpdGxh
YiBpc3N1ZSB0b28/DQo+ID4gT2theSwgd2lsbCBhZGQgdGhlIHRhZw0KPiA+IENsb3NlczogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8zNTM3DQo+IA0K
PiBTZWUgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci84N2ZzeHpwOXF4LmZzZkBpbnRlbC5jb20N
Cj4gDQo+IFRoZSBwcm9ibGVtIGlzIHdpdGggLT5iaWdqb2luZXIsIG5vdCB0aGUgZW50aXJlIHN0
YXRlbWVudC4NClRoYW5rcyBmb3IgcG9pbnRpbmcgdGhpcyBvdXQsIHRydWUgdGhhdCBiaWdqb2lu
ZXIgbm90IGJlaW5nIGVuYWJsZWQgd2lsbCBzdG9wIGRzYyBkaXNhYmxpbmcuDQpUaGUgYmlnam9p
bmVyIGNoZWNrIHdhcyBtYWtpbmcgdGhlIGVudGlyZSBjb25kaXRpb24gY2hlY2sgdW5uZWNlc3Nh
cnkuDQoNCldpbGwgdXBkYXRlIGFuZCByZWZsb2F0Lg0KDQpUaGFua3MsDQpWYW5kaXRhDQo+IA0K
PiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+IFZhbmRpdGENCj4g
Pj4NCj4gPj4gPg0KPiA+PiA+IFNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRp
dGEua3Vsa2FybmlAaW50ZWwuY29tPg0KPiA+PiA+IC0tLQ0KPiA+PiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyB8IDQgLS0tLQ0KPiA+PiA+ICAxIGZpbGUgY2hh
bmdlZCwgNCBkZWxldGlvbnMoLSkNCj4gPj4gPg0KPiA+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiA+PiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gPj4gPiBpbmRleCAxOWNkOTUzMWMxMTUu
LmIwNWE5NjAxMWQ5MyAxMDA2NDQNCj4gPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuYw0KPiA+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmRzYy5jDQo+ID4+ID4gQEAgLTExNjEsMTAgKzExNjEsNiBAQCB2b2lkIGlu
dGVsX2RzY19kaXNhYmxlKGNvbnN0IHN0cnVjdA0KPiA+PiA+IGludGVsX2NydGNfc3RhdGUNCj4g
Pj4gPiAqb2xkX2NydGNfc3RhdGUpDQo+ID4+ID4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9
IHRvX2ludGVsX2NydGMob2xkX2NydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ID4+ID4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsN
Cj4gPj4gPg0KPiA+PiA+IC0JaWYgKCEob2xkX2NydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9l
bmFibGUgJiYNCj4gPj4gPiAtCSAgICAgIG9sZF9jcnRjX3N0YXRlLT5iaWdqb2luZXIpKQ0KPiA+
PiA+IC0JCXJldHVybjsNCj4gPj4gPiAtDQo+ID4+ID4gIAlpbnRlbF9kZV93cml0ZShkZXZfcHJp
diwgZHNzX2N0bDFfcmVnKG9sZF9jcnRjX3N0YXRlKSwgMCk7DQo+ID4+ID4gIAlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgZHNzX2N0bDJfcmVnKG9sZF9jcnRjX3N0YXRlKSwgMCk7ICB9DQo+ID4+
ID4gLS0NCj4gPj4gPiAyLjIxLjAuNS5nYWViNTgyYQ0KPiA+PiA+DQo+ID4+ID4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPj4gPiBJbnRlbC1nZngg
bWFpbGluZyBsaXN0DQo+ID4+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+
PiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4DQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
