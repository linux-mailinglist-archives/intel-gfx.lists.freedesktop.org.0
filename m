Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0A954A0C1
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 23:05:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625EE10FA2A;
	Mon, 13 Jun 2022 21:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC0B610FA2A;
 Mon, 13 Jun 2022 21:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655154306; x=1686690306;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=klyTdC/2JPBeBqftxQaublBngP5jpRczDIu3BcrJzjM=;
 b=hoVf4lqOqxpwLxINj924FsvjwAFLgrUiTP2HAPvm2THT3xDwmr61SQ2O
 prfPR//sLBbBRr8NGvnwIZFHKF/rnjbXnYu1bcQDlkFWFin1a31kLEnAY
 ernWQ5aCs/Jf9PvZx+/9iao5TtqolyZ3o53gGmHVZ0IV7JeTxMPcjs9j0
 DWdgMVRfp0QTLamuVQbTkYhVZANYV/OQ8qZS5YjF53I4As+SPvBtlSnjT
 BZitFRTjCy/CuqCBV/g+GuXnzwxgbbu9sGnxLu7DzDcA91Gl5HN0i2vQY
 RSqRHBcNjn7RdPfs1ndsWfxmUfKwqse+SYfWhQMWEbWGr/QwbcD3nV8NW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="303813722"
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="303813722"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 14:05:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,298,1647327600"; d="scan'208";a="673505659"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jun 2022 14:05:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 14:05:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 14:05:05 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Mon, 13 Jun 2022 14:05:05 -0700
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Harry Wentland <harry.wentland@amd.com>, Pekka Paalanen
 <ppaalanen@gmail.com>, "sebastian@sebastianwick.net"
 <sebastian@sebastianwick.net>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Thread-Topic: DRM/KMS PWL API Thoughts and Questions
Thread-Index: AQHYfQjbYgG3OLyPxk+JcDrYPNNw2a1NyOdA
Date: Mon, 13 Jun 2022 21:05:05 +0000
Message-ID: <be797f640e4246288cffbd27839b0f72@intel.com>
References: <85f086ec-7007-412c-db95-e20eb1837a25@amd.com>
In-Reply-To: <85f086ec-7007-412c-db95-e20eb1837a25@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ville.syrjala@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] DRM/KMS PWL API Thoughts and Questions
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
Cc: amd-gfx
 list <amd-gfx@lists.freedesktop.org>, Alex Hung <alex.hung@amd.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Vitaly Prosyak <vitaly.prosyak@amd.com>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>, "Lakha,
 Bhawanpreet" <Bhawanpreet.Lakha@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSGFycnkgV2VudGxhbmQg
PGhhcnJ5LndlbnRsYW5kQGFtZC5jb20+DQo+IFNlbnQ6IFNhdHVyZGF5LCBKdW5lIDExLCAyMDIy
IDE6NTkgQU0NCj4gVG86IFBla2thIFBhYWxhbmVuIDxwcGFhbGFuZW5AZ21haWwuY29tPjsgc2Vi
YXN0aWFuQHNlYmFzdGlhbndpY2submV0Ow0KPiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGlu
dGVsLmNvbT4NCj4gQ2M6IFZpdGFseSBQcm9zeWFrIDx2aXRhbHkucHJvc3lha0BhbWQuY29tPjsg
U2hhcm1hLCBTaGFzaGFuaw0KPiA8U2hhc2hhbmsuU2hhcm1hQGFtZC5jb20+OyBMYWtoYSwgQmhh
d2FucHJlZXQNCj4gPEJoYXdhbnByZWV0Lkxha2hhQGFtZC5jb20+OyBEZXVjaGVyLCBBbGV4YW5k
ZXINCj4gPEFsZXhhbmRlci5EZXVjaGVyQGFtZC5jb20+OyBBbGV4IEh1bmcgPGFsZXguaHVuZ0Bh
bWQuY29tPjsgZHJpLWRldmVsIDxkcmktDQo+IGRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz47
IGFtZC1nZnggbGlzdCA8YW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc+OyBpbnRlbC0NCj4g
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgTW9kZW0sIEJoYW51cHJha2FzaA0KPiA8YmhhbnVw
cmFrYXNoLm1vZGVtQGludGVsLmNvbT4NCj4gU3ViamVjdDogRFJNL0tNUyBQV0wgQVBJIFRob3Vn
aHRzIGFuZCBRdWVzdGlvbnMNCj4gDQo+IChJJ20gc2VuZGluZyB0aGlzIGFzIGFuIGVtYWlsIGFz
IGxvd2VzdCBjb21tb24gZGVub21pbmF0b3IgYnV0IGZlZWwgYW4gaXNzdWUgb24gdGhlDQo+IGNv
bG9yLWFuZC1oZHIgcmVwbyB3b3VsZCBiZSBhIGJldHRlciBpbnRlcmZhY2UgZm9yIHByb2R1Y3Rp
dmUgZGlzY3Vzc2lvbi4gUGxlYXNlIHBvcA0KPiBvdmVyIHRvIGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9wcS9jb2xvci1hbmQtaGRyLy0vaXNzdWVzLzEwIGlmIHlvdSBhZ3JlZS4NCj4g
SG9wZWZ1bGx5IHdlIGNhbiBkcml2ZSB0aGUgZGlzY3Vzc2lvbiB0aGVyZSBidXQgaWYgdGhlcmUg
aXMgYSBzdHJvbmcgcHJlZmVyZW5jZSBmb3INCj4gZW1haWwgdGhhdCB3b3JrcyBhcyB3ZWxsLiA6
KSApDQo+IA0KPiBJJ3ZlIHdhbnRlZCB0byBzdGFydCBhIHRocmVhZCB0byBkaXNjdXNzIHRoZSB1
c2Ugb2YgUFdMIEFQSXMgdGhhdCB3ZXJlIGludHJvZHVjZWQgYnkNCj4gVW1hIGEgeWVhciBhZ28g
YW5kIGZvciB3aGljaCBCaGFudXByYWthc2ggcHJvdmlkZWQgSUdUIHRlc3RzLiBJIGhhdmUgY29t
ZSB0byBsaWtlDQo+IHRoZSBBUEkgYnV0IGFzIHdlJ3JlIGdldHRpbmcgY2xvc2VyIHRvIGEgcmVh
bC13b3JsZCB1c2Ugb2YgaXQgSSBoYXZlIGEgZmV3IHF1ZXN0aW9ucw0KPiBhbmQgY29tbWVudHMu
IEFzIHdpdGggYSBsb3Qgb2YgY29tcGxleCBBUElzIHRoZSBkZXZpbCBpcyBpbiB0aGUgZGV0YWls
cy4gU29tZSBvZg0KPiB0aG9zZSBkZXRhaWxzIGFyZSBjdXJyZW50bHkgdW5kZXJzcGVjaWZpZWQs
IG9yIHVuZGVyZG9jdW1lbnRlZCBhbmQgaXQncyBpbXBvcnRhbnQNCj4gdGhhdCB3ZSBhbGwgaW50
ZXJwcmV0IHRoZSBBUEkgdGhlIHNhbWUgd2F5Lg0KDQpUaGFua3MgSGFycnkgZm9yIHN0YXJ0aW5n
IHRoaXMgdGhyZWFkLiBBZGRpbmcgVmlsbGUgdG8gdGhlIGRpc2N1c3Npb24gYXMgd2VsbCBhcyB0
aGUgb3JpZ2luYWwgZGVzaWduDQppcyBoaXMgYnJhaW4gY2hpbGQuDQoNCldlIGNhbiBkaXNjdXNz
IG9uIHRoZSBpc3N1ZSB5b3UgY3JlYXRlZCBpZiBhbGwgb3RoZXJzIGFncmVlLg0KDQo+ICoqVGhl
IEFQSSoqDQo+IA0KPiBUaGUgb3JpZ2luYWwgcGF0Y2hlcyBwb3N0ZWQgYnkgVW1hOg0KPiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzkwODIyLw0KPiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzkwODI2Lw0KPiANCj4gVGhlIElHVCB0ZXN0
cyBmb3IgUFdMIEFQSToNCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy85Njg5NS8NCj4gDQo+IEkndmUgcmViYXNlZCB0aGUga2VybmVsIHBhdGNoZXMgb24gYSBzbGln
aHRseSBtb3JlIHJlY2VudCBrZXJuZWwsIGFsb25nIHdpdGggYW4gQU1EDQo+IGltcGxlbWVudGF0
aW9uOg0KPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvaHdlbnRsYW5kL2xpbnV4Ly0v
dHJlZS9jb2xvci1hbmQtaGRyDQo+IA0KPiBJJ3ZlIGFsc28gcmViYXNlZCB0aGVtIG9uIGFuIElH
VCB0cmVlLCBidXQgdGhhdCdzIG5vdCB0b28gdXAtdG8tZGF0ZToNCj4gaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2h3ZW50bGFuZC9pZ3QtZ3B1LXRvb2xzLy0vdHJlZS9jb2xvci1hbmQt
aGRyDQo+IA0KPiANCj4gKipXaHkgZG8gSSBsaWtlIHRoZSBBUEk/KioNCj4gDQo+IEluIG9yZGVy
IHRvIGFsbG93IEhXIGNvbXBvc2l0aW9uIG9mIEhEUiBwbGFuZXMgaW4gbGluZWFyIHNwYWNlIHdl
IG5lZWQgdGhlIGFiaWxpdHkNCj4gdG8gcHJvZ3JhbSBhdCBsZWFzdCBhIHBlci1DUlRDIHJlZ2Ft
bWEgKGludl9FT1RGKSB0byBnbyBmcm9tIGxpbmVhciB0byB3aXJlDQo+IGZvcm1hdCBwb3N0LWJs
ZW5kaW5nLiBTaW5jZSB1c2Vyc3BhY2UgbWlnaHQgd2FudCB0byBhcHBseSBjb3JyZWN0aW9ucyBv
biB0b3Agb2YgYQ0KPiBzaW1wbGUgdHJhbnNmZXIgZnVuY3Rpb24gKHN1Y2ggYXMgUFEsIEJULjcw
OSwgZXRjLikgaXQgd291bGQgbGlrZSBhIHdheSB0byBzZXQgYSBjdXN0b20NCj4gTFVULg0KPiAN
Cj4gVGhlIGV4aXN0aW5nIENSVEMgZ2FtbWEgTFVUIGRlZmluZXMgZXF1YWxseSBzcGFjZWQgZW50
cmllcy4gQXMgUGVra2Egc2hvd3MgaW4gWzFdDQo+IGVxdWFsbHktc3BhY2VkIExVVHMgaGF2ZSB1
bmFjY2VwdGFibGUgZXJyb3IgZm9yIHJlZ2FtbWEvaW52X0VPVEYuIEhlbmNlIHdlDQo+IG5lZWQg
ZmluZXIgZ3JhbnVsYXJpdHkgb2Ygb3VyIGVudHJpZXMgbmVhciB6ZXJvIHdoaWxlIGNvYXJzZSBn
cmFudWxhcml0eSB3b3JrcyBmaW5lDQo+IHRvd2FyZCB0aGUgYnJpZ2h0ZXIgdmFsdWVzLg0KPiAN
Cj4gWzFdIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9wcS9jb2xvci1hbmQtaGRyLy0v
bWVyZ2VfcmVxdWVzdHMvOQ0KPiANCj4gSFcgKGF0IGxlYXN0IEFNRCBhbmQgSW50ZWwgSFcpIGlt
cGxlbWVudHMgdGhpcyBhYmlsaXR5IGFzIHNlZ21lbnRlZCBwaWVjZS13aXNlDQo+IGxpbmVhciBM
VVRzLiBUaGVzZSBkZWZpbmUgc2VnbWVudHMgb2YgZXF1YWxseSBzcGFjZWQgZW50cmllcy4gVGhl
c2Ugc2VnbWVudHMgYXJlDQo+IGNvbnN0cmFpbmVkIGJ5IHRoZSBIVyBpbXBsZW1lbnRhdGlvbi4g
SSBsaWtlIGhvdyB0aGUgUFdMIEFQSSBhbGxvd3MgZGlmZmVyZW50DQo+IGRyaXZlcnMgdG8gc3Bl
Y2lmeSB0aGUgY29uc3RyYWludHMgaW1wb3NlZCBieSBkaWZmZXJlbnQgSFcgd2hpbGUgYWxsb3dp
bmcgdXNlcnNwYWNlDQo+IGEgZ2VuZXJpYyB3YXkgb2YgcGFyc2luZyB0aGUgUFdMLiBUaGlzIGFs
c28gYXZvaWRzIGNvbXBsZXggY2FsY3VsYXRpb25zIGluIHRoZSBrZXJuZWwNCj4gZHJpdmVyLCB3
aGljaCBtaWdodCBiZSByZXF1aXJlZCBmb3Igb3RoZXIgQVBJcyBvbmUgY291bGQgZW52aXNpb24u
IElmIGFueW9uZSBsaWtlcyBJDQo+IGNhbiBlbGFib3JhdGUgb24gc29tZSBpZGVhcyBmb3IgYW4g
YWx0ZXJuYXRlIEFQSSwgdGhvdWdoIGFsbCBvZiB0aGVtIHdpbGwgcmVxdWlyZQ0KPiBub24tdHJp
dmlhbCB0cmFuc2Zvcm1hdGlvbnMgYnkgdGhlIGtlcm5lbCBkcml2ZXIgaW4gb3JkZXIgdG8gcHJv
Z3JhbSB0aGVtIHRvIEhXLg0KPiANCg0KSSBmZWVsIHRoZSBjdXJyZW50IGRlc2lnbiBmaXRzIGJl
c3QgdG8gbW9zdCBvZiB0aGUgaW1wbGVtZW50YXRpb25zLCBldmVuIGxlZ2FjeSBBUEkvaGFyZHdh
cmUNCmNhbiBiZSBkZWZpbmVkIHVzaW5nIHRoZSBwcm9wb3NlZCBVQVBJJ3MuIEl0cyBnb29kIHRo
YXQgd2UgYXJlIGluIGFncmVlbWVudCBhbmQgd2UgY2FuIHN1cmVseQ0KaXJvbiBvdXQgdGhlIFVB
UEkgYW5kIGRvY3VtZW50IHRoZSBleHBlY3RhdGlvbnMuDQogDQo+ICoqTml0cGlja3MqKg0KPiAN
Cj4gVGhlIEFQSSBkZWZpbmVzIGV2ZXJ5dGhpbmcgaW5zaWRlIHRoZSBzZWdtZW50cywgaW5jbHVk
aW5nIGZsYWdzIGFuZCB2YWx1ZXMgdGhhdCBhcHBseQ0KPiB0byB0aGUgZW50aXJlIFBXTCwgc3Vj
aCBhcyBEUk1fTU9ERV9MVVRfR0FNTUEsDQo+IERSTV9NT0RFX0xVVF9SRUZMRUNUX05FR0FUSVZF
LCBpbnB1dF9icGMsIGFuZCBvdXRwdXRfYnBjLiBJZiB0aGVzZSBkb24ndA0KPiBzdGF5IGNvbnN0
YW50IGZvciBzZWdtZW50cyBpdCBtaWdodCBjb21wbGljYXRlIHRoZSBpbnRlcnByZXRhdGlvbiBv
ZiBzZWdtZW50cy4gSQ0KPiBzdWdnZXN0IHdlIGNvbnNpZGVyIHRoZXNlIGFzIGVmZmVjdGl2ZWx5
IGFwcGx5aW5nIHRvIHRoZSBlbnRpcmUgUFdMLiBXZSBjb3VsZA0KPiBlbmNvZGUgdGhlbSBpbiBh
biBvdmVyYWxsIGRybV9jb2xvcl9sdXQgc3RydWN0IHRoYXQgaW5jbHVkZXMgYW4gYXJyYXkgb2YN
Cj4gZHJtX2NvbG9yX2x1dF9yYW5nZSBidXQgdGhhdCdzIHByb2JhYmx5IG5vdCBuZWNlc3Nhcnks
IGhlbmNlIHdoeSBJIGNhbGxlZCB0aGlzIG91dA0KPiBhcyBhIG5pdHBpY2suIEkgd291bGQganVz
dCBsaWtlIHVzIHRvIGJlIGF3YXJlIG9mIHRoaXMgYW1iaWd1aXR5IGFuZCBkb2N1bWVudCB0aGF0
DQo+IHRoZXNlIHZhbHVlcyBhcHBsaWVzIHRvIHRoZSBlbnRpcmUgUFdMLg0KDQpJdCBjYW4gYmUg
ZG9uZSwgbm8gY29uY2VybnMgYXMgc3VjaC4NCg0KPiANCj4gKipIb3cgdG8gcmVhZCB0aGUgUFdM
KioNCj4gDQo+IExldCBtZSBmaXJzdCBnaXZlIGEgc3VtbWFyeSBmb3IgaG93IHRoaXMgTFVUIGlz
IHVzZWQgaW4gdXNlcnNwYWNlLiBJZiB5b3UncmUgZmFtaWxpYXINCj4gd2l0aCB0aGlzIHBsZWFz
ZSByZXZpZXcgYW5kIGNvbW1lbnQgaWYgSSBnb3QgdGhpbmdzIHdyb25nLiBBcyBJIG1lbnRpb25l
ZCwgYSBsb3Qgb2YNCj4gdGhpcyBpcyB1bmRlcnNwZWNpZmllZCBhdCB0aGUgbW9tZW50IHNvIHlv
dSdyZSByZWFkaW5nIG15IGludGVycHJldGF0aW9uLg0KPiANCj4gWW91IGNhbiBzZWUgdGhpcyBi
ZWhhdmlvciBpbiBwbGFuZV9kZWdhbW1hX3Rlc3QgWzJdIGluIHRoZSBrbXNfY29sb3IuYyBJR1Qg
dGVzdA0KPiBzdWl0ZS4gSSBzdWdnZXN0IHRoZSBwbGFuZV9kZWdhbW1hX3Rlc3QgaGVyZSBoZXJl
IGluc3RlYWQgb2YgdGhlIHRlc3RfcGlwZV9nYW1tYQ0KPiB0ZXN0IGFzIHRoZSBsYXR0ZXIgc3Rp
bGwgaGFzIEludGVsaXNtcyAoYXNzdW1wdGlvbnMgYXJvdW5kIEludGVsIGRyaXZlci9IVyBiZWhh
dmlvcikNCj4gYW5kIHdpbGwgbm90IHdvcmsgZm9yIG90aGVyIGRyaXZlcnMuDQo+IA0KPiBJdGVy
YXRlIG92ZXIgYWxsIGVudW1zIGluIFBMQU5FX0RFR0FNTUFfTU9ERSBhbmQgZmluZCBhIHN1aXRh
YmxlIG9uZS4gSG93IGRvDQo+IHdlIGZpbmQgdGhlIHN1aXRhYmxlIG9uZT8gTW9yZSBvbiB0aGF0
IGJlbG93Lg0KPiANCj4gT25jZSB3ZSBoYXZlIHRoZSByaWdodCBQTEFORV9ERUdBTU1BX01PREUg
d2UgcmVhZCB0aGUgYmxvYiBmb3IgdGhlIGJsb2IgSUQNCj4gYXNzb2NpYXRlZCB3aXRoIHRoZSBQ
TEFORV9ERUdBTU1BX01PREUgZW51bS4gV2UgaW50ZXJwcmV0IHRoZSBibG9iIGFzIGFuDQo+IGFy
cmF5IG9mIGRybV9jb2xvcl9sdXRfcmFuZ2UuIFNlZSBnZXRfc2VnbWVudF9kYXRhIFszXS4NCj4g
DQo+IFdlIGNhbiB0aGluayBvZiBvdXIgTFVUL1BXTCBhcyBmKHgpID0geS4gRm9yIGEgdHJhZGl0
aW9uYWwgZXF1YWxseSBzcGFjZWQgTFVUIHdpdGgNCj4gMTAyNCBlbnRyaWVzIHggd291bGQgYmUg
MCwgMSwgMiwgLi4uLCAxMDIzLiBGb3IgYSBQV0wgTFVUIHdlIG5lZWQgdG8gcGFyc2UgdGhlDQo+
IHNlZ21lbnQgZGF0YSBwcm92aWRlZCBpbiBkcm1fY29sb3JfbHV0X3JhbmdlLg0KPiANCj4gTGV0
J3MgbG9vayBhdCB0aGUgMm5kLWxhc3QgZW50cnkgb2YgdGhlIG5vbmxpbmVhcl9wd2wgZGVmaW5p
dGlvbiBmb3IgdGhlIEFNRCBkcml2ZXIgWzRdDQo+IChJJ3ZlIGNvcnJlY3QgaXQgaGVyZSBhbmQg
ZHJvcHBlZCB0aGUgRFJNX01PREVfTFVUX1JFVVNFX0xBU1QgYnV0IGl0J3Mgc3RpbGwNCj4gaW5j
b3JyZWN0IGluIHRoZSBsaW5rKSBhbmQgc2ltcGxpZnkgaXQgdG8gNCBlbnRyaWVzIGZvciBzYWtl
IG9mIHJlYWRhYmlsaXR5Og0KPiANCj4gew0KPiAgICAgICAgIC5mbGFncyA9IChEUk1fTU9ERV9M
VVRfR0FNTUEgfCBEUk1fTU9ERV9MVVRfUkVGTEVDVF9ORUdBVElWRSB8DQo+IERSTV9NT0RFX0xV
VF9JTlRFUlBPTEFURSB8IERSTV9NT0RFX0xVVF9OT05fREVDUkVBU0lORyksDQo+ICAgICAgICAg
LmNvdW50ID0gNCwNCj4gICAgICAgICAuaW5wdXRfYnBjID0gMTMsIC5vdXRwdXRfYnBjID0gMTgs
DQo+ICAgICAgICAgLnN0YXJ0ID0gMSA8PCAxMiwgLmVuZCA9IDEgPDwgMTMsDQo+ICAgICAgICAg
Lm1pbiA9IDAsIC5tYXggPSAxVUwgPDwgMzUNCj4gICAgIH0sDQo+IA0KPiBXZSBzZWUgd2UgaGF2
ZSAxNiBlbnRyaWVzIGluIHRoZSByZWdpb24gZnJvbSAoMSA8PCAxMikgdG8gKDEgPDwgMTMpLiBX
ZSBzZWUNCj4gaW5wdXRfYnBjIGlzIDEzLCBzbyBvdXIgMS4wIGZsb2F0IHZhbHVlIGlzIDEgPDwg
MTMuDQo+IA0KPiAoSXMgaXQgc2Vuc2libGUgdG8gdXNlIGlucHV0X2JwYyBhcyBvdXIgMS4wIGZs
b2F0aW5nIHBvaW50IHJlZmVyZW5jZT8gV2h5PykNCj4gDQo+IFNpbmNlIHRoaXMgc2VnbWVudCBp
cyBub3QgcmV1c2luZyB0aGUgbGFzdCBlbnRyeSAoZG9lc24ndCBoYXZlDQo+IERSTV9NT0RFX0xV
VF9SRVVTRV9MQVNUKSB3ZSBkaXZpZGUgdGhlIHJlZ2lvbiBiZXR3ZWVuIDEgPDwgMTIgYW5kIDEg
PDwgMTMNCj4gaW50byA0IGVxdWFsbHkgc3BhY2VkIHNlY3Rpb25zLg0KPiANCj4gc3RlcF9zaXpl
ID0gKHNlZ21lbnQtPmVuZCAtIHNlZ21lbnQtPnN0YXJ0KSAvIGNvdW50DQo+IA0KPiBJbiBvdXIg
Y2FzZSBvdXIgc2VnbWVudCBzcGFucyBmcm9tIDQwOTYgdG8gODE5MiBhbmQgeWllbGRzIGEgc3Rl
cF9zaXplIG9mIDEwMjQuDQo+IA0KPiBOb3RlIHRoYXQgd2UgbmVlZCB0byBjYWxjdWxhdGUgdGhp
cyBpbiBmbG9hdGluZyBwb2ludCwgb3RoZXJ3aXNlIHdlJ3JlIG5vdA0KPiBndWFyYW50ZWVkIGVx
dWFsIHNwYWNpbmcuDQo+IA0KPiBUaGlzIGdpdmVzIHVzIHRoZXNlIFggZW50cmllcyBmb3IgdGhp
cyBwYXJ0aWN1bGFyIHNlZ21lbnQ6DQo+IDQwOTYsIDUxMjAsIDYxNDQsIDcxNjgNCj4gDQo+IEFu
ZCBub3JtYWxpemVkIHRvIDEgPDwgMTMgKGlucHV0X2JwYykgZm9yIG91ciAxLjAgZmxvYXQgdmFs
dWUgd2UgZ2V0IDAuNSwgMC42MjUsIDAuNzUsDQo+IDAuODc1DQo+IA0KPiBJZiB0aGUgc2VnbWVu
dCBoYWQgdGhlIFJFVVNFX0xBU1QgZmxhZyB0aGUgdmFsdWVzIHdvdWxkIGxvb2sgbGlrZSA0MDk2
LCA1NDYxLA0KPiA2ODI2LCA4MTkyDQo+IA0KPiBhbmQgbm9ybWFsaXplZCB0bw0KPiAwLjUsIDAu
NjY2NjI2LCAwLjgzMzI1MiwgMQ0KPiANCg0KVGhpcyB1bmRlcnN0YW5kaW5nIGFuZCBleHBsYW5h
dGlvbiBhbGlnbnMgd2l0aCBtaW5lLiBAVmlsbGUgU3lyasOkbMOkIEFueSB0aG91Z2h0cyBvciBp
bnB1dHMgaGVyZSA/DQoNCj4gVGhvdWdoIGluIHRoZSBjYXNlIG9mIFJFVVNFX0xBU1QgYSBtb3Jl
IHNlbnNpYmxlIGRlZmluaXRpb24gbWlnaHQgYmUgd2l0aCBhIGNvdW50DQo+IG9mIDUgZW50cmll
cyBpbiB0aGlzIHNlZ21lbnQsIGluc3RlYWQgb2YgMTYuIEJ1dCB1bHRpbWF0bHkgdGhhdCdzIHVw
IHRvIHRoZSBkcml2ZXIuDQo+IA0KPiBJIGF0dGFjaGVkIGEgc2ltcGxlIEMgcHJvZ3JhbSB0aGF0
IHBhcnNlcyBhIFBXTCBhbmQgaGVscHMgaWxsdXN0cmF0ZSBteQ0KPiBpbnRlcnByZXRhdGlvbi4g
WW91J2xsIGp1c3QgbmVlZCB0byBjb3B5LXBhc3RlIG9yIGluY2x1ZGUgeW91ciBQV0wgZGVmaW5p
dGlvbiAoaW5zdGVhZA0KPiBvZiBjb2xvcl9nYW1tYS5oKSwgYW5kIHBvaW50IHRoZSBQV0wgZGVm
aW5lIHRvIHlvdXIgUFdMIHZhcmlhYmxlLiBUbyBidWlsZCBpdCB5b3UnbGwNCj4gbmVlZCB0byBj
b3B5IHRoZSBkcm0tdWFwaSBmb2xkZXIgZnJvbSBteSBJR1QgcmVwbyBpbnRvIHRoZSBzYW1lIGRp
cmVjdG9yeSBhcyBwd2wtDQo+IHBhcnNlci5jIGFuZCB0aGVuIGp1c3QgYnVpbGQgaXQgd2l0aCAi
Z2NjIC1JZHJtLXVhcGkgcHdsLXBhcnNlci5jIi4NCj4gDQo+IFRoZSBhYm92ZSBlbnRyaWVzIGNv
bWUgZnJvbSBydW5uaW5nIHB3bC1wYXJzZXIgd2l0aCB0aGUgbm9ubGluZWFyX3B3bCBmcm9tIFs1
XS4NCj4gDQo+IFRvIGlsbHVzdHJhdGUgdGhlc2UgSSBhZGRlZCB2ZXJzaW9ucyBvZiB5b3VyIGx1
dDFkX2Vycm9yIHNjcmlwdHMgdGhhdCBydW4gb24gdGhlIFNEUg0KPiBhbmQgSERSIFBXTHMgZm9y
IEFNRCBIVyBbNl0uDQo+IA0KPiBXZSBzaG91bGQgcHJvYmFibHkgZG9jdW1lbnQgdGhlIGFib3Zl
IGluIGRldGFpbCBpbiB0aGUgRFJNL0tNUyBBUEkgZG9jcy4NCj4gDQo+IFsyXSBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvaHdlbnRsYW5kL2lndC1ncHUtdG9vbHMvLS9ibG9iL2NvbG9y
LWFuZC0NCj4gaGRyL3Rlc3RzL2ttc19jb2xvci5jI0w5NzgNCj4gWzNdIGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9od2VudGxhbmQvaWd0LWdwdS10b29scy8tL2Jsb2IvY29sb3ItYW5k
LQ0KPiBoZHIvdGVzdHMva21zX2NvbG9yX2hlbHBlci5jI0wzOTMNCj4gWzRdIGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9od2VudGxhbmQvbGludXgvLS9ibG9iL2NvbG9yLWFuZC0NCj4g
aGRyL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9tb2R1bGVzL2NvbG9yL2NvbG9yX2dhbW1h
LmgjTDEwOQ0KPiBbNV0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2h3ZW50bGFuZC9s
aW51eC8tL2Jsb2IvY29sb3ItYW5kLQ0KPiBoZHIvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5
L21vZHVsZXMvY29sb3IvY29sb3JfZ2FtbWEuaCNMMzgNCj4gWzZdIGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9od2VudGxhbmQvY29sb3ItYW5kLWhkci8tL3RyZWUvcHJlY2lzaW9uL29j
dGF2ZQ0KPiANCj4gKipIb3cgdG8gcHJvdmlkZSBQV0wgZW50cmllcz8qKg0KPiANCj4gVG8gcHJv
dmlkZSB0aGUgUFdMIHZhbHVlcyBmb3IgZWFjaCBlbnRyeSB3ZSdsbCBoYXZlIHRvIHNhbXBsZSBv
dXIgKGN1c3RvbSkgY3VydmUgYXQNCj4gdGhlIHJlc3BlY3RpdmUgcG9pbnRzIHNwZWNpZmllZCBi
eSBvdXIgUFdMIGVudHJpZXMgYW5kIHByb3ZpZGluZyB0aG9zZSBzYW1wbGVzIGluIGENCj4gYmxv
YiB0aGF0IGlzIHBhc3NlZCB0byBQTEFORV9ERUdBTU1BX0xVVC4gSXQncyBub3QgbXVjaCBkaWZm
ZXJlbnQgZnJvbSBob3cgd2UNCj4gcHJvdmlkZSB2YWx1ZXMgZm9yIGFuIGVxdWFsbHkgc3BhY2Vk
IChsZWdhY3kpIExVVC4gQXMgZm9yIHNhbXBsaW5nIG91ciBjdXJ2ZSwgSQ0KPiByZW1lbWJlciBz
ZWVpbmcgdGhhdCBXZXN0b24gdXNlcyBhbiBMQ01TIGZ1bmN0aW9uIHRvIHNhbXBsZSB0aGUgY3Vy
dmUgYXQNCj4gcmVxdWlyZWQgcG9pbnRzLiBMYXN0IEkgY2hlY2tlZCBpdCBzYW1wbGVzIHRoZSBj
dXJ2ZSBhdCBldmVubHkgc3BhY2VkIGludGVydmFscyBidXQgdGhlDQo+IExDTVMgZnVuY3Rpb24g
c2VlbWVkIHRvIHByb3ZpZGUgYXJiaXRyYXJ5IHNhbXBsaW5nLg0KPiANCj4gDQo+ICoqSG93IHRv
IHBpY2sgYSBzdWl0YWJsZSBQV0wgZGVmaW5pdGlvbj8qKg0KPiANCg0KSXQgd291bGQgYmUgZ29v
ZCB0byBleHBhbmQgdGhlIHRlcm0gUFdMIGFuZCB3aGF0IHdlIG1lYW4gYnkgaXQganVzdCB0byBt
YWtlIGl0IGNsZWFyDQp0byBhbGwuIEkgYXNzdW1lIHlvdSBtZWFuIHBpZWNlIHdpc2UgbGluZWFy
DQoNCg0KPiBQaWNraW5nIHRoZSByaWdodCBQV0wgZGVmaW5pdGlvbiBvdXQgb2YgdGhlIHJlc3Bl
Y3RpdmUgXF9NT0RFIGVudW0gaXNuJ3QgdHJpdmlhbC4NCj4gV2l0aG91dCBmdXJ0aGVyIGluZm9y
bWF0aW9uIGEgdXNlcnNwYWNlIGltcGxlbWVudGVyIGhhcyB0byB1bmRlcnN0YW5kIHRoZQ0KPiBk
aXN0cmlidXRpb24gb2YgZW50cmllcyBpbiBhbGwgc2VnbWVudHMgYW5kIHBlcmZvcm0gYSBidW5j
aCBvZiBtYXRoIHRvIGVzdGltYXRlIHRoZQ0KPiBlcnJvciBmb3IgZ2l2ZW4gY3VydmVzLg0KPiAN
Cj4gQSBzaW1wbGVyIGFwcHJvYWNoIG1pZ2h0IGJlIGlmIHdlIGRlZmluZWQgY29tbW9uIG5hbWlu
ZyBmb3Igb3VyIFBXTCBlbnVtcy4gV2UNCj4gY2FuIGRlZmluZSB0aGUgY29tbW9ubHkgZXhwZWN0
ZWQgY2FzZXMuIFRoZSB0d28gaW1wb3J0YW50IHBhcmFtZXRlcnMgYXJlIHdpdGhpbi0NCj4gcmFu
Z2UgdnMgb3ZlcnJhbmdlIGVudHJpZXMsIGFuZCBsaW5lYXIgdnMgbm9uLWxpbmVhciBvdXRwdXRz
Lg0KPiANCg0KVGhpcyB3YXMgYSBiaXQgZGlmZmVyZW50IG9uIEludGVsIGhhcmR3YXJlLCBidXQg
d2UgY2FuIHN1cmVseSBnZW5lcmFsaXplLiBXZSBjYW4gbWFrZSBvbmUNCm9mIHRoZSBtb2RlcyBh
cyBkZWZhdWx0IHNvIHVzZXIgY2FuIGp1c3QgY2hvc2UgdGhhdCBpbiBjYXNlIG5vIG90aGVyIHVz
ZWZ1bCBtZWNoYW5pc20gdG8NCnBpY2sgYSBtb2RlLg0KDQpIYXZpbmcgc2FpZCB0aGF0LCBvbmNl
IHVzZXIgZ2V0cyB0aGUgc2VnbWVudCBibG9iIGluZm8gZm9yIGEgcmVzcGVjdGl2ZSBtb2RlLCBp
dCBzaG91bGQgYmUNCmFibGUgdG8gbWFrZSBhIGNhbGwgdG8gY2hvb3NlIHRoZSBtb3N0IGVmZmlj
aWVudCBvbmUgZm9yIGl0cyB1c2UgY2FzZSAoYmFzZWQgb24gbnVtYmVyIG9mIHNlZ21lbnQsDQpy
YW5nZSBhbmQgbnVtYmVyIG9mIGx1dCBlbnRyaWVzKQ0KDQo+IFdpdGhpbi1yYW5nZSBQV0xzIHdv
dWxkIGNvdmVyIFswLjAsIDEuMF0gZW50cmllcyBhbmQgb3ZlcnJhbmdlIFswLjAsIDEyOC4wXSB0
bw0KPiBjb3ZlciBQUSBhbmQgcHJvYmFibHkgYW55dGhpbmcgZWxzZS4gT25lIGNvdWxkIHRoaW5r
IG9mIHRoZSB3aXRoaW4tcmFuZ2UgUFdMIGFzDQo+IGludGVuZGVkIGZvciBTRFIgY29udGVudCBh
bmQgdGhlIG92ZXItcmFuZ2UgUFdMIGZvciBIRFIgY29udGVudC4NCj4gDQo+IExpbmVhciBQV0xz
IHdvdWxkIGJlIGludGVuZGVkIGZvciBsaW5lYXIgbHVtaW5hbmNlIG91dHB1dHMgKG9yIG5lYXIt
bGluZWFyKSwgYW5kIGNhbg0KPiBiZSByZXByZXNlbnRlZCBieSBlcXVhbGx5IHNwYWNlZCBMVVRz
LCBzdWNoIGFzIGEgc2luZ2xlLXNlZ21lbnQgZGVmaW5pdGlvbnMuIE5vbi0NCj4gbGluZWFyIFBX
THMgd291bGQgYmUgaW50ZW5kZWQgZm9yIGxpbmVhciB0byBub24tbGluZWFyIHRyYW5zZm9ybXM7
IExpbmVhciBQV0xzIGZvcg0KPiBub24tbGluZWFyIHRvIGxpbmVhciB0cmFuc2Zvcm1zIG9yIE9P
VEZzLg0KPiANCj4gVGhpcyBnaXZlcyB1cyBmb3VyIGVudW1zLCBwbHVzIG9uZSBmb3IgYnlwYXNz
Og0KPiBEUk1fTU9ERV9MVVRfQllQQVNTDQo+IERSTV9NT0RFX0xVVF9MSU5FQVJfU0RSDQo+IERS
TV9NT0RFX0xVVF9OT05MSU5FQVJfU0RSDQo+IERSTV9NT0RFX0xVVF9MSU5FQVJfSERSDQo+IERS
TV9NT0RFX0xVVF9OT05MSU5FQVJfSERSDQo+IA0KPiBEcml2ZXJzIGNhbiBwcm92aWRlIGFwcHJv
cHJpYXRlIFBXTHMgYmFzZWQgb24gdGhlIEhXIGNhcHMuIFVzZXJzcGFjZSBjYW4gcGljayBhbg0K
PiBhcHByb3ByaWF0ZSBvbmUgaWYgaXQncyBhdmFpbGFibGUgb3IgZmFsbCBiYWNrIHRvIGVpdGhl
ciBhIHN1Yi1vcHRpbWFsIFBXTCBvciB0byB1c2luZyBhDQo+IEdQVSB0cmFuc2Zvcm0gaW5zdGVh
ZC4NCg0KTG9va3MgZmluZSB0byBtZS4NCg0KUmVnYXJkcywNClVtYSBTaGFua2FyDQo+IA0KPiBU
aG91Z2h0cz8NCj4gDQo+IFRoYW5rcywNCj4gSGFycnkNCg==
