Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2221470B7
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 19:25:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3E4B6E0A6;
	Thu, 23 Jan 2020 18:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792576E0A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 18:25:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 10:25:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="259958921"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 23 Jan 2020 10:25:30 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Jan 2020 10:25:30 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.191]) with mapi id 14.03.0439.000;
 Thu, 23 Jan 2020 10:25:30 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Do not set master_trans
 bit in bitmak if INVALID_TRANSCODER
Thread-Index: AQHV0YNaQc/pVRPx+UGOonIfbI5IYKf5GBCA
Date: Thu, 23 Jan 2020 18:25:29 +0000
Message-ID: <2b07d85811faa1a630403742975914bf5fc1c7ec.camel@intel.com>
References: <20200123002415.31478-1-manasi.d.navare@intel.com>
In-Reply-To: <20200123002415.31478-1-manasi.d.navare@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.248]
Content-ID: <0EF7ED90DDC13641B7F43A10141E2167@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Do not set master_trans
 bit in bitmak if INVALID_TRANSCODER
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

T24gV2VkLCAyMDIwLTAxLTIyIGF0IDE2OjI0IC0wODAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOg0K
PiBJbiB0aGUgcG9ydCBzeW5jIG1vZGUsIGZvciB0aGUgbWFzdGVyIGNydGMsIHRoZSBtYXN0ZXJf
dHJhbnNjb2RlciBpcw0KPiBJTlZBTElELg0KPiBJbiB0aGF0IGNhc2Ugc2luY2UgaXRzIHZhbHVl
IGlzIC0xLCBkbyBub3Qgc2V0IHRoZSBiaXQgaW4gdGhlDQo+IGJpdG1hc2suDQo+IA0KPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gRml4ZXM6
IGQwZWVkMTU0NWZlNyAoImRybS9pOTE1OiBGaXggcG9zdC1mYXN0c2V0IG1vZGVzZXQgY2hlY2sg
Zm9yDQo+IHBvcnQgc3luYyIpDQo+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFz
aS5kLm5hdmFyZUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCA2ICsrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDg3OGQzMzFiOWU4Yy4uNzlmOTA1
NDA3OGVhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiBAQCAtMTQ2NDksOCArMTQ2NDksMTAgQEAgc3RhdGljIGludCBpbnRlbF9hdG9t
aWNfY2hlY2soc3RydWN0DQo+IGRybV9kZXZpY2UgKmRldiwNCj4gIAkJfQ0KPiAgDQo+ICAJCWlm
IChpc190cmFuc19wb3J0X3N5bmNfbW9kZShuZXdfY3J0Y19zdGF0ZSkpIHsNCj4gLQkJCXU4IHRy
YW5zID0gbmV3X2NydGNfc3RhdGUtDQo+ID5zeW5jX21vZGVfc2xhdmVzX21hc2sgfA0KPiAtCQkJ
CSAgIEJJVChuZXdfY3J0Y19zdGF0ZS0NCj4gPm1hc3Rlcl90cmFuc2NvZGVyKTsNCj4gKwkJCXU4
IHRyYW5zID0gbmV3X2NydGNfc3RhdGUtDQo+ID5zeW5jX21vZGVfc2xhdmVzX21hc2s7DQo+ICsN
Cj4gKwkJCWlmIChuZXdfY3J0Y19zdGF0ZS0+bWFzdGVyX3RyYW5zY29kZXIgIT0NCj4gSU5WQUxJ
RF9UUkFOU0NPREVSKQ0KPiArCQkJCXRyYW5zIHw9IEJJVChuZXdfY3J0Y19zdGF0ZS0NCj4gPm1h
c3Rlcl90cmFuc2NvZGVyKTsNCg0KV2h5IG5vdCBzZXQgbWFzdGVyX3RyYW5zY29kZXIgaW4gcG9y
dCBzeW5jIG1hc3RlciB0b28/IFdvdWxkIGF2b2lkIGhhdmUNCnRoaXMgY2hlY2sgaGVyZSBhbmQg
aW4gZnV0dXJlIG90aGVyIHBsYWNlcy4NCg0KPiAgDQo+ICAJCQlpZiAoaW50ZWxfY3B1X3RyYW5z
Y29kZXJzX25lZWRfbW9kZXNldChzdGF0ZSwNCj4gdHJhbnMpKSB7DQo+ICAJCQkJbmV3X2NydGNf
c3RhdGUtPnVhcGkubW9kZV9jaGFuZ2VkID0NCj4gdHJ1ZTsNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
