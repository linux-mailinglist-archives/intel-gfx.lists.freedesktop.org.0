Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F5C16ECFC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 18:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 731846E8F8;
	Tue, 25 Feb 2020 17:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71FD06E8F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 17:47:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 09:47:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,485,1574150400"; d="scan'208";a="231528601"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga008.fm.intel.com with ESMTP; 25 Feb 2020 09:47:49 -0800
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 25 Feb 2020 17:47:48 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Feb 2020 17:47:48 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Tue, 25 Feb 2020 17:47:48 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 20/20] drm/i915: Check slice mask for holes
Thread-Index: AQHV6/7FThkS9P59pECjoKf293cibKgsLo2A
Date: Tue, 25 Feb 2020 17:47:48 +0000
Message-ID: <47416fc4b99e55022c53988261ca03bfa6be596e.camel@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-21-ville.syrjala@linux.intel.com>
In-Reply-To: <20200225171125.28885-21-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <E77EEB227FD0F14DADDBC351238DC659@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 20/20] drm/i915: Check slice mask for
 holes
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

T24gVHVlLCAyMDIwLTAyLTI1IGF0IDE5OjExICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTWFrZSBzdXJlIHRoZSBkYnVmIHNsaWNlIG1hc2sgZm9yIGFueSBpbmRpdmlkdWFsIHBp
cGUgaGFzIG5vDQo+IGhvbGVzIGJldHdlZW4gdGhlIHNsaWNlcy4NCj4gDQo+IENjOiBTdGFuaXNs
YXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgOSArKysrKysrKysNCj4g
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYw0KPiBpbmRleCA3ZWRhYzUwNmQzNDMuLmZhMzlhYjBiMTIyMyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5jDQo+IEBAIC0zODI3LDYgKzM4MjcsMTQgQEAgc3RhdGljIGludCBp
bnRlbF9kYnVmX3NsaWNlX3NpemUoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQ0KPiAgCQlJTlRFTF9JTkZPKGRldl9wcml2KS0+bnVtX3N1cHBvcnRlZF9kYnVmX3NsaWNlczsN
Cj4gIH0NCj4gIA0KPiArc3RhdGljIGJvb2wgYml0bWFza19pc19jb250aWd1b3VzKHVuc2lnbmVk
IGludCBiaXRtYXNrKQ0KPiArew0KPiArCWlmIChiaXRtYXNrKQ0KPiArCQliaXRtYXNrID4+PSBm
ZnMoYml0bWFzaykgLSAxOw0KPiArDQo+ICsJcmV0dXJuIGlzX3Bvd2VyX29mXzIoYml0bWFzayAr
IDEpOw0KPiArfQ0KPiArDQoNCldlbGwsIEkgZ3Vlc3Mgd2UganVzdCBkb24ndCB0cnVzdCBCU3Bl
YyB0YWJsZXMgaGVyZSA6KQ0KDQpTaG91bGRuJ3QgdGhpcyBiZSBhbHJlYWR5IHRha2VuIGNhcmUg
b2YgYnkgdGhlIGFjdHVhbCB0YWJsZXMsIHdoaWNoIHdlDQphbnl3YXkgc2VlbSBoYXZlIHRvIGVu
Y29kZSAiYXMgaXMiLg0KDQpNb3Jlb3ZlciwgSSB3b3VsZG4ndCBldmVuIGJlIHN1cmUgdGhhdCBv
bmUgZGF5LCB0aGV5IHdvbid0IGNvbWUgdXANCndpdGggdGhhdCB5b3UgY2FuIGhhdmUgZ2FwcyBm
b3IgdGhvc2UsIGFueXdheSBjdXJyZW50bHkNCndlIGRvbid0IGhhdmUgdGhlbSBhY2NvcmRpbmcg
dG8gY3VycmVudCB0YWJsZXMNCg0KU3Rhbg0KDQo+ICBzdGF0aWMgdm9pZA0KPiAgc2tsX2RkYl9l
bnRyeV9mb3Jfc2xpY2VzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTgNCj4g
c2xpY2VfbWFzaywNCj4gIAkJCSBzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqZGRiKQ0KPiBAQCAtMzg0
NCw2ICszODUyLDcgQEAgc2tsX2RkYl9lbnRyeV9mb3Jfc2xpY2VzKHN0cnVjdA0KPiBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgdTggc2xpY2VfbWFzaywNCj4gIA0KPiAgCVdBUk5fT04oZGRi
LT5zdGFydCA+PSBkZGItPmVuZCk7DQo+ICAJV0FSTl9PTihkZGItPmVuZCA+IGludGVsX2RidWZf
c2l6ZShkZXZfcHJpdikpOw0KPiArCVdBUk5fT04oIWJpdG1hc2tfaXNfY29udGlndW91cyhzbGlj
ZV9tYXNrKSk7DQo+ICB9DQo+ICANCj4gIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfY3J0Y19k
ZGJfd2VpZ2h0KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
