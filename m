Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A97C8A4D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 15:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D1F6E0F3;
	Wed,  2 Oct 2019 13:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D2FE6E0F3
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 13:55:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 06:55:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="391584784"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga005.fm.intel.com with ESMTP; 02 Oct 2019 06:55:34 -0700
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 2 Oct 2019 06:55:33 -0700
Received: from fmsmsx119.amr.corp.intel.com ([169.254.14.227]) by
 fmsmsx117.amr.corp.intel.com ([169.254.3.133]) with mapi id 14.03.0439.000;
 Wed, 2 Oct 2019 06:55:33 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 21/30] drm/i915: Replace hangcheck by heartbeats
Thread-Index: AQHVeRNj/0yOJWq1cEuQB6/uriu/bqdHXdgw
Date: Wed, 2 Oct 2019 13:55:32 +0000
Deferred-Delivery: Wed, 2 Oct 2019 13:54:48 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68CE4E0A3@FMSMSX119.amr.corp.intel.com>
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
 <20191002112000.12280-21-chris@chris-wilson.co.uk>
In-Reply-To: <20191002112000.12280-21-chris@chris-wilson.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjE4MDY1NjQtNjA1Ni00Y2JiLWFlNzItZWRiMWY2ZTU3ZWI2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicG9BOUphZVwvR1ZsN0lmXC9PZUt5cGxcL3hRNkdYTVJuT0xuNUtIZ0xsbHZyYkZKSFJkaUlWUDVzcnloNFdOaEc3TCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 21/30] drm/i915: Replace hangcheck by
 heartbeats
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
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDIsIDIwMTkg
NDoyMCBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+OyBKb29uYXMgTGFodGluZW4NCj4g
PGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+OyBVcnN1bGluLCBUdnJ0a28gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT47DQo+IEJsb29tZmllbGQsIEpvbiA8am9uLmJsb29tZmllbGRA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMjEvMzBdIGRybS9pOTE1OiBSZXBsYWNlIGhh
bmdjaGVjayBieSBoZWFydGJlYXRzDQo+IA0KPiBSZXBsYWNlIHNhbXBsaW5nIHRoZSBlbmdpbmUg
c3RhdGUgZXZlcnkgc28gb2Z0ZW4gd2l0aCBhIHBlcmlvZGljDQo+IGhlYXJ0YmVhdCByZXF1ZXN0
IHRvIG1lYXN1cmUgdGhlIGhlYWx0aCBvZiBhbiBlbmdpbmUuIFRoaXMgaXMgY291cGxlZA0KPiB3
aXRoIHRoZSBmb3JjZWQtcHJlZW1wdGlvbiB0byBhbGxvdyBsb25nIHJ1bm5pbmcgcmVxdWVzdHMg
dG8gc3Vydml2ZSBzbw0KPiBsb25nIGFzIHRoZXkgZG8gbm90IGJsb2NrIG90aGVyIHVzZXJzLg0K
PiANCj4gVGhlIGhlYXJ0YmVhdCBpbnRlcnZhbCBjYW4gYmUgYWRqdXN0ZWQgcGVyLWVuZ2luZSB1
c2luZywNCj4gDQo+IAkvc3lzL2NsYXNzL2RybS9jYXJkMC9lbmdpbmUvKi9oZWFydGJlYXRfaW50
ZXJ2YWxfbXMNCg0KTm90IHRydWUgZm9yIGRpc2NyZXRlIDotKQ0KDQpQZXJoYXBzOiAvc3lzL2Ns
YXNzL2RybS9jYXJkPG4+L2VuZ2luZS8qL2hlYXJ0YmVhdF9pbnRlcnZhbF9tcw0KQW5kIGFnYWlu
IGluIHRoZSBjb2RlIGJlbG93Lg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
