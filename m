Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A06FC3B7ED6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 10:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 245896E0AC;
	Wed, 30 Jun 2021 08:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B26D96E0AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 08:21:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="269444669"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="269444669"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 01:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="457129382"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jun 2021 01:21:46 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 01:21:45 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 13:51:43 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Wed, 30 Jun 2021 13:51:43 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Modem, Bhanuprakash"
 <bhanuprakash.modem@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [V3] drm/i915/display: Fix state mismatch in drm infoframe
Thread-Index: AQHXOAl7S3TfGXOCY0OLgLy1bqv01qsjOs4ggAlmwfA=
Date: Wed, 30 Jun 2021 08:21:43 +0000
Message-ID: <60ca0c5c230a48f29e0ad0abd16ff60d@intel.com>
References: <20210423141609.28568-1-bhanuprakash.modem@intel.com>
 <e3301e08f15b416a8c206071d495e3f5@intel.com>
In-Reply-To: <e3301e08f15b416a8c206071d495e3f5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V3] drm/i915/display: Fix state mismatch in drm
 infoframe
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBTaGFua2Fy
LA0KPiBVbWENCj4gU2VudDogVGh1cnNkYXksIEp1bmUgMjQsIDIwMjEgMjoxOSBQTQ0KPiBUbzog
TW9kZW0sIEJoYW51cHJha2FzaCA8YmhhbnVwcmFrYXNoLm1vZGVtQGludGVsLmNvbT47IGludGVs
LQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4
XSBbVjNdIGRybS9pOTE1L2Rpc3BsYXk6IEZpeCBzdGF0ZSBtaXNtYXRjaCBpbiBkcm0gaW5mb2Zy
YW1lDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9t
OiBNb2RlbSwgQmhhbnVwcmFrYXNoIDxiaGFudXByYWthc2gubW9kZW1AaW50ZWwuY29tPg0KPiA+
IFNlbnQ6IEZyaWRheSwgQXByaWwgMjMsIDIwMjEgNzo0NiBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IE1vZGVtLCBCaGFudXByYWthc2ggPGJoYW51
cHJha2FzaC5tb2RlbUBpbnRlbC5jb20+OyBTaGFua2FyLCBVbWENCj4gPiA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPjsgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gPiBTdWJqZWN0OiBbVjNdIGRybS9pOTE1L2Rpc3BsYXk6IEZpeCBzdGF0ZSBtaXNtYXRj
aCBpbiBkcm0gaW5mb2ZyYW1lDQo+ID4NCj4gPiBXaGlsZSByZWFkaW5nIHRoZSBTRFAgaW5mb2Zy
YW1lLCB3ZSBhcmUgZ2V0dGluZyBmaWx0ZXJlZCB3aXRoIHRoZQ0KPiA+IGVuY29kZXIgdHlwZSBJ
TlRFTF9PVVRQVVRfRERJIHdoaWNoIGNhdXNlcyB0aGUgaW5mb2ZyYW1lIG1pc21hdGNoLg0KPiA+
IFRoaXMgcGF0Y2ggd2lsbCBkcm9wDQo+ID4gZW5jb2Rlci0+dHlwZSBjaGVjayBhcyB3ZSBjYW4g
bWFzayBpbmRpdmlkdWFsIGluZm9mcmFtZSB0eXBlLg0KPiANCj4gSXQgd2lsbCBiZSBnb29kIHRv
IG1lbnRpb24gdGhhdCBpc3N1ZSBoYXBwZW5zIHdpdGggZURQLiBXaXRoIHRoYXQgYWRkZWQsDQo+
IA0KPiBSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0K
Q2hhbmdlIHB1c2hlZCB0byBkcm0taW50ZWwtbmV4dC4NClRoYW5rcyBmb3IgdGhlIHBhdGNoLg0K
DQpSZWdhcmRzLA0KVW1hIFNoYW5rYXINCj4gPiBbMTAyNS42MDY1NTZdIGk5MTUgMDAwMDowMDow
Mi4wOiBbZHJtXSAqRVJST1IqIG1pc21hdGNoIGluIGRybQ0KPiA+IGluZm9mcmFtZSBbMTAyNS42
MDc4NjVdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSAqRVJST1IqIGV4cGVjdGVkOg0KPiA+IFsx
MDI1LjYwNzg3OV0gaTkxNSAwMDAwOjAwOjAyLjA6IEhETUkgaW5mb2ZyYW1lOiBEeW5hbWljIFJh
bmdlIGFuZA0KPiA+IE1hc3RlcmluZywgdmVyc2lvbiAxLCBsZW5ndGggMjYgWzEwMjUuNjA3ODg5
XSBpOTE1IDAwMDA6MDA6MDIuMDoNCj4gPiBsZW5ndGg6IDI2IFsxMDI1LjYwNzg5OF0gaTkxNQ0K
PiA+IDAwMDA6MDA6MDIuMDogbWV0YWRhdGEgdHlwZTogMCBbMTAyNS42MDgyOTJdIGk5MTUgMDAw
MDowMDowMi4wOiBlb3RmOg0KPiA+IDIgWzEwMjUuNjA4MzAyXSBpOTE1IDAwMDA6MDA6MDIuMDog
eFswXTogMzU0MDAgWzEwMjUuNjA4MzEyXSBpOTE1IDAwMDA6MDA6MDIuMDoNCj4gPiB5WzBdOiAx
NDU5OSBbMTAyNS42MDkxMTVdIGk5MTUgMDAwMDowMDowMi4wOiB4WzFdOiA4NTAwIFsxMDI1LjYw
OTk0N10NCj4gPiBpOTE1DQo+ID4gMDAwMDowMDowMi4wOiB5WzFdOiAzOTg1MCBbMTAyNS42MDk5
NTldIGk5MTUgMDAwMDowMDowMi4wOiB4WzJdOiA2NTUwDQo+ID4gWzEwMjUuNjA5OTcwXSBpOTE1
IDAwMDA6MDA6MDIuMDogeVsyXTogMjMwMCBbMTAyNS42MDk5ODBdIGk5MTUgMDAwMDowMDowMi4w
Og0KPiA+IHdoaXRlIHBvaW50IHg6IDE1NjM0IFsxMDI1LjYwOTk4OV0gaTkxNSAwMDAwOjAwOjAy
LjA6IHdoaXRlIHBvaW50IHk6DQo+ID4gMTY0NTAgWzEwMjUuNjEwMzgxXSBpOTE1IDAwMDA6MDA6
MDIuMDoNCj4gPiBtYXhfZGlzcGxheV9tYXN0ZXJpbmdfbHVtaW5hbmNlOiAxMDAwIFsxMDI1LjYx
MDM5Ml0gaTkxNSAwMDAwOjAwOjAyLjA6DQo+ID4gbWluX2Rpc3BsYXlfbWFzdGVyaW5nX2x1bWlu
YW5jZTogNTAwIFsxMDI1LjYxMDQwMV0gaTkxNSAwMDAwOjAwOjAyLjA6IG1heF9jbGw6DQo+IDUw
MCBbMTAyNS42MTA4MTZdIGk5MTUgMDAwMDowMDowMi4wOg0KPiA+IG1heF9mYWxsOiAxMDAwIFsx
MDI1LjYxMjQ1N10gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogZm91bmQ6DQo+ID4g
WzEwMjUuNjE0MzU0XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0gWzEwMjUu
NjE2MjQ0XSBwaXBlDQo+ID4gc3RhdGUgZG9lc24ndCBtYXRjaCENCj4gPiBbMTAyNS42MTc2NDBd
IFdBUk5JTkc6IENQVTogNiBQSUQ6IDIxMTQgYXQNCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYzo5MzMyDQo+ID4gaW50ZWxfYXRvbWljX2NvbW1pdF90YWls
KzB4MTRkNC8weDE3YzAgW2k5MTVdDQo+ID4NCj4gPiBWMjoNCj4gPiAqIERyb3AgZW5jb2Rlci0+
dHlwZSBjaGVjaw0KPiA+DQo+ID4gVjM6DQo+ID4gKiBSZW1vdmUgaW50ZXJuYWwgcmV2aWV3cw0K
PiA+DQo+ID4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4gQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gU2ln
bmVkLW9mZi1ieTogQmhhbnVwcmFrYXNoIE1vZGVtIDxiaGFudXByYWthc2gubW9kZW1AaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMgfCAzIC0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkNCj4gPg0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGluZGV4IDRh
ZDEyZGRlNTkzOC4uMjgwYjBiNWVlNzBlIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IEBAIC0zMDE0LDkgKzMwMTQsNiBAQCB2b2lkIGludGVs
X3JlYWRfZHBfc2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAJCSAgICAg
ICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkgICAgICAgdW5z
aWduZWQgaW50IHR5cGUpDQo+ID4gIHsNCj4gPiAtCWlmIChlbmNvZGVyLT50eXBlICE9IElOVEVM
X09VVFBVVF9EREkpDQo+ID4gLQkJcmV0dXJuOw0KPiA+IC0NCj4gPiAgCXN3aXRjaCAodHlwZSkg
ew0KPiA+ICAJY2FzZSBEUF9TRFBfVlNDOg0KPiA+ICAJCWludGVsX3JlYWRfZHBfdnNjX3NkcChl
bmNvZGVyLCBjcnRjX3N0YXRlLA0KPiA+IC0tDQo+ID4gMi4yMC4xDQo+IA0KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
