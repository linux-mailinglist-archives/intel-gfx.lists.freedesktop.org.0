Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E771A8E2C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 00:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A107F6E5B0;
	Tue, 14 Apr 2020 22:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB2906E5B0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 22:02:58 +0000 (UTC)
IronPort-SDR: iS0jWawpYTJBxQEOZ03M0zgY5gcDPH4OfhPPb6o4Nn6yj1e/fhXVimk6L+0ePJlWWW3b9cwzcZ
 NmSlcLU8BHWA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 15:02:58 -0700
IronPort-SDR: j/n0ePPgH5QkUovsbqHT/wRcDUdH0zCSmPqwPPFpQK+NRjeKQAGyoep8VXBTYUlES4661DBIt2
 iggP1dpfgaJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="332311371"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga001.jf.intel.com with ESMTP; 14 Apr 2020 15:02:57 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.250]) with mapi id 14.03.0439.000;
 Tue, 14 Apr 2020 15:02:57 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/tgl: Initialize multicast
 register steering for workarounds
Thread-Index: AQHWEqFRxaBWzbsgvkm94qjh4ibDj6h5oX2A
Date: Tue, 14 Apr 2020 22:02:57 +0000
Message-ID: <96bbadab2b314479993643e1e891d6490ec20386.camel@intel.com>
References: <20200414211118.2787489-1-matthew.d.roper@intel.com>
 <20200414211118.2787489-4-matthew.d.roper@intel.com>
In-Reply-To: <20200414211118.2787489-4-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.209.55.81]
Content-ID: <5A2C5BE3AD37954AAE6431664658A01C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/tgl: Initialize multicast
 register steering for workarounds
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

T24gVHVlLCAyMDIwLTA0LTE0IGF0IDE0OjExIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBF
dmVuIHRob3VnaCB0aGUgYnNwZWMgaXMgbWlzc2luZyBnZW4xMiByZWdpc3RlciBkZXRhaWxzIGZv
ciB0aGUgTUNSDQo+IHNlbGVjdG9yIHJlZ2lzdGVyICgweEZEQyksIHRoaXMgaXMgY29uZmlybWVk
IGJ5IGhhcmR3YXJlIGZvbGtzIHRvIGJlDQo+IGENCj4gbWlzdGFrZTsgdGhlIHJlZ2lzdGVyIGRv
ZXMgZXhpc3QgYW5kIHdlIGRvIGluZGVlZCBuZWVkIHRvIHN0ZWVyDQo+IG11bHRpY2FzdCByZWdp
c3RlciByZWFkcyB0byBhbiBhcHByb3ByaWF0ZSBpbnN0YW5jZSB0aGUgc2FtZSBhcyB3ZQ0KPiBk
aWQNCj4gb24gZ2VuMTEuDQo+IA0KPiBOb3RlIHRoYXQgZGVzcGl0ZSB0aGUgbGFjayBvZiBkb2N1
bWVudGF0aW9uIHdlIHdlcmUgc3RpbGwgdXNpbmcgdGhlDQo+IE1DUg0KPiBzZWxlY3RvciB0byBy
ZWFkIElOU1RET05FIGFuZCBzdWNoIGluIHJlYWRfc3Vic2xpY2VfcmVnKCkgdG9vLg0KPiANCg0K
UmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KDQo+IENjOiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+DQo+IFNp
Z25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDIgKysN
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiBpbmRleCA1YjFhMDNkMmZkMjUu
LmFkZGRjNWM5M2I0OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jDQo+IEBAIC05NDMsNiArOTQzLDggQEAgaWNsX2d0X3dvcmthcm91bmRzX2lu
aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xpc3Qg
KndhbCkNCj4gIHN0YXRpYyB2b2lkDQo+ICB0Z2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0DQo+IGk5MTVfd2FfbGlzdCAqd2FsKQ0KPiAg
ew0KPiArCXdhX2luaXRfbWNyKGk5MTUsIHdhbCk7DQo+ICsNCj4gIAkvKiBXYV8xNDA5NDIwNjA0
OnRnbCAqLw0KPiAgCWlmIChJU19UR0xfUkVWSUQoaTkxNSwgVEdMX1JFVklEX0EwLCBUR0xfUkVW
SURfQTApKQ0KPiAgCQl3YV93cml0ZV9vcih3YWwsDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
