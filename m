Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EDB73569
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 19:27:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3BC6E56E;
	Wed, 24 Jul 2019 17:27:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 466846E56E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 17:27:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 10:27:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="174952744"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga006.jf.intel.com with ESMTP; 24 Jul 2019 10:27:43 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jul 2019 10:27:43 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.88]) by
 FMSMSX119.amr.corp.intel.com ([169.254.14.143]) with mapi id 14.03.0439.000;
 Wed, 24 Jul 2019 10:27:42 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Thread-Topic: [PATCH stable v5.2] drm/i915/vbt: Fix VBT parsing for the PSR
 section
Thread-Index: AQHVQONsXO34TlSG+0SkyFodNctzFabaJCaAgABZngA=
Date: Wed, 24 Jul 2019 17:27:42 +0000
Message-ID: <05339e812e35a4cf1811f26a06bd5a4d1d652407.camel@intel.com>
References: <20190719004526.B0CC521850@mail.kernel.org>
 <20190722231325.16615-1-dhinakaran.pandiyan@intel.com>
 <20190724120657.GG3244@kroah.com>
In-Reply-To: <20190724120657.GG3244@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.121.193.213]
Content-ID: <28BC2974802650438AF6F53CFF819321@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH stable v5.2] drm/i915/vbt: Fix VBT parsing
 for the PSR section
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
Cc: "sashal@kernel.org" <sashal@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTA3LTI0IGF0IDE0OjA2ICswMjAwLCBHcmVnIEtIIHdyb3RlOg0KPiBPbiBN
b24sIEp1bCAyMiwgMjAxOSBhdCAwNDoxMzoyNVBNIC0wNzAwLCBEaGluYWthcmFuIFBhbmRpeWFu
IHdyb3RlOg0KPiA+IEEgc2luZ2xlIDMyLWJpdCBQU1IyIHRyYWluaW5nIHBhdHRlcm4gZmllbGQg
Zm9sbG93cyB0aGUgc2l4dGVlbg0KPiA+IGVsZW1lbnQNCj4gPiBhcnJheSBvZiBQU1IgdGFibGUg
ZW50cmllcyBpbiB0aGUgVkJUIHNwZWMuIEJ1dCwgd2UgaW5jb3JyZWN0bHkNCj4gPiBkZWZpbmUN
Cj4gPiB0aGlzIFBTUjIgZmllbGQgZm9yIGVhY2ggb2YgdGhlIFBTUiB0YWJsZSBlbnRyaWVzLiBB
cyBhIHJlc3VsdCwgdGhlDQo+ID4gUFNSMQ0KPiA+IHRyYWluaW5nIHBhdHRlcm4gZHVyYXRpb24g
Zm9yIGFueSBwYW5lbF90eXBlICE9IDAgd2lsbCBiZSBwYXJzZWQNCj4gPiBpbmNvcnJlY3RseS4g
U2Vjb25kbHksIFBTUjIgdHJhaW5pbmcgcGF0dGVybiBkdXJhdGlvbnMgZm9yIFZCVHMNCj4gPiB3
aXRoIGJkYg0KPiA+IHZlcnNpb24gPj0gMjI2IHdpbGwgYWxzbyBiZSB3cm9uZy4NCj4gPiANCj4g
PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+IENjOiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiBDYzogc3RhYmxl
QHZnZXIua2VybmVsLm9yZw0KPiA+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnICN2NS4yDQo+
ID4gRml4ZXM6IDg4YTBkOTYwNmFmZiAoImRybS9pOTE1L3ZidDogUGFyc2UgYW5kIHVzZSB0aGUg
bmV3IGZpZWxkDQo+ID4gd2l0aCBQU1IyIFRQMi8zIHdha2V1cCB0aW1lIikNCj4gPiBCdWd6aWxs
YTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDg4DQo+
ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MjA0MTgzDQo+ID4gU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJh
bi5wYW5kaXlhbkBpbnRlbC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IEFja2VkLWJ5OiBSb2Ry
aWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gVGVzdGVkLWJ5OiBGcmFuw6dv
aXMgR3VlcnJheiA8a3Vicmlja0BmZ3Y2Lm5ldD4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2RyaWdv
IFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gTGluazogDQo+ID4gaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwNzE3MjIzNDUxLjI1OTUt
MS1kaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbQ0KPiA+IChjaGVycnkgcGlja2VkIGZyb20g
Y29tbWl0DQo+ID4gYjVlYTljOTMzNzAwN2Q2ZTcwMDI4MGM4YTYwYjRlMTBkMDcwZmI1MykNCj4g
DQo+IFRoZXJlIGlzIG5vIHN1Y2ggY29tbWl0IGluIExpbnVzJ3Mga2VybmVsIHRyZWUgOigNCj4g
DQoNCkl0IGlzIHN0aWxsIG9uIGRybS1pbnRlbC9kcm0taW50ZWwtbmV4dC1xdWV1ZWQgLQ0Kc3No
Oi8vZ2l0LmZyZWVkZXNrdG9wLm9yZy9naXQvZHJtLWludGVsDQoNClJvZHJpZ28gZG8geW91IGtu
b3cgd2hlbiBpcyB0aGUgbmV4dCBwdWxsLXJlcXVlc3QgdG8gTGludXM/DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
