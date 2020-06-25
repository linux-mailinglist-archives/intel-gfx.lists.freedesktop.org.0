Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F58820980B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DBDA6E8EE;
	Thu, 25 Jun 2020 00:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9B156E8EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:59:36 +0000 (UTC)
IronPort-SDR: 8XticAOQFVxm0YcNG3eQRwyflQZmhCm6C+BC0CJhvrfPbiTFYlREDeSSQQgcyB1UIp9dzkJyRD
 lam6ZIyZcUFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="229409978"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="229409978"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:59:36 -0700
IronPort-SDR: wE42qKh8KYLQ0TVBHMm8XirnbvM7B9+vcXoDdWkKfGCQ8/wVgCkcs+CXDolBzVRJEMIy0pCg5T
 ToTu8OV149HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="479309483"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jun 2020 17:59:36 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 17:59:35 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.89]) with mapi id 14.03.0439.000;
 Wed, 24 Jun 2020 17:59:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 12/12] drm/i915: Suppress spurious
 underruns on gen2
Thread-Index: AQHWHg6RjgLYbDcxtkmtR6tuJ725l6jpUXKA
Date: Thu, 25 Jun 2020 00:59:35 +0000
Message-ID: <afd9ee010880718b31862b8b7cf478e36240ca91.camel@intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
 <20200429101034.8208-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429101034.8208-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.155.111]
Content-ID: <99A4A13890B7BD4A914D8F8CDF9AA771@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/i915: Suppress spurious underruns
 on gen2
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
PiANCj4gT2Z0ZW4gd2Ugc2VlbSB0byBkZXRlY3QgYW4gdW5kZXJydW4gcmlnaHQgYWZ0ZXIgbW9k
ZXNldCBvbiBnZW4yLg0KPiBJdCBzZWVtcyB0byBiZSBhIHNwdXJpb3VzIGRldGVjdGlvbiAocG90
ZW50aWFsbHkgdGhlIHBpcGUgaXMgc3RpbGwNCj4gaW4gYSB3b25reSBzdGF0ZSB3aGVuIHdlIGVu
YWJsZSB0aGUgcGxhbmVzKS4gQW4gZXh0cmEgdmJsYW5rIHdhaXQNCj4gc2VlbXMgdG8gY3VyZSBp
dC4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiBpbmRleCBhMGQxMDU3ZDc1ZWUuLmYzMzAwNTRlNjRjNSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTc1MTcs
NiArNzUxNywxMCBAQCBzdGF0aWMgdm9pZCBpOXh4X2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCWludGVsX2NydGNfdmJsYW5rX29uKG5ld19jcnRjX3N0
YXRlKTsNCj4gIA0KPiAgCWludGVsX2VuY29kZXJzX2VuYWJsZShzdGF0ZSwgY3J0Yyk7DQo+ICsN
Cj4gKwkvKiBwcmV2ZW50cyBzcHVyaW91cyB1bmRlcnJ1bnMgKi8NCj4gKwlpZiAoSVNfR0VOKGRl
dl9wcml2LCAyKSkNCj4gKwkJaW50ZWxfd2FpdF9mb3JfdmJsYW5rKGRldl9wcml2LCBwaXBlKTsN
Cj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQgaTl4eF9wZml0X2Rpc2FibGUoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKQ0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
