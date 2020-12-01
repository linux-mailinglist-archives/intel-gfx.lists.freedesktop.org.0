Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A092CADC9
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 21:53:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 351636E915;
	Tue,  1 Dec 2020 20:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41DA56E915
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 20:53:20 +0000 (UTC)
IronPort-SDR: rt3RgFlb25S46zGqAY55+TtxdpQ05H2l2Wf7D9uHpxfA8C5nVPhMkQBSQujKa7kP1GCqkk8NF8
 XvtAwzGoSG0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="173065291"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="173065291"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 12:53:19 -0800
IronPort-SDR: 7IgTz+inx5003vBTiDaiDrPbEO4dCOXxp/xam8Xtgr073ApqBwX/h7zmzHJFXVT+ro8kZIVICr
 ILyLoCk3+DDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="537682382"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2020 12:53:19 -0800
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 12:53:18 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Dec 2020 02:23:16 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Wed, 2 Dec 2020 02:23:16 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v14 00/15] Enable HDR on MCA LSPCON based Gen9 devices
Thread-Index: AQHWx1VZMkcIoYq9NUy9tyVta+j5zKniuQMg
Date: Tue, 1 Dec 2020 20:53:16 +0000
Message-ID: <ba815f047c89464f88cf823b4b0e1646@intel.com>
References: <20201130204738.2443-1-uma.shankar@intel.com>
In-Reply-To: <20201130204738.2443-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v14 00/15] Enable HDR on MCA LSPCON based Gen9
 devices
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVW1hIFNoYW5rYXIgPHVt
YS5zaGFua2FyQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgRGVjZW1iZXIgMSwgMjAyMCAy
OjE3IEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiB2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFt2MTQgMDAvMTVdIEVuYWJsZSBIRFIgb24gTUNBIExTUENPTiBi
YXNlZCBHZW45IGRldmljZXMNCj4gDQo+IEdlbjkgaGFyZHdhcmUgc3VwcG9ydHMgSERNSTIuMCB0
aHJvdWdoIExTUENPTiBjaGlwcy4gRXh0ZW5kaW5nIEhEUiBzdXBwb3J0DQo+IGZvciBNQ0EgYW5k
IFBhcmFkZSBMU1BDT04gYmFzZWQgR0VOOSBkZXZpY2VzLg0KPiANCj4gU09DIHdpbGwgZHJpdmUg
TFNQQ09OIGFzIERQIGFuZCBzZW5kIEhEUiBtZXRhZGF0YSBhcyBzdGFuZGFyZCBEUCBTRFAgcGFj
a2V0cy4NCj4gTFNQQ09OIHdpbGwgYmUgc2V0IHRvIG9wZXJhdGUgaW4gUENPTiBtb2RlLCB3aWxs
IHJlY2VpdmUgdGhlIG1ldGFkYXRhIGFuZA0KPiBjcmVhdGUgRHluYW1pYyBSYW5nZSBhbmQgTWFz
dGVyaW5nIEluZm9mcmFtZSAoRFJNIHBhY2tldHMpIGFuZCBzZW5kIGl0IHRvDQo+IEhEUiBjYXBh
YmxlIEhETUkgc2luayBkZXZpY2VzLg0KPiANCj4gdjI6IEZpeGVkIFZpbGxlJ3MgcmV2aWV3IGNv
bW1lbnRzLiBTdXBwcmVzc2VkIHNvbWUgd2FybmluZ3MuDQo+IFBhdGNoIDggb2YgdGhlIHNlcmll
cyBpcyBtYXJrZWQgIk5vdCBmb3IgTWVyZ2UiIGFuZCBpcyBqdXN0IGZvciByZWZlcmVuY2UgdG8N
Cj4gdXNlcnNwYWNlIHBlb3BsZSB0byBpbmNvcnBvcmF0ZSBpbiBvcmRlciB0byBzdXBwb3J0IDEw
Yml0IGNvbnRlbnQgd2l0aCA0S0A2MA0KPiByZXNvbHV0aW9ucy4NCj4gDQo+IHYzOiBBZGRlZCBJ
bmZvZnJhbWUgcmVhZG91dCBzdXBwb3J0IGZvciBEUk0gaW5mb2ZyYW1lcy4NCj4gQWRkcmVzc2Vk
IEphbmkgTmlrdWxhJ3MgcmV2aWV3IGNvbW1lbnRzLg0KPiANCj4gdjQ6IEFkZHJlc3NlZCBWaWxs
ZSdzIHJldmlldyBjb21tZW50cyBhbmQgYWRkZWQgcHJvcGVyIGJpdG1hc2sgZm9yIGVuYWJsZWQN
Cj4gaW5mb2ZyYW1lcy4gU2VyaWVzIGFsc28gaW5jb3Jwb3JhdGVzIFZpbGxlJ3MgcGF0Y2ggZm9y
IHN0b3BwaW5nIGluZm9mcmFtZXMgdG8gYmUNCj4gc2VudCB0byBEVkkgc2lua3MuIEV4dGVuZGVk
IHRoZSBzYW1lIGZvciBEUk0gYXMgd2VsbC4NCj4gDQo+IHY1OiBDcmVhdGVkIHNlcGFyYXRlIGhl
bHBlciBmdW5jdGlvbiBmb3IgbHNwY29uX2luZm9mcmFtZXNfZW5hYmxlZCBhcyBwZXINCj4gVmls
bGUncyBzdWdnZXN0aW9uLg0KPiANCj4gdjY6IFJlYmFzZQ0KPiANCj4gdjc6IEFkZHJlc3NlZCBW
aWxsZSdzIHJldmlldyBjb21tZW50cy4NCj4gDQo+IHY4OiBBZGRyZXNzZWQgVmlsbGUncyByZXZp
ZXcgY29tbWVudHMuIEZpeGVkIHRoZSBjb2xvcnNwYWNlIGhhbmRsaW5nIGZvciBQY29uDQo+IGFu
ZCBwcm9wZXJ0eSBhdHRhY2htZW50IGxvZ2ljIGJhc2VkIG9uIG5ldyBsc3Bjb24gZGV0ZXRjdGlv
biBjaGFuZ2VzLg0KPiANCj4gdjk6IFJlYmFzZQ0KPiANCj4gdjEwOiBGaXhlZCBvbmUgcGF0Y2gg
Zm9yIGRldGVjdGlvbg0KPiANCj4gdjExOiBBZGRyZXNzZWQgVmlsbGUncyByZXZpZXcgY29tbWVu
dHMgYW5kIGFkZGVkIFJCIGluIHRoZSByZXNwZWN0aXZlIHBhdGNoZXMuDQo+IA0KPiB2MTI6IEFk
ZHJlc3NlZCBWaWxsZSdzIHJldmlldyBjb21tZW50cywgcmUtb3JkZXIgdGhlIGNoYW5nZXMuIFdp
dGggVmlsbGUncyBoZWxwDQo+IGZpeGVkIHRoZSBsaW5nZXJpbmcgY29sb3JzcGFjZSBoYW5kbGlu
ZyBmb3IgbHNwY29uLg0KPiANCj4gdjEzOiAyIHBhdGNoZXMgdXBkYXRlZCB3aXRoIGZlZWRiYWNr
Lg0KPiANCj4gdjE0OiBGaW5hbCBzZXJpZXMgd2l0aCBhbGwgUkIncyBpbiBwbGFjZSwgcmVhZHkg
dG8gbWVyZ2UuDQoNClB1c2hlZCB0byBkaW5xLg0KDQpUaGFua3MgVmlsbGUgZm9yIGFsbCB0aGUg
aGVscCBvbiB0aGlzIHNlcmllcy4NClJlZ2FyZHMsDQpVbWEgU2hhbmthcg0KDQo+IFRoYW5rcyBW
aWxsZSBmb3IgYWxsIHRoZSBzdWdnZXN0aW9ucyBhbmQgaW5wdXRzLg0KPiBOb3RlOiBQYXRjaCAx
NSBvZiB0aGUgc2VyaWVzIGlzIGZvciByZWZlcmVuY2UgdG8gdXNlcnNwYWNlLCBub3QgdG8gYmUg
bWVyZ2VkIHRvDQo+IGRyaXZlci4NCj4gDQo+IFVtYSBTaGFua2FyICgxNCk6DQo+ICAgZHJtL2k5
MTUvZGlzcGxheTogQWRkIEhEUiBDYXBhYmlsaXR5IGRldGVjdGlvbiBmb3IgTFNQQ09ODQo+ICAg
ZHJtL2k5MTUvZGlzcGxheTogRW5hYmxlIEhEUiBvbiBnZW45IGRldmljZXMgd2l0aCBNQ0EgTHNw
Y29uDQo+ICAgZHJtL2k5MTUvZGlzcGxheTogQXR0YWNoIEhEUiBwcm9wZXJ0eSBmb3IgY2FwYWJs
ZSBHZW45IGRldmljZXMNCj4gICBkcm0vaTkxNS9kaXNwbGF5OiBGaXhlcyBxdWFudGl6YXRpb24g
cmFuZ2UgZm9yIFlDYkNyIG91dHB1dA0KPiAgIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBhIFdBUk4g
Zm9yIGludmFsaWQgb3V0cHV0IHJhbmdlIGFuZCBmb3JtYXQNCj4gICBkcm0vaTkxNS9kaXNwbGF5
OiBBdHRhY2ggY29udGVudCB0eXBlIHByb3BlcnR5IGZvciBMU1BDT04NCj4gICBkcm0vaTkxNS9k
aXNwbGF5OiBFbmFibGUgY29sb3JzcGFjZSBwcm9ncmFtbWluZyBmb3IgTFNQQ09OIGRldmljZXMN
Cj4gICBkcm0vaTkxNS9kaXNwbGF5OiBOdWtlIGJvZ3VzIGxzcGNvbiBjaGVjaw0KPiAgIGRybS9p
OTE1L2Rpc3BsYXk6IEVuYWJsZSBIRFIgZm9yIFBhcmFkZSBiYXNlZCBsc3Bjb24NCj4gICBkcm0v
aTkxNS9sc3Bjb246IENyZWF0ZSBzZXBhcmF0ZSBpbmZvZnJhbWVfZW5hYmxlZCBoZWxwZXINCj4g
ICBkcm0vaTkxNS9kaXNwbGF5OiBJbXBsZW1lbnQgaW5mb2ZyYW1lcyByZWFkYmFjayBmb3IgTFNQ
Q09ODQo+ICAgZHJtL2k5MTUvZGlzcGxheTogSW1wbGVtZW50IERSTSBpbmZvZnJhbWUgcmVhZCBm
b3IgTFNQQ09ODQo+ICAgZHJtL2k5MTUvbHNwY29uOiBEbyBub3Qgc2VuZCBEUk0gaW5mb2ZyYW1l
cyB0byBub24tSERNSSBzaW5rcw0KPiAgIGRybS9pOTE1L2Rpc3BsYXk6IFtOT1QgRk9SIE1FUkdF
XSBSZWR1Y2UgYmxhbmtpbmcgdG8gc3VwcG9ydA0KPiAgICAgNGs2MEAxMGJwcCBmb3IgTFNQQ09O
DQo+IA0KPiBWaWxsZSBTeXJqw6Rsw6QgKDEpOg0KPiAgIGRybS9pOTE1OiBTcGxpdCBpbnRlbF9h
dHRhY2hfY29sb3JzcGFjZV9wcm9wZXJ0eSgpIGludG8gSERNSSB2cy4gRFANCj4gICAgIHZhcmlh
bnRzDQo+IA0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5jICAg
IHwgIDI5ICsrLS0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3Iu
aCAgICB8ICAgMyArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyAgICAgIHwgIDE2ICstDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggICAgfCAgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jICAgICAgIHwgIDQzICsrKystDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYyAgICAgfCAgMjYgKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2xzcGNvbi5jICAgfCAxNjIgKysrKysrKysrKysrKysrLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5oICAgfCAgMTIgKysNCj4gIDggZmlsZXMg
Y2hhbmdlZCwgMjI3IGluc2VydGlvbnMoKyksIDY1IGRlbGV0aW9ucygtKQ0KPiANCj4gLS0NCj4g
Mi4yNi4yDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
