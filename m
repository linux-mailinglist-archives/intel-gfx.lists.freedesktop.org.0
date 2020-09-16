Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 303CA26C9AF
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 21:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B516EACC;
	Wed, 16 Sep 2020 19:17:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD0A6EACC
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 19:17:11 +0000 (UTC)
IronPort-SDR: 7tjt8l/zUgZkrJNLMMmYaPNQwmgsxeHKHe4yVvFsJgmNClWouie+WqCVpKlU3HE6nmJ7NHLIVB
 0x0PZ+baqHQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="177624652"
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="177624652"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 12:17:10 -0700
IronPort-SDR: BcQRtN7iSHgir/LJWRChMu3dOkkYKBRPpiITPLIIB5eLrBDsqKwCGdX4lNHb+1MJHeYppwgg5N
 KyxVy3MwewvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="287300727"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2020 12:17:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Sep 2020 12:17:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Sep 2020 12:17:09 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Wed, 16 Sep 2020 12:17:09 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9y?=
 =?utf-8?B?IGRybS9pOTE1L3BsbDogQ2VudHJhbGl6ZSBQTExfRU5BQkxFIHJlZ2lzdGVy?=
 =?utf-8?Q?_lookup_(rev4)?=
Thread-Index: AQHWh9LSS8dWZ1SjTU6ChKS4pQhdsalrxocA///lieA=
Date: Wed, 16 Sep 2020 19:17:09 +0000
Message-ID: <9e354f1a39124897b9f43abbf16f2d8a@intel.com>
References: <20200910234850.12709-1-anusha.srivatsa@intel.com>
 <159978425524.14123.1265738591680006266@emeril.freedesktop.org>
 <87d02lx22h.fsf@intel.com>
In-Reply-To: <87d02lx22h.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pll=3A_Centralize_PLL=5FENABLE_register_lookup_=28?=
 =?utf-8?q?rev4=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBTZXB0ZW1iZXIg
MTYsIDIwMjAgNjo1MSBBTQ0KPiBUbzogU3JpdmF0c2EsIEFudXNoYSA8YW51c2hhLnNyaXZhdHNh
QGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3Vi
amVjdDogUmU6IFtJbnRlbC1nZnhdIOKclyBGaS5DSS5DSEVDS1BBVENIOiB3YXJuaW5nIGZvciBk
cm0vaTkxNS9wbGw6DQo+IENlbnRyYWxpemUgUExMX0VOQUJMRSByZWdpc3RlciBsb29rdXAgKHJl
djQpDQo+IA0KPiBPbiBGcmksIDExIFNlcCAyMDIwLCBQYXRjaHdvcmsgPHBhdGNod29ya0BlbWVy
aWwuZnJlZWRlc2t0b3Aub3JnPiB3cm90ZToNCj4gPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiA+
DQo+ID4gU2VyaWVzOiBkcm0vaTkxNS9wbGw6IENlbnRyYWxpemUgUExMX0VOQUJMRSByZWdpc3Rl
ciBsb29rdXAgKHJldjQpDQo+ID4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzgxMTUwLw0KPiA+IFN0YXRlIDogd2FybmluZw0KPiA+DQo+ID4gPT0gU3Vt
bWFyeSA9PQ0KPiA+DQo+ID4gJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcA0KPiA+IGRh
YzIzNDMzOWMxNyBkcm0vaTkxNS9wbGw6IENlbnRyYWxpemUgUExMX0VOQUJMRSByZWdpc3RlciBs
b29rdXANCj4gPiAtOjM4OiBDSEVDSzpCUkFDRVM6IEJsYW5rIGxpbmVzIGFyZW4ndCBuZWNlc3Nh
cnkgYWZ0ZXIgYW4gb3BlbiBicmFjZSAneycNCj4gPiAjMzg6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYzoxNTQ6DQo+ID4gK3sNCj4gPiArDQo+ID4N
Cj4gPiAtOjM5OiBDSEVDSzpVTk5FQ0VTU0FSWV9QQVJFTlRIRVNFUzogVW5uZWNlc3NhcnkgcGFy
ZW50aGVzZXMNCj4gYXJvdW5kICdwbGwtPmluZm8tPmlkID09IERQTExfSURfRUhMX0RQTEw0Jw0K
PiA+ICMzOTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5jOjE1NToNCj4gPiArCWlmIChJU19FTEtIQVJUTEFLRShpOTE1KSAmJiAocGxsLT5pbmZvLT5p
ZCA9PSBEUExMX0lEX0VITF9EUExMNCkpDQo+ID4NCj4gPiAtOjQ0OiBDSEVDSzpMSU5FX1NQQUNJ
Tkc6IFBsZWFzZSBkb24ndCB1c2UgbXVsdGlwbGUgYmxhbmsgbGluZXMNCj4gPiAjNDQ6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYzoxNjA6DQo+ID4g
Kw0KPiA+ICsNCj4gPg0KPiA+IC06NDU6IENIRUNLOkJSQUNFUzogQmxhbmsgbGluZXMgYXJlbid0
IG5lY2Vzc2FyeSBiZWZvcmUgYSBjbG9zZSBicmFjZSAnfScNCj4gPiAjNDU6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYzoxNjE6DQo+ID4gKw0KPiA+
ICt9DQo+IA0KPiBXZSBoYXZlIHRoaXMgaW4gQ0kgc28gcGVvcGxlIGRvbid0IGhhdmUgdG8gYm90
aGVyIHdpdGggbWVudGlvbmluZyB0aGlzDQo+IHN0dWZmLiBCdXQgSSBkbyBleHBlY3QgcGVvcGxl
IHRvIGxvb2sgYXQgdGhlbSBhbmQgZml4IHRoZW0uDQoNClllcyBqYW5pLiBXaWxsIGRlZmluaXRl
bHkga2VlcCB0aGlzIGluIG1pbmQuDQoNCkFudXNoYQ0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0K
PiA+DQo+ID4gdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCA0IGNoZWNrcywgNjYgbGluZXMg
Y2hlY2tlZA0KPiA+DQo+ID4NCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRl
bCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
