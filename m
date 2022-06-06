Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C9453E4A5
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jun 2022 15:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6057B10E364;
	Mon,  6 Jun 2022 13:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C7F910E364
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jun 2022 13:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654521329; x=1686057329;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=bWex5xecNOr+UUU0SBTCeQFfvzLUNfX83+CjW0eX9hc=;
 b=CeH/OxQBb+kO49ZXD6zQpBqUHNWY6PzhjP0OffQwqqFWnMDLIlMD4WNw
 BPbAXL/HACpu3LhVzI9Xq7ksFa4m0af6w0hBcSroO5gMhpbdXPXEmQ7eV
 9rTP3uta67eB1IHrU6IPf+wkBFp66QKzJxEkYBTHdZ249xWpCX57zdRKL
 ScXIPM/09Gy1gM+WPjJGvCGKA8N45KoXTpPTfA/VQdJoJQXRR+XKRCuGE
 zy/4EeZGSsySsjkl77kRGmLBU9GP5PQUyNOJuwXXxqXoGhh+CxBj4GaKs
 vY0SzPTYyxIVzIguIy0qduhL4qXGmKBSgx8wvRU3YwfnqqTrFLZ8/J+ja w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="362998993"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="362998993"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 06:15:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="554448611"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 06 Jun 2022 06:15:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 06:15:25 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 6 Jun 2022 06:15:24 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Mon, 6 Jun 2022 06:15:24 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Hogander,
 Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to check
 if headless sku
Thread-Index: AQHYdzLK8UjJiA9xg02ohQjugVdPQa0+FgmAgAAInwCAADdiAIAEKJsAgAADxgCAAFN8AA==
Date: Mon, 6 Jun 2022 13:15:24 +0000
Message-ID: <8a83b4595e603df3ed8975a31425639b714b57bd.camel@intel.com>
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
 <20220603101411.3087789-2-jouni.hogander@intel.com>
 <87k09xor2e.fsf@intel.com>
 <eeac0a25543a75cbeb39eaa61a1abbfdcfb94a6f.camel@intel.com>
 <0069e1028bfccf5f1c3f7b8d8a129c202f4cf764.camel@intel.com>
 <f69cf635fc2da871baee0bbbbf946addf9a35ddf.camel@intel.com>
 <875ylenr4t.fsf@intel.com>
In-Reply-To: <875ylenr4t.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <6EC2CBC1BD6D9444B23387FC6613DA14@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to
 check if headless sku
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTA2LTA2IGF0IDExOjE2ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAwNiBKdW4gMjAyMiwgIkhvZ2FuZGVyLCBKb3VuaSIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4gd3JvdGU6DQo+ID4gT24gRnJpLCAyMDIyLTA2LTAzIGF0IDE2OjMyICswMDAwLCBT
b3V6YSwgSm9zZSB3cm90ZToNCj4gPiA+IE9uIEZyaSwgMjAyMi0wNi0wMyBhdCAxMzoxNCArMDAw
MCwgSG9nYW5kZXIsIEpvdW5pIHdyb3RlOg0KPiA+ID4gPiBPbiBGcmksIDIwMjItMDYtMDMgYXQg
MTU6NDMgKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+ID4gPiA+IE9uIEZyaSwgMDMgSnVu
IDIwMjIsIEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4g
PiA+IHdyb3RlOg0KPiA+ID4gPiA+ID4gRXhwb3J0IGhlYWRsZXNzIHNrdSBiaXQgKGJpdCAxMykg
ZnJvbSBvcHJlZ2lvbi0+aGVhZGVyLT5wY29uIGFzDQo+ID4gPiA+ID4gPiBhbg0KPiA+ID4gPiA+
ID4gaW50ZXJmYWNlIHRvIGNoZWNrIGlmIG91ciBkZXZpY2UgaXMgaGVhZGxlc3MgY29uZmlndXJh
dGlvbi4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gQnNwZWM6IDUzNDQxDQo+ID4gPiA+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfb3ByZWdpb24uYyB8IDEyDQo+ID4gPiA+ID4gPiArKysrKysrKysrKysNCj4g
PiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmgg
fCAgNyArKysrKysrDQo+ID4gPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25z
KCspDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMNCj4gPiA+ID4gPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5jDQo+ID4gPiA+ID4gPiBpbmRleCBm
MzFlOGMzZjhjZTAuLmVhYjNmMmU2Yjc4NiAxMDA2NDQNCj4gPiA+ID4gPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYw0KPiA+ID4gPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5jDQo+ID4gPiA+
ID4gPiBAQCAtNTMsNiArNTMsOCBAQA0KPiA+ID4gPiA+ID4gICNkZWZpbmUgTUJPWF9BU0xFX0VY
VEJJVCg0KS8qIE1haWxib3ggIzUgKi8NCj4gPiA+ID4gPiA+ICAjZGVmaW5lIE1CT1hfQkFDS0xJ
R0hUQklUKDUpLyogTWFpbGJveCAjMg0KPiA+ID4gPiA+ID4gKHZhbGlkIGZyb20gdjMueCkgKi8N
Cj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gKyNkZWZpbmUgUENPTl9IRUFETEVTU19TS1VCSVQo
MTMpDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gSGVyZSB3ZSBnbyBhZ2Fpbi4NCj4gPiA+ID4gPiAN
Cj4gPiA+ID4gPiBXaGF0IGRvZXMgaGVhZGxlc3MgbWVhbiBoZXJlPyBUaGUgc3BlYyBkb2VzIG5v
dCBzYXkuIERvZXMgaXQgaGF2ZQ0KPiA+ID4gPiA+IGRpc3BsYXkgaGFyZHdhcmU/IEFwcGFyZW50
bHkgeWVzLCBzaW5jZSBvdGhlcndpc2Ugd2Ugd291bGRuJ3QgYmUNCj4gPiA+ID4gPiBoZXJlLg0K
PiA+ID4gPiANCj4gPiA+ID4gVGhpcyBpcyBmb3IgaHlicmlkIHNldHVwIHdpdGggc2V2ZXJhbCBk
aXNwbGF5IGh3IGFuZCB0aGUgcGFuZWwgd29udA0KPiA+ID4gPiBiZQ0KPiA+ID4gPiBjb25uZWN0
ZWQgaW50byBkZXZpY2UgZHJpdmVuIGJ5IGk5MTUgZHJpdmVyLg0KPiA+ID4gPiANCj4gPiA+ID4g
PiBXZSBoYXZlIElOVEVMX0RJU1BMQVlfRU5BQkxFRCgpIHdoaWNoIHNob3VsZCBkbyB0aGUgcmln
aHQgdGhpbmcNCj4gPiA+ID4gPiB3aGVuDQo+ID4gPiA+ID4geW91DQo+ID4gPiA+ID4gZG8gaGF2
ZSBkaXNwbGF5IGhhcmR3YXJlIGFuZCBoYXZlIGRvbmUgb3V0cHV0IHNldHVwIGV0Yy4gYnV0IHdh
bnQNCj4gPiA+ID4gPiB0bw0KPiA+ID4gPiA+IGZvcmNlIHRoZW0gZGlzY29ubmVjdGVkLCBpLmUu
IHlvdSB0YWtlIHRoZSBoYXJkd2FyZSBvdmVyDQo+ID4gPiA+ID4gcHJvcGVybHksDQo+ID4gPiA+
ID4gYnV0DQo+ID4gPiA+ID4gcHV0IGl0IHRvIHNsZWVwIGZvciBwb3dlciBzYXZpbmdzLg0KPiA+
ID4gPiA+IA0KPiA+ID4gPiA+IE1heWJlIHdlIHNob3VsZCBib2x0IHRoaXMgb3ByZWdpb24gY2hl
Y2sgaW4gdGhhdCBtYWNybz8NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBNYXliZSB3ZSBuZWVkIHRv
IHVzZSBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoKSBhbHNvIHRvIHByZXZlbnQNCj4gPiA+ID4gPiBw
b2xsaW5nLg0KPiA+ID4gPiANCj4gPiA+ID4gVGhhbmsgeW91IGZvciBwb2ludGluZyB0aGlzIG91
dC4gSEFTX0RJU1BMQVkgSSBhbHJlYWR5IG5vdGljZSBhbmQNCj4gPiA+ID4gaXQncw0KPiA+ID4g
PiBub3Qgc3VpdGFibGUgZm9yIHdoYXQgd2Ugd2FudCBoZXJlLiBJIHRoaW5rIGJvbHRpbmcgdGhp
cyBjaGVjayBpbnRvDQo+ID4gPiA+IElOVEVMX0RJU1BMQVlfRU5BQkxFRCBhcyB5b3Ugc3VnZ2Vz
dGVkIGlzIGVub3VnaC4gVGhhdCB3aWxsIHByZXZlbnQNCj4gPiA+ID4gd2FraW5nIHVwIHRoZSBo
dyBpbnRvIEQwIHN0YXRlIGZvciBwb2xsaW5nLg0KPiA+ID4gDQo+ID4gPiBBIGhlYWRsZXNzIHNr
dSBzaG91bGQgbm90IGhhdmUgYW55IERESSBwb3J0cyBlbmFibGVkLCBtdWNoIGVhc2llcg0KPiA+
ID4gY2hlY2sgZm9yIHRoYXQuDQo+ID4gDQo+ID4gQ291bGQgeW91IHBsZWFzZSBjbGFyaWZ5IHRo
aXMgYSBiaXQ/IFdoYXQgZXhhY3RseSB5b3UgYXJlIHRoaW5raW5nDQo+ID4gc2hvdWxkIGJlIGNo
ZWNrZWQ/IEFyZW4ndCBEREkgcG9ydCBhbHNvIGRpc2FibGVkIHdoZW4gbm9uLWhlYWRsZXNzDQo+
ID4gc2V0dXAgaXMgaW4gcnVudGltZSBzdXNwZW5kPw0KPiANCj4gSSBhbHNvIHRoaW5rICJoZWFk
bGVzcyIgYW5kICJEREkgcG9ydHMgZW5hYmxlZCIgbmVlZCBjbGFyaWZpY2F0aW9uLiBUaGV5DQo+
IGFyZSBvdmVybG9hZGVkIHRlcm1zLg0KDQpJbiBhIHByb3Blcmx5IHNldHVwIGhlYWRsZXNzIHNr
dSwgVkJUIHNob3VsZCBoYXZlIGFsbCBwb3J0cyBtYXJrZWQgYXMgZGlzYWJsZWQuDQoNCmludGVs
X2RkaV9pbml0KCkgew0KCS4uLg0KDQoJaWYgKCFpbml0X2RwICYmICFpbml0X2hkbWkpIHsNCgkJ
ZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQoJCQkgICAgIlZCVCBzYXlzIHBvcnQgJWMgaXMg
bm90IERWSS9IRE1JL0RQIGNvbXBhdGlibGUsIHJlc3BlY3QgaXRcbiIsDQoJCQkgICAgcG9ydF9u
YW1lKHBvcnQpKTsNCgkJcmV0dXJuOw0KCX0NCg0KDQpBbGwgRERJIHNob3VsZCByZXR1cm4gZWFy
bGllciBpbiB0aGUgYWJvdmUuDQpTbyB5b3UgY2FuIHVzZSB0aGUgbnVtYmVyIG9mIGVuYWJsZWQg
Y29ubmVjdG9ycyB0byBrbm93IGlmIGl0IGlzIGEgaGVhZGxlc3Mgc2t1IG9yIG5vdC4NCg0KU28g
eW91IGNhbiBza2lwIHRoZSBwb29saW5nIGluIGNhc2UgdGhlcmUgaXMgbm8gY29ubmVjdG9ycy4N
Cg0KPiANCj4gU2VlbXMgdG8gbWUgdGhlIHVzZSBjYXNlIGhlcmUgY291bGQgYmUgdGhlIHNhbWUg
YXMNCj4gSU5URUxfRElTUExBWV9FTkFCTEVEKCksIGFuZCB0aGF0IGNvdWxkIGJlbmVmaXQgZnJv
bSBwb2xsaW5nIGRpc2FibGUuDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0KPiA+ICANCj4g
PiA+IA0KPiA+ID4gPiA+IEkgY2VydGFpbmx5IHdvdWxkIG5vdCB3YW50IHRvIGFkZCBhbm90aGVy
IG1vZGUgdGhhdCdzIHNlcGFyYXRlDQo+ID4gPiA+ID4gZnJvbQ0KPiA+ID4gPiA+IEhBU19ESVNQ
TEFZKCkgYW5kIElOVEVMX0RJU1BMQVlfRU5BQkxFRCgpLg0KPiA+ID4gPiANCj4gPiA+ID4gTm8g
bmVlZCBmb3IgdGhpcy4gSSB0aGluayB3ZSBjYW4gZ28gd2l0aCBJTlRFTF9ESVNQTEFZX0VOQUJM
RUQuDQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiAgc3RydWN0IG9wcmVnaW9uX2hlYWRlciB7
DQo+ID4gPiA+ID4gPiAgdTggc2lnbmF0dXJlWzE2XTsNCj4gPiA+ID4gPiA+ICB1MzIgc2l6ZTsN
Cj4gPiA+ID4gPiA+IEBAIC0xMTM1LDYgKzExMzcsMTYgQEAgc3RydWN0IGVkaWQNCj4gPiA+ID4g
PiA+ICppbnRlbF9vcHJlZ2lvbl9nZXRfZWRpZChzdHJ1Y3QNCj4gPiA+ID4gPiA+IGludGVsX2Nv
bm5lY3RvciAqaW50ZWxfY29ubmVjdG9yKQ0KPiA+ID4gPiA+ID4gIHJldHVybiBuZXdfZWRpZDsN
Cj4gPiA+ID4gPiA+ICB9DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ICtib29sIGludGVsX29w
cmVnaW9uX2hlYWRsZXNzX3NrdShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiA+ID4g
Kmk5MTUpDQo+ID4gPiA+ID4gPiArew0KPiA+ID4gPiA+ID4gK3N0cnVjdCBpbnRlbF9vcHJlZ2lv
biAqb3ByZWdpb24gPSAmaTkxNS0+b3ByZWdpb247DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4g
PiAraWYgKCFvcHJlZ2lvbi0+aGVhZGVyKQ0KPiA+ID4gPiA+ID4gK3JldHVybiBmYWxzZTsNCj4g
PiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICtyZXR1cm4gb3ByZWdpb24tPmhlYWRlci0+cGNvbiAm
IFBDT05fSEVBRExFU1NfU0tVOw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFdlIHNob3VsZCBwcm9i
YWJseSBzdGFydCBjaGVja2luZyBmb3Igb3ByZWdpb24gdmVyc2lvbiBmb3IgdGhpcw0KPiA+ID4g
PiA+IHN0dWZmDQo+ID4gPiA+ID4gdG9vLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4g
WWVzLCBJIHdpbGwgZG8gdGhpcyBjaGFuZ2UuDQo+ID4gPiA+IA0KPiA+ID4gPiA+IEJSLA0KPiA+
ID4gPiA+IEphbmkuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiArfQ0KPiA+ID4gPiA+ID4gKw0K
PiA+ID4gPiA+ID4gIHZvaWQgaW50ZWxfb3ByZWdpb25fcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpDQo+ID4gPiA+ID4gPiAgew0KPiA+ID4gPiA+ID4gIHN0cnVjdCBpbnRl
bF9vcHJlZ2lvbiAqb3ByZWdpb24gPSAmaTkxNS0+b3ByZWdpb247DQo+ID4gPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5oDQo+
ID4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24u
aA0KPiA+ID4gPiA+ID4gaW5kZXggODJjYzBiYTM0YWY3Li41YWQ5NmUxZDgyNzggMTAwNjQ0DQo+
ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVn
aW9uLmgNCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfb3ByZWdpb24uaA0KPiA+ID4gPiA+ID4gQEAgLTc2LDYgKzc2LDggQEAgaW50IGludGVsX29w
cmVnaW9uX25vdGlmeV9hZGFwdGVyKHN0cnVjdA0KPiA+ID4gPiA+ID4gZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsDQo+ID4gPiA+ID4gPiAgaW50IGludGVsX29wcmVnaW9uX2dldF9wYW5lbF90
eXBlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiA+ID4gPiAqZGV2X3ByaXYpOw0KPiA+
ID4gPiA+ID4gIHN0cnVjdCBlZGlkICppbnRlbF9vcHJlZ2lvbl9nZXRfZWRpZChzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yDQo+ID4gPiA+ID4gPiAqY29ubmVjdG9yKTsNCj4gPiA+ID4gPiA+IA0KPiA+
ID4gPiA+ID4gK2Jvb2wgaW50ZWxfb3ByZWdpb25faGVhZGxlc3Nfc2t1KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlDQo+ID4gPiA+ID4gPiAqaTkxNSk7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4g
PiAgI2Vsc2UgLyogQ09ORklHX0FDUEkqLw0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiAgc3Rh
dGljIGlubGluZSBpbnQgaW50ZWxfb3ByZWdpb25fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUNCj4gPiA+ID4gPiA+ICpkZXZfcHJpdikNCj4gPiA+ID4gPiA+IEBAIC0xMjcsNiArMTI5LDEx
IEBAIGludGVsX29wcmVnaW9uX2dldF9lZGlkKHN0cnVjdA0KPiA+ID4gPiA+ID4gaW50ZWxfY29u
bmVjdG9yDQo+ID4gPiA+ID4gPiAqY29ubmVjdG9yKQ0KPiA+ID4gPiA+ID4gIHJldHVybiBOVUxM
Ow0KPiA+ID4gPiA+ID4gIH0NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gK2Jvb2wgaW50ZWxf
b3ByZWdpb25faGVhZGxlc3Nfc2t1KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiA+ID4g
PiAqaTkxNSkNCj4gPiA+ID4gPiA+ICt7DQo+ID4gPiA+ID4gPiArcmV0dXJuIGZhbHNlOw0KPiA+
ID4gPiA+ID4gK30NCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICAjZW5kaWYgLyogQ09ORklH
X0FDUEkgKi8NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gICNlbmRpZg0KPiA+IA0KPiANCg0K
