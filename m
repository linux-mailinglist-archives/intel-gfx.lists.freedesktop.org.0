Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7F7F1AEF
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 17:15:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A20F6EDC6;
	Wed,  6 Nov 2019 16:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A2B36EDC6
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 16:15:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 08:15:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="377097381"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga005.jf.intel.com with ESMTP; 06 Nov 2019 08:15:45 -0800
Received: from fmsmsx103.amr.corp.intel.com ([169.254.2.173]) by
 fmsmsx107.amr.corp.intel.com ([169.254.6.52]) with mapi id 14.03.0439.000;
 Wed, 6 Nov 2019 08:15:44 -0800
From: "Tang, CQ" <cq.tang@intel.com>
To: "C, Ramalingam" <ramalingam.c@intel.com>, intel-gfx
 <intel-gfx@lists.freedesktop.org>, Chris Wilson <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH v4 1/2] drm/i915: lookup for mem_region of
 a mem_type
Thread-Index: AQHVlLxkXGzOl8aCMkCrd3ze0wC916d+UFjQ
Date: Wed, 6 Nov 2019 16:15:44 +0000
Message-ID: <1D440B9B88E22A4ABEF89F9F1F81BC29E947BA8A@FMSMSX103.amr.corp.intel.com>
References: <20191106160819.25233-1-ramalingam.c@intel.com>
In-Reply-To: <20191106160819.25233-1-ramalingam.c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTIwZTIwMTAtYjJiZS00NmMxLThhMmMtYTdjNDNiZTAxNjc4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWWU0eVZvZmk3UmVMVW9UM0F2NXp0TFpUa3lvOEVzcDdZVlo1VDFKT3BQeDhtRDYwckM4b0VCWlwvRzN3UTdcL0NcLyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915: lookup for mem_region of a
 mem_type
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBSYW1h
bGluZ2FtIEMNCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciA2LCAyMDE5IDg6MDggQU0NCj4g
VG86IGludGVsLWdmeCA8aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZz47IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtDQo+IHdpbHNvbi5jby51az4NCj4gQ2M6IEF1bGQsIE1hdHRoZXcg
PG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCB2
NCAxLzJdIGRybS9pOTE1OiBsb29rdXAgZm9yIG1lbV9yZWdpb24gb2YgYQ0KPiBtZW1fdHlwZQ0K
PiANCj4gTG9va3VwIGZ1bmN0aW9uIHRvIHJldHJpZXZlIHRoZSBwb2ludGVyIHRvIGEgbWVtb3J5
IHJlZ2lvbiBvZiBhIG1lbV90eXBlLg0KDQpXZSBjb3VsZCBoYXZlIG11bHRpLXJlZ2lvbnMgd2l0
aCB0aGUgc2FtZSBtZW1vcnkgdHlwZS4gWW91ciBjb2RlIGp1c3QgcmV0dXJucyB0aGUgZmlyc3Qg
b25lLiBJcyB0aGlzIGRlc2lyZWQ/DQoNCi0tQ1ENCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogUmFt
YWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPg0KPiBjYzogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX21lbW9yeV9yZWdpb24uYyB8IDEyICsrKysrKysrKysrKw0KPiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmggfCAgMyArKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MTUgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX21lbW9yeV9yZWdpb24uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21l
bW9yeV9yZWdpb24uYw0KPiBpbmRleCBiYWFlYWVjYzY0YWYuLmFlODk5ZGY3YTFjMiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYw0KPiBAQCAtMTYs
NiArMTYsMTggQEAgY29uc3QgdTMyIGludGVsX3JlZ2lvbl9tYXBbXSA9IHsNCj4gIAlbSU5URUxf
UkVHSU9OX1NUT0xFTl0gPSBSRUdJT05fTUFQKElOVEVMX01FTU9SWV9TVE9MRU4sDQo+IDApLCAg
fTsNCj4gDQo+ICtzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqDQo+ICtpbnRlbF9tZW1vcnlf
cmVnaW9uX2xvb2t1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gKwkJCSAgIGVu
dW0gaW50ZWxfbWVtb3J5X3R5cGUgbWVtX3R5cGUpDQo+ICt7DQo+ICsJZW51bSBpbnRlbF9yZWdp
b25faWQgaWQ7DQo+ICsNCj4gKwlmb3IgKGlkID0gSU5URUxfUkVHSU9OX1NNRU07IGlkIDwgSU5U
RUxfUkVHSU9OX1VOS05PV047DQo+IGlkKyspDQo+ICsJCWlmIChpOTE1LT5tbS5yZWdpb25zW2lk
XS0+dHlwZSA9PSBtZW1fdHlwZSkNCj4gKwkJCXJldHVybiBpOTE1LT5tbS5yZWdpb25zW2lkXTsN
Cj4gKwlyZXR1cm4gTlVMTDsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHU2NA0KPiAgaW50ZWxfbWVt
b3J5X3JlZ2lvbl9mcmVlX3BhZ2VzKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sDQo+
ICAJCQkgICAgICAgc3RydWN0IGxpc3RfaGVhZCAqYmxvY2tzKQ0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oDQo+IGluZGV4IDIzODcyMjAwOTY3Ny4uZDIx
MDkzNmM0ZDcyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1v
cnlfcmVnaW9uLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3Jl
Z2lvbi5oDQo+IEBAIC0xMjUsNSArMTI1LDggQEAgdm9pZCBpbnRlbF9tZW1vcnlfcmVnaW9uX3B1
dChzdHJ1Y3QNCj4gaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtKTsNCj4gDQo+ICBpbnQgaW50ZWxf
bWVtb3J5X3JlZ2lvbnNfaHdfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOyAg
dm9pZA0KPiBpbnRlbF9tZW1vcnlfcmVnaW9uc19kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSk7DQo+ICtzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqDQo+ICtp
bnRlbF9tZW1vcnlfcmVnaW9uX2xvb2t1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwN
Cj4gKwkJCSAgIGVudW0gaW50ZWxfbWVtb3J5X3R5cGUgbWVtX3R5cGUpOw0KPiANCj4gICNlbmRp
Zg0KPiAtLQ0KPiAyLjIwLjENCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
