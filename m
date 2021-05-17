Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF87386B34
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 22:20:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB866E3D2;
	Mon, 17 May 2021 20:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 462C36E3D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 20:20:07 +0000 (UTC)
IronPort-SDR: eqTgIo+56Euyv6IpaC6Pc3Xf5UblT8t8roGYR7zmKLN2ekTSazPzZL86yTCps0jms3N+EeJ8bP
 Y0lqzyhAehVg==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="264471020"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="264471020"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 13:20:05 -0700
IronPort-SDR: Iit6jFFKADU7TIYoekjJ1HsKD8roiN5HKQtMk0CeebwbX6ruFZCy0PTeH6y6NjmoW4Wkx9ErzT
 ZjzODK8f3eqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="472984912"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 17 May 2021 13:20:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 13:20:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 13:20:04 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 17 May 2021 13:20:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH CI] drm/i915: Initialize err in remap_io_sg()
Thread-Index: AQHXS1nAKnVgVUM2NUucRwTbeS3cI6rok5aA
Date: Mon, 17 May 2021 20:20:04 +0000
Message-ID: <d2977a3b9dfe650aa1600b507c3902c884afc2d9.camel@intel.com>
References: <20210517202117.179303-1-jose.souza@intel.com>
In-Reply-To: <20210517202117.179303-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <7B3FE92EC4F99B4A9CE8255CEACAEB1B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH CI] drm/i915: Initialize err in remap_io_sg()
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

Um9kcmlnbywgSmFuaTogU28gImk5MTU6IGZpeCByZW1hcF9pb19zZyB0byB2ZXJpZnkgdGhlIHBn
cHJvdCIgd2FzIG5vdCBtZXJnZWQgaW50byBhbnkgZHJtLWludGVsIGJyYW5jaCwgaG93IHNob3Vs
ZCBJIG1lcmdlIHRoaXMgYWZ0ZXIgZ2V0IENJIGdyZWVuDQpsaWdodD8NCg0KT24gTW9uLCAyMDIx
LTA1LTE3IGF0IDEzOjIxIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIHdyb3RlOg0KPiBJ
ZiB0aGUgZG8gd2hpbGUgbG9vcCBicmVha3MgaW4gJ2lmICghc2dfZG1hX2xlbihzZ2wpKScgaW4g
dGhlIGZpcnN0DQo+IGl0ZXJhdGlvbiwgZXJyIGlzIHVuaW5pdGlhbGl6ZWQgY2F1c2luZyBhIHdy
b25nIGNhbGwgdG8gemFwX3ZtYV9wdGVzKCkuDQo+IA0KPiBCdXQgdGhhdCBpcyBpbXBvc3NpYmxl
IHRvIGhhcHBlbiBhcyBhIHNjYXR0ZXJsaXN0IG11c3QgaGF2ZSBhdCBsZWFzdA0KPiBvbmUgdmFs
aWQgc2VnbWVudC4NCj4gQW55d2F5cyB0byBhdm9pZCBtb3JlIHJlcG9ydHMgZnJvbSBzdGF0aWMg
Y2hlY2tlcnMgaW5pdGlhbGl6aW5nIHJldA0KPiBoZXJlLg0KPiANCj4gRml4ZXM6IGIxMmQ2OTFl
YTVlMCAoImk5MTU6IGZpeCByZW1hcF9pb19zZyB0byB2ZXJpZnkgdGhlIHBncHJvdCIpDQo+IFJl
dmlld2VkLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4NCj4gQ2M6IENocmlzdG9w
aCBIZWxsd2lnIDxoY2hAbHN0LmRlPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBBdXNtdXMgPGph
bWVzLmF1c211c0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfbW0uYyB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfbW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfbW0uYw0KPiBpbmRleCA0YzhjZDA4
YzY3MmQuLjI1NTc2ZmE3M2ZmMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9tbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfbW0uYw0KPiBAQCAt
NDcsNyArNDcsNyBAQCBpbnQgcmVtYXBfaW9fc2coc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEs
DQo+ICAJCXN0cnVjdCBzY2F0dGVybGlzdCAqc2dsLCByZXNvdXJjZV9zaXplX3QgaW9iYXNlKQ0K
PiAgew0KPiAgCXVuc2lnbmVkIGxvbmcgcGZuLCBsZW4sIHJlbWFwcGVkID0gMDsNCj4gLQlpbnQg
ZXJyOw0KPiArCWludCBlcnIgPSAwOw0KPiAgDQo+ICAJLyogV2UgcmVseSBvbiBwcmV2YWxpZGF0
aW9uIG9mIHRoZSBpby1tYXBwaW5nIHRvIHNraXAgdHJhY2tfcGZuKCkuICovDQo+ICAJR0VNX0JV
R19PTigodm1hLT52bV9mbGFncyAmIEVYUEVDVEVEX0ZMQUdTKSAhPSBFWFBFQ1RFRF9GTEFHUyk7
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
