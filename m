Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 813F3189932
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 11:22:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB2C66E881;
	Wed, 18 Mar 2020 10:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38F26E881
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 10:22:54 +0000 (UTC)
IronPort-SDR: hTsfDP61MuVKev6z/iHNpqnFzXtOlyviezb6ohVkSJbXMiwcPPgj4kPHfaGCmOqIh2k/D54dx6
 /rz7DyOKcm/g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 03:22:54 -0700
IronPort-SDR: sqDZKCPyTUix1RgvWAKbybTeUBEuqr07r69MQuCWTFti8abOLhEg4Oz6yCH3fYKMSPAC/3PRjc
 2zp+yXQCg5Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; d="scan'208";a="233795456"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga007.jf.intel.com with ESMTP; 18 Mar 2020 03:22:53 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Mar 2020 03:22:53 -0700
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 fmsmsx116.amr.corp.intel.com (10.18.116.20) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Mar 2020 03:22:53 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.88]) with mapi id 14.03.0439.000;
 Wed, 18 Mar 2020 15:52:49 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: Enable non-contiguous pipe
 fusing
Thread-Index: AQHV/QsbsYYRkV1pukO9PGKBrjRmxKhOJA+A
Date: Wed, 18 Mar 2020 10:22:49 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82435392@BGSMSX104.gar.corp.intel.com>
References: <20200311083632.3249-1-anshuman.gupta@intel.com>
 <20200318094448.26239-1-anshuman.gupta@intel.com>
In-Reply-To: <20200318094448.26239-1-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Enable non-contiguous pipe
 fusing
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBBbnNodW1h
bg0KPiBHdXB0YQ0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDE4LCAyMDIwIDM6MTUgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IERlIE1hcmNoaSwgTHVj
YXMgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BB
VENIIHYzXSBkcm0vaTkxNTogRW5hYmxlIG5vbi1jb250aWd1b3VzIHBpcGUgZnVzaW5nDQo+IA0K
PiBBcyB3ZSBoYXZlIGFscmVhZHkgZW5hYmxlZCBzdXBwb3J0ZWQgaW5mcmFzdHJ1Y3R1cmUgZm9y
IG5vbi1jb250aWd1b3VzIHBpcGUgZnVzaW5nDQo+IGluIGRyaXZlciwgd2UgZG9uJ3QgcmVxdWly
ZSBub24tY29udGlndW91cyBwaXBlX21hc2sgY2hlY2sgYW55bW9yZS4NCj4gSXQgaXMgYW4gdW5s
aWtlIGNvbmRpdGlvbiwgaXQgbWFrZSBzZW5zZSB0byByZW1vdmUgdGhpcyBjb25kaXRpb24uDQo+
IA0KPiBjaGFuZ2VzIHNpbmNlIFJGQzoNCj4gLSB1c2luZyBpbnRlbF9waXBlX21hc2tfaXNfdmFs
aWQoKSBmdW5jdGlvbiB0byBjaGVjayBpbnRlZ3JpdHkgb2YNCj4gICBwaXBlX21hc2suIFtWaWxs
ZV0NCj4gdjI6DQo+IC0gc2ltcGxpZnkgY29uZGl0aW9uIGluIGludGVsX3BpcGVfbWFza19pc192
YWxpZCgpLiBbVmlsbGVdDQo+IHYzOg0KPiAtIHJlbW92ZWQgbm9uLWNvbnRpZ3VvdXMgcGlwZSBm
dXNpbmcgY2hlY2suIFtMdWNhc10NCg0KUHVzaGVkIHRvIGRpbnEuDQpUaGFua3MgZm9yIHRoZSBw
YXRjaCBhbmQgcmV2aWV3cy4NCg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNo
aUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5n
dXB0YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2
aWNlX2luZm8uYyB8IDEyICstLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGV2aWNlX2luZm8uYw0KPiBpbmRleCBkN2ZlMTI3MzRkYjguLjlmZjg5ZTE0MmZmMSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jDQo+IEBAIC05OTgs
MTcgKzk5OCw3IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVjdA0K
PiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAkJICAgIChkZnNtICYgVEdMX0RGU01f
UElQRV9EX0RJU0FCTEUpKQ0KPiAgCQkJZW5hYmxlZF9tYXNrICY9IH5CSVQoUElQRV9EKTsNCj4g
DQo+IC0JCS8qDQo+IC0JCSAqIEF0IGxlYXN0IG9uZSBwaXBlIHNob3VsZCBiZSBlbmFibGVkIGFu
ZCBpZiB0aGVyZSBhcmUNCj4gLQkJICogZGlzYWJsZWQgcGlwZXMsIHRoZXkgc2hvdWxkIGJlIHRo
ZSBsYXN0IG9uZXMsIHdpdGggbm8gaG9sZXMNCj4gLQkJICogaW4gdGhlIG1hc2suDQo+IC0JCSAq
Lw0KPiAtCQlpZiAoZW5hYmxlZF9tYXNrID09IDAgfHwgIWlzX3Bvd2VyX29mXzIoZW5hYmxlZF9t
YXNrICsgMSkpDQo+IC0JCQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLA0KPiAtCQkJCSJpbnZhbGlk
IHBpcGUgZnVzZSBjb25maWd1cmF0aW9uOg0KPiBlbmFibGVkX21hc2s9MHgleFxuIiwNCj4gLQkJ
CQllbmFibGVkX21hc2spOw0KPiAtCQllbHNlDQo+IC0JCQlpbmZvLT5waXBlX21hc2sgPSBlbmFi
bGVkX21hc2s7DQo+ICsJCWluZm8tPnBpcGVfbWFzayA9IGVuYWJsZWRfbWFzazsNCj4gDQo+ICAJ
CWlmIChkZnNtICYgU0tMX0RGU01fRElTUExBWV9IRENQX0RJU0FCTEUpDQo+ICAJCQlpbmZvLT5k
aXNwbGF5Lmhhc19oZGNwID0gMDsNCj4gLS0NCj4gMi4yNS4xDQo+IA0KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBs
aXN0DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
