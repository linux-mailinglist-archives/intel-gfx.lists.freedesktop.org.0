Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1515D553897
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 19:11:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC8F110EDC6;
	Tue, 21 Jun 2022 17:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42EB10ED5C
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 17:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655831479; x=1687367479;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=F2PPSiKINsaPBiEHWqo5Uxnm+e8oHNtPk4lmsEr8yCc=;
 b=hICXr/aZnJmOnFmqgeyd4EdM5eYLLwnuLajgUxh+48Qelb+rukjiNzbv
 Hhh9/du3rwQKSGniTb2cy0b2lhxkmIbWDdhjrrXEABiwZbsv4NfzDSoRA
 plJX4j6bbFHx3UTgusGItTyn+K36TAuTdZ28wZsawOY+2L558UTUd4GHD
 yW8ZWMATU2Y6p+QGnH7x+KbAixVO0EVTJyQZ4d0fERNcYZx0JWgaao5ED
 Wln9GqJCWshzMcDCxVdbb1eDpAny2nCRkmV2+UNgRmB34+WxYDOCy/2QX
 /4MSihyq1Eq1CJElwypoJRoNqumwSybi7HndRLcVtcCZ+RAwB+HlgZWbw w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="260000728"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="260000728"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 10:03:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="729924452"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jun 2022 10:03:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 10:03:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 10:03:04 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Tue, 21 Jun 2022 10:03:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Call i915_gem_suspend() only after
 display is turned off
Thread-Index: AQHYgn1f8Ta7WcJKh0OFurxyQdI4Yq1UcVEAgAYglIA=
Date: Tue, 21 Jun 2022 17:03:04 +0000
Message-ID: <2ace5508071ad1e7fc9048cb988ceea313bcb151.camel@intel.com>
References: <20220617190629.355356-1-jose.souza@intel.com>
 <YqzV9N4qGegV7Y3h@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <YqzV9N4qGegV7Y3h@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <2931ACCBC36A7747A352494B2194E3EC@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Call i915_gem_suspend() only
 after display is turned off
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA2LTE3IGF0IDEyOjI4IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBGcmksIEp1biAxNywgMjAyMiBhdCAxMjowNjoyOVBNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIHdyb3RlOg0KPiA+IEdlbSBidWZmZXJzIGNvdWxkIHN0aWxsIGJlIGluIHVzZSBieSBk
aXNwbGF5IGFmdGVyIGk5MTVfZ2VtX3N1c3BlbmQoKQ0KPiA+IGlzIGV4ZWN1dGVkIHNvIHRoZXJl
IGlzIGNoYW5jZXMgdGhhdCBpOTE1X2dlbV9mbHVzaF9mcmVlX29iamVjdHMoKQ0KPiA+IHdpbGwg
YmUgYmVpbmcgZXhlY3V0ZWQgYXQgdGhlIHNhbWUgdGltZSB0aGF0DQo+ID4gaW50ZWxfcnVudGlt
ZV9wbV9kcml2ZXJfcmVsZWFzZSgpIGlzIGV4ZWN1dGVkIHByaW50aW5nIHdhcm5pbmdzIGFib3V0
DQo+ID4gd2FrZXJlZnMgd2lsbCBiZWluZyBoZWxkLg0KPiANCj4gQnkgdGhlIHNhbWUgbG9naWMg
ZG8gd2UgbmVlZCB0byBhZGp1c3QgaTkxNV9kcml2ZXJfcmVtb3ZlKCkgdG9vPw0KDQpOb3BlLCBh
bGwgZGlzcGxheSBidWZmZXJzIGFyZSBmcmVlZCBpbiBpOTE1X2RyaXZlcl91bnJlZ2lzdGVyKCkg
Y2FsbCBjaGFpbjoNCg0KDQppOTE1X2RyaXZlcl9yZW1vdmUoKQ0KCWk5MTVfZHJpdmVyX3VucmVn
aXN0ZXIoKQ0KCQlpbnRlbF9kaXNwbGF5X2RyaXZlcl91bnJlZ2lzdGVyKCkNCgkJCWRybV9hdG9t
aWNfaGVscGVyX3NodXRkb3duKCkNCglpOTE1X2dlbV9zdXNwZW5kKCkNCgkJaTkxNV9nZW1fZHJh
aW5fZnJlZWRfb2JqZWN0cygpDQoNCg0KT25seSBGQkMgY29tcHJlc3NlZCBmcmFtZWJ1ZmZlciBp
cyBmcmVlZCBhZnRlciB0aGF0IGJ1dCB0aGF0IHdpbGwgbm90IGNhdXNlIGFueSB3YXJuaW5ncyBh
cyBpdCBpcyBhbGxvY2F0ZWQgZnJvbSBzdG9sZW4gbWVtb3J5Lg0KDQo+IA0KPiANCj4gTWF0dA0K
PiANCj4gPiANCj4gPiBTbyBoZXJlIG9ubHkgY2FsbGluZyBpOTE1X2dlbV9zdXNwZW5kKCkgYW5k
IGJ5IGNvbnNlcXVlbmNlDQo+ID4gaTkxNV9nZW1fZHJhaW5fZnJlZWRfb2JqZWN0cygpIG9ubHkg
YWZ0ZXIgZGlzcGxheSBpcyBkb3duIG1ha2luZw0KPiA+IHN1cmUgYWxsIGJ1ZmZlcnMgYXJlIGZy
ZWVkLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RyaXZlci5jIHwgNCArKy0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJpdmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5j
DQo+ID4gaW5kZXggZDI2ZGNjYTdlNjU0YS4uNDIyNzY3NWRkMWNmZSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiA+IEBAIC0xMDY3LDggKzEwNjcsNiBAQCB2b2lk
IGk5MTVfZHJpdmVyX3NodXRkb3duKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+
ICAJaW50ZWxfcnVudGltZV9wbV9kaXNhYmxlKCZpOTE1LT5ydW50aW1lX3BtKTsNCj4gPiAgCWlu
dGVsX3Bvd2VyX2RvbWFpbnNfZGlzYWJsZShpOTE1KTsNCj4gPiAgDQo+ID4gLQlpOTE1X2dlbV9z
dXNwZW5kKGk5MTUpOw0KPiA+IC0NCj4gPiAgCWlmIChIQVNfRElTUExBWShpOTE1KSkgew0KPiA+
ICAJCWRybV9rbXNfaGVscGVyX3BvbGxfZGlzYWJsZSgmaTkxNS0+ZHJtKTsNCj4gPiAgDQo+ID4g
QEAgLTEwODUsNiArMTA4Myw4IEBAIHZvaWQgaTkxNV9kcml2ZXJfc2h1dGRvd24oc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gIA0KPiA+ICAJaW50ZWxfZG1jX3Vjb2RlX3N1c3Bl
bmQoaTkxNSk7DQo+ID4gIA0KPiA+ICsJaTkxNV9nZW1fc3VzcGVuZChpOTE1KTsNCj4gPiArDQo+
ID4gIAkvKg0KPiA+ICAJICogVGhlIG9ubHkgcmVxdWlyZW1lbnQgaXMgdG8gcmVib290IHdpdGgg
ZGlzcGxheSBEQyBzdGF0ZXMgZGlzYWJsZWQsDQo+ID4gIAkgKiBmb3Igbm93IGxlYXZpbmcgYWxs
IGRpc3BsYXkgcG93ZXIgd2VsbHMgaW4gdGhlIElOSVQgcG93ZXIgZG9tYWluDQo+ID4gLS0gDQo+
ID4gMi4zNi4xDQo+ID4gDQo+IA0KDQo=
