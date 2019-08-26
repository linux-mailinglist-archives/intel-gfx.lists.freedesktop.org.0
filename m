Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9E79D521
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 19:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD9206E27C;
	Mon, 26 Aug 2019 17:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4C56E27C
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 17:43:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 10:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="380618595"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga006.fm.intel.com with ESMTP; 26 Aug 2019 10:43:38 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 26 Aug 2019 10:43:38 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.181]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.42]) with mapi id 14.03.0439.000;
 Mon, 26 Aug 2019 10:43:37 -0700
From: "Runyan, Arthur J" <arthur.j.runyan@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "Souza, Jose" <jose.souza@intel.com>, 
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 04/23] drm/i915/bdw+: Enable PSR in any
 eDP port
Thread-Index: AQHVXBQvyhJ6EtwL90i/rcyls1Rja6cNszpA
Date: Mon, 26 Aug 2019 17:43:36 +0000
Message-ID: <C7E999358BBE9E45938BA940F5F51108D30BD7BF@fmsmsx116.amr.corp.intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-5-lucas.demarchi@intel.com>
 <20190826134158.GA27192@ideak-desk.fi.intel.com>
In-Reply-To: <20190826134158.GA27192@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDM4MTE0YTMtM2EwMy00ZThmLThkNmQtOThjNDQzNTE4NDMyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiS1g4Y1huSUJFa3hcLzBjZnB2WndKdUpsKzZEQzQ3STl3UTdRSTBwN1wvM0FUN1k4M1B4TFwvTFNzcVliU1JSWVRTXC8ifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 04/23] drm/i915/bdw+: Enable PSR in any
 eDP port
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4KPiBTZW50OiBNb25kYXksIDI2IEF1Z3VzdCwgMjAxOSA2OjQyIEFNCj4gVG86
IFNvdXphLCBKb3NlIDxqb3NlLnNvdXphQGludGVsLmNvbT47IERlIE1hcmNoaSwgTHVjYXMKPiA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPjsgUnVueWFuLCBBcnRodXIgSiA8YXJ0aHVyLmoucnVu
eWFuQGludGVsLmNvbT4KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgUGFu
ZGl5YW4sIERoaW5ha2FyYW4KPiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+Cj4gU3Vi
amVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSCB2MyAwNC8yM10gZHJtL2k5MTUvYmR3KzogRW5h
YmxlIFBTUiBpbiBhbnkKPiBlRFAgcG9ydAo+IAo+IE9uIEZyaSwgQXVnIDIzLCAyMDE5IGF0IDAx
OjIwOjM2QU0gLTA3MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiA+IEZyb206IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4KPiA+IEZyb20gQkRXKyB0
aGUgUFNSIHJlZ2lzdGVycyBtb3ZlZCBmcm9tIERESUEgdG8gdHJhbnNjb2Rlciwgc28gYW55IHBv
cnQKPiA+IHdpdGggYSBlRFAgcGFuZWwgY29ubmVjdGVkIGNhbiBoYXZlIFBTUiwgc28gbGV0cyBy
ZW1vdmUgdGhpcwo+ID4gbGltaXRhdGlvbi4KPiA+Cj4gPiBDYzogRGhpbmFrYXJhbiBQYW5kaXlh
biA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+Cj4gPiBDYzogUm9kcmlnbyBWaXZpIDxy
b2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiA+IFJldmlld2VkLWJ5OiBBbnNo
dW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDYgKystLS0tCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gaW5kZXggODFlMzYxOWNkOTA1
Li4wMTcyYjgyODU4ZDkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jCj4gPiBAQCAtNTg4LDExICs1ODgsOSBAQCB2b2lkIGludGVsX3Bzcl9jb21wdXRl
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAKPiAqaW50ZWxfZHAsCj4gPgo+ID4gIAkvKgo+ID4gIAkg
KiBIU1cgc3BlYyBleHBsaWNpdGx5IHNheXMgUFNSIGlzIHRpZWQgdG8gcG9ydCBBLgo+ID4gLQkg
KiBCRFcrIHBsYXRmb3JtcyBoYXZlIGEgaW5zdGFuY2Ugb2YgUFNSIHJlZ2lzdGVycyBwZXIgdHJh
bnNjb2RlciBidXQKPiA+IC0JICogZm9yIG5vdyBpdCBvbmx5IHN1cHBvcnRzIG9uZSBpbnN0YW5j
ZSBvZiBQU1IsIHNvIGxldHMga2VlcCBpdAo+ID4gLQkgKiBoYXJkY29kZWQgdG8gUE9SVF9BCj4g
PiArCSAqIEJEVysgcGxhdGZvcm1zIGhhdmUgYSBpbnN0YW5jZSBvZiBQU1IgcmVnaXN0ZXJzIHBl
ciB0cmFuc2NvZGVyLgo+ID4gIAkgKi8KPiA+IC0JaWYgKGRpZ19wb3J0LT5iYXNlLnBvcnQgIT0g
UE9SVF9BKSB7Cj4gPiArCWlmIChJU19IQVNXRUxMKGRldl9wcml2KSAmJiBkaWdfcG9ydC0+YmFz
ZS5wb3J0ICE9IFBPUlRfQSkgewo+IAo+IEJhc2VkIG9uIGFuIGVhcmxpZXIgZGlzY3Vzc2lvbiB3
aXRoIEFydCwgYmVmb3JlIFRHTCBQU1IgaXMgbm90IHN1cHBvc2VkCj4gdG8gYmUgdXNlZCBhbnl3
aGVyZSBlbHNlIHRoYW4gcG9ydCBBLgo+IAo+IEFydCBjb3VsZCB5b3UgY29uZmlybSB0aGF0PwoK
Q29ycmVjdC4gIApQU1IxIGlzIGxpbWl0ZWQgdG8gRERJQSB1bnRpbCBUaWdlcmxha2UuICBUaGVy
ZSBhcmUgcmVnaXN0ZXJzIGZvciBQU1Igb24gdGhlIG90aGVyIAp0cmFuc2NvZGVycy9wb3J0cyBi
ZWNhdXNlIG9mIHJldXNlLCBidXQgaGFyZHdhcmUgaXNuJ3QgZnVsbHkgaG9va2VkIHVwIG9yIHZh
bGlkYXRlZC4KUFNSMiBpcyBzdGlsbCBsaW1pdGVkIHRvIERESUEgb24gVGlnZXJsYWtlLgoKPiAK
PiA+ICAJCURSTV9ERUJVR19LTVMoIlBTUiBjb25kaXRpb24gZmFpbGVkOiBQb3J0IG5vdAo+IHN1
cHBvcnRlZFxuIik7Cj4gPiAgCQlyZXR1cm47Cj4gPiAgCX0KPiA+IC0tCj4gPiAyLjIzLjAKPiA+
Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4g
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
