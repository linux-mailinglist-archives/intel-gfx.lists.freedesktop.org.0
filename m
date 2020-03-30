Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A4919855B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 22:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90E9289444;
	Mon, 30 Mar 2020 20:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1093E6E067
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 20:27:29 +0000 (UTC)
IronPort-SDR: uP+v9vx5a+93SfDqH/1s4kwXauZ4OqwYb+lmltsor/yRmpOEdHocsJTRHmyuNG2gyl+Pmc5lrJ
 Jrr0HYEiO9yA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 13:27:28 -0700
IronPort-SDR: Oqr8OkjPlh3KVNsqIguigSen1pGgF3GsEyHagbL05d+rXMogQlktRObKzQQUl66xYL0VVziy56
 wAQ8B/DoKg9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,325,1580803200"; d="scan'208";a="267044437"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga002.jf.intel.com with ESMTP; 30 Mar 2020 13:27:28 -0700
Received: from fmsmsx162.amr.corp.intel.com (10.18.125.71) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 30 Mar 2020 13:27:06 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 fmsmsx162.amr.corp.intel.com ([169.254.5.244]) with mapi id 14.03.0439.000;
 Mon, 30 Mar 2020 13:27:06 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH v3 6/6] drm/i915/dp: Get TC link reference during DP
 detection
Thread-Index: AQHWAhiqHCA++eikxU2S65OYbwULi6heR9AAgAPM6wA=
Date: Mon, 30 Mar 2020 20:27:06 +0000
Message-ID: <c2156b0cbebf8dbcd904ae5d6539d765d078f982.camel@intel.com>
References: <20200324201429.29153-1-jose.souza@intel.com>
 <20200324201429.29153-6-jose.souza@intel.com>
 <20200328102624.GD12322@ideak-desk.fi.intel.com>
In-Reply-To: <20200328102624.GD12322@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <AD571BCB2025A744AFB53652E517E80E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 6/6] drm/i915/dp: Get TC link reference
 during DP detection
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kai.heng.feng@canonical.com" <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCAyMDIwLTAzLTI4IGF0IDEyOjI2ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgTWFyIDI0LCAyMDIwIGF0IDAxOjE0OjI5UE0gLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emENCj4gd3JvdGU6DQo+ID4gQXMgbm93IHRoZSBjb3N0IHRvIGxvY2sgYW5kIHVzZSBhIFRD
IHBvcnQgaXMgaGlnaGVyIGR1ZSB0aGUNCj4gPiBpbXBsZW1lbnRhdGlvbiBvZiB0aGUgVENDT0xE
IHNlcXVlbmNlcyBpdCBpcyB3b3J0eSB0byBob2xkIGENCj4gPiByZWZlcmVuY2UNCj4gPiBvZiB0
aGUgVEMgcG9ydCB0byBhdm9pZCBhbGwgdGhpcyBsb2NraW5nIGF0IGV2ZXJ5IGF1eCB0cmFuc2Fj
dGlvbg0KPiA+IHBhcnQgb2YgdGhlIERpc3BsYXlQb3J0IGRldGVjdGlvbi4NCj4gDQo+IFRoZSBw
cm9ibGVtIHdpdGggbG9ja2luZyB0aGUgcG9ydCBmb3IgZGV0ZWN0aW9uIGlzIHRoYXQgaXQgd291
bGQNCj4gYmxvY2sNCj4gbW9kZXNldHMgb24gdGhlIHBvcnQsIHdoaWNoIHdlIHNob3VsZCBhdm9p
ZC4gQnkgYmxvY2tpbmcgdGMtY29sZA0KDQpJdCB3aWxsIG5vdCBibG9jayBtb2Rlc2V0cyBvbiB0
aGUgcG9ydCwgaW50ZWxfdGNfcG9ydF9nZXRfbGluayBhbmQNCmludGVsX3RjX3BvcnRfcHV0X2xp
bmsgZ2V0cyBsb2NrcyB0Y19sb2NrLCBpbmNyZW1lbnQgb3IgZGVjcmVtZW50DQp0Y19saW5rX3Jl
ZmNvdW50IGFuZCB0aGVuIHVubG9jaywgaXQgd291bGQgb25seSBhdm9pZCB0aGUgVEMgY29sZA0K
c2VxdWVuY2VzIG92ZXIgYW5kIG92ZXIuDQoNCj4gd2hlbmV2ZXIgZW5hYmxpbmcgYW4gQVVYIHBv
d2VyIHdlbGwgeW91IHdvdWxkIGF2b2lkIHRoZSBvdmVyaGVhZCBvZg0KPiB0aGUNCj4gUENPREUg
cmVxdWVzdHMgZm9yIGVhY2ggQVVYIHRyYW5zZmVyLCBzaW5jZSB0aGUgQVVYIHBvd2VyIHJlZnMg
YXJlDQo+IGRyb3BwZWQgYXN5bmNocm9ub3VzbHkgd2l0aCBhIGRlbGF5Lg0KDQpMZWZ0IGNvbW1l
bnRzIG9uIHlvdXIgcHJvcG9zYWwgaW4gcGF0Y2ggMS4NCg0KPiANCj4gPiBDYzogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+IENjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5jaGlv
dUBpbnRlbC5jb20+DQo+ID4gQ2M6IEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25p
Y2FsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jIHwgMTkgKysrKysrKysrKysrKystLS0tLQ0KPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBpbmRleCA3ZjFhNGU1NWNk
YTEuLjZmYmYzYmVlZTU0NCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gPiBAQCAtNjA0MSw2ICs2MDQxLDcgQEAgaW50ZWxfZHBfZGV0ZWN0KHN0
cnVjdCBkcm1fY29ubmVjdG9yDQo+ID4gKmNvbm5lY3RvciwNCj4gPiAgCXN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAgPQ0KPiA+IGludGVsX2F0dGFjaGVkX2RwKHRvX2ludGVsX2Nvbm5lY3Rvcihj
b25uZWN0b3IpKTsNCj4gPiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0g
ZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOw0KPiA+ICAJc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIgPSAmZGlnX3BvcnQtPmJhc2U7DQo+ID4gKwllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0
X3RvX3BoeShkZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCk7DQo+ID4gIAllbnVtIGRybV9jb25uZWN0
b3Jfc3RhdHVzIHN0YXR1czsNCj4gPiAgDQo+ID4gIAlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRy
bSwgIltDT05ORUNUT1I6JWQ6JXNdXG4iLA0KPiA+IEBAIC02MDQ5LDEyICs2MDUwLDE3IEBAIGlu
dGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcg0KPiA+ICpjb25uZWN0b3IsDQo+ID4g
IAkJICAgICFkcm1fbW9kZXNldF9pc19sb2NrZWQoJmRldl9wcml2LQ0KPiA+ID5kcm0ubW9kZV9j
b25maWcuY29ubmVjdGlvbl9tdXRleCkpOw0KPiA+ICANCj4gPiAgCS8qIENhbid0IGRpc2Nvbm5l
Y3QgZURQICovDQo+ID4gLQlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gPiArCWlm
IChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSB7DQo+ID4gIAkJc3RhdHVzID0gZWRwX2RldGVj
dChpbnRlbF9kcCk7DQo+ID4gLQllbHNlIGlmIChpbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVk
KGVuY29kZXIpKQ0KPiA+IC0JCXN0YXR1cyA9IGludGVsX2RwX2RldGVjdF9kcGNkKGludGVsX2Rw
KTsNCj4gPiAtCWVsc2UNCj4gPiAtCQlzdGF0dXMgPSBjb25uZWN0b3Jfc3RhdHVzX2Rpc2Nvbm5l
Y3RlZDsNCj4gPiArCX0gZWxzZSB7DQo+ID4gKwkJaWYgKGludGVsX3BoeV9pc190YyhkZXZfcHJp
diwgcGh5KSkNCj4gPiArCQkJaW50ZWxfdGNfcG9ydF9nZXRfbGluayhkaWdfcG9ydCwgMSk7DQo+
ID4gKw0KPiA+ICsJCWlmIChpbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKGVuY29kZXIpKQ0K
PiA+ICsJCQlzdGF0dXMgPSBpbnRlbF9kcF9kZXRlY3RfZHBjZChpbnRlbF9kcCk7DQo+ID4gKwkJ
ZWxzZQ0KPiA+ICsJCQlzdGF0dXMgPSBjb25uZWN0b3Jfc3RhdHVzX2Rpc2Nvbm5lY3RlZDsNCj4g
PiArCX0NCj4gPiAgDQo+ID4gIAlpZiAoc3RhdHVzID09IGNvbm5lY3Rvcl9zdGF0dXNfZGlzY29u
bmVjdGVkKSB7DQo+ID4gIAkJbWVtc2V0KCZpbnRlbF9kcC0+Y29tcGxpYW5jZSwgMCwgc2l6ZW9m
KGludGVsX2RwLQ0KPiA+ID5jb21wbGlhbmNlKSk7DQo+ID4gQEAgLTYxMzIsNiArNjEzOCw5IEBA
IGludGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcg0KPiA+ICpjb25uZWN0b3IsDQo+
ID4gIAlpZiAoc3RhdHVzICE9IGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkICYmICFpbnRlbF9k
cC0+aXNfbXN0KQ0KPiA+ICAJCWludGVsX2RwX3Vuc2V0X2VkaWQoaW50ZWxfZHApOw0KPiA+ICAN
Cj4gPiArCWlmIChpbnRlbF9waHlfaXNfdGMoZGV2X3ByaXYsIHBoeSkpDQo+ID4gKwkJaW50ZWxf
dGNfcG9ydF9wdXRfbGluayhkaWdfcG9ydCk7DQo+ID4gKw0KPiA+ICAJLyoNCj4gPiAgCSAqIE1h
a2Ugc3VyZSB0aGUgcmVmcyBmb3IgcG93ZXIgd2VsbHMgZW5hYmxlZCBkdXJpbmcgZGV0ZWN0IGFy
ZQ0KPiA+ICAJICogZHJvcHBlZCB0byBhdm9pZCBhIG5ldyBkZXRlY3QgY3ljbGUgdHJpZ2dlcmVk
IGJ5IEhQRA0KPiA+IHBvbGxpbmcuDQo+ID4gLS0gDQo+ID4gMi4yNi4wDQo+ID4gDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
