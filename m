Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E4C2097FD
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291546E8AB;
	Thu, 25 Jun 2020 00:49:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32D56E8AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:49:54 +0000 (UTC)
IronPort-SDR: 70Hwo4NjJ9a0s1pCUmwvyY9fVD/2PQ8TPfCFzqd2k6lwqxOW7Pc5gY9RqjeZt8+k1JfG9x4e9t
 O0ZmfxItbR8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="162775511"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="162775511"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:49:54 -0700
IronPort-SDR: pIo5nuZL0IPWYhIJ9Tvb7tNp2OpNIj1e1ZrgonYp5JR4w/INpJuFacYUPmIvf74/L0TGO5un0D
 d1ar/+CAR/0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="423558154"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga004.jf.intel.com with ESMTP; 24 Jun 2020 17:49:54 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 17:49:34 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.137]) with mapi id 14.03.0439.000;
 Wed, 24 Jun 2020 17:49:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/12] drm/i915/fbc: Reduce fbc1
 compression interval to 1 second
Thread-Index: AQHWHg6FoT3ESviBNEizNdUCaABswKjpTqSA
Date: Thu, 25 Jun 2020 00:49:34 +0000
Message-ID: <2f978af905a5f1417038396e1d1f62c393ec0ae4.camel@intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
 <20200429101034.8208-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429101034.8208-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.155.111]
Content-ID: <BC3DE14B6383A04796F6384DEEB2A5F6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915/fbc: Reduce fbc1 compression
 interval to 1 second
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
PiANCj4gVGhlIGRlZmF1bHQgZmJjMSBjb21wcmVzc2lvbiBpbnRlcnZhbCB3ZSB1c2UgaXMgNTAw
IGZyYW1lcy4gVGhhdA0KPiB0cmFuc2xhdGVzIHRvIG92ZXIgOCBzZWNvbmRzIHR5cGljYWxseS4g
VGhhdCdzIHJhdGhlciBleGNlc3NpdmUNCj4gc28gbGV0J3MgZHJvcCBpdCB0byAxIHNlY29uZC4N
Cj4gDQo+IFRoZSBoYXJkd2FyZSB3aWxsIG5vdCBhdHRlbXB0IHJlY29tcHJlc3Npb24gdW5sZXNz
IGF0IGxlYXN0IG9uZQ0KPiBsaW5lIGhhcyBiZWVuIG1vZGlmaWVkLCBzbyBhIHNob3J0ZXIgY29t
cHJlc3Npb24gaW50ZXJ2YWwgc2hvdWxkDQo+IG5vdCBjYXVzZSBleHRyYSBiYW5kd2lkdGggdXNl
IGluIHRoZSBwdXJlbHkgaWRsZSBzY2VuYXJpby4gT2YNCj4gY291cnNlIGluIHRoZSBtb3N0bHkg
aWRsZSBjYXNlIHdlIGFyZSBwb3NzaWJseSBnb2luZyB0byByZWNvbXByZXNzDQo+IGEgYml0IG1v
cmUuDQo+IA0KPiBTaG91bGQgcmVhbGx5IHRyeSB0byBmaW5kIHNvbWUga2luZCBvZiBzd2VldCBz
cG90IHRvIG1pbmltaXplDQo+IHRoZSBlbmVyZ3kgdXNhZ2UuLi4NCg0KUmV2aWV3ZWQtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA0
ICsrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXgg
YjFlYjZhMmVjYzQzLi42ZWU0NWQ2MzRjZjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBAQCAtNzI3LDggKzcyNyw4IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX2ZiY191cGRhdGVfc3RhdGVfY2FjaGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ICAJ
Y2FjaGUtPmZiLm1vZGlmaWVyID0gZmItPm1vZGlmaWVyOw0KPiAgCWNhY2hlLT5mYi5zdHJpZGUg
PSBwbGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMF0uc3RyaWRlOw0KPiAgDQo+IC0JLyogVGhpcyB2
YWx1ZSB3YXMgcHVsbGVkIG91dCBvZiBzb21lb25lJ3MgaGF0ICovDQo+IC0JY2FjaGUtPmludGVy
dmFsID0gNTAwOw0KPiArCS8qIEZCQzEgY29tcHJlc3Npb24gaW50ZXJ2YWw6IGFyYml0cmFyeSBj
aG9pY2Ugb2YgMSBzZWNvbmQgKi8NCj4gKwljYWNoZS0+aW50ZXJ2YWwgPSBkcm1fbW9kZV92cmVm
cmVzaCgmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSk7DQo+ICANCj4gIAljYWNoZS0+ZmVu
Y2VfeV9vZmZzZXQgPSBpbnRlbF9wbGFuZV9mZW5jZV95X29mZnNldChwbGFuZV9zdGF0ZSk7DQo+
ICANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
