Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC5B17F8D7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 13:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9A56E28B;
	Tue, 10 Mar 2020 12:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60E366E28B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 12:51:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 05:51:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="441290073"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga005.fm.intel.com with ESMTP; 10 Mar 2020 05:51:27 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 05:51:18 -0700
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 fmsmsx111.amr.corp.intel.com (10.18.116.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 05:51:18 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.81]) with mapi id 14.03.0439.000;
 Tue, 10 Mar 2020 18:21:11 +0530
From: "B S, Karthik" <karthik.b.s@intel.com>
To: "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 4/7] drm/i915: Add checks specific to async flips
Thread-Index: AQHV86zlt2YlHd29Z0+F1gwtQk+HXahAjrkAgAE+c2A=
Date: Tue, 10 Mar 2020 12:51:10 +0000
Message-ID: <7138C0D2D3905F4CB0CD9B8757DFA969274B4C1E@BGSMSX104.gar.corp.intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
 <20200306113927.16904-5-karthik.b.s@intel.com>
 <3ba4af80fc59f5a7ecfac3b7ebbbcf9caec12118.camel@intel.com>
In-Reply-To: <3ba4af80fc59f5a7ecfac3b7ebbbcf9caec12118.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915: Add checks specific to async
 flips
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBaYW5vbmksIFBhdWxvIFIgPHBh
dWxvLnIuemFub25pQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMTAsIDIwMjAg
NDo0OSBBTQ0KPiBUbzogQiBTLCBLYXJ0aGlrIDxrYXJ0aGlrLmIuc0BpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiB2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbTsgS3Vsa2FybmksIFZhbmRpdGENCj4gPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29t
PjsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBb
UkZDIDQvN10gZHJtL2k5MTU6IEFkZCBjaGVja3Mgc3BlY2lmaWMgdG8gYXN5bmMgZmxpcHMNCj4g
DQo+IEVtIHNleCwgMjAyMC0wMy0wNiDDoHMgMTc6MDkgKzA1MzAsIEthcnRoaWsgQiBTIGVzY3Jl
dmV1Og0KPiA+IFN1cHBvcnQgYWRkZWQgb25seSBmb3IgYXN5bmMgZmxpcHMgb24gcHJpbWFyeSBw
bGFuZS4NCj4gPiBJZiBmbGlwIGlzIHJlcXVlc3RlZCBvbiBhbnkgb3RoZXIgcGxhbmUsIHJlamVj
dCBpdC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEthcnRoaWsgQiBTIDxrYXJ0aGlrLmIuc0Bp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMjkNCj4gPiArKysrKysrKysrKysrKysrKysrKw0KPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4IDI1ZmFkNWQwMWU2Ny4u
YThkZTA4YzM3NzNlIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBAQCAtMTQ3MzIsNiArMTQ3MzIsMzEgQEAgc3RhdGljIGJv
b2wNCj4gaW50ZWxfY3B1X3RyYW5zY29kZXJzX25lZWRfbW9kZXNldChzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgCXJldHVybiBmYWxzZTsNCj4gPiAgfQ0KPiA+DQo+ID4g
K3N0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrX2FzeW5jKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZTsNCj4g
PiArCXN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlOw0KPiA+ICsJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YzsNCj4gPiArCWludCBpLCBqOw0KPiA+ICsNCj4gPiArCS8qRklYTUU6IEFzeW5jIGZsaXAgaXMg
b25seSBzdXBwb3J0ZWQgZm9yIHByaW1hcnkgcGxhbmUgY3VycmVudGx5DQo+ID4gKwkgKiBTdXBw
b3J0IGZvciBvdmVybGF5cyB0byBiZSBhZGRlZC4NCj4gPiArCSAqLw0KPiA+ICsJZm9yX2VhY2hf
bmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkpIHsNCj4g
PiArCQlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwKSB7DQo+ID4gKwkJCWZvcl9lYWNo
X25ld19wbGFuZV9pbl9zdGF0ZSgmc3RhdGUtPmJhc2UsDQo+ID4gKwkJCQkJCSAgICBwbGFuZSwg
cGxhbmVfc3RhdGUsIGopIHsNCj4gPiArCQkJCWlmIChwbGFuZS0+dHlwZSAhPQ0KPiBEUk1fUExB
TkVfVFlQRV9QUklNQVJZKSB7DQo+ID4gKwkJCQkJRFJNX0VSUk9SKCJBc3luYyBmbGlwcyBpcyBO
T1QNCj4gc3VwcG9ydGVkIGZvciBub24tcHJpbWFyeQ0KPiA+ICtwbGFuZVxuIik7DQo+IA0KPiBN
eSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgdGhpcyBpcyBub3QgYSBjYXNlIG9mIERSTV9FUlJPUiwg
c2luY2UgaXQncyBqdXN0IHVzZXINCj4gc3BhY2UgZG9pbmcgc29tZXRoaW5nIGl0IHNob3VsZG4n
dC4NCg0KU3VyZS4gV2lsbCBmaXggdGhhdCBpbiB0aGUgbmV4dCByZXZpc2lvbi4NCj4gDQo+IEhh
dmUgd2UgY2hlY2tlZCBpZiB4Zjg2LXZpZGVvLW1vZGVzZXR0aW5nIG9yIHNvbWUgb3RoZXIgY3Vy
cmVudCB1c2VyDQo+IHNwYWNlIGlzIGdvaW5nIHRvIHRyeSB0aGVzZSBjYWxscyBvbiBub24tcHJp
bWFyeSB3aGVuIGFzeW5jX2ZsaXBzIGFyZQ0KPiBlbmFibGVkPyBTcGVjaWZpY2FsbHksIGhvdyBk
b2VzIGl0IHJlYWN0IHdoZW4gaXQgZ2V0cyB0aGUgRUlOVkFMPyBXZSBzaG91bGQNCj4gdHJ5IHRv
IGF2b2lkIHRoZSBjYXNlIHdoZXJlIHdlIHJlbGVhc2UgYSBLZXJuZWwgdGhhdCBjdXJyZW50IHVz
ZXIgc3BhY2UgaXMgbm90DQo+IHByZXBhcmVkIGZvciAoZXZlbiBpZiBpdCdzIG5vdCB0aGUgS2Vy
bmVsJ3MgZmF1bHQpLg0KDQpXaWxsIGNoZWNrIHRoZSB1c2VyIHNwYWNlIGJlaGF2aW9yIGFuZCB1
cGRhdGUgYWNjb3JkaW5nbHkgaW4gdGhlIG5leHQgcmV2aXNpb24uIA0KPiANCj4gDQo+ID4gKwkJ
CQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gKwkJCQl9DQo+ID4gKwkJCX0NCj4gPiArCQl9DQo+ID4g
Kwl9DQo+ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4gPiAgLyoqDQo+ID4gICAqIGlu
dGVsX2F0b21pY19jaGVjayAtIHZhbGlkYXRlIHN0YXRlIG9iamVjdA0KPiA+ICAgKiBAZGV2OiBk
cm0gZGV2aWNlDQo+ID4gQEAgLTE0NzYwLDYgKzE0Nzg1LDEwIEBAIHN0YXRpYyBpbnQgaW50ZWxf
YXRvbWljX2NoZWNrKHN0cnVjdA0KPiBkcm1fZGV2aWNlICpkZXYsDQo+ID4gIAlpZiAocmV0KQ0K
PiA+ICAJCWdvdG8gZmFpbDsNCj4gPg0KPiA+ICsJcmV0ID0gaW50ZWxfYXRvbWljX2NoZWNrX2Fz
eW5jKHN0YXRlKTsNCj4gPiArCWlmICAocmV0KQ0KPiA+ICsJCWdvdG8gZmFpbDsNCj4gPiArDQo+
ID4gIAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xk
X2NydGNfc3RhdGUsDQo+ID4gIAkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ID4gIAkJ
aWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkgew0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
