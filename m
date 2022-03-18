Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1864DDBD0
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 15:40:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE7B10E9A8;
	Fri, 18 Mar 2022 14:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E0410E9A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 14:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647614410; x=1679150410;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YVEIMUpAibfXTDGzfJtXgPEcg7T/lLsBRCxtByDtsKs=;
 b=UbarmcOe2iUQgF9QsJGhSFoHuB+wMQadhD/Vhyb/QoQhcFgKJMRdKjEr
 M7W2qMI0qDLtoEof05/BI31/i966rBueJcxnvRxelpSspaUfOBjq6HN7Q
 b5jZhLQYgJ5avRDPc8dtG7HfRSTCvgnxQXm18Py/8hDNUnT/0Kc6IQJsd
 vefF6+anVRFbOlBaYA7Y2XdQWYL899r2JaAumdwf7ll8pX5BXYCkoAI7I
 LP8pq2dDlSiKt2joqBY3LIxklmLqFXbPyB0495nWIfovviDDdLT+RLF9a
 lI9cSOudNtGK2dDknS9nWfAQCiNvu4hmN4EIopKKuOP0My6Gh6nHZHQDw w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="257334603"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="257334603"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:40:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="647484624"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga004.jf.intel.com with ESMTP; 18 Mar 2022 07:40:09 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 18 Mar 2022 14:40:07 +0000
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Fri, 18 Mar 2022 07:40:06 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
Thread-Index: AQHYOqVt9C5fyYbzJ0256azdo8/uyazFhaqAgAAB4wCAAB/OAIAABSIA
Date: Fri, 18 Mar 2022 14:40:06 +0000
Message-ID: <fe43b96c70d9d29419b24373978d77a1ebf27b96.camel@intel.com>
References: <20220318085226.7348-1-stanislav.lisovskiy@intel.com>
 <530cc6962b181ee01e9c00a38190ab27e5940215.camel@intel.com>
 <f60950ea65708dc7f093f5939efb164225b186c6.camel@intel.com>
 <20220318142252.GA8522@intel.com>
In-Reply-To: <20220318142252.GA8522@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <CE5BB5F49E44B643883F8025F8FA665A@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTAzLTE4IGF0IDE2OjIyICswMjAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gRnJpLCBNYXIgMTgsIDIwMjIgYXQgMDI6Mjc6NTNQTSArMDIwMCwgU291emEs
IEpvc2Ugd3JvdGU6DQo+ID4gT24gRnJpLCAyMDIyLTAzLTE4IGF0IDA1OjIyIC0wNzAwLCBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIHdyb3RlOg0KPiA+ID4gT24gRnJpLCAyMDIyLTAzLTE4IGF0IDEw
OjUyICswMjAwLCBTdGFuaXNsYXYgTGlzb3Zza2l5IHdyb3RlOg0KPiA+ID4gPiBXZSBhcmUgY3Vy
cmVudGx5IGdldHRpbmcgRklGTyB1bmRlcnJ1bnMsIGluIHBhcnRpY3VsYXINCj4gPiA+ID4gd2hl
biBQU1IyIGlzIGVuYWJsZWQuIFRoZXJlIHNlZW0gdG8gYmUgbm8gZXhpc3Rpbmcgd29ya2Fyb3Vu
ZA0KPiA+ID4gPiBvciBwYXRjaGVzLCB3aGljaCBjYW4gZml4IHRoYXQgaXNzdWUod2VyZSBleHBl
Y3Rpbmcgc29tZSByZWNlbnQNCj4gPiA+ID4gc2VsZWN0aXZlIGZldGNoIHVwZGF0ZSBhbmQgREJ1
ZiBidy9TQUdWIGZpeGVzIHRvIGhlbHAsDQo+ID4gPiA+IHdoaWNoIHVuZm9ydHVuYXRlbHkgZGlk
bid0KS4NCj4gPiA+ID4gQ3VycmVudCBpZGVhIGlzIHRoYXQgaXQgbG9va3MgbGlrZSBmb3Igc29t
ZSByZWFzb24gdGhlDQo+ID4gPiA+IERCdWYgcHJlZmlsbCB0aW1lIGlzbid0IGVub3VnaCBvbmNl
IHdlIGV4aXQgUFNSMiwgZGVzcGl0ZSBpdHMNCj4gPiA+ID4gdGhlb3JldGljYWxseSBjb3JyZWN0
Lg0KPiA+ID4gPiBTbyBidW1wIGl0IHVwIGEgYml0IGJ5IDE1JShtaW5pbXVtIGV4cGVyaW1lbnRh
bCBhbW91bnQgcmVxdWlyZWQNCj4gPiA+ID4gdG8gZ2V0IGl0IHdvcmtpbmcpLCBpZiBQU1IyIGlz
IGVuYWJsZWQuDQo+ID4gPiA+IEZvciBQU1IxIHRoZXJlIGlzIG5vIG5lZWQgaW4gdGhpcyBoYWNr
LCBzbyB3ZSBsaW1pdCBpdCBvbmx5DQo+ID4gPiA+IHRvIFBTUjIgYW5kIEFsZGVybGFrZS4NCj4g
PiA+IA0KPiA+ID4gSXQgdGhpcyB3b3JrYXJvdW5kIG1lYW50IHRvIGJlIHBlcm1hbmVudD8gSWYg
eWVzIHdlIHNob3VsZCBmaWxlIGEgSFNEIGFuZCBnZXQgaGFyZHdhcmUgZm9sa3MgZmVlZGJhY2su
DQo+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNv
dnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDEzICsrKysr
KysrKysrKysNCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQo+ID4g
PiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
DQo+ID4gPiA+IGluZGV4IDg4ODhmZGE4YjcwMS4uMDk1Yjc5OTUwNzg4IDEwMDY0NA0KPiA+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4g
PiA+IEBAIC0yMzI1LDYgKzIzMjUsMTkgQEAgaW50IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2Rj
bGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gPiA+ICAJ
CQkJCWRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSkpOw0KPiA+ID4gPiAgCX0NCj4gPiA+ID4gIA0K
PiA+ID4gDQo+ID4gPiBQbGVhc2UgYWRkIHNvbWUgY29tbWVudCBpbiB0aGUgY29kZSBhYm91dCB0
aGlzIHdvcmthcm91bmQuDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gPiArCWlmIChJU19BTERFUkxB
S0VfUChkZXZfcHJpdikpIHsNCj4gPiA+ID4gKwkJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXI7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwkJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93aXRoX3Bz
cigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikgew0KPiA+ID4gPiArCQkJc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gPiA+ID4gKw0KPiA+ID4g
PiArCQkJaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7DQo+ID4gPiANCj4gPiA+IFlv
dSBzaG91bGQgY2hlY2sgdGhlIGhhc19wc3IyIGluIHRoZSBjcnRjX3N0YXRlLCBQU1IyIGNvdWxk
IGJlIGRpc2FibGVkIHdoZW4gdGhpcyBzdGF0ZSBpcyBjb21taXR0ZWQuDQo+ID4gDQo+ID4gQWgg
YW5kIGlmIGEgcmVtZW1iZXIgY29ycmVjdGx5IHRob3NlIHVuZGVycnVucyBvbmx5IGhhcHBlbnMg
aW4gYSBzY2VuYXJpbyB3aXRoIDQgcGlwZXMgZW5hYmxlZD8gb3IgaXQgYWxzbyBoYXBwZW5zIHdp
dGggMiBhbmQgMyBwaXBlcz8NCj4gPiBBbnl3YXlzIHdvdWxkIGJlIGJldHRlciB0byBuYXJyb3cg
ZG93biB0aGUgY2FzZXMgd2hlcmUgdGhlIHdvcmthcm91bmQgaXMgYXBwbGllZC4NCj4gPiBTbyBm
b3IgYXQgbGVhc3QgaW4gYSBjYXNlIHdpdGggYSBzaW5nbGUgcGlwZSBlbmFibGVkIHdlIGNhbiBo
YXZlIHRoZSBsb3dlc3QgY2RjbGsgYXMgcG9zc2libGUuIA0KPiANCj4gSSB3YXMgdGhpbmtpbmcg
dGhlIHNhbWUgaW5pdGlhbGx5LCBidXQgdGhpcyB1bmRlcnJ1biBpcyBvYnNlcnZlZCBpbiBsZXNz
ZXIgcGlwZSBjYXNlcywgd2hlbiBQU1IyIA0KPiBpcyBlbmFibGVkLg0KDQpQbGVhc2UgY2hlY2sg
aWYgYXQgbGVhc3QgdGhlIG9uZSBwaXBlIGNhc2UgcmVhbGx5IG5lZWQgdGhpcyBXQS4NCg0KPiAN
Cj4gU3Rhbg0KPiANCj4gPiANCj4gPiA+IA0KPiA+ID4gPiArCQkJCW1pbl9jZGNsayA9IERJVl9S
T1VORF9VUChtaW5fY2RjbGsgKiAxMDAsIDg1KTsNCj4gPiA+IA0KPiA+ID4gVGhpcyBpcyBub3Qg
aW5jcmVhc2luZyBieSAxNSUuDQo+ID4gPiANCj4gPiA+IG1pbl9jZGNsayA9IDUwMA0KPiA+ID4g
NTAwICogMTAwID0gNTAwMDANCj4gPiA+IDUwMDAwIC8gODUgPSA1ODguMjM1Mjk0MTE4DQo+ID4g
PiANCj4gPiA+IFdoaWxlIDE1JSBvZiA1MDAgaXMgNzUuDQo+ID4gPiANCj4gPiA+IEFsc28gaWYg
dGhlcmUgaXMgdHdvIENSVENzIHdpdGggUFNSMiBlbmFibGVkIHlvdSB3aWxsIGJ1bXAgbWluX2Nk
Y2xrIHR3aWNlLg0KPiA+ID4gDQo+ID4gPiA+ICsJCQkJYnJlYWs7DQo+ID4gPiA+ICsJCQl9DQo+
ID4gPiA+ICsJCX0NCj4gPiA+ID4gKwl9DQo+ID4gPiA+ICsNCj4gPiA+ID4gIAlpZiAobWluX2Nk
Y2xrID4gZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxKSB7DQo+ID4gPiA+ICAJCWRybV9kYmdfa21z
KCZkZXZfcHJpdi0+ZHJtLA0KPiA+ID4gPiAgCQkJICAgICJyZXF1aXJlZCBjZGNsayAoJWQga0h6
KSBleGNlZWRzIG1heCAoJWQga0h6KVxuIiwNCj4gPiA+IA0KPiA+IA0KDQo=
