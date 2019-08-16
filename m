Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7488D90A9B
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 00:00:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D936E3B4;
	Fri, 16 Aug 2019 22:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 827C56E3B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 21:59:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 14:59:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,394,1559545200"; d="scan'208";a="177313968"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2019 14:59:59 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 16 Aug 2019 14:59:59 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.69]) by
 fmsmsx123.amr.corp.intel.com ([169.254.7.29]) with mapi id 14.03.0439.000;
 Fri, 16 Aug 2019 14:59:58 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "lucas.de.marchi@gmail.com" <lucas.de.marchi@gmail.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 08/39] drm/i915/tgl: Change PSR2 transcoder
 restriction
Thread-Index: AQHVVAloqGOrSbMKok+u00nXvS6kYqb+wGKAgAAIxoA=
Date: Fri, 16 Aug 2019 21:59:58 +0000
Message-ID: <eae1b67f98ca6d2dca753d0d6b9d7f737f27070c.camel@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
 <20190816080503.28594-9-lucas.demarchi@intel.com>
 <CAKi4VALV1w3F4cyRqPPvo9OyFVbM82AmPztuZgij6Y=uGdwTBw@mail.gmail.com>
In-Reply-To: <CAKi4VALV1w3F4cyRqPPvo9OyFVbM82AmPztuZgij6Y=uGdwTBw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <7E898C0946C52249AB870A01ACED657B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/39] drm/i915/tgl: Change PSR2 transcoder
 restriction
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA4LTE2IGF0IDE0OjI4IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIEZyaSwgQXVnIDE2LCAyMDE5IGF0IDE6MDUgQU0gTHVjYXMgRGUgTWFyY2hpDQo+IDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEZyb206IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IA0KPiA+IFRpZ2VyIExha2UgaGFz
IGVEUC1jYXBhYmxlIHRyYW5zY29kZXJzIHJhdGhlciB0aGFuIGEgdHJhbnNjb2Rlcg0KPiA+IGRl
ZGljYXRlZCB0byBlRFAuIFRyYW5zY29kZXIgQSBpcyB0aGUgb25lIHdoZXJlIHdlIGhhdmUgUFNS
Mi4NCj4gPiBBY3R1YWxseSB0cmFuc2NvZGVyIEIgYWxzbyBzdXBwb3J0cyBQU1IyIGJ1dCBvbmx5
IHdpdGggc29mdHdhcmUNCj4gPiB0cmFja2luZyB0aGF0IGlzIG5vdCBpbXBsZW1lbnRlZC4NCj4g
PiANCj4gPiBDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRl
bC5jb20+DQo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyB8IDExICsrKysrKysrKy0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCAwMTA3MGViNjc1NzEuLjFkMzZkN2Jl
MDE1ZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+IEBAIC01MTEsMTIgKzUxMSwxOSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZp
Z192YWxpZChzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gICAgICAgICBpbnQg
Y3J0Y19oZGlzcGxheSA9IGNydGNfc3RhdGUtDQo+ID4gPmJhc2UuYWRqdXN0ZWRfbW9kZS5jcnRj
X2hkaXNwbGF5Ow0KPiA+ICAgICAgICAgaW50IGNydGNfdmRpc3BsYXkgPSBjcnRjX3N0YXRlLQ0K
PiA+ID5iYXNlLmFkanVzdGVkX21vZGUuY3J0Y192ZGlzcGxheTsNCj4gPiAgICAgICAgIGludCBw
c3JfbWF4X2ggPSAwLCBwc3JfbWF4X3YgPSAwOw0KPiA+ICsgICAgICAgZW51bSB0cmFuc2NvZGVy
IHN1cHBvcnRlZDsNCj4gPiANCj4gPiAgICAgICAgIGlmICghZGV2X3ByaXYtPnBzci5zaW5rX3Bz
cjJfc3VwcG9ydCkNCj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0KPiA+IA0KPiA+
IC0gICAgICAgaWYgKGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfRURQ
KSB7DQo+ID4gLSAgICAgICAgICAgICAgIERSTV9ERUJVR19LTVMoIlBTUjIgaXMgb25seSBzdXBw
b3J0ZWQgaW4gRURQDQo+ID4gdHJhbnNjb2RlclxuIik7DQo+ID4gKyAgICAgICAvKg0KPiA+ICsg
ICAgICAgICogVE9ETzogUFNSMiBpcyBhbHNvIHN1cHBvcnRlZCBpbiBUUkFOU0NPREVSX0Igb24g
VEdMKyBidXQNCj4gPiBpdCByZXF1aXJlcw0KPiA+ICsgICAgICAgICogc29mdHdhcmUgdHJhY2tp
bmcNCj4gPiArICAgICAgICAqLw0KPiANCj4gd2hlcmUgaXMgdGhpcyBjb21pbmcgZnJvbT8gc3Bl
YyA0OTE4MCBzYXlzOiAiT25seSB0cmFuc2NvZGVyIEENCj4gc3VwcG9ydHMgUFNSMi4iDQoNCkJT
cGVjOiA0OTI3NA0KU2VsZWN0aXZlIFVwZGF0ZSBvbiBzZWNvbmQgZURQDQoNCkJ1dCBvciBJIG1p
c3JlYWQgb3IgdGhlIHBsYXRmb3JtcyBjaGFuZ2VkLCBUR0wgZG8gbm90IHN1cHBvcnQgUFNSMiBv
bg0KdHJhbnNjb2RlciBCIGV2ZW4gdXNpbmcgbWFudWFsIHRyYWNraW5nLg0KDQo+IA0KPiBDb3Vs
ZCB0aGlzIHBhdGNoIGJlIHNxdWFzaGVkIGluICJkcm0vaTkxNTogQWRkIHRyYW5zY29kZXIgcmVz
dHJpY3Rpb24NCj4gdG8gUFNSMiIgc28gd2UganVzdCBhZGQgdGhlIHJlc3RyaWN0aW9uDQo+IGZv
ciBhbnkgcGxhdGZvcm0gYXQgdGhlIHNhbWUgdGltZT8NCg0KWWVzIGl0IG5vdyBjYW4gYmUgc3F1
YXNoZWQsIGl0IHdhcyBub3QgYmVmb3JlIGJlY2F1c2UgSSB3YXMgdHJ5aW5nIHRvDQp1cHN0cmVh
bSAiZHJtL2k5MTU6IEFkZCB0cmFuc2NvZGVyIHJlc3RyaWN0aW9uIHRvIFBTUjIiIGJlZm9yZSBU
R0wgd2FzDQpwdWJsaWMuDQoNCkkgd2lsbCBmaXggYm90aA0KDQpUaGFua3MNCg0KPiANCj4gTHVj
YXMgRGUgTWFyY2hpDQo+IA0KPiA+ICsgICAgICAgc3VwcG9ydGVkID0gSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMiA/IFRSQU5TQ09ERVJfQSA6DQo+ID4gVFJBTlNDT0RFUl9FRFA7DQo+ID4gKyAg
ICAgICBpZiAoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIgIT0gc3VwcG9ydGVkKSB7DQo+ID4g
KyAgICAgICAgICAgICAgIERSTV9ERUJVR19LTVMoIlBTUjIgbm90IHN1cHBvcnRlZCBpbiB0cmFu
c2NvZGVyDQo+ID4gJXNcbiIsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdHJh
bnNjb2Rlcl9uYW1lKHN1cHBvcnRlZCkpOw0KPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gZmFs
c2U7DQo+ID4gICAgICAgICB9DQo+ID4gDQo+ID4gLS0NCj4gPiAyLjIxLjANCj4gPiANCj4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngNCj4gDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
