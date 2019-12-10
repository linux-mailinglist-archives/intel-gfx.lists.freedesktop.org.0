Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56469118FA4
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 19:19:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52AF06E919;
	Tue, 10 Dec 2019 18:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 744976E919
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 18:19:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 10:19:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="225237640"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga002.jf.intel.com with ESMTP; 10 Dec 2019 10:19:25 -0800
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Dec 2019 10:19:24 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.123]) by
 FMSMSX153.amr.corp.intel.com ([169.254.9.180]) with mapi id 14.03.0439.000;
 Tue, 10 Dec 2019 10:19:24 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915: ELiminate
 intel_pipe_to_cpu_transcoder() from assert_fdi_tx()
Thread-Index: AQHVmXedYgJkjC6M2Ues/e6bebX2bqe0X96A
Date: Tue, 10 Dec 2019 18:19:24 +0000
Message-ID: <8bd8a68e72804b48a1270877a8d62eeb8c4a08df.camel@intel.com>
References: <20191112163812.22075-1-ville.syrjala@linux.intel.com>
 <20191112163812.22075-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20191112163812.22075-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.69]
Content-ID: <D1FED94677C9644497E6D61E2DD17AA5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: ELiminate
 intel_pipe_to_cpu_transcoder() from assert_fdi_tx()
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

T24gVHVlLCAyMDE5LTExLTEyIGF0IDE4OjM4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTGV0J3Mgc3RhcnQgdG8gZWxpbWluYXRlIGludGVsX3BpcGVfdG9fY3B1X3RyYW5zY29k
ZXIoKSBzbyB0aGF0DQo+IHdlIGNhbiBnZXQgcmlkIG9mIG9uZSBtb3JlIGNydGMtPmNvbmZpZyB1
c2FnZSAod2hpY2ggd2Ugd2lsbCB3YW50DQo+IHRvIG51a2UgYXMgd2VsbCkuDQo+IA0KPiBJbiB0
aGUgY2FzZSBvZiBhc3NlcnRfZmRpX3R4KCkgd2Uga25vdyB0aGF0IHdlJ3JlIG5ldmVyDQo+IGRl
YWxpbmcgd2l0aCB0aGUgRURQIHRyYW5zY29kZXIgc28gd2UgY2FuIHNpbXBseSByZXBsYWNlDQo+
IHRoaXMgd2l0aCBhIGNhc3QuDQoNClRoZXJlIHN0aWxsIG9uZSBFRFAgdHJhbnNjb2RlciBjYXNl
IHdoZW4gcnVubmluZyBpbiBhIEhTVzoNCg0KaGFzd2VsbF9jcnRjX2VuYWJsZSgpDQoJbHB0X3Bj
aF9lbmFibGUoKQ0KCQlscHRfZW5hYmxlX3BjaF90cmFuc2NvZGVyKCkNCgkJCWFzc2VydF9mZGlf
dHhfZW5hYmxlZCgpDQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMCArKysrKysrLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggZTdlNTQ5N2U2
ZjJlLi5jYWJkODgzMzc4MjIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xMTQxLDExICsxMTQxLDE1IEBAIHN0YXRpYyB2b2lk
IGFzc2VydF9mZGlfdHgoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAg
CQkJICBlbnVtIHBpcGUgcGlwZSwgYm9vbCBzdGF0ZSkNCj4gIHsNCj4gIAlib29sIGN1cl9zdGF0
ZTsNCj4gLQllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPQ0KPiBpbnRlbF9waXBlX3Rv
X2NwdV90cmFuc2NvZGVyKGRldl9wcml2LA0KPiAtCQkJCQkJCQkgICAgICBwDQo+IGlwZSk7DQo+
ICANCj4gIAlpZiAoSEFTX0RESShkZXZfcHJpdikpIHsNCj4gLQkJLyogRERJIGRvZXMgbm90IGhh
dmUgYSBzcGVjaWZpYyBGRElfVFggcmVnaXN0ZXIgKi8NCj4gKwkJLyoNCj4gKwkJICogRERJIGRv
ZXMgbm90IGhhdmUgYSBzcGVjaWZpYyBGRElfVFggcmVnaXN0ZXIuDQo+ICsJCSAqDQo+ICsJCSAq
IEZESSBpcyBuZXZlciBob29rZWQgZmVkIGZyb20gRURQIHRyYW5zY29kZXINCj4gKwkJICogc28g
cGlwZS0+dHJhbnNjb2RlciBjYXN0IGlzIGZpbmUgaGVyZS4NCj4gKwkJICovDQo+ICsJCWVudW0g
dHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IChlbnVtIHRyYW5zY29kZXIpcGlwZTsNCj4gIAkJ
dTMyIHZhbCA9DQo+IEk5MTVfUkVBRChUUkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5zY29kZXIp
KTsNCj4gIAkJY3VyX3N0YXRlID0gISEodmFsICYgVFJBTlNfRERJX0ZVTkNfRU5BQkxFKTsNCj4g
IAl9IGVsc2Ugew0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
