Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7001EBF0E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 17:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED0C6E02B;
	Tue,  2 Jun 2020 15:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 583966E02B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 15:33:07 +0000 (UTC)
IronPort-SDR: gpEsNc2yg1ZgDto8mqAOk7A5y8jheehwtySic3Zjc00KYExByH/KX6NEMRxt/V5fkcO7EaRDeg
 nle+RRx0r4zA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 08:33:06 -0700
IronPort-SDR: Bp8k7VV9hjexZ0NwSgCUyWU5X5NcaClz5YmK0rr6+kDSbIZu7ZASVwA/OJYcmCt5cvxT39zmAP
 SCPhcq8xCmPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,465,1583222400"; d="scan'208";a="268737051"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga003.jf.intel.com with ESMTP; 02 Jun 2020 08:33:06 -0700
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jun 2020 08:33:06 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 fmsmsx163.amr.corp.intel.com ([169.254.6.234]) with mapi id 14.03.0439.000;
 Tue, 2 Jun 2020 08:33:06 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsi: Dont forget to clean up the
 connector on error (v2)
Thread-Index: AQHWMHhGw7DqWqqWYkyIJWlT2jHFrqjF+wAA
Date: Tue, 2 Jun 2020 15:33:05 +0000
Message-ID: <472c8f97c12555081cfd45448100c54a9197b564.camel@intel.com>
References: <20200507010103.16040-1-vivek.kasireddy@intel.com>
 <20200522202630.7604-1-vivek.kasireddy@intel.com>
In-Reply-To: <20200522202630.7604-1-vivek.kasireddy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.40.145]
Content-ID: <C12FC0B443FDD34295C75038840D0ADD@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Dont forget to clean up the
 connector on error (v2)
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIwLTA1LTIyIGF0IDEzOjI2IC0wNzAwLCBWaXZlayBLYXNpcmVkZHkgd3JvdGU6
DQo+IElmIGFuIGVycm9yIGlzIGVuY291bnRlcmVkIGR1cmluZyB0aGUgRFNJIGluaXRpYWxpemF0
aW9uIHNldHVwLCB0aGUNCj4gZHJtIGNvbm5lY3RvciBvYmplY3QgYWxzbyBuZWVkcyB0byBiZSBj
bGVhbmVkIHVwIGFsb25nIHdpdGggdGhlIGVuY29kZXIuDQo+IFRoZSBlcnJvciBjYW4gaGFwcGVu
IGR1ZSB0byBhIG1pc3NpbmcgbW9kZSBpbiB0aGUgVkJUIG9yIGZvciBvdGhlcg0KPiByZWFzb25z
Lg0KPiANCj4gdjI6IFJlcGhyYXNlIHRoZSBjb21taXQgbWVzc2FnZSB0byBtYWtlIGl0IG1vcmUg
Y2xlYXIuDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQoNCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+DQo+IENjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4N
Cj4gU2lnbmVkLW9mZi1ieTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIHwg
MSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jDQo+IGluZGV4IDRmZWM1YmQ2NDkyMC4uZjkzZjcyNDYz
ZGY1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2ku
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBAQCAt
MTk1NCw2ICsxOTU0LDcgQEAgdm9pZCBpY2xfZHNpX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQ0KPiAgCXJldHVybjsNCj4gIA0KPiAgZXJyOg0KPiArCWRybV9jb25uZWN0
b3JfY2xlYW51cChjb25uZWN0b3IpOw0KPiAgCWRybV9lbmNvZGVyX2NsZWFudXAoJmVuY29kZXIt
PmJhc2UpOw0KPiAgCWtmcmVlKGludGVsX2RzaSk7DQo+ICAJa2ZyZWUoaW50ZWxfY29ubmVjdG9y
KTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
