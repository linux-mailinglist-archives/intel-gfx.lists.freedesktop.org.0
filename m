Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2DF19DF66
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 22:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3358589A7A;
	Fri,  3 Apr 2020 20:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A25589996
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 20:31:44 +0000 (UTC)
IronPort-SDR: igJijU4Tq7x5z+Qq16uwCBB6ExPnM8hoxEGZDIiJYMVjO2stqbTzTiFPMLsO8tgtosje+RVwbZ
 jgma5S2S/SCQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 13:31:43 -0700
IronPort-SDR: TzG2BTBipEl5stCc++W5EGvGCRKv05tZALjRBmPDDsyIgjppcMr9g7HI6ZvmqUl5fZhtQQCoUN
 5IcpojAlK8PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,341,1580803200"; d="scan'208";a="274073070"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga004.fm.intel.com with ESMTP; 03 Apr 2020 13:31:43 -0700
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 3 Apr 2020 13:31:43 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.38]) by
 fmsmsx117.amr.corp.intel.com ([169.254.3.89]) with mapi id 14.03.0439.000;
 Fri, 3 Apr 2020 13:31:43 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/selftests: Wait until we start
 timeslicing after a submit
Thread-Index: AQHWCepwD8hZ9Qvt40uxg/8huyHDt6hn2JMw
Date: Fri, 3 Apr 2020 20:31:42 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663FFFCC3E1@fmsmsx107.amr.corp.intel.com>
References: <20200403190209.21818-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403190209.21818-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Wait until we start
 timeslicing after a submit
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBDaHJpcw0KPldpbHNv
bg0KPlNlbnQ6IEZyaWRheSwgQXByaWwgMywgMjAyMCAzOjAyIFBNDQo+VG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj5DYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+DQo+U3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9zZWxmdGVz
dHM6IFdhaXQgdW50aWwgd2Ugc3RhcnQgdGltZXNsaWNpbmcNCj5hZnRlciBhIHN1Ym1pdA0KPg0K
PklmIHdlIHN1Ym1pdCwgd2UgZG8gbm90IHN0YXJ0IHRpbWVzbGljbmlnIHVudGlsIHdlIHByb2Nl
c3MgdGhlIENTIGV2ZW50DQoNCnMvdGltZXNsaWNuaWcvdGltZXNsaWNpbmcvDQoNCj50aGF0IG1h
cmtzIHRoZSBzdGFydCBvZiB0aGUgY29udGV4dCBydW5uaW5nIG9uIEhXLiBTbyBpbiB0aGUgc2Vs
ZnRlc3QsDQo+YmUgc3VyZSB0byB3YWl0IHVudGlsIHdlIGhhdmUgcHJvY2Vzc2VkIHRoZSBwZW5k
aW5nIGV2ZW50cyBiZWZvcmUNCj5hc3NlcnRpbmcgdGhhdCB0aW1lc2xpY2luZyBoYXMgYmVndW4u
DQo+DQo+U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+DQo+LS0tDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIHwgNiAr
KysrKy0NCj4gMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
Pg0KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYw0K
PmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMNCj5pbmRleCA5ODVkNDA0
MWQ5MjkuLjllMDI5MTc2OTViMSAxMDA2NDQNCj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9scmMuYw0KPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X2xyYy5jDQo+QEAgLTEyNDQsNyArMTI0NCwxMSBAQCBzdGF0aWMgaW50IGxpdmVfdGltZXNsaWNl
X3F1ZXVlKHZvaWQgKmFyZykNCj4gCQlpZiAoZXJyKQ0KPiAJCQlnb3RvIGVycl9ycTsNCj4NCj4t
CQlpbnRlbF9lbmdpbmVfZmx1c2hfc3VibWlzc2lvbihlbmdpbmUpOw0KPisJCS8qIFdhaXQgdW50
aWwgd2UgYWNrIHRoZSByZWxlYXNlX3F1ZXVlIGFuZCBzdGFydCB0aW1lc2xpY2luZw0KPiovDQo+
KwkJZG8gew0KPisJCQlpbnRlbF9lbmdpbmVfZmx1c2hfc3VibWlzc2lvbihlbmdpbmUpOw0KPisJ
CX0gd2hpbGUgKFJFQURfT05DRShlbmdpbmUtPmV4ZWNsaXN0cy5wZW5kaW5nWzBdKSk7DQoNCklz
IHRoaXMgZ3VhcmFudGVlZCB0byBjbGVhcj8gIE9yIHNob3VsZCB0aGVyZSBiZSBhIGNvdW50IHRv
IHByb3RlY3QgYWdhaW5zdA0KdGhlIGVuZGxlc3MgbG9vcD8NCg0KT3IgYW0gSSB0b28gcGFyYW5v
aWQ/IPCfmIoNCg0KTQ0KDQo+IAkJaWYgKCFSRUFEX09OQ0UoZW5naW5lLT5leGVjbGlzdHMudGlt
ZXIuZXhwaXJlcykgJiYNCj4gCQkgICAgIWk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocnEpKSB7DQo+
IAkJCXN0cnVjdCBkcm1fcHJpbnRlciBwID0NCj4tLQ0KPjIuMjAuMQ0KPg0KPl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+SW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdA0KPkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj5odHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
