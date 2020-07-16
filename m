Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D6B222F64
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 01:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A446E0E5;
	Thu, 16 Jul 2020 23:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3580B6E0E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 23:50:32 +0000 (UTC)
IronPort-SDR: dnVMjt5ex7orMWGPsSYPOKGlueK4iXWSm7bGNuq1mw7OQujwMqax2PBhE+hH8lJK0c0TKN07dI
 wf6JLM7GlZ1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="211051151"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="211051151"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 16:50:31 -0700
IronPort-SDR: loDYuJf/5OHp9+fivaf+y4hj2PEMyuA86JecZLCjpbRGlbYf/2g5U+JPYo0W2vfRBGIIi0xDS7
 iCAPbzUSdK4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="486789162"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jul 2020 16:50:29 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 16:50:29 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.60]) with mapi id 14.03.0439.000;
 Thu, 16 Jul 2020 16:50:28 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Move
 WaDisableDopClockGating:skl to skl_init_clock_gating()
Thread-Index: AQHWW6QD6TbVGbYFm0as6eV9Ri6JxqkLVl4A
Date: Thu, 16 Jul 2020 23:50:28 +0000
Message-ID: <bf14594da306dda1478a6ec0178ad2d6fefae7b4.camel@intel.com>
References: <20200716190426.17047-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716190426.17047-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <0FA937727975D24D81BC293413891B18@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Move
 WaDisableDopClockGating:skl to skl_init_clock_gating()
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

T24gVGh1LCAyMDIwLTA3LTE2IGF0IDIyOjA0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSXQncyBzaWxseSB0byBoYXZlIGlmKFNLTCkgY2hlY2tzIGluIGdlbjlfaW5pdF9jbG9j
a19nYXRpbmcoKSB3aGVuDQo+IHdlIGNhbiBqdXN0IG1vdmUgdGhvc2UgYml0cyBpbnRvIHNrbF9p
bml0X2Nsb2NrX2dhdGluZygpLg0KPiANCj4gSSdtIG5vdCBlbnRpcmVseSBjb252aW5jZWQgd2Ug
ZXZlbiBuZWVkIHRoaXMgdy9hLCBvciBpZiB3ZSBkbw0KPiB0aGVuIG1heWJlIHdlIHdhbnQgaXQg
Zm9yIGtibC9jZmwgYXMgd2VsbC4gSUlSQyBpdCB3YXMgb25seQ0KPiBsaXN0ZWQgaW4gdGhlIHdh
ZGIsIGJ1dCB0aGF0IGlzIG5vdyBkZWFkIHNvIGNhbid0IGRvdWJsZSBjaGVjaw0KPiBhbnltb3Jl
LiBCc3BlYyBkb2Vzbid0IHNlZW0gdG8gaGF2ZSBhbnkgcHVyZWx5IHNrbCBzcGVjaWZpYw0KPiBE
T1AgY2xvY2sgZ2F0aW5nIHdvcmthcm91bmRzIGxpc3RlZC4NCg0KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gUHJvYmFibHkgc2hvdWxkIG1vdmUgdGhpcyB0byB0aGUgZ3Qgdy9hIGNvZGUgYWN0
dWFsbHkuIEJ1dCANCj4gdGhlcmUncyBhIGxvdCBtb3JlIGd0IHJlbGF0ZWQgc3R1ZmYgc3RpbGwg
aW4gLmluaXRfY2xvY2tfZ2F0aW5nKCkNCj4gc28gc2hvdWxkIGdyYWIgYSBiaWdnZXIgc2hvdmVs
IHRvIG1vdmUgaXQgYWxsIGluIG9uZSBnby4NCj4gDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jIHwgMTAgKysrKy0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBpbmRl
eCBjZmFiYmUwNDgxYWIuLjBhMWE5NTA2MGYzOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jDQo+IEBAIC0xMDAsMTIgKzEwMCw2IEBAIHN0YXRpYyB2b2lkIGdlbjlfaW5pdF9jbG9ja19n
YXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCSAqLw0KPiAgCUk5
MTVfV1JJVEUoRElTUF9BUkJfQ1RMLCBJOTE1X1JFQUQoRElTUF9BUkJfQ1RMKSB8DQo+ICAJCSAg
IERJU1BfRkJDX01FTU9SWV9XQUtFKTsNCj4gLQ0KPiAtCWlmIChJU19TS1lMQUtFKGRldl9wcml2
KSkgew0KPiAtCQkvKiBXYURpc2FibGVEb3BDbG9ja0dhdGluZyAqLw0KPiAtCQlJOTE1X1dSSVRF
KEdFTjdfTUlTQ0NQQ1RMLCBJOTE1X1JFQUQoR0VON19NSVNDQ1BDVEwpDQo+IC0JCQkgICAmIH5H
RU43X0RPUF9DTE9DS19HQVRFX0VOQUJMRSk7DQo+IC0JfQ0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMg
dm9pZCBieHRfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQ0KPiBAQCAtNzI1MSw2ICs3MjQ1LDEwIEBAIHN0YXRpYyB2b2lkIHNrbF9pbml0X2Nsb2Nr
X2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICB7DQo+ICAJZ2Vu
OV9pbml0X2Nsb2NrX2dhdGluZyhkZXZfcHJpdik7DQo+ICANCj4gKwkvKiBXYURpc2FibGVEb3BD
bG9ja0dhdGluZzpza2wgKi8NCj4gKwlJOTE1X1dSSVRFKEdFTjdfTUlTQ0NQQ1RMLCBJOTE1X1JF
QUQoR0VON19NSVNDQ1BDVEwpICYNCj4gKwkJICAgfkdFTjdfRE9QX0NMT0NLX0dBVEVfRU5BQkxF
KTsNCj4gKw0KPiAgCS8qIFdBQzZlbnRyeWxhdGVuY3k6c2tsICovDQo+ICAJSTkxNV9XUklURShG
QkNfTExDX1JFQURfQ1RSTCwgSTkxNV9SRUFEKEZCQ19MTENfUkVBRF9DVFJMKSB8DQo+ICAJCSAg
IEZCQ19MTENfRlVMTFlfT1BFTik7DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
