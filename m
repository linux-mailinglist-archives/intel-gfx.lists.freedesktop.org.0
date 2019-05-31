Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4083086B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 08:20:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE6CE8922B;
	Fri, 31 May 2019 06:20:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB9908922B
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 06:20:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 May 2019 23:20:12 -0700
X-ExtLoop1: 1
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by orsmga006.jf.intel.com with ESMTP; 30 May 2019 23:20:11 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.166]) by
 IRSMSX107.ger.corp.intel.com ([169.254.10.142]) with mapi id 14.03.0415.000;
 Fri, 31 May 2019 07:20:10 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: remove duplicated WaDisableBankHangMode:icl
Thread-Index: AQHVFvrh43FyvXtyP0CALwtd2ccOyKaDuHYAgAELRLA=
Date: Fri, 31 May 2019 06:20:10 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D07670DB5B@IRSMSX106.ger.corp.intel.com>
References: <20190530151622.31066-1-daniele.ceraolospurio@intel.com>
 <155922979200.21185.6454467757171635664@skylake-alporthouse-com>
In-Reply-To: <155922979200.21185.6454467757171635664@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2RkMmE1NDAtYTZkYi00ZWNlLWJkODktNmI5YmJmNTQ5ZTQ5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOTkxOENibWoxdTVLaEFKZUZyRUlEbFJCK01rYzBPd2pnXC8ycEQzRlVxTFhVZVhZU3doMVdTVzR2UGZkbkkzSGoifQ==
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove duplicated
 WaDisableBankHangMode:icl
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

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IENocmlzIFdpbHNv
biBbbWFpbHRvOmNocmlzQGNocmlzLXdpbHNvbi5jby51a10NCj4gU2VudDogdG9yc3RhaSAzMC4g
dG91a29rdXV0YSAyMDE5IDE4LjIzDQo+IFRvOiBDZXJhb2xvIFNwdXJpbywgRGFuaWVsZSA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IENjOiBDZXJhb2xvIFNwdXJpbywgRGFuaWVsZSA8ZGFuaWVsZS5jZXJhb2xv
c3B1cmlvQGludGVsLmNvbT47IFNhYXJpbmVuLCBKYW5pDQo+IDxqYW5pLnNhYXJpbmVuQGludGVs
LmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTU6IHJlbW92ZSBkdXBsaWNhdGVk
IFdhRGlzYWJsZUJhbmtIYW5nTW9kZTppY2wNCj4gDQo+IFF1b3RpbmcgRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyAoMjAxOS0wNS0zMCAxNjoxNjoyMSkNCj4gPiBBY2NpZGVudGFsbHkgYWRkZWQgZHVy
aW5nIHRoZSBtZXJnZSBvZiBkcm0tbmV4dC4NCj4gDQo+IEl0J3MgYSBkaW0gaXNzdWUuIEEgZGlu
cSBwYXRjaCBjaGVycnktcGlja2VkIGludG8gZGlmIHRoYXQgZ2l0IGlzbid0IGVsaW1pbmF0aW5n
IHRoZQ0KPiBkdXBsaWNhdGlvbiB3aGVuIGRpbSBidWlsZCB0aXBzLg0KPiBodHRwczovL2RybS5w
YWdlcy5mcmVlZGVza3RvcC5vcmcvbWFpbnRhaW5lci10b29scy9kcm0tdGlwLmh0bWwjcmVzb2x2
aW5nLQ0KPiBjb25mbGljdHMtd2hlbi1yZWJ1aWxkaW5nLWRybS10aXANCj4gU2VlICJGaXhpbmcg
U2lsZW50IENvbmZsaWN0cyINCj4gDQo+IE5vdGUgYWxyZWFkeSBmaXhlZCB1cC4NCldoZW4gdGhp
cyBjYW4gYmUgc2VlbiBhbHNvIGluIENJPyANCg0KPiAtQ2hyaXMNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
