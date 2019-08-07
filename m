Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E13784E22
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 16:04:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 927966E6F4;
	Wed,  7 Aug 2019 14:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE2036E6F4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 14:04:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 07:04:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="374419873"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga006.fm.intel.com with ESMTP; 07 Aug 2019 07:04:17 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 7 Aug 2019 07:04:17 -0700
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.194]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.121]) with mapi id 14.03.0439.000;
 Wed, 7 Aug 2019 07:04:16 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/5] drm/i915: Cancel non-persistent contexts on close
Thread-Index: AQHVTF3WOspWOWKwrUWKuzI5V+dLE6bwIvMA//+SotA=
Date: Wed, 7 Aug 2019 14:04:16 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68B3AAC60@fmsmsx120.amr.corp.intel.com>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-5-chris@chris-wilson.co.uk>
 <156518415199.6198.1857505692805477616@skylake-alporthouse-com>
In-Reply-To: <156518415199.6198.1857505692805477616@skylake-alporthouse-com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzI0MGJmNGYtMWNjMy00ZmNkLTg2YmQtYzIxYzBkMTQxZTIxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibTdYRWQyMW1nTHJuZHNGdmVQWkcybktyVU1SaFppMU5UY1JSbHN6RGlUdUlOY240RVwvRTR3cUFSMVhGWFdaSjUifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Cancel non-persistent
 contexts on close
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAxOSA2
OjIzIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBKb29u
YXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+OyBXaW5pYXJza2ks
IE1pY2hhbA0KPiA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+OyBCbG9vbWZpZWxkLCBKb24g
PGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCA1LzVdIGRy
bS9pOTE1OiBDYW5jZWwgbm9uLXBlcnNpc3RlbnQgY29udGV4dHMgb24gY2xvc2UNCj4gDQo+IFF1
b3RpbmcgQ2hyaXMgV2lsc29uICgyMDE5LTA4LTA2IDE0OjQ3OjI1KQ0KPiA+IEBAIC00MzMsNiAr
NDgyLDggQEAgX19jcmVhdGVfY29udGV4dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkN
Cj4gPg0KPiA+ICAgICAgICAgaTkxNV9nZW1fY29udGV4dF9zZXRfYmFubmFibGUoY3R4KTsNCj4g
PiAgICAgICAgIGk5MTVfZ2VtX2NvbnRleHRfc2V0X3JlY292ZXJhYmxlKGN0eCk7DQo+ID4gKyAg
ICAgICBpZiAoaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2hhbmdjaGVjaykNCj4gPiArICAgICAgICAg
ICAgICAgaTkxNV9nZW1fY29udGV4dF9zZXRfcGVyc2lzdGVuY2UoY3R4KTsNCj4gDQo+IEkgYW0g
bm90IGZvbmQgb2YgdGhpcywgYnV0IGZyb20gYSBwcmFnbWF0aWMgcG9pbnQgb2YgdmlldywgdGhp
cyBkb2VzDQo+IHByZXZlbnQgdGhlIGlzc3VlIEpvbiByYWlzZWQ6IEhXIHJlc291cmNlcyBiZWlu
ZyBwaW5uZWQgaW5kZWZpbml0ZWx5DQo+IHBhc3QgcHJvY2VzcyB0ZXJtaW5hdGlvbi4NCj4gDQo+
IEkgZG9uJ3QgbGlrZSBpdCBiZWNhdXNlIHdlIGNhbm5vdCBwZXJmb3JtIHRoZSBvcGVyYXRpb24g
Y2xlYW5seQ0KPiBldmVyeXdoZXJlLCBpdCByZXF1aXJlcyBwcmVlbXB0aW9uIGZpcnN0IGFuZCBm
b3JlbW9zdCAod2l0aCBhIGNvb3BlcmF0aW5nDQo+IHN1Ym1pc3Npb24gYmFja2VuZCkgYW5kIHBl
ci1lbmdpbmUgcmVzZXQuIFRoZSBhbHRlcm5hdGl2ZSBpcyB0byB0cnkgYW5kDQo+IGRvIGEgZnVs
bCBHUFUgcmVzZXQgaWYgdGhlIGNvbnRleHQgaXMgc3RpbGwgYWN0aXZlLiBGb3IgdGhlIHNha2Ug
b2YgdGhlDQo+IGlzc3VlIHJhaXNlZCwgSSB0aGluayB0aGF0IChmdWxsIHJlc2V0IG9uIG9sZGVy
IEhXKSBpcyByZXF1aXJlZC4NCj4gDQo+IFRoYXQgd2UgYXJlIGJha2luZyBpbiBhIGNoYW5nZSBv
ZiBBQkkgZHVlIHRvIGFuIHVuc2FmZSBtb2RwYXJhbSBpcyBtZWguDQo+IFRoZXJlIGFyZSBhIGZl
dyBtb3JlIGNvcm5lciBjYXNlcyB0byBkZWFsIHdpdGggYmVmb3JlIGVuZGxlc3MganVzdA0KPiB3
b3Jrcy4gQnV0IHNpbmNlIGl0IGlzIGJlaW5nIHVzZWQgaW4gdGhlIHdpbGQsIEknbSBub3Qgc3Vy
ZSB3ZSBjYW4gd2FpdA0KPiBmb3IgdXNlcnNwYWNlIHRvIG9wdC1pbiwgb3Igd2FpdCBmb3IgY2dy
b3Vwcy4gSG93ZXZlciwgc2luY2UgdXNlcnMgYXJlDQo+IGJlaW5nIGVuY291cmFnZWQgdG8gZGlz
YWJsZSBoYW5nY2hlY2ssIHNob3VsZCB3ZSBleHRlbmQgdGhlIGNvbmNlcHQgb2YNCj4gcGVyc2lz
dGVuY2UgdG8gYWxzbyBtZWFuICJzdXJ2aXZlcyBoYW5nY2hlY2siPyAtLSB0aG91Z2ggaXQgc2hv
dWxkIGJlIGENCj4gc2VwYXJhdGUgcGFyYW1ldGVyLCBhbmQgSSdtIG5vdCBzdXJlIGhvdyBleGFj
dGx5IHRvIHByb3RlY3QgaXQgZnJvbSB0aGUNCj4gaGVhcnRiZWF0IHJlc2V0IHdpdGhvdXQgZ2l2
aW5nIGdyb3NzIHByaXZpbGVnZXMgdG8gdGhlIGNvbnRleHQuIChDUFUNCj4gaXNvbGF0aW9uIGlz
IG5pY2VyIGZyb20gdGhlIHBvdiB3aGVyZSB3ZSBjYW4ganVzdCBnaXZlIHVwIGFuZCBub3QgZXZl
bg0KPiB3b3JyeSBhYm91dCB0aGUgZW5naW5lLiBJZiB1c2Vyc3BhY2UgY2FuIHJlcXVlc3QgaXNv
bGF0aW9uLCBpdCBoYXMgdGhlDQo+IHByaXZpbGVnZSB0byBzY3JldyB1cC4pDQo+IC1DaHJpcw0K
DQpPaywgc28geW91ciBjb25jZXJuIGlzIHN1cHBvcnRpbmcgbm9uLXBlcnNpc3RlbmNlIG9uIG9s
ZGVyIG5vbi1wcmVlbXB0aW5nLCBlbmdpbmUtcmVzZXQgY2FwYWJsZSwgaGFyZHdhcmUuIFdoeSBp
cyB0aGF0IHN0cmljdGx5IHJlcXVpcmVkPyBDYW4ndCB3ZSBzaW1wbHkgbWFrZSBpdCBkZXBlbmRl
bnQgb24gdGhlIGZlYXR1cmVzIG5lZWRlZCB0byBkbyBpdCB3ZWxsLCBhbmQgaWYgeW91ciBoYXJk
d2FyZSBjYW5ub3QsIHRoZW4gdGhlIGFkdmljZSBpcyBub3QgdG8gZGlzYWJsZSBoYW5nY2hlY2s/
IEknbSBkb3VidGZ1bCB0aGF0IGFueW9uZSB3b3VsZCBhdHRlbXB0IGEgSFBDIHR5cGUgd29ya2xv
YWQgb24gbiBJVkIuDQoNCkknbSBub3Qgc3VyZSBJIHVuZGVyc3RhbmQgeW91ciAic3Vydml2ZXMg
aGFuZ2NoZWNrIiBpZGVhLiBZb3UgbWVhbiBpbnN0ZWFkIG9mIHNpbXBseSBkaXNhYmxpbmcgaGFu
Z2NoZWNrLCBqdXN0IG9wdCBpbiB0byBwZXJzaXN0ZW5jZSBhbmQgaGF2ZSB0aGF0IGFsc28gcHJl
dmVudCBoYW5nY2hlY2s/IElzbid0IHRoYXQgdGhlIHdyb25nIHdheSBhcm91bmQsIHNpbmNlIHBl
cnNpc3RlbmNlIGlzIHdoYXQgaXMgaGFwcGVuaW5nIHRvZGF5Pw0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
