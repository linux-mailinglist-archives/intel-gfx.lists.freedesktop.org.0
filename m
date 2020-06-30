Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D0B20FD53
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 22:01:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51C889C37;
	Tue, 30 Jun 2020 20:01:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47926E19C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 20:01:53 +0000 (UTC)
IronPort-SDR: 7PV2UBvrb6jITshoD5qO03c0HcSfmrQngrEq0fLKIiAnaBqSH9x49+7Bgx5NgWVuLid9J1vKnz
 mh5v8+1T1bIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="143852886"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="143852886"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 13:01:53 -0700
IronPort-SDR: PxCweNC3Es4aw1oVZX6fGxsMYTRHLyAVyhO6OaAEwl2K92jz1x2cgmSTFtbv/Wjlx/uT77O1Ap
 nvR7onJMwCRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="266562870"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jun 2020 13:01:53 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 30 Jun 2020 13:01:52 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 30 Jun 2020 13:01:52 -0700
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.193]) by
 FMSMSX114.amr.corp.intel.com ([10.18.116.8]) with mapi id 14.03.0439.000;
 Tue, 30 Jun 2020 13:01:52 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/gem: Move obj->lut_list under
 its own lock
Thread-Index: AQHWTgmZ7Cfnq3YFyUS6kC0fhs8cFKjxhmXQgAB8KAD//5HHUA==
Date: Tue, 30 Jun 2020 20:01:51 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663011D9A52AC@FMSMSX108.amr.corp.intel.com>
References: <20200629101256.13039-1-chris@chris-wilson.co.uk>
 <20200629113616.10618-1-chris@chris-wilson.co.uk>
 <14063C7AD467DE4B82DEDB5C278E8663011D9A4FBB@FMSMSX108.amr.corp.intel.com>
 <159354531220.22902.2935750807524355172@build.alporthouse.com>
In-Reply-To: <159354531220.22902.2935750807524355172@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gem: Move obj->lut_list under
 its own lock
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+DQo+U2VudDogVHVlc2RheSwgSnVuZSAzMCwgMjAyMCAzOjI5IFBN
DQo+VG86IFJ1aGwsIE1pY2hhZWwgSiA8bWljaGFlbC5qLnJ1aGxAaW50ZWwuY29tPjsgaW50ZWwt
DQo+Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPlN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggdjJdIGRybS9pOTE1L2dlbTogTW92ZSBvYmotPmx1dF9saXN0IHVuZGVyDQo+aXRzIG93
biBsb2NrDQo+DQo+UXVvdGluZyBSdWhsLCBNaWNoYWVsIEogKDIwMjAtMDYtMzAgMjA6MTE6MTYp
DQo+PiA+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+ID5Gcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+Q2hy
aXMNCj4+ID5XaWxzb24NCj4+ID5TZW50OiBNb25kYXksIEp1bmUgMjksIDIwMjAgNzozNiBBTQ0K
Pj4gPlRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+PiA+Q2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPg0KPj4gPlN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2Ml0gZHJtL2k5MTUvZ2VtOiBNb3ZlIG9iai0+bHV0X2xpc3QgdW5kZXIgaXRzDQo+
PiA+b3duIGxvY2sNCj4+ID4NCj4+ID5UaGUgb2JqLT5sdXRfbGlzdCBpcyB0cmF2ZXJzZWQgd2hl
biB0aGUgb2JqZWN0IGlzIGNsb3NlZCBhcyB0aGUgZmlsZQ0KPj4gPnRhYmxlIGlzIGRlc3Ryb3ll
ZCBkdXJpbmcgcHJvY2VzcyB0ZXJtaW5hdGlvbi4gQXMgdGhpcyBvY2N1cnMgYmVmb3JlIHdlDQo+
PiA+a2lsbCBhbnkgb3V0c3RhbmRpbmcgY29udGV4dCBpZiwgZHVlIHRvIHNvbWUgYnVnIG9yIGFu
b3RoZXIsIHRoZSBjbG9zdXJlDQo+PiA+aXMgYmxvY2tlZCwgdGhlbiB3ZSBmYWlsIHRvIHNob290
ZG93biBhbnkgaW5mbGlnaHQgb3BlcmF0aW9ucw0KPj4gPnBvdGVudGlhbGx5IGxlYXZpbmcgdGhl
IEdQVSBzcGlubmluZyBmb3JldmVyLiBBcyB3ZSBvbmx5IG5lZWQgdG8gZ3VhcmQNCj4+ID50aGUg
bGlzdCBhZ2FpbnN0IGNvbmN1cnJlbnQgY2xvc3VyZXMgYW5kIGluc2VydGlvbnMsIHRoZSBob2xk
IGlzIHNob3J0DQo+PiA+YW5kIG1lcml0cyBiZWluZyB0cmVhdGVkIGFzIGEgc2ltcGxlIHNwaW5s
b2NrLg0KPj4NCj4+IFRoZSBjb21tZW50Og0KPj4NCj4+IC8qIEJyZWFrIGxvbmcgbG9ja3MsIGFu
ZCBjYXJlZnVsbHkgY29udGludWUgb24gZnJvbSB0aGlzIHNwb3QgKi8NCj4+DQo+PiBzZWVtcyB0
byBiZSBjb250cmFyeSB0byB5b3VyICJ0aGUgaG9sZCBpcyBzaG9ydCIgY29tbWVudC4gIElzIGNh
bGxpbmcgb3V0DQo+PiB0aGlzIGFwcGFyZW50IHdvcnN0IGNhc2Ugc2NlbmFyaW8gKGkuZS4gaG93
IGl0IGNvdWxkIGhhcHBlbiksIHdvcnRoDQo+PiBkb2N1bWVudGluZz8NCj4NCj5JdCdzIHBhcmFu
b2lhLCBiZWNhdXNlIGxpc3QgaXRlcmF0aW5nIGNhbiBiZSBzbG93IGFuZCBoaXN0b3JpY2FsbHkg
c2xvdw0KPm9iamVjdCBjbG9zdXJlIGhhcyBiZWVuIHJlcG9ydGVkIGFzIGFuIGlzc3VlLiBPbmx5
IGEgZmV3IG9iamVjdHMgd2lsbCBiZQ0KPnNoYXJlZCBiZXR3ZWVuIG11bHRpcGxlIGNvbnRleHRz
LCBhbmQgZXZlbiB0aGVuIHlvdSB3b3VsZCBvbmx5IGV4cGVjdCBhDQo+Y291cGxlIG9mIGNvbnRl
eHRzIHRvIHNoYXJlIGFuIG9iamVjdC4gT25lIG9mIHRoZSBPZ2xEcnZDdHggd291bGQgc2hvdyB1
cA0KPmhlcmUsIHdoaWNoIGNvbnZpbmNlZCB1cyB0byBtb3ZlIHRvIHRoZSBwZXItb2JqZWN0IGxp
c3RzIHRvIHNocmluayB0aGUNCj5udW1iZXIgb2YgZWxlbWVudHMgd2Fsa2VkLg0KPg0KPkV2ZW4g
dGhlIGNsb3NlIHJhY2UgaWd0cyBkbyBub3QgY2F1c2UgdGhlIGxpc3QgdG8gYmVjb21lIGxvbmcg
ZW5vdWdoIHRvDQo+c2NoZWR1bGUsIGJ1dCBpdCB3b3VsZCBiZSBwb3NzaWJsZSB0byBjcmVhdGUg
YW4gb2JqZWN0IHRoYXQgd2FzIHNoYXJlZA0KPmJ5IDY0ayBjb250ZXh0cy4gSnVzdCBub3Qgd2lz
ZSBpbiBwcmFjdGljZS4gW0hvd2V2ZXIsIEkgc2hvdWxkIG1ha2Ugc3VyZQ0KPmFuIGlndCBkb2Vz
IGhpdCB0aGUgYm9va21hcmsuXQ0KDQpJIGxvb2sgZm9yd2FyZCB0byB0aGF0IGlndC4g8J+Yig0K
DQo+DQo+PiA+QEAgLTEwNCwyMSArMTA1LDI5IEBAIHZvaWQgaTkxNV9nZW1fY2xvc2Vfb2JqZWN0
KHN0cnVjdA0KPj4gPmRybV9nZW1fb2JqZWN0ICpnZW0sIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkN
Cj4+ID4gew0KPj4gPiAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gdG9f
aW50ZWxfYm8oZ2VtKTsNCj4+ID4gICAgICAgc3RydWN0IGRybV9pOTE1X2ZpbGVfcHJpdmF0ZSAq
ZnByaXYgPSBmaWxlLT5kcml2ZXJfcHJpdjsNCj4+ID4rICAgICAgc3RydWN0IGk5MTVfbHV0X2hh
bmRsZSBib29rbWFyayA9IHt9Ow0KPj4gPiAgICAgICBzdHJ1Y3QgaTkxNV9tbWFwX29mZnNldCAq
bW1vLCAqbW47DQo+PiA+ICAgICAgIHN0cnVjdCBpOTE1X2x1dF9oYW5kbGUgKmx1dCwgKmxuOw0K
Pj4gPiAgICAgICBMSVNUX0hFQUQoY2xvc2UpOw0KPj4gPg0KPj4gPi0gICAgICBpOTE1X2dlbV9v
YmplY3RfbG9jayhvYmopOw0KPj4gPisgICAgICBzcGluX2xvY2soJm9iai0+bHV0X2xvY2spOw0K
Pj4gPiAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUobHV0LCBsbiwgJm9iai0+bHV0X2xp
c3QsIG9ial9saW5rKSB7DQo+PiA+ICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfZ2VtX2NvbnRl
eHQgKmN0eCA9IGx1dC0+Y3R4Ow0KPj4gPg0KPj4gPi0gICAgICAgICAgICAgIGlmIChjdHgtPmZp
bGVfcHJpdiAhPSBmcHJpdikNCj4+ID4tICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0K
Pj4gPisgICAgICAgICAgICAgIGlmIChjdHggJiYgY3R4LT5maWxlX3ByaXYgPT0gZnByaXYpIHsN
Cj4+DQo+PiBOdWxsIGNoZWNraW5nIGN0eCB3YXMgbm90IGRvbmUgYmVmb3JlLiAgSSB0aGluayB0
aGlzIGNoYW5nZWQgd2l0aCB0aGUNCj5wb3NzaWJsZSBjb25kX3Jlc2NoZWQ/DQo+DQo+VGhlIGJv
b2ttYXJrIGludHJvZHVjZXMgdGhlIGx1dC0+Y3R4ID09IE5VTEwgdG8gaWRlbnRpZnkgaXQgYXMg
YmVpbmcNCj5zcGVjaWFsLCBoZW5jZSB0aGUgbmVlZCB0byBjaGVjay4NCg0KT2ssDQoNCmNsZWFu
IGxvY2sgcmVwbGFjZW1lbnQgd2l0aCBhIHBhcmFub2lkIHdvcnN0IGNhc2Ugc2NlbmFyaW8sIGp1
c3QgaW4gY2FzZS4NCg0KUmV2aWV3ZWQtYnk6IE1pY2hhZWwgSi4gUnVobCA8bWljaGFlbC5qLnJ1
aGxAaW50ZWwuY29tPg0KDQpNDQo+LUNocmlzDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
