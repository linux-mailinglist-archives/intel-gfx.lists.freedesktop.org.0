Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 218DED991A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 20:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C3F189D63;
	Wed, 16 Oct 2019 18:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD4AC89D63
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 18:24:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 11:24:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="397254231"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by fmsmga006.fm.intel.com with ESMTP; 16 Oct 2019 11:24:24 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 IRSMSX151.ger.corp.intel.com ([169.254.4.59]) with mapi id 14.03.0439.000;
 Wed, 16 Oct 2019 19:24:23 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Fix MST oops due to MSA changes
Thread-Index: AQHVg4uNHT9RLJNutUG3jH2lrhF12qddhgiA
Date: Wed, 16 Oct 2019 18:24:22 +0000
Message-ID: <cdc448fc48f393528af8fdc1697583ea850422a9.camel@intel.com>
References: <20191015190538.27539-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191015190538.27539-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.140]
Content-ID: <6E44640F6AFFBA4A9EBE08815A59AD29@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix MST oops due to MSA changes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTEwLTE1IGF0IDIyOjA1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIE1TQSBNSVNDIGNvbXB1dGF0aW9uIG5vdyBkZXBlbmRzIG9uIHRoZSBjb25uZWN0
b3Igc3RhdGUsIGFuZA0KPiB3ZSBkbyBpdCBmcm9tIHRoZSBEREkgLnByZV9lbmFibGUoKSBob29r
LiBBbGwgdGhhdCBpcyBmaW5lIGZvcg0KPiBEUCBTU1QgYnV0IHdpdGggTVNUIHdlIGRvbid0IGFj
dHVhbGx5IHBhc3MgdGhlIGNvbm5lY3RvciBzdGF0ZQ0KPiB0byB0aGUgZGlnIHBvcnQncyAucHJl
X2VuYWJsZSgpIGhvb2sgd2hpY2ggbGVhZHMgdG8gYW4gb29wcy4NCj4gDQo+IE5lZWQgdG8gdGhp
bmsgbW9yZSBob3cgdG8gc29sdmUgdGhpcyBpbiBhIGNsZWFuZXIgZmFzaGlvbiwgYnV0DQo+IGZv
ciBub3cgbGV0J3MganVzdCBhZGQgYSBOVUxMIGNoZWNrIHRvIHN0b3AgdGhlIG9vcHNpbmcuDQo+
IA0KPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiBD
YzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gRml4ZXM6IDBjMDZmYTE1
NjAwNiAoImRybS9pOTE1L2RwOiBBZGQgc3VwcG9ydCBvZiBCVC4yMDIwIENvbG9yaW1ldHJ5DQo+
IHRvIERQIE1TQSIpDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyB8IDQgKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jDQo+IGluZGV4IDgwZjhlMjY5OGJlMC4uNGM4MTQ0OWVjMTQ0IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTE3OTQsOCAr
MTc5NCwxMCBAQCB2b2lkIGludGVsX2RkaV9zZXRfZHBfbXNhKGNvbnN0IHN0cnVjdA0KPiBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCSAqIG9mIENvbG9yIEVuY29kaW5nIEZvcm1h
dCBhbmQgQ29udGVudCBDb2xvciBHYW11dF0gd2hpbGUNCj4gc2VuZGluZw0KPiAgCSAqIFlDQkNS
IDQyMCwgSERSIEJULjIwMjAgc2lnbmFscyB3ZSBzaG91bGQgcHJvZ3JhbSBNU0EgTUlTQzENCj4g
ZmllbGRzDQo+ICAJICogd2hpY2ggaW5kaWNhdGUgVlNDIFNEUCBmb3IgdGhlIFBpeGVsIEVuY29k
aW5nL0NvbG9yaW1ldHJ5DQo+IEZvcm1hdC4NCj4gKwkgKg0KPiArCSAqIEZJWE1FIE1TVCBkb2Vz
bid0IHBhc3MgaW4gdGhlIGNvbm5fc3RhdGUNCj4gIAkgKi8NCj4gLQlpZiAoaW50ZWxfZHBfbmVl
ZHNfdnNjX3NkcChjcnRjX3N0YXRlLCBjb25uX3N0YXRlKSkNCj4gKwlpZiAoY29ubl9zdGF0ZSAm
JiBpbnRlbF9kcF9uZWVkc192c2Nfc2RwKGNydGNfc3RhdGUsDQo+IGNvbm5fc3RhdGUpKQ0KPiAg
CQl0ZW1wIHw9IERQX01TQV9NSVNDX0NPTE9SX1ZTQ19TRFA7DQo+ICANCj4gIAlJOTE1X1dSSVRF
KFRSQU5TX01TQV9NSVNDKGNwdV90cmFuc2NvZGVyKSwgdGVtcCk7DQoNClNvcnJ5IGZvciBtYWtp
bmcgb2YgYSByZWdyZXNzaW9uIHdpdGggbXkgY29tbWl0Lg0KQW5kIHRoYW5rIHlvdSBmb3IgZml4
aW5nIG9vcHMuDQpGb3Igbm93IHRoaXMgc2VlbXMgZ29vZCB0byBtZSBmb3Igd2l0aG91dCBmbG93
IGNoYW5naW5nIG9mIHNldHRpbmcgb2YNCk1TQSByZWdpc3Rlci4NCkJ1dCBhcyB5b3UgY29tbWVu
dHMsIGFzIGEgbmV4dCBzdGVwIHdlIG5lZWQgdG8gdGhpbmsgbW9yZSBob3cgdG8gc29sdmUNCnRo
aXMgaW4gYSBjbGVhbmVyIGZhc2hpb24gb24gU1NUIGFuZCBNU1QuDQoNClJldmlld2VkLWJ5OiBH
d2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
