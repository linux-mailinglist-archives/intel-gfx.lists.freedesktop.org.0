Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 523CC1983FE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 21:13:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4504F6E19B;
	Mon, 30 Mar 2020 19:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80E836E19B
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 19:13:04 +0000 (UTC)
IronPort-SDR: EAFRVHq1vfy3reTVwL1N/24f1J2IupkZxDW3YQT+m/p3Lq1BAm33YRxOj/KcHgGrGelBVcwMIq
 fKVDVyxNrm5Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 12:13:04 -0700
IronPort-SDR: /pcLZ1DQpvMNC7ggfslIJ76sMSmpb3AUWIY9Oss4NHI4SGMmFma/D8crj6OouD8LxxMye2+4CS
 82y/QOpnK9SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,325,1580803200"; d="scan'208";a="294701008"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Mar 2020 12:13:03 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 30 Mar 2020 12:13:03 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.85]) with mapi id 14.03.0439.000;
 Mon, 30 Mar 2020 12:13:02 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915: Extend hotplug detect retry
 on TypeC connectors to 5 seconds
Thread-Index: AQHWBnljAI0Hyem4Dkyl5vI0khvDSahh90UA
Date: Mon, 30 Mar 2020 19:13:02 +0000
Message-ID: <83e56b113c075360f474ad1aed6acd6e6bac0925.camel@intel.com>
References: <20200330095425.29113-1-imre.deak@intel.com>
 <20200330095425.29113-2-imre.deak@intel.com>
In-Reply-To: <20200330095425.29113-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <F7AE0E1901B2EF4E8D16761FEDA8690D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Extend hotplug detect retry
 on TypeC connectors to 5 seconds
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

T24gTW9uLCAyMDIwLTAzLTMwIGF0IDEyOjU0ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR5cGVDIHBvcnRzIGlmIGEgc2luayBkZWFzc2VydHMvcmVhc3NlcnRzIGl0cyBIUEQgc2lnbmFs
LA0KPiBnZW5lcmF0aW5nDQo+IGEgaG90cGx1ZyBpbnRlcnJ1cHQgd2l0aG91dCB0aGUgc2luayBn
ZXR0aW5nIHVucGx1Z2dlZC9yZXBsdWdnZWQgZnJvbQ0KPiB0aGUgY29ubmVjdG9yLCB0aGVyZSBj
YW4gYmUgYW4gdXAgdG8gMyBzZWNvbmRzIGRlbGF5IHVudGlsIHRoZSBBVVgNCj4gY2hhbm5lbCBn
ZXRzIGZ1bmN0aW9uYWwuIFRvIGF2b2lkIGRldGVjdGlvbiBmYWlsdXJlcyB0aGlzIGRlbGF5DQo+
IGNhdXNlcw0KPiByZXRyeSB0aGUgZGV0ZWN0aW9uIGZvciA1IHNlY29uZHMuDQoNCjUgc2Vjb25k
cz8gd291bGQgaXQgYmUgNSB0cmllcz8NCg0KT3RoZXIgdGhhbiB0aGF0IGJvdGggcGF0Y2hlcyBs
b29rcyBnb29kLg0KDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gSSBub3RpY2VkIHRoaXMgb24gSUNML1RHTCBSVlBz
IGFuZCBhIERFTEwgWFBTIDEzIDczOTAgSUNMIGxhcHRvcC4NCj4gDQo+IFJlZmVyZW5jZXM6IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzEwNjcNCj4gU2ln
bmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAxMiArKysrKysrKysrKy0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggNGY1
MDhiZjcwZjNiLi4yZDk0N2ZmODM0ODggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtNDM3MSw3ICs0MzcxLDEwIEBAIHN0YXRpYyBlbnVtIGlu
dGVsX2hvdHBsdWdfc3RhdGUNCj4gIGludGVsX2RkaV9ob3RwbHVnKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLA0KPiAgCQkgIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikN
Cj4gIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZW5jb2Rl
ci0+YmFzZS5kZXYpOw0KPiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0g
ZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpOw0KPiArCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRf
dG9fcGh5KGk5MTUsIGVuY29kZXItPnBvcnQpOw0KPiArCWJvb2wgaXNfdGMgPSBpbnRlbF9waHlf
aXNfdGMoaTkxNSwgcGh5KTsNCj4gIAlzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggY3R4
Ow0KPiAgCWVudW0gaW50ZWxfaG90cGx1Z19zdGF0ZSBzdGF0ZTsNCj4gIAlpbnQgcmV0Ow0KPiBA
QCAtNDQxNCw4ICs0NDE3LDE1IEBAIGludGVsX2RkaV9ob3RwbHVnKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyDQo+ICplbmNvZGVyLA0KPiAgCSAqIHZhbGlkIEVESUQuIFRvIHNvbHZlIHRoaXMgc2NoZWR1
bGUgYW5vdGhlciBkZXRlY3Rpb24gY3ljbGUNCj4gaWYgdGhpcw0KPiAgCSAqIHRpbWUgYXJvdW5k
IHdlIGRpZG4ndCBkZXRlY3QgYW55IGNoYW5nZSBpbiB0aGUgc2luaydzDQo+IGNvbm5lY3Rpb24N
Cj4gIAkgKiBzdGF0dXMuDQo+ICsJICoNCj4gKwkgKiBUeXBlLWMgY29ubmVjdG9ycyB3aGljaCBn
ZXQgdGhlaXIgSFBEIHNpZ25hbCBkZWFzc2VydGVkIHRoZW4NCj4gKwkgKiByZWFzc2VydGVkLCB3
aXRob3V0IHVucGx1Z2dpbmcvcmVwbHVnZ2luZyB0aGUgc2luayBmcm9tIHRoZQ0KPiArCSAqIGNv
bm5lY3RvciwgaW50cm9kdWNlIGEgZGVsYXkgdW50aWwgdGhlIEFVWCBjaGFubmVsDQo+IGNvbW11
bmljYXRpb24NCj4gKwkgKiBiZWNvbWVzIGZ1bmN0aW9uYWwuIFJldHJ5IHRoZSBkZXRlY3Rpb24g
Zm9yIDUgc2Vjb25kcyBvbg0KPiB0eXBlLWMNCj4gKwkgKiBjb25uZWN0b3JzIHRvIGFjY291bnQg
Zm9yIHRoaXMgZGVsYXkuDQo+ICAJICovDQo+IC0JaWYgKHN0YXRlID09IElOVEVMX0hPVFBMVUdf
VU5DSEFOR0VEICYmICFjb25uZWN0b3ItDQo+ID5ob3RwbHVnX3JldHJpZXMgJiYNCj4gKwlpZiAo
c3RhdGUgPT0gSU5URUxfSE9UUExVR19VTkNIQU5HRUQgJiYNCj4gKwkgICAgY29ubmVjdG9yLT5o
b3RwbHVnX3JldHJpZXMgPCAoaXNfdGMgPyA1IDogMSkgJiYNCj4gIAkgICAgIWRpZ19wb3J0LT5k
cC5pc19tc3QpDQo+ICAJCXN0YXRlID0gSU5URUxfSE9UUExVR19SRVRSWTsNCj4gIA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
