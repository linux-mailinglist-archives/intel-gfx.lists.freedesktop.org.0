Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1413441F2B9
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 19:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 705366E536;
	Fri,  1 Oct 2021 17:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6817C6E52D
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 17:12:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="311046967"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="311046967"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 10:12:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="710039753"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga005.fm.intel.com with ESMTP; 01 Oct 2021 10:12:06 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Oct 2021 10:12:05 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 1 Oct 2021 22:42:03 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Fri, 1 Oct 2021 22:42:03 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Stop force enabling pipe bottom
 color gammma/csc
Thread-Index: AQHXtJnTyIeOEV4GKEORm0t6vPTahqu+ZFkg
Date: Fri, 1 Oct 2021 17:12:03 +0000
Message-ID: <20151cd02fcc48c4ae7182792ef7c7e9@intel.com>
References: <20210928185105.3030-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210928185105.3030-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop force enabling pipe bottom
 color gammma/csc
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgU2VwdGVtYmVyIDI5LCAyMDIxIDEyOjIxIEFNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1n
ZnhdIFtQQVRDSF0gZHJtL2k5MTU6IFN0b3AgZm9yY2UgZW5hYmxpbmcgcGlwZSBib3R0b20gY29s
b3INCj4gZ2FtbW1hL2NzYw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFdoaWxlIHNhbml0aXppbmcgdGhlIGhhcmR3YXJl
IHN0YXRlIHdlJ3JlIGN1cnJlbnRseSBmb3JjaW5nIHRoZSBwaXBlIGJvdHRvbSBjb2xvcg0KPiBs
ZWdhY3kgY3NjL2dhbW1hIGJpdHMgb24uIFRoYXQgaXMgbm90IGEgZ29vZCBpZGVhIGFzIEJJT1Nl
biBhcmUgbGlrZWx5IHRvIGxlYXZlDQo+IGdhYmFnZSBpbiB0aGUgTFVUcyBhbmQgc28gZG9pbmcg
dGhpcyBjYXVzZXMgdWdseSB2aXN1YWwgZ2xpdGNoZXMgaWYgYW5kIHdoZW4gdGhlDQo+IHBsYW5l
cyBjb3ZlcmluZyB0aGUgYmFja2dyb3VuZCBnZXQgZGlzYWJsZWQuIFRoaXMgd2FzIGV4YWN0bHkg
dGhlIGNhc2Ugb24gdGhpcyBEZWxsDQo+IFByZWNpc2lvbiA1NTYwIHRnbCBsYXB0b3AuDQo+IA0K
PiBPbiBpY2wrIHdlIGRvbid0IG5vcm1hbGx5IGV2ZW4gdXNlIHRoZXNlIGxlZ2FjeSBiaXRzIGFu
eW1vcmUgYW5kIGluc3RlYWQgdXNlIHRoZWlyDQo+IEdBTU1BX01PREUgY291bnRlcnBhcnRzLg0K
PiBPbiBlYXJsaWVyIHBsYXRmb3JtcyB0aGUgYml0cyBhcmUgdXNlZCwgYnV0IHdlIHN0aWxsIHNo
b3VsZG4ndCBmb3JjZSB0aGVtIG9uIHdpdGhvdXQNCj4ga25vd2luZyB3aGF0J3MgaW4gdGhlIExV
VC4NCj4gDQo+IFNvIHR3byBvcHRpb25zLCBnZXQgcmlkIG9mIHRoZSB3aG9sZSB0aGluZywgb3Ig
ZG8gd2hhdA0KPiBpbnRlbF9jb2xvcl9jb21taXQoKSBkb2VzIHRvIG1ha2Ugc3VyZSB0aGUgYm90
dG9tIGNvbG9yIHN0YXRlIG1hdGNoZXMgd2hhdGV2ZXINCj4gb3V0IGhhcmR3YXJlIHJlYWRvdXQg
cHJvZHVjZWQuIEkgY2hvc2UgdGhlIGxhdHRlciBzaW5jZSBpdCdsbCBtYXRjaCB3aGF0IGhhcHBl
bnMgb24NCj4gb2xkZXIgcGxhdGZvcm1zIHdoZW4gdGhlIHByaW1hcnkgcGxhbmUgZ2V0cyB0dXJu
ZWQgb2ZmLiBJbiBmYWN0IGxldCdzIGp1c3QgY2FsbA0KPiBpbnRlbF9jb2xvcl9jb21taXQoKS4g
SXQnbGwgYWxzbyBkbyBzb21lIENTQyBwcm9ncmFtbWluZyBidXQgc2luY2Ugd2UgZG9uJ3QgaGF2
ZQ0KPiByZWFkb3V0IGZvciB0aGF0IGl0J2xsIGFjdHVhbGx5IGp1c3Qgc2V0IHRvIGFsbCB6ZXJv
cy4gU28gaW4gdGhlIHVubGlrZWx5IGNhc2Ugb2YgQ1NDDQo+IGFjdHVhbGx5IGJlaW5nIGVuYWJs
ZCBieSB0aGUgQklPUyB3ZSdsbCBlbmQgdXAgd2l0aCBhbGwgYmxhY2sgdW50aWwgdGhlIGZpcnN0
IGF0b21pYw0KPiBjb21taXQgaGFwcGVucy4NCj4gDQo+IFN0aWxsIG5vdCB0b3RhbGx5IHN1cmUg
d2hhdCB3ZSBzaG91bGQgZG8gYWJvdXQgY29sb3IgbWFuYWdlbWVudCBmZWF0dXJlcyBoZXJlIGlu
DQo+IGdlbmVyYWwuIFByb2JhYmx5IHRoZSBzYWZlc3QgIHRoaW5nIHdvdWxkIGJlIHRvIGZvcmNl
IGV2ZXJ5dGhpbmcgb2ZmIGV4YWN0bHkgYXQgdGhlDQo+IHNhbWUgdGltZSB3aGVuIHdlIGRpc2Fi
bGUgdGhlIHByaW1hcnkgcGxhbmUgYXMgdGhlcmUgaXMgbm8gZ3VhcmFudGVlcyB0aGF0DQo+IHdo
YXRldmVyIHRoZSBMVVRzL0NTQ3MgY29udGFpbiBtYWtlIGFueSBzZW5zZSB3aGF0c29ldmVyIHdp
dGhvdXQgdGhlIHNwZWNpZmljDQo+IHBpeGVsIGRhdGEgaW4gdGhlIEJJT1MgZmIuIEFuZCBpZiB3
ZSBwcmVzZXJ2ZSB0aGUgcHJpbWFyeSBwbGFuZSB0aGVuIHdlIHNob3VsZA0KPiBkaXNhYmxlIHRo
ZSBjb2xvciBtYW5hZ2VtZW50IGZlYXR1cmVzIGV4YWN0bHkgd2hlbiB0aGUgcHJpbWFyeSBwbGFu
ZSBmYiBjb250ZW50cw0KPiBmaXJzdCBjaGFuZ2VzIHNpbmNlIHRoZSBuZXcgY29udGVudCBhc3N1
bWVzIG1vcmUgb3IgbGVzcyBubyB0cmFuc2Zvcm1hdGlvbnMuIEJ1dCBvZg0KPiBjb3Vyc2Ugc3lu
Y2hyb25pemluZyBmcm9udCBidWZmZXIgcmVuZGVyaW5nIHdpdGggYW55dGhpbmcgZWxzZSBpcyBh
IGJpdCBoYXJkLi4uDQo+IA0KDQpBIG5pY2UgY2F0Y2guDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpS
ZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBDbG9z
ZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMzUz
NA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIHwgOSArKy0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBmMjdjMjk0YmViOTIuLjE3Y2U1MTU3NmVkMiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gQEAgLTExOTkxLDEzICsxMTk5MSw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Nhbml0aXplX2Ny
dGMoc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ICAJCQkJaW50ZWxfcGxhbmVfZGlzYWJsZV9u
b2F0b21pYyhjcnRjLCBwbGFuZSk7DQo+ICAJCX0NCj4gDQo+IC0JCS8qDQo+IC0JCSAqIERpc2Fi
bGUgYW55IGJhY2tncm91bmQgY29sb3Igc2V0IGJ5IHRoZSBCSU9TLCBidXQgZW5hYmxlIHRoZQ0K
PiAtCQkgKiBnYW1tYSBhbmQgQ1NDIHRvIG1hdGNoIGhvdyB3ZSBwcm9ncmFtIG91ciBwbGFuZXMu
DQo+IC0JCSAqLw0KPiAtCQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDkpDQo+IC0JCQlp
bnRlbF9kZV93cml0ZShkZXZfcHJpdiwgU0tMX0JPVFRPTV9DT0xPUihjcnRjLT5waXBlKSwNCj4g
LQkJCQkgICAgICAgU0tMX0JPVFRPTV9DT0xPUl9HQU1NQV9FTkFCTEUgfA0KPiBTS0xfQk9UVE9N
X0NPTE9SX0NTQ19FTkFCTEUpOw0KPiArCQkvKiBEaXNhYmxlIGFueSBiYWNrZ3JvdW5kIGNvbG9y
L2V0Yy4gc2V0IGJ5IHRoZSBCSU9TICovDQo+ICsJCWludGVsX2NvbG9yX2NvbW1pdChjcnRjX3N0
YXRlKTsNCj4gIAl9DQo+IA0KPiAgCS8qIEFkanVzdCB0aGUgc3RhdGUgb2YgdGhlIG91dHB1dCBw
aXBlIGFjY29yZGluZyB0byB3aGV0aGVyIHdlDQo+IC0tDQo+IDIuMzIuMA0KDQo=
