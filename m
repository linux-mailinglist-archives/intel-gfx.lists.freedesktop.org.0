Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0651624AA00
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 01:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05B526E039;
	Wed, 19 Aug 2020 23:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB246E039
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 23:43:35 +0000 (UTC)
IronPort-SDR: J5s+SPP110Hqqtq99PiaCVrkSN3U7Zt+RJC+KsD1KpYLqub7lS3B/TajubzCdojMxMc8bAvGdb
 wVtehr5emOJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="240039079"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="240039079"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 16:43:34 -0700
IronPort-SDR: V+0PGUI9wXLpD+oAsBQAMED2wRbXaA1+RQrVm3itJj09qvwhbkAhFXadKHyfygDxmM6GO9wodN
 UrJUcjDOr52g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="297382167"
Received: from unknown (HELO fmsmsx606.amr.corp.intel.com) ([10.18.84.216])
 by orsmga006.jf.intel.com with ESMTP; 19 Aug 2020 16:43:34 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Aug 2020 16:43:34 -0700
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 19 Aug 2020 16:43:34 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 fmsmsx121.amr.corp.intel.com ([169.254.6.67]) with mapi id 14.03.0439.000;
 Wed, 19 Aug 2020 16:43:34 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Initialise outparam for error
 return from wait_for_register
Thread-Index: AQHWdh99rP42U8hstkGjKm2Q8x93/KlAjuiA
Date: Wed, 19 Aug 2020 23:43:33 +0000
Message-ID: <b686caf856930be6e0c8f0e3fb62c54d4badc9be.camel@intel.com>
References: <20200819115407.17519-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200819115407.17519-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <FC34010056A4264F9991D7F03C051099@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Initialise outparam for error
 return from wait_for_register
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

T24gV2VkLCAyMDIwLTA4LTE5IGF0IDEyOjU0ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IEp1c3QgaW4gY2FzZSB0aGUgY2FsbGVyIHBhc3NlcyBpbiAwIGZvciBib3RoIHNsb3cmZmFzdCB0
aW1lb3V0cywgbWFrZQ0KPiBzdXJlIHdlIGluaXRpYWxpc2UgdGhlIHN0YWNrIHZhbHVlIHJldHVy
bmVkLiBBZGQgYW4gYXNzZXJ0IHNvIHRoYXQgd2UNCj4gZG9uJ3QgbWFrZSB0aGUgbWlzdGFrZSBv
ZiBwYXNzaW5nIDAgdGltZW91dHMgZm9yIHRoZSB3YWl0Lg0KPiANCj4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfdW5jb3JlLmM6MjAxMSBfX2ludGVsX3dhaXRfZm9yX3JlZ2lzdGVyX2Z3KCkg
ZXJyb3I6IHVuaW5pdGlhbGl6ZWQgc3ltYm9sICdyZWdfdmFsdWUnLg0KPiANCg0KUmV2aWV3ZWQt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IFJl
ZmVyZW5jZXM6IDNmNjQ5YWI3MjhjZCAoInRyZWV3aWRlOiBSZW1vdmUgdW5pbml0aWFsaXplZF92
YXIoKSB1c2FnZSIpDQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8DQo+IGNocmlzQGNo
cmlzLXdpbHNvbi5jby51aw0KPiA+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfdW5jb3JlLmMgfCAzICsrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3VuY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMNCj4gaW5k
ZXggOGQ1YTkzM2U2YWY2Li4yNjNmZmNiODMyYjcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3VuY29yZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3VuY29yZS5jDQo+IEBAIC0xOTkzLDEzICsxOTkzLDE0IEBAIGludCBfX2ludGVsX3dhaXRf
Zm9yX3JlZ2lzdGVyX2Z3KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwNCj4gIAkJCQkgdW5z
aWduZWQgaW50IHNsb3dfdGltZW91dF9tcywNCj4gIAkJCQkgdTMyICpvdXRfdmFsdWUpDQo+ICB7
DQo+IC0JdTMyIHJlZ192YWx1ZTsNCj4gKwl1MzIgcmVnX3ZhbHVlID0gMDsNCj4gICNkZWZpbmUg
ZG9uZSAoKChyZWdfdmFsdWUgPSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIHJlZykpICYg
bWFzaykgPT0gdmFsdWUpDQo+ICAJaW50IHJldDsNCj4gIA0KPiAgCS8qIENhdGNoIGFueSBvdmVy
dXNlIG9mIHRoaXMgZnVuY3Rpb24gKi8NCj4gIAltaWdodF9zbGVlcF9pZihzbG93X3RpbWVvdXRf
bXMpOw0KPiAgCUdFTV9CVUdfT04oZmFzdF90aW1lb3V0X3VzID4gMjAwMDApOw0KPiArCUdFTV9C
VUdfT04oIWZhc3RfdGltZW91dF91cyAmJiAhc2xvd190aW1lb3V0X21zKTsNCj4gIA0KPiAgCXJl
dCA9IC1FVElNRURPVVQ7DQo+ICAJaWYgKGZhc3RfdGltZW91dF91cyAmJiBmYXN0X3RpbWVvdXRf
dXMgPD0gMjAwMDApDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
