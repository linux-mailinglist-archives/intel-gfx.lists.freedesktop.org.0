Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB5757950B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 10:12:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4626911A50E;
	Tue, 19 Jul 2022 08:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E03411A4EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 08:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658218364; x=1689754364;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DJfPrLsMN7bTTFLvYUTuSBhlJ6lIqzaXMXdOJHLP3Gw=;
 b=fglV2KCm7U7PlT6Hscm+jeHR1ZG7/Ddpr/msILHoPs2th47fY1bKmpNj
 LJ8zo5Op08GiN8QA2EGk0mOTwyWnorUHEqvp12GmAzCoTLvJlk4FlTZo9
 zcMXr1QCJFoJlq04npelDo7W1euuheWmEjSXIVu9c+pzReU+8Ak6rgpPO
 sTg0WhNzzO1I3vSE56U6ez9T1oCFBy8Ep+iKzvhW3Y0OrBY8M081gwLxc
 rpT/VZCkywIGBO/o7dHmFFInmP0zrRc7A6ZMCCA30gnYcLwT9/3+c9li6
 ueQCf84M37/t3jBUrd7O7B8Pse2dogXmoiCURrwz+GZlPNu6Eu10c7frh w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="266206968"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="266206968"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 01:12:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="630239340"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 19 Jul 2022 01:12:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 01:12:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 01:12:42 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Tue, 19 Jul 2022 01:12:42 -0700
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/dp: wait on timeout before retry
Thread-Index: AQHYihUObgp6TCpwhUCQ9chkYp4RY61uTzQAgABx0ICAFdB8AIAA5z/g
Date: Tue, 19 Jul 2022 08:12:42 +0000
Message-ID: <4948e0cf64c742859d89e07a6820f4c7@intel.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
 <20220704072352.1331682-1-arun.r.murthy@intel.com>
 <YsL1Afbj7Mxx/0aF@intel.com>
 <DM6PR11MB3177D9828A0FEBB8668DD2DCBA8C9@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3177D9828A0FEBB8668DD2DCBA8C9@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ville.syrjala@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-originating-ip: [10.108.32.68]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: wait on timeout before retry
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
Cc: "tprevite@gmail.com" <tprevite@gmail.com>, "Nikula,
 Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zanoni,
 Paulo R" <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTXVydGh5LCBBcnVuIFIg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIEp1bHkgMTgsIDIwMjIg
NDo0OSBQTQ0KPiBUbzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFphbm9uaSwgUGF1
bG8gUiA8cGF1bG8uci56YW5vbmlAaW50ZWwuY29tPjsNCj4gdHByZXZpdGVAZ21haWwuY29tOyBT
aGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IE5pa3VsYSwgSmFuaQ0KPiA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSRTogW1BBVENIXSBkcm0vaTkxNS9kcDog
d2FpdCBvbiB0aW1lb3V0IGJlZm9yZSByZXRyeQ0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+ID4gU2VudDogTW9uZGF5LCBKdWx5IDQsIDIwMjIgNzo0MSBQTQ0KPiA+IFRv
OiBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+ID4gQ2M6IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFphbm9uaSwgUGF1bG8gUg0KPiA+IDxwYXVsby5y
Lnphbm9uaUBpbnRlbC5jb20+OyB0cHJldml0ZUBnbWFpbC5jb207IFNoYW5rYXIsIFVtYQ0KPiA+
IDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVs
LmNvbT4NCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS9kcDogd2FpdCBvbiB0aW1l
b3V0IGJlZm9yZSByZXRyeQ0KPiA+DQo+ID4gT24gTW9uLCBKdWwgMDQsIDIwMjIgYXQgMTI6NTM6
NTJQTSArMDUzMCwgQXJ1biBSIE11cnRoeSB3cm90ZToNCj4gPiA+IE9uIGxpbmt0cmFpbmluZyBl
cnJvci90aW1lb3V0IGJlZm9yZSByZXRyeSBuZWVkIHRvIHdhaXQgZm9yIDQwMHVzZWMNCj4gPiA+
IGFzIHBlciB0aGUgRFAgQ1RTIHNwZWMxLjINCj4gPg0KPiA+IHMvQ1RTLy8NCj4gPg0KPiA+ID4g
VW5kZXIgc2VjdGlvbiAyLjcuMiBBVVggVHJhbnNhY3Rpb24gUmVzcG9uc2UvUmVwbHkgVGltZS1v
dXRzIEFVWA0KPiA+ID4gUmVwbGllciAodGhlIHVQYWNrZXQgUlgpIG11c3Qgc3RhcnQgc2VuZGlu
ZyB0aGUgcmVwbHkgYmFjayB0byB0aGUNCj4gPiA+IEFVWCByZXF1ZXN0ZXIgKHRoZSB1UGFja2V0
IFRYKSB3aXRoaW4gdGhlIHJlc3BvbnNlIHBlcmlvZCBvZiAzMDDOvHMuDQo+ID4gPiBUaGUgdGlt
ZXIgZm9yIFJlc3BvbnNlIFRpbWUtb3V0IHN0YXJ0cyB0aWNraW5nIGFmdGVyIHRoZSB1UGFja2V0
IFJYDQo+ID4gPiBoYXMgZmluaXNoZWQgcmVjZWl2aW5nIHRoZSBBVVggU1RPUCBjb25kaXRpb24g
d2hpY2ggZW5kcyB0aGUgQVVYDQo+ID4gPiBSZXF1ZXN0DQo+ID4gdHJhbnNhY3Rpb24uDQo+ID4g
PiBUaGUgdGltZXIgaXMgcmVzZXQgZWl0aGVyIHdoZW4gdGhlIFJlc3BvbnNlIFRpbWUtb3V0IHBl
cmlvZCBoYXMNCj4gPiA+IGVsYXBzZWQgb3Igd2hlbiB0aGUgdVBhY2tldCBSWCBoYXMgc3RhcnRl
ZCB0byBzZW5kIHRoZSBBVVggU3luYw0KPiA+ID4gcGF0dGVybiAod2hpY2ggZm9sbG93cw0KPiA+
ID4gMTAgdG8gMTYgYWN0aXZlIHByZS1jaGFyZ2UgcHVsc2VzKSBmb3IgdGhlIFJlcGx5IHRyYW5z
YWN0aW9uLiBJZiB0aGUNCj4gPiA+IHVQYWNrZXQgVFggZG9lcyBub3QgcmVjZWl2ZSBhIHJlcGx5
IGZyb20gdGhlIHVQYWNrZXQgUlggaXQgbXVzdCB3YWl0DQo+ID4gPiBmb3IgYSBSZXBseSBUaW1l
LW91dCBwZXJpb2Qgb2YgNDAwdXMgYmVmb3JlIGluaXRpYXRpbmcgdGhlIG5leHQgQVVYDQo+ID4g
PiBSZXF1ZXN0IHRyYW5zYWN0aW9uLiBUaGUgdGltZXIgZm9yIHRoZSBSZXBseSBUaW1lLW91dCBz
dGFydHMgdGlja2luZw0KPiA+ID4gYWZ0ZXIgdGhlIHVQYWNrZXQgVFggaGFzIGZpbmlzaGVkIHNl
bmRpbmcgdGhlIEFVWCBTVE9QIGNvbmRpdGlvbi4NCj4gPiA+DQo+ID4gPiBUaGUgcGF0Y2ggd2l0
aCBjb21taXQgNzRlYmYyOTRhMWRkICgiZHJtL2k5MTU6IEFkZCBhIGRlbGF5IGluDQo+ID4gPiBE
aXNwbGF5cG9ydCBBVVggdHJhbnNhY3Rpb25zIGZvciBjb21wbGlhbmNlIHRlc3RpbmciKSByZW1v
dmVzIHRoaXMNCj4gPiA+IGRlbGF5IG1lbnRpb25pbmcgdGhlIGhhcmR3YXJlIGFscmVhZHkgbWVl
dHMgdGhpcyByZXF1aXJlbWVudCwgYnV0IGFzDQo+ID4gPiBwZXIgdGhlIHNwZWMgdGhlIGRlbGF5
IG1lbnRpb25lZCBpbiB0aGUgc3BlYyBzcGVjaWZpZXMgaG93IGxvbmcgdG8NCj4gPiA+IHdhaXQg
Zm9yIHRoZSByZWNlaXZlciByZXNwb25zZSBiZWZvcmUgdGltZW91dC4gU28gdGhlIGRlbGF5IGhl
cmUgdG8NCj4gPiA+IHdhaXQgZm9yIHRpbWVvdXQgYW5kIG5vdCBhIGRlbGF5IGFmdGVyIHRpbWVv
dXQuIFRoZSBEUCBzcGVjDQo+ID4gPiBzcGVjaWZpZXMgYSBkZWxheSBhZnRlciB0aW1lb3V0IGFu
ZCBoZW5jZSBhZGRpbmcgdGhpcyBkZWxheS4NCj4gPg0KPiA+IE5vdCBzdXJlIHdoYXQgeW91J3Jl
IHNheWluZyBoZXJlLiBUaGUgc3BlYyBzdGF0ZXMgdGhlIHJlcGx5IHRpbWVvdXQNCj4gPiBzaG91
bGQgc3RhcnQgY291bnRpbmcgb25jZSB0aGUgVFggaGFzIHNlbnQgdGhlIEFVWCBTVE9QLCBhbmQg
Z2V0cw0KPiA+IHJlc2V0IHdoZW4gdGhlIHJlcGx5IEFVWCBTWU5DIGlzIGRldGVjdGVkLg0KPiA+
DQo+ID4gSWYgdGhhdCBkb2Vzbid0IG1hdGNoIHdoYXQgdGhlIGhhcmR3YXJlIGlzIGRvaW5nIHRo
ZW4gd2UgcmVhbGx5IG5lZWQNCj4gPiB0byBnZXQgYnNwZWMgdXBkYXRlZCB0byBzYXkgd2hhdCBp
cyBhY3R1YWxseSBoYXBwZW5pbmcuDQo+ID4NCj4gPiBPaCwgYW5kIHRoZSByZXBseSB0aW1lb3V0
IGhhcyBiZWVuIGluY3JlYXNlZCB0byAzLjJtcyBpbiBsYXRlcg0KPiA+IHJldmlzaW9ucyBvZiB0
aGUgc3BlYyB0byBkZWFsIHdpdGggTFRUUFJzLiBXZSBzaG91bGQgYWRqdXN0IHRoZSBjb2RlIHRv
IG1hdGNoLg0KPiA+DQo+IFdpbGwgdGFrZSB0aGlzIHNlcGFyYXRlbHkhDQoNCkhpIEFydW4sDQpJ
IHdvdWxkIHN1Z2dlc3QgdG8gY3JlYXRlIGFuIGlzc3VlIHRvIHRyYWNrIHRoZSBMVFRQUiB3b3Jr
IGFuZCB2YWxpZGF0ZS4gQWxzbyBnZXQgdGhlIGJzcGVjDQp1cGRhdGVkIHRvIG1hdGNoIHRoZSBo
YXJkd2FyZSBiZWhhdmlvci4NCg0KV2l0aCBhYm92ZSBkb25lLCB3ZSBjYW4gdGFrZSB0aGlzIHBh
dGNoIHRvIHVuYmxvY2sgbXVsdGlwbGUgQ0kgaXNzdWVzLg0KQFZpbGxlIFN5cmrDpGzDpCBIb3Bl
IHRoaXMgaXMgb2suDQoNClJlZ2FyZHMsDQpVbWEgU2hhbmthcg0KDQo+IFRoYW5rcyBhbmQgUmVn
YXJkcywNCj4gQXJ1biBSIE11cnRoeQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQo=
