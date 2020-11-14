Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 861182B3091
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 21:11:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D45C6E958;
	Sat, 14 Nov 2020 20:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FD186E958
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Nov 2020 20:11:44 +0000 (UTC)
IronPort-SDR: UVp9SxDdlRkrbvAA15fbq4f73+mzBqStUERD5F0oYaD75vALccxRHGgKsxj1tZwaY3Gao1RcSA
 zs3rR4KGH1Sw==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="170767745"
X-IronPort-AV: E=Sophos;i="5.77,477,1596524400"; d="scan'208";a="170767745"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2020 12:11:43 -0800
IronPort-SDR: qlKLFuISTTxgiLO4H5hv7YF2EE9WPlZ8tPmR70x1LeChfIzWU+Hhxe9WLY0jVXr3tkQjbjxJcq
 693NGRgCqjzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,479,1596524400"; d="scan'208";a="309952989"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by fmsmga007.fm.intel.com with ESMTP; 14 Nov 2020 12:11:26 -0800
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 14 Nov 2020 20:11:25 +0000
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9]) by
 irsmsx603.ger.corp.intel.com ([163.33.146.9]) with mapi id 15.01.1713.004;
 Sat, 14 Nov 2020 20:11:25 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Andrzej Kre <andrzej.kre@gmail.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] USB-C DP mode problem on linux
Thread-Index: AQHWpiOrGMyxiQamU0COIEe3FncuKqmgfJ0AgCYt8ICAAY24gA==
Date: Sat, 14 Nov 2020 20:11:25 +0000
Message-ID: <285671ba0a7e43d086327c120a632bd8@intel.com>
References: <CA+Gspvj6MpJsjFWQnhrVf971EpBoSvUk1DCyPr62N9nJUMOFcw@mail.gmail.com>
 <20201019142459.GM1667571@kuha.fi.intel.com>
 <20201020142516.GC3370607@ideak-desk.fi.intel.com>
 <CA+Gspvh-k7TJE5NObQp0eJa1oM=+kJVv-b5=UAitCr-q=y3eWA@mail.gmail.com>
In-Reply-To: <CA+Gspvh-k7TJE5NObQp0eJa1oM=+kJVv-b5=UAitCr-q=y3eWA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] USB-C DP mode problem on linux
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksDQpXaGF0IGlzIGV4YWN0IGdpdGxhYiBpc3N1ZSBmb3IgdGhpcywgY2FuIHlvdSBzZW5kIGxp
bms/IA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgQW5k
cnplaiBLcmUNCj4gU2VudDogcGVyamFudGFpIDEzLiBtYXJyYXNrdXV0YSAyMDIwIDIyLjI4DQo+
IFRvOiBEZWFrLCBJbXJlIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZzsgSGVpa2tpIEtyb2dlcnVzDQo+IDxoZWlra2kua3JvZ2VydXNA
bGludXguaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gVVNCLUMgRFAgbW9k
ZSBwcm9ibGVtIG9uIGxpbnV4DQo+IA0KPiBHb3QgaXQuDQo+IA0KPiBUaGFuayBZb3UgZm9yIHF1
aWNrIHJlcGx5aW5nLiBEdWUgdG8gY29yb25hdmlydXMgSSB3YXMgbm90IGFibGUgdG8gaXNzdWUg
YSB0aWNrZXQNCj4gcXVpY2tseSAuIEJ1dCBJIGNyZWF0ZWQgaXQuDQo+IA0KPiANCj4gQmVzdCBS
ZWdhcmRzLA0KPiANCj4gDQo+IHd0LiwgMjAgcGHFuiAyMDIwIG8gMTY6MjUgSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tDQo+IDxtYWlsdG86aW1yZS5kZWFrQGludGVsLmNvbT4gPiBuYXBp
c2HFgihhKToNCj4gDQo+IA0KPiAJSGksDQo+IA0KPiAJT24gTW9uLCBPY3QgMTksIDIwMjAgYXQg
MDU6MjQ6NTlQTSArMDMwMCwgSGVpa2tpIEtyb2dlcnVzIHdyb3RlOg0KPiAJPiBIaSBBbmRyemVq
LA0KPiAJPg0KPiAJPiBPbiBTYXQsIE9jdCAxNywgMjAyMCBhdCAwMTozNDo1NFBNICswMjAwLCBB
bmRyemVqIEtyZSB3cm90ZToNCj4gCT4gPiBIaSwNCj4gCT4gPg0KPiAJPiA+IEkga25vdyB0aGF0
IFlvdSB3ZXJlIGludm9sdmVkIGluIHdvcmtpbmcgb24gVVNCLUMgRFAgZHJpdmVycy4NCj4gCT4g
PiBZb3UgYXJlIG15IGxhc3QgY2hhbmNlIHRvIHJlc29sdmUgbXkgaXNzdWUuDQo+IAk+ID4NCj4g
CT4gPiBPbiBteSBIUCBsYXB0b3AgSSBoYXZlIEludGVsIFVIRCBHcmFwaGljcyA2MjAuDQo+IAk+
ID4gV2hlbiBJJ20gY29ubmVjdGluZyBteSA0SyBtb25pdG9yIHRvIERpc3BsYXkgUG9ydC4gSXQg
aXMgYXNzaWduaW5nIHRvDQo+IAk+ID4gRFAtMi0yIHNvY2tldCBhbmQgIEkgaGF2ZSBmdWxsIDM4
NDB4MjE2MCB3aXRoIDYwLjAwSHoNCj4gCT4gPiBCdXQsIHdoZW4gSSdtIGNvbm5lY3RpbmcgdGhl
IHNhbWUgbW9uaXRvciB0byB0aGUgVVNCLUMgcG9ydCwgdGhlbiBpdCBpcw0KPiAJPiA+IGNvbm5l
Y3RpbmcgdG8gdGhlIERQLTEgc29ja2V0IGFuZCB0aGUgbWF4aW11bSB0aGF0IGl0IGNhbiBhY2hp
ZXZlIGlzDQo+IAk+ID4gMzg0MHgyMTYwIHdpdGggb25seSAzMC4wMEh6Lg0KPiAJPiA+IEJ1dCBJ
J20gbWFraW5nIHNvbWUgdHJpY2s6IEknbSBjb25uZWN0aW5nIHRoZSBzYW1lIG1vbml0b3IgdGhy
b3VnaA0KPiBIRE1JLCBzbw0KPiAJPiA+IGl0IGlzIGNvbm5lY3RpbmcgdG8gRFAtMSBzb2NrZXQs
IGFuZCBzaW11bHRhbmVvdXNseSBJJ20gY29ubmVjdGluZyBVU0ItDQo+IEMsDQo+IAk+ID4gYW5k
IG5vdyBVU0ItQyBpcyBjb25uZWN0aW5nIHRvIERQLTItMiBzb2NrZXQgKGJlY2F1c2UgRFAtMSBp
cyBvY2N1cGllZA0KPiBieQ0KPiAJPiA+IEhETUkpIGFuZCBJIGNhbiBoYXZlIGZ1bGwgNEsgd2l0
aCA2MEh6Lg0KPiAJPiA+IFBsZWFzZSwgaGVscCBtZSwgaG93IHRvIGZvcmNlIFVTQi1DIHRvIGNv
bm5lY3QgYWx3YXlzIHRvIERQLTItMg0KPiBzb2NrZXQ/DQo+IAk+ID4gT3IgZG8gWW91IGtub3cg
bWF5YmUgd2hlcmUgaXMgdGhlIHByb2JsZW0/DQo+IAk+DQo+IAk+IFVuZm9ydHVuYXRlbHkgd2Ug
aGF2ZSBubyBjb250cm9sIG92ZXIgdGhlIG11eCBpbiB0aGUgb3BlcmF0aW5nIHN5c3RlbQ0KPiAJ
PiBvbiBTa3lsYWtlcywgYXQgbGVhc3QgaW4gVVNCIHN1YnN5c3RlbS4gSXQgYWxsIGhhcHBlbnMg
aW4gZmlybXdhcmUuDQo+IAk+IE1heWJlIGdyYXBoaWNzIHNpZGUgY2FuIGRvIHNvbWV0aGluZy4N
Cj4gCT4NCj4gCT4gQWRkaW5nIEphbmksIEltcmUsIFZpbGxlIGFuZCB0aGUgSW50ZWwgR0ZYIGxp
c3QuDQo+IA0KPiAJT24gU0tML0tCTCB0aGUgVVNCLUMgLT4gbmF0aXZlIERQL0hETUkgY29udmVy
c2lvbiBpcyBkb25lIGJ5IGFuIG9mZi1DUFUNCj4gCWNoaXAgYW5kIHRoZSBkaXNwbGF5IGRyaXZl
ciBkb2Vzbid0IGhhdmUgYSB3YXkgZWl0aGVyIHRvIGFmZmVjdCB0aGUNCj4gCW11eGluZy4NCj4g
DQo+IAlOb3Qgc3VyZSB3aHkgdGhpbmdzIHdvcmsgb24gRFAtMiBhbmQgbm90IG9uIERQLTEsIHRo
ZXJlIGlzIG5vIHBvcnQNCj4gCXNwZWNpZmljIGxpbWl0cyBvbiB0aGUgQ1BVIHNpZGUgdGhhdCB3
b3VsZCBleHBsYWluIHRoaXMuIFRoZXJlIGlzIGEgbGluaw0KPiAJdHJhaW5pbmcgZmFpbHVyZSBp
biB0aGUgbG9nLCBzbyB3b3VsZCBiZSBnb29kIHRvIHNlZSBtb3JlIGRldGFpbHMgb24NCj4gCXRo
YXQuIENvdWxkIHlvdSBmaWxlIGEgdGlja2V0IGF0DQo+IAlodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzDQo+IAlwcm92aWRpbmcgYSBmdWxsIGxvZyBib290
aW5nIHdpdGggZHJtLmRlYnVnPTB4MWUgZm9yIHRoZSB3b3JraW5nIGFuZA0KPiAJbm9uLXdvcmtp
bmcgY2FzZXM/DQo+IA0KPiAJVGhhbmtzLA0KPiAJSW1yZQ0KPiANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
