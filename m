Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1272F20980F
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 03:04:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D726E8EF;
	Thu, 25 Jun 2020 01:04:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 775866E8EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 01:04:54 +0000 (UTC)
IronPort-SDR: ih/AlWJzq1UP/kqqtAvLVIZf8ks4jF23OkiqwkgQSGcYdCfxUsNb7UCdaqupC/cZNdOCSPX0a5
 Ni6MYoNSQp1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="143793205"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="143793205"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 18:04:54 -0700
IronPort-SDR: IgUF70gyqOWM04PBh5rRqoxE528eyWwGm6ZNYM1KkPPvlxEk8NK5ajLf5BnsGDR7X4q7QdDjp2
 lRvanfjgHqNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="479470484"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jun 2020 18:04:54 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 18:04:53 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.33]) with mapi id 14.03.0439.000;
 Wed, 24 Jun 2020 18:04:53 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/12] drm/i915/fbc: Don't clear busy_bits
 for origin==GTT
Thread-Index: AQHWHg59doz5afL+i0uY7LNOm3vDk6jpUuwA
Date: Thu, 25 Jun 2020 01:04:52 +0000
Message-ID: <a1ebf9b91335ae9b33ed3b88847492292f597c3c.camel@intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
 <20200429101034.8208-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429101034.8208-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.155.111]
Content-ID: <DCB06BD76A8E9E48953E257A5138A68C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915/fbc: Don't clear busy_bits
 for origin==GTT
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

T24gV2VkLCAyMDIwLTA0LTI5IGF0IDEzOjEwICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIGhhcmR3YXJlIGhvc3QgdHJhY2tpbmcgd29uJ3QgbnVrZSB0aGUgZW50aXJlIGNm
YiAodW5sZXNzIHRoZQ0KPiBlbnRpcmUgZmIgaXMgd3JpdHRlbiB0aHJvdWdoIHRoZSBndHQpIHNv
IGRvbid0IGNsZWFyIHRoZSBidXN5X2JpdHMNCj4gZm9yIGd0dCB0cmFja2luZy4NCj4gDQo+IE5v
dCB0aGF0IGl0IHJlYWxseSBtYXR0ZXJzIGFueW1vcmUgc2luY2Ugd2UndmUgbG9zdCBPUklHSU5f
R1RUIHVzYWdlDQo+IGV2ZXJ5d2hlcmUuDQoNCk1heWJlIGRyb3AgaXQgdGhlbj8gQnV0IGZvciBu
b3cgdGhpcyBjaGFuZ2UgbG9va3MgZ29vZC4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxMCArKysrKysrKyst
DQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggOTgzMjI0
ZTA3ZWFmLi41NmVlYWZhNjQ1ZGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYw0KPiBAQCAtMTEwNywxMSArMTEwNywxOSBAQCB2b2lkIGludGVsX2ZiY19m
bHVzaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJaWYgKCFIQVNfRkJD
KGRldl9wcml2KSkNCj4gIAkJcmV0dXJuOw0KPiAgDQo+ICsJLyoNCj4gKwkgKiBHVFQgdHJhY2tp
bmcgZG9lcyBub3QgbnVrZSB0aGUgZW50aXJlIGNmYg0KPiArCSAqIHNvIGRvbid0IGNsZWFyIGJ1
c3lfYml0cyBzZXQgZm9yIHNvbWUgb3RoZXINCj4gKwkgKiByZWFzb24uDQo+ICsJICovDQo+ICsJ
aWYgKG9yaWdpbiA9PSBPUklHSU5fR1RUKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gIAltdXRleF9s
b2NrKCZmYmMtPmxvY2spOw0KPiAgDQo+ICAJZmJjLT5idXN5X2JpdHMgJj0gfmZyb250YnVmZmVy
X2JpdHM7DQo+ICANCj4gLQlpZiAob3JpZ2luID09IE9SSUdJTl9HVFQgfHwgb3JpZ2luID09IE9S
SUdJTl9GTElQKQ0KPiArCWlmIChvcmlnaW4gPT0gT1JJR0lOX0ZMSVApDQo+ICAJCWdvdG8gb3V0
Ow0KPiAgDQo+ICAJaWYgKCFmYmMtPmJ1c3lfYml0cyAmJiBmYmMtPmNydGMgJiYNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
