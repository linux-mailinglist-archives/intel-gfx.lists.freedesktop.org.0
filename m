Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A7E40CD6F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 21:50:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A7D6EA0F;
	Wed, 15 Sep 2021 19:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000C06EA0F
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 19:50:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="222471119"
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="222471119"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 12:50:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="553523720"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 15 Sep 2021 12:50:36 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 15 Sep 2021 12:50:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 15 Sep 2021 12:50:35 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Wed, 15 Sep 2021 12:50:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "daniel@ffwll.ch" <daniel@ffwll.ch>, "Mun, Gwan-gyeong"
 <gwan-gyeong.mun@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH CI 1/2] drm/i915/display/skl+: Drop frontbuffer rendering
 support
Thread-Index: AQHXpbMIFedAMa5Zo0aadx8lp+7gQ6ucmi+AgAACUgD////sgIAGc5gAgAKKwICAAGacgA==
Date: Wed, 15 Sep 2021 19:50:35 +0000
Message-ID: <609eac446cd062c48c247ad245699a0541c9fc5d.camel@intel.com>
References: <20210909194917.66433-1-jose.souza@intel.com>
 <YTpsh3WkLIDm96h7@intel.com>
 <32357a14fd9926ac5c332868e3aadfbb8105caf9.camel@intel.com>
 <YTpuaUI6rpPzHDFS@intel.com>
 <2a05f1b5555f5d5d0e66f447e4a8c51a4bb2905b.camel@intel.com>
 <YUH5wR96pc0D09BD@intel.com>
In-Reply-To: <YUH5wR96pc0D09BD@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <2BAA0E39DBA2184E982DE39381C0F5A5@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH CI 1/2] drm/i915/display/skl+: Drop
 frontbuffer rendering support
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

T24gV2VkLCAyMDIxLTA5LTE1IGF0IDE2OjQ4ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgU2VwIDEzLCAyMDIxIGF0IDEwOjU0OjE0UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMS0wOS0wOSBhdCAyMzoyOCArMDMwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gVGh1LCBTZXAgMDksIDIwMjEgYXQgMDg6MjM6MjBQTSAr
MDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiA+IE9uIFRodSwgMjAyMS0wOS0wOSBhdCAy
MzoyMCArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiA+IE9uIFRodSwgU2Vw
IDA5LCAyMDIxIGF0IDEyOjQ5OjE2UE0gLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3Jv
dGU6DQo+ID4gPiA+ID4gPiBCeSBub3cgYWxsIHRoZSB1c2Vyc3BhY2UgYXBwbGljYXRpb25zIHNo
b3VsZCBoYXZlIG1pZ3JhdGVkIHRvIGF0b21pYw0KPiA+ID4gPiA+ID4gb3IgYXQgbGVhc3QgYmUg
Y2FsbGluZyBEUk1fSU9DVExfTU9ERV9ESVJUWUZCLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
PiBXaXRoIHRoYXQgd2UgY2FuIGtpbGwgZnJvbnRidWZmZXIgcmVuZGVyaW5nIHN1cHBvcnQgaW4g
aTkxNSBmb3INCj4gPiA+ID4gPiA+IG1vZGVybiBwbGF0Zm9ybXMuDQo+ID4gPiA+ID4gPiANCj4g
PiA+ID4gPiA+IFNvIGhlcmUgY29udmVydGluZyBsZWdhY3kgQVBJcyBpbnRvIGF0b21pYyBjb21t
aXRzIHNvIGl0IGNhbiBiZQ0KPiA+ID4gPiA+ID4gcHJvcGVybHkgaGFuZGxlZCBieSBkcml2ZXIg
aTkxNS4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gU2V2ZXJhbCBJR1QgdGVzdHMgd2lsbCBm
YWlsIHdpdGggdGhpcyBjaGFuZ2VzLCBiZWNhdXNlIHNvbWUgdGVzdHMNCj4gPiA+ID4gPiA+IHdl
cmUgc3RyZXNzaW5nIHRob3NlIGZyb250YnVmZmVyIHJlbmRlcmluZyBzY2VuYXJpb3MgdGhhdCBu
byB1c2Vyc3BhY2UNCj4gPiA+ID4gPiA+IHNob3VsZCBiZSB1c2luZyBieSBub3csIGZpeGVzIHRv
IElHVCBzaG91bGQgYmUgc2VudCBzb29uLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gSSBqdXN0IGdhdmUgdGhpcyBhIHRyeSBoZXJlIGFuZCBpdCdzIHVudXNhYmxlLiBnbHhn
ZWFycyB3ZW50IGZyb20NCj4gPiA+ID4gPiA5MDAwIHRvIDEyMCBmcHMgKHdhcyBleHBlY3Rpbmcg
NjBmcHMgdGJoLCBub3Qgc3VyZSB3aHkgSSBnZXQNCj4gPiA+ID4gPiBkb3VibGUpLCBldmVyeXRo
aW5nIGxhZ3MgbGlrZSBtYWQsIGlmIEkgZHJhZyBhIHdpbmRvdyBhcm91bmQNCj4gPiA+ID4gPiBn
bHhnZWFycy9vdGhlciB3aW5kb3dzIHN0b3AgdXBkYXRpbmcgZW50aXJlbHksIGV0Yy4gTkFLDQo+
ID4gPiA+IA0KPiA+ID4gPiBDYW4geW91IHNoYXJlIHlvdXIgc2V0dXA/IFdoYXQgR1BVPyBEZXNr
dG9wIGVudmlyb25tZW50PyBNZXNhIHZlcnNpb24/IHJlc29sdXRpb25zIG9mIHNpbmtzPw0KPiA+
ID4gPiBXaWxsIHRyeSBpdCBpbiBteSBlbmQuDQo+ID4gPiANCj4gPiA+IERvZXNuJ3QgcmVhbGx5
IG1hdHRlciBhcyBsb25nIGFzIHlvdSBkb24ndCBoYXZlIGEgY29tcG9zaXRvciBtYWtpbmcgYQ0K
PiA+ID4gbWVzcyBvZiB0aGluZ3MuIFRoaXMgbWFjaGluZSBpcyBhIGNmbCBydW5uaW5nIG1hdGUg
dy8gY29tcG9zaXRvciBvZmYsDQo+ID4gPiBhbmQgc29tZSAxOTIweDEyMDAgZGlzcGxheS4NCj4g
PiA+IA0KPiA+IA0KPiA+IE1ha2luZyBkcm1fYXRvbWljX2hlbHBlcl9kaXJ0eWZiKCkgZG8gYSBu
b24tYmxvY2tpbmcgYXRvbWljIGNvbW1pdCBtYWtlcyB1c2VyIGV4cGVyaWVuY2UgcHJldHR5IHNp
bWlsYXIgdG8gdGhlIG9uZSB3aXRoIGNvbXBvc2l0aW5nIGVuYWJsZWQ6DQo+ID4gZHJtX2F0b21p
Y19jb21taXQoKSArIGNvbXBvc2l0b3Igb2ZmOiBodHRwczovL3lvdXR1LmJlL05CdDZzbVhzOTlV
DQo+ID4gZHJtX2F0b21pY19ub25ibG9ja2luZ19jb21taXQoKSArIGNvbXBvc2l0b3Igb2ZmOiBo
dHRwczovL3lvdXR1LmJlL1FpTWhrZUdYX0w4DQo+ID4gZHJtX2F0b21pY19ub25ibG9ja2luZ19j
b21taXQoKSArIGNvbXBvc2l0b3Igb246IGh0dHBzOi8veW91dHUuYmUvS2RwSnlKNWs2c1ENCj4g
PiANCj4gPiANCj4gPiBJIGRvIG5vdCBjb21wbGV0bHkgYWdyZWUgd2l0aCB0aGUgY29tbWVudCBp
biBkcm1fYXRvbWljX2hlbHBlcl9kaXJ0eWZiKCkgYWJvdXQgd2h5IGl0IHVzZXMgYSBibG9ja2lu
ZyBpbXBsZW1lbnRhdGlvbi4NCj4gPiBXaXRoIGZyb250YnVmZmVyIHJlbmRlcmluZyB0aGUgcmVn
aXN0ZXJzIGFyZSBwcm9ncmFtbWVkIGJ1dCB0aGUgY29udGVudCBjb3VsZCBvbmx5IHNob3cgdXAg
Zm9yIHVzZXIgYSB3aG9sZSBmcmFtZSBsYXRlci4NCj4gPiANCj4gPiBQZXJoYXBzIGlmIHRoaXMg
c29sdXRpb25zIGlzIGFjY2V0YWJsZSB3ZSBjb3VsZCBoYXZlIGEgbm9uLWJsb2NraW5nIHZlcnNp
b24gb2YgZHJtX2F0b21pY19oZWxwZXJfZGlydHlmYigpIHNvIHRoZSBkcml2ZXJzIGN1cnJlbnQg
dXNpbmcgaXQgZG9uJ3QgaGF2ZQ0KPiA+IHRoZWlyIGJlaGF2aW9yIGNoYW5nZWQuDQo+IA0KPiBO
b24tYmxvY2tpbmcgdXBkYXRlIHdvdWxkIG1ha2Ugc2Vuc2UgdG8gbWUsIHdoZXJlYXMgYSBibG9j
a2luZw0KPiB1cGRhdGUgbWFrZXMgbm8gc2Vuc2UgZ2l2ZW4gaG93IHRoaXMgaXMgdXNlZCBieSBh
Y3R1YWwgdXNlcnNwYWNlLg0KPiANCj4gQnV0IHRoaXMgc3RpbGwgY2hhbmdlcyB0aGUgd2hvbGUg
YXBwcm9hY2ggdG8gZWcuIEZCQyBudWtlcywgc28gaXQncw0KPiBnb2luZyB0byByZXF1aXJlIHNv
bWUgYWN0dWFsIHRob3VnaHQgYW5kIHRlc3RpbmcgdG8gbWFrZSBzdXJlIGl0DQo+IGFjdHVhbGx5
IHdvcmtzIGFzIGludGVuZGVkLiBJIHRoaW5rIGJ5IGp1c3QgZXNzZW50aWFsbHkgcGFnZSBmbGlw
cGluZw0KPiB0byB0aGUgc2FtZSBidWZmZXIgd2UncmUgZ29pbmcgdG8gZGVwZW5kIG9uIHNlbWkt
dW5kZWZpbmVkIGJlaGF2aW91cg0KPiBmb3IgRkJDLiBTbyBJJ20gYSBiaXQgd29ycmllZCB0aGF0
IHRoaXMgaXMgZ29pbmcgdG8gaW50cm9kdWNlIG5ldyBidWdzLg0KPiBJIGhhdmUgdmVyaWZpZWQg
b24gYW5jaWVudCBwbGF0Zm9ybXMgdGhhdCBGQkMgZG9lcyBpbiBmYWN0IGZsaXAgbnVrZQ0KPiB3
aGVuIGZsaXBwaW5nIHRvIHRoZSBzYW1lIGJ1ZmZlciAoYW5kIG5vdyB3ZSBldmVuIChhYil1c2Ug
dGhhdCBmYWN0DQo+IGluIHRoZSBmcm9udGJ1ZmZlciB0cmFja2luZyBjb2RlKSwgYnV0IEkndmUg
bm90IGRvbmUgdGhhdCBmb3IgYW55IG5ldw0KPiBwbGF0Zm9ybXMuDQoNCkkgYmVsaWV2ZSB0aGUg
Y3VycmVudCBmYmMgdGVzdHMgaW4ga21zX2Zyb250YnVmZmVyX3RyYWNraW5nIGFscmVhZHkgc3Ry
ZXNzIHRoaXMuDQpGb3IgUFNSMiBoYXJkd2FyZSB0cmFja2luZyBpbiBTS0wgYW5kIFRHTCBJIGhh
dmUgdmFsaWRhdGVkKFBTUjIgaXMgbm90IGNvdmVyZWQgYnkga21zX2Zyb250YnVmZmVyX3RyYWNr
aW5nIGR1ZSBwaXBlIENSQyBub3Qgd29yayB3aXRoIGl0KSB0aGlzIGFuZA0KZmxpcHBpbmcgdG8g
dGhlIHNhbWUgYnVmZmVyIGNhdXNlcyB0aGUgaGFyZHdhcmUgdG8gcHJvcGVybHkgdXBkYXRlIHRo
ZSBzY3JlZW4uDQoNCj4gDQo+IFRoZSBvdGhlciBjb25jZXJuIGlzIHRoYXQgaW50cm9kdWNpbmcg
YWRkaXRpb25hbCBhdG9taWMgY29tbWl0cyB0aGlzDQo+IG1pZ2h0IHRyaXAgdXAgdGhlIHBhZ2Ug
ZmxpcC0+LUVCVVNZIHN0dWZmLiBXaGV0aGVyIHRoYXQgaXMgZ29pbmcNCj4gdG8gY2F1c2UgYW55
IHJlYWwgZ3JpZWYgdG8gdXNlcnNwYWNlIGlzIHVua25vd24gYXQgdGhpcyB0aW1lLiBJIGd1ZXNz
DQo+IHdlJ2QgaGF2ZSB0byBjb21lIHVwIHdpdGggYSB0ZXN0IHRoYXQgYWN0dWFsbHkgaGl0cyB0
aGF0IGFuZCBtYWtlIHN1cmUNCj4gdGhlIGRkeCBkb2Vzbid0IGdldCBjb25mdXNlZCBhbmQgaW5z
dGVhZCBqdXN0IGdyYWNlZnVsbHkgZmFsbHMgYmFjayB0bw0KPiB0aGUgYmxpdCBwYXRoLg0KPiAN
Cg0K
