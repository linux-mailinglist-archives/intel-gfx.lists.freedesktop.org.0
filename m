Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C29386D9B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 01:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 460E96E55C;
	Mon, 17 May 2021 23:22:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8B946E55C
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 23:22:05 +0000 (UTC)
IronPort-SDR: dMHdseaHU7CO25HKjxAtIrYcnv/9TqblmLAyHaJ0SQ665w089fj99sx+gNaRzH/8wW9SvZQgHO
 03sUZefhT/yQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="264500836"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="264500836"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 16:22:04 -0700
IronPort-SDR: XkoyT1Sip7eR7FakaVylWVYArvkQYSWUgRUL/iIeKSXddzyCnpL2Q36ceRKBH/zlOOO17KTltZ
 b1tIZx5TynSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="404595762"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 17 May 2021 16:22:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 16:22:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 16:22:03 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 17 May 2021 16:22:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH v4 08/23] drm/i915/adl_p: Handle TC cold
Thread-Index: AQHXSTfjWV8mvotSzUG/m1whi7kcwaroO9iAgACM5QCAAAH1AA==
Date: Mon, 17 May 2021 23:22:03 +0000
Message-ID: <230085a866262b5b6a508712f0fd5fbd97fca3c9.camel@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-9-matthew.d.roper@intel.com>
 <20210517145359.GA1367033@ideak-desk.fi.intel.com>
 <4b0abab8e08a1218ed776899a978b99cb49a4347.camel@intel.com>
In-Reply-To: <4b0abab8e08a1218ed776899a978b99cb49a4347.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <EA98BBEB12FD744899988400FEA9BD58@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 08/23] drm/i915/adl_p: Handle TC cold
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

T24gTW9uLCAyMDIxLTA1LTE3IGF0IDE2OjE4IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBPbiBNb24sIDIwMjEtMDUtMTcgYXQgMTc6NTMgKzAzMDAsIEltcmUgRGVhayB3
cm90ZToNCj4gPiBPbiBGcmksIE1heSAxNCwgMjAyMSBhdCAwODoxMDoyMFBNIC0wNzAwLCBNYXR0
IFJvcGVyIHdyb3RlOg0KPiA+ID4gRnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IE9uIEFETC1QIFRDIGNvbGQgaXMgZXhpdGVk
IGFuZCBibG9ja2VkIHdoZW4gbGVnYWN5IGF1eCBpcyBwb3dlcmVkLA0KPiA+ID4gdGhhdCBpcyBl
eGFjbHkgdGhlIHNhbWUgb2Ygd2hhdCBJQ0wgbmVlZCBmb3Igc3RhdGljIFRDIHBvcnRzLg0KPiA+
ID4gDQo+ID4gPiBUT0RPOiBXaGVuIGEgVEJUIGh1YiBvciBtb25pdG9yIGlzIGNvbm5lY3RlZCBp
dCB3aWxsIGNhdXNlIFRCVCBhbmQNCj4gPiA+IGxlZ2FjeSBhdXggdG8gYmUgcG93ZXJlZCBhdCB0
aGUgc2FtZSB0aW1lLCBob3BlZnVsbHkgdGhpcyB3aWxsIG5vdA0KPiA+ID4gY2F1c2UgYW55IGlz
c3VlcyBidXQgaWYgaXQgZG8sIHNvbWUgcmV3b3JrIHdpbGwgYmUgbmVlZGVkLg0KPiA+ID4gDQo+
ID4gPiB2MjoNCj4gPiA+ICAtIHNraXAgaWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9oZWxkKCkgd2Fy
biBvbiwgYWRsLXAgdXNlcyBhdXggdG8NCj4gPiA+ICAgIGJsb2NrIFRDIGNvbGQNCj4gPiA+IA0K
PiA+ID4gQlNwZWM6IDU1NDgwDQo+ID4gPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDbGludG9uIFRheWxvciA8Q2xp
bnRvbi5BLlRheWxvckBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAzICsrLQ0KPiA+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyAgICAgICAgICAgIHwgMiAr
LQ0KPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+ID4gaW5kZXggNTRjNmQ2NTAxMWVlLi4yOWQyZjFkMGNm
ZmQgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiA+IEBAIC01NTEsNyArNTUxLDggQEAgc3RhdGlj
IHZvaWQgaWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9oZWxkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwNCj4gPiA+ICAJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhZGln
X3BvcnQpKQ0KPiA+ID4gIAkJcmV0dXJuOw0KPiA+ID4gIA0KPiA+ID4gLQlpZiAoRElTUExBWV9W
RVIoZGV2X3ByaXYpID09IDExICYmIGRpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCkNCj4gPiA+ICsJ
aWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSB8fA0KPiA+IA0KPiA+IEEgVEMgcG9ydCByZWZl
cmVuY2UgaXMgaGVsZCB3aGVuZXZlciBlbmFibGluZyB0aGUgcG9ydCdzIEFVWCBwb3dlcg0KPiA+
IGRvbWFpbiAoc28gd2hlbmV2ZXIgYmxvY2tpbmcgVEMtY29sZCBmb3IgaW5zdGFuY2UpLCBzbyB0
aGlzIHNob3VsZG4ndCBiZQ0KPiA+IG5lZWRlZC4NCj4gDQo+IEknbSBraW5kYSBvZiBydXN0eSBp
biB0aGlzIGFyZWEgc28gSSBjb3VsZCBiZSBtYWtpbmcgYSBtaXN0YWtlIGJ1dCBJIGRvbid0IHNl
ZSBob3cgdGNfbG9jayBpcyBoZWxkIG9yIHRjX2xpbmtfcmVmY291bnQgaXMgIT0gMCB3aGVuIGVu
YWJsaW5nIGF1eCB0byBkbw0KPiBhIERQQ0QgdHJhbnNhY3Rpb24gd2hlbiB0aGUgcG9ydCBpcyBu
byBkcml2aW5nIGltYWdlIHRvIHRoZSBzaW5rLg0KPiBXaWxsIGRvIHNvbWUgZXhwZXJpbWVudHMg
YW5kIHVwZGF0ZSBoZXJlLg0KDQpPcHMgcGxlYXNlIGlnbm9yZSB0aGUgYWJvdmUuDQpZZXAgd2Ug
ZG9uJ3QgbmVlZCBpdCwgd2hlbiBjb21pbmcgZnJvbSB0Y19jb2xkX2Jsb2NrKCkgdGhlIG11dGV4
IGlzIGhlbGQgYW5kIHdoZW4gZG9pbmcgYSBEUENEIHRyYW5zYWN0aW9uIGludGVsX3RjX3BvcnRf
bG9jaygpIGlzIGNhbGxlZCBiZWZvcmUgZ2V0DQp0aGUgYXV4IHBvd2VyIHdlbGwuDQoNClNvIHdp
bGwgZHJvcCBpdCwgdGhhbmtzIGZvciBwb2ludGluZyBpdCBvdXQuDQoNCj4gDQo+ID4gDQo+ID4g
T1RPSCwgdGhlICFhdXhfcG93ZXJlZCBjaGVjayBpbiBpbnRlbF90Y19wb3J0X3Jlc2V0X21vZGUo
KSBuZWVkcyB0aGlzDQo+ID4gZXhjZXB0aW9uLCBzaW5jZSB0aGVyZSBUQy1jb2xkIG11c3QgYmUg
YmxvY2tlZCBhbmQgc28gQVVYIHdpbGwgYmUNCj4gPiBlbmFibGVkIGFzIG9wcG9zZWQgdG8gb3Ro
ZXIgcGxhdGZvcm1zLg0KPiA+IA0KPiA+IEFsc28sIGluIGljbF90Y19waHlfYXV4X3Bvd2VyX3dl
bGxfZW5hYmxlKCkgd2UgbmVlZCB0byBhdm9pZCB0aGUgcG93ZXINCj4gPiB3ZWxsIGVuYWJsaW5n
IHRpbWVvdXQgZXJyb3IgbWVzc2FnZSwgc2luY2UgaXQgd29uJ3QgZ2V0IGVuYWJsZWQgdW5sZXNz
DQo+ID4gc29tZXRoaW5nIGlzIGFjdHVhbGx5IHBsdWdnZWQgdG8gdGhlIFRDIGNvbm5lY3Rvci4N
Cj4gDQo+IEFncmVlIHdpdGggYm90aCBhYm92ZSwgcGxhbm5pbmcgdG8gc3F1YXNoIHBhdGNoLnR4
dCB0byBmaXggaXQgYW5kIG1ha2Ugc3VyZSB3ZSBkb24ndCBoYXZlIHNpbWlsYXIgaXNzdWVzIHdp
dGggZnV0dXJlIHBsYXRmb3Jtcy4NCj4gDQo+ID4gDQo+ID4gPiArCSAgICAoRElTUExBWV9WRVIo
ZGV2X3ByaXYpID09IDExICYmIGRpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCkpDQo+ID4gPiAgCQly
ZXR1cm47DQo+ID4gPiAgDQo+ID4gPiAgCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhaW50
ZWxfdGNfcG9ydF9yZWZfaGVsZChkaWdfcG9ydCkpOw0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+ID4gaW5kZXggZTMyNTQ2M2FjZGRkLi4xYjEwOGRlYTVm
ZWQgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMu
Yw0KPiA+ID4gQEAgLTI4LDcgKzI4LDcgQEAgdGNfY29sZF9nZXRfcG93ZXJfZG9tYWluKHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiA+ID4gIHsNCj4gPiA+ICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2
KTsNCj4gPiA+ICANCj4gPiA+IC0JaWYgKERJU1BMQVlfVkVSKGk5MTUpID09IDExKQ0KPiA+ID4g
KwlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkgfHwgRElTUExBWV9WRVIoaTkxNSkgPT0gMTEpDQo+
ID4gPiAgCQlyZXR1cm4gaW50ZWxfbGVnYWN5X2F1eF90b19wb3dlcl9kb21haW4oZGlnX3BvcnQt
PmF1eF9jaCk7DQo+ID4gPiAgCWVsc2UNCj4gPiA+ICAJCXJldHVybiBQT1dFUl9ET01BSU5fVENf
Q09MRF9PRkY7DQo+ID4gPiAtLSANCj4gPiA+IDIuMjUuNA0KPiA+ID4gDQo+IA0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
