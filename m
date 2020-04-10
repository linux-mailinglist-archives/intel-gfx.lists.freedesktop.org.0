Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0F61A4ABB
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 21:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B9F6E2A3;
	Fri, 10 Apr 2020 19:42:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28356E2A3
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2020 19:41:59 +0000 (UTC)
IronPort-SDR: go1NoZGt4xLRgdp6mRiMwjd8Y3YCjqaGRjsreuRxtcGY82Kku9esbhdFTVv2e6KjxfhKzF61fN
 kqWvCHbGigYA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2020 12:41:58 -0700
IronPort-SDR: XzwU9WGazlWOUZvL2b8O3jv6C02aXmZYrR80LJ0j+Oe0essivAGfS2sgyOrMyS8/+OV7wS47aP
 a8DPYTgdeRyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,367,1580803200"; d="scan'208";a="261560564"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga008.jf.intel.com with ESMTP; 10 Apr 2020 12:41:58 -0700
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Apr 2020 12:41:58 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX126.amr.corp.intel.com ([169.254.1.221]) with mapi id 14.03.0439.000;
 Fri, 10 Apr 2020 12:41:58 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Flush async power domains on
 probe failure
Thread-Index: AQHWD0aV1fiaZjzNt0iP6Cjb7b/md6hzN3OA
Date: Fri, 10 Apr 2020 19:41:57 +0000
Message-ID: <02af48873c1c1b4f5331215f5ed6ae61170cbf5c.camel@intel.com>
References: <20200410144328.15286-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200410144328.15286-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.209.74.15]
Content-ID: <26AEEC34A1FE9647B267D8F0D68EC130@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush async power domains on
 probe failure
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

T24gRnJpLCAyMDIwLTA0LTEwIGF0IDE1OjQzICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IEZsdXNoIHRoZSBhc3luYyBwb3dlciBkb21haW4gd29yayBhZnRlciBhYm9ydGluZyB0aGUgbW9k
dWxlIHByb2JlOg0KPiANCj4gPDM+IFszMDcuNzg1NTUyXSBPREVCVUc6IGZyZWUgYWN0aXZlIChh
Y3RpdmUgc3RhdGUgMCkgb2JqZWN0IHR5cGU6DQo+IHRpbWVyX2xpc3QgaGludDogaW50ZWxfZGlz
cGxheV9wb3dlcl9wdXRfYXN5bmNfd29yaysweDAvMHhmMCBbaTkxNV0NCj4gDQo+IENsb3Nlczog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8xNjQ3DQo+
IEZpeGVzOiBiNjY0MjU5ZjNmZTIgKCJkcm0vaTkxNTogc3BsaXQgaTkxNV9kcml2ZXJfbW9kZXNl
dF9wcm9iZSgpIHRvDQo+IHByZS9wb3N0IGlycSBpbnN0YWxsIikNCj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+IENjOiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMSArDQo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYw0KPiBpbmRleCBhN2EzYjRiOTg1NzIuLjEzYzFjZTI0NDA5MiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jDQo+IEBAIC05OTYsNiArOTk2LDcgQEAgaW50IGk5MTVfZHJpdmVy
X3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdA0KPiBzdHJ1Y3QgcGNpX2RldmljZV9p
ZCAqZW50KQ0KPiAgb3V0X2NsZWFudXBfbW9kZXNldDoNCj4gIAkvKiBGSVhNRSAqLw0KPiAgb3V0
X2NsZWFudXBfaHc6DQo+ICsJaW50ZWxfcG93ZXJfZG9tYWluc19kcml2ZXJfcmVtb3ZlKGk5MTUp
Ow0KDQpJZiB0aGUgZmFpbHVyZSBoYXBwZW5lZCBpbiB0aGUgZmlyc3QgdHdvIHJldHVybnMgb2YN
Cmk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmVfbm9pcnEoKSBubyBjYWxsIHRvDQppbnRlbF9wb3dl
cl9kb21haW5zX2luaXRfaHcoKSB3b3VsZCBiZSBtYWRlLg0KDQpJJ20gYWxzbyB3b3JraW5nIG9u
IHRoaXMsIHdpbGwgc2VuZCB0byBNTCBhZnRlciBhIHJvdW5kIG9uIHRyeWJvdDoNCmh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zNjEwNTMvP3Nlcmllcz03NTgxNiZyZXY9
MQ0KDQo+ICAJaTkxNV9kcml2ZXJfaHdfcmVtb3ZlKGk5MTUpOw0KPiAgCWludGVsX21lbW9yeV9y
ZWdpb25zX2RyaXZlcl9yZWxlYXNlKGk5MTUpOw0KPiAgCWk5MTVfZ2d0dF9kcml2ZXJfcmVsZWFz
ZShpOTE1KTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
