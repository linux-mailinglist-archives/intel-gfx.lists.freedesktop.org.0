Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A754DCD7C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:22:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70FF10E485;
	Thu, 17 Mar 2022 18:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B23810E485
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647541331; x=1679077331;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Rkq8h+FkZreA2ydMrulC5AQC6thHkEqPHBU+rv5eFmw=;
 b=Gd3fHeSC1Gd4DoUXDwNkgNORsXu7EjuuGq2zxtkV31d4a9ENzFYsBza4
 O6/p5VVIeHYWhL/kyMG2GqMFtQ75PUTul1fEOqfkkXau0kJJRWXspxCxo
 C9TD3WkGQLxRcGxkCIz2k0GyIDy/241IzK17qJZrE4pgCuD+PUCFzQmrb
 rjjhBgKLMs36EeaV9hQGCQtHNpDWFQ9xIA7zmEo3XffDxUVu994jJB/Ys
 CqlkFvNge3wnjhFUaYrB73s9ARJtKS+tHVvUdmhMbY595PwYTMnBwF1Y8
 aDTAVzM0h6/Wqt8+CYOeqfP/tPWJnbwcpBN3jMNrlVASy8oxdrduH/kJJ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="256897536"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="256897536"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:21:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="558051230"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga008.jf.intel.com with ESMTP; 17 Mar 2022 11:21:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 17 Mar 2022 18:21:55 +0000
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.021;
 Thu, 17 Mar 2022 11:21:53 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: =?utf-8?B?VGhvbWFzIEhlbGxzdHLDtm0=?= <thomas.hellstrom@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>, "Auld, Matthew" <matthew.auld@intel.com>,
 "C, Ramalingam" <ramalingam.c@intel.com>, "Vetter, Daniel"
 <daniel.vetter@intel.com>
Thread-Topic: Small bar recovery vs compressed content on DG2
Thread-Index: AQHYOQcI+6pND/AsdEedXcIWbe1qA6zDuYcAgAAOWgCAABbHgA==
Date: Thu, 17 Mar 2022 18:21:52 +0000
Deferred-Delivery: Thu, 17 Mar 2022 18:21:25 +0000
Message-ID: <d874ba08a65e4468baae737d826a85a5@intel.com>
References: <162c1566-87c6-072f-d340-1693f6a71aea@linux.intel.com>
 <164750662822.7267.9355161518284202141@jlahtine-mobl.ger.corp.intel.com>
 <9eb06b576948707f9a0527b07b58b9640821bf19.camel@linux.intel.com>
In-Reply-To: <9eb06b576948707f9a0527b07b58b9640821bf19.camel@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-Mentions: daniel.vetter@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Small bar recovery vs compressed content on DG2
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

K0BWZXR0ZXIsIERhbmllbA0KDQpMZXQncyBub3Qgc3RhcnQgcmUtaW52ZW50aW5nIHRoaXMgb24g
dGhlIGZseSBhZ2Fpbi4gVGhhdCdzIGhvdyB3ZSBnb3QgaW50byB0cm91YmxlIGluIHRoZSBwYXN0
LiBUaGUgU0FTL1doaXRlcGFwZXIgZG9lcyBjdXJyZW50bHkgcmVxdWlyZSB0aGUgU01FTStMTUVN
IHBsYWNlbWVudCBmb3IgbWFwcGFibGUsIGZvciBnb29kIHJlYXNvbnMuDQoNCldlIGNhbm5vdCAn
YWx3YXlzIG1pZ3JhdGUgdG8gbWFwcGFibGUgaW4gdGhlIGZhdWx0IGhhbmRsZXInLiBPciBhdCBs
ZWFzdCwgdGhpcyBpcyBub3QgYXMgdHJpdmlhbCBhcyBpdCBpcyB0byB3cml0ZSBpbiBhIHNlbnRl
bmNlIGR1ZSB0byB0aGUgbmVlZCB0byBzcGlsbCBvdXQgb3RoZXIgYWN0aXZlIG9iamVjdHMsIGFu
ZCBhbGwgdGhlIHVzdWFsIGNoYWxsZW5nZXMgd2l0aCBjb250ZXh0IHN5bmNocm9uaXphdGlvbiBl
dGMuIEl0IGlzIHBvc3NpYmxlLCBwZXJoYXBzIHdpdGggYSBsb3Qgb2YgY2FyZSwgYnV0IGl0IGlz
IGNoYWxsZW5naW5nIHRvIGd1YXJhbnRlZSwgZWFzeSB0byBicmVhaywgYW5kIG5vdCBuZWVkZWQg
Zm9yIDk5LjklIG9mIHNvZnR3YXJlLiBXZSBhcmUgdHJ5aW5nIHRvIHNpbXBsaWZ5IG91ciBkcml2
ZXIgc3RhY2suDQoNCklmIHdlIG5lZWQgYSBzcGVjaWFsIG1lY2hhbmlzbSBmb3IgZGVidWcsIHdl
IHNob3VsZCBkZXZpc2UgYSBzcGVjaWFsIG1lY2hhbmlzbSwgbm90IHRocm93IG91dCB0aGUgZ2Vu
ZXJhbCBMTUVNK1NNRU0gcmVxdWlyZW1lbnQuIEFyZSB0aGVyZSBhbnkgaWRlbnRpZmllZCBmaXJz
dC1jbGFzcyBjbGllbnRzIHRoYXQgcmVxdWlyZSBzdWNoIGFjY2Vzcywgb3IgaXMgaXQgb25seSBk
ZWJ1Z2dpbmcgdG9vbHM/DQoNCklmIG9ubHkgZGVidWcsIHRoZW4gd2h5IGNhbid0IHRoZSB0b29s
IHVzZSBhIGNvcHkgZW5naW5lIHN1Ym1pc3Npb24gdG8gYWNjZXNzIHRoZSBkYXRhIGluIHBsYWNl
PyBPciBwZXJoYXBzIGEgYmVzcG9rZSBpb2N0bCB0byBhY2Nlc3MgdGhpcyB2aWEgdGhlIEtNRCAo
YW5kIGttZCBzdWJtaXR0ZWQgY29weS1lbmdpbmUgQkIpPw0KDQpUaGFua3MsDQoNCkpvbg0KDQo+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFRob21hcyBIZWxsc3Ryw7ZtIDx0
aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE1hcmNo
IDE3LCAyMDIyIDI6MzUgQU0NCj4gVG86IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVu
QGxpbnV4LmludGVsLmNvbT47IEJsb29tZmllbGQsIEpvbg0KPiA8am9uLmJsb29tZmllbGRAaW50
ZWwuY29tPjsgSW50ZWwgR3JhcGhpY3MgRGV2ZWxvcG1lbnQgPGludGVsLQ0KPiBnZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnPjsgQXVsZCwgTWF0dGhldyA8bWF0dGhldy5hdWxkQGludGVsLmNvbT47
IEMsDQo+IFJhbWFsaW5nYW0gPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJl
OiBTbWFsbCBiYXIgcmVjb3ZlcnkgdnMgY29tcHJlc3NlZCBjb250ZW50IG9uIERHMg0KPiANCj4g
T24gVGh1LCAyMDIyLTAzLTE3IGF0IDEwOjQzICswMjAwLCBKb29uYXMgTGFodGluZW4gd3JvdGU6
DQo+ID4gUXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoMjAyMi0wMy0xNiAwOToyNToxNikNCj4g
PiA+IEhpIQ0KPiA+ID4NCj4gPiA+IERvIHdlIHNvbWVob3cgbmVlZCB0byBjbGFyaWZ5IGluIHRo
ZSBoZWFkZXJzIHRoZSBzZW1hbnRpY3MgZm9yDQo+ID4gPiB0aGlzPw0KPiA+ID4NCj4gPiA+IMKg
RnJvbSBteSB1bmRlcnN0YW5kaW5nIHdoZW4gZGlzY3Vzc2luZyB0aGUgQ0NTIG1pZ3JhdGlvbiBz
ZXJpZXMNCj4gPiA+IHdpdGgNCj4gPiA+IFJhbSwgdGhlIGtlcm5lbCB3aWxsIG5ldmVyIGRvIGFu
eSByZXNvbHZpbmcgKGNvbXByZXNzaW5nIC8NCj4gPiA+IGRlY29tcHJlc3NpbmcpIG1pZ3JhdGlv
bnMgb3IgZXZpY3Rpb25zIHdoaWNoIGJhc2ljYWxseSBpbXBsaWVzIHRoZQ0KPiA+ID4gZm9sbG93
aW5nOg0KPiA+ID4NCj4gPiA+ICopIENvbXByZXNzZWQgZGF0YSBtdXN0IGhhdmUgTE1FTSBvbmx5
IHBsYWNlbWVudCwgb3RoZXJ3aXNlIHRoZQ0KPiBHUFUNCj4gPiA+IHdvdWxkIHJlYWQgZ2FyYmFn
ZSBpZiBhY2Nlc3NpbmcgZnJvbSBTTUVNLg0KPiA+DQo+ID4gVGhpcyBoYXMgYWx3YXlzIGJlZW4g
dGhlIGNhc2UsIHNvIGl0IHNob3VsZCBiZSBkb2N1bWVudGVkIGluIHRoZSB1QVBJDQo+ID4gaGVh
ZGVycyBhbmQga2VybmVsZG9jcy4NCj4gPg0KPiA+ID4gKikgQ29tcHJlc3NlZCBkYXRhIGNhbid0
IGJlIGFzc3VtZWQgdG8gYmUgbWFwcGFibGUgYnkgdGhlIENQVSwNCj4gPiA+IGJlY2F1c2UNCj4g
PiA+IGluIG9yZGVyIHRvIGVuc3VyZSB0aGF0IG9uIHNtYWxsIEJBUiwgdGhlIHBsYWNlbWVudCBu
ZWVkcyB0byBiZQ0KPiA+ID4gTE1FTStTTUVNLg0KPiA+DQo+ID4gTm90IHN0cmljdGx5IHRydWUs
IGFzIHdlIGNvdWxkIGFsd2F5cyBtaWdyYXRlIHRvIHRoZSBtYXBwYWJsZSByZWdpb24NCj4gPiBp
bg0KPiA+IHRoZSBDUFUgZmF1bHQgaGFuZGxlci4gV2lsbCBuZWVkIHRoZSBzYW1lIHNldCBvZiB0
cmlja3MgYXMgd2l0aA0KPiA+IGxpbWl0ZWQNCj4gPiBtYXBwYWJsZSBHR1RUIGluIHBhc3QuDQo+
IA0KPiBJbiBhZGRpdGlvbiB0byBNYXR0J3MgcmVwbHk6DQo+IA0KPiBZZXMsIGlmIHRoZXJlIGlz
IHN1ZmZpY2llbnQgc3BhY2UuIEknbSBub3Qgc3VyZSB3ZSB3YW50IHRvIGNvbXBsaWNhdGUNCj4g
dGhpcyB0byBtaWdyYXRlIG9ubHkgcGFydCBvZiB0aGUgYnVmZmVyIHRvIG1hcHBhYmxlIG9uIGEg
ZmF1bHQgYmFzaXM/DQo+IE90aGVyd2lzZSB0aGlzIGlzIGxpa2VseSB0byBmYWlsLg0KPiANCj4g
T25lIG9wdGlvbiBpcyB0byBhbGxvdyBjcHUtbWFwcGluZyBmcm9tIFNZU1RFTSBsaWtlIFRUTSBp
cyBkb2luZyBmb3INCj4gZXZpY3RlZCBidWZmZXJzLCBldmVuIGlmIFNZU1RFTSBpcyBub3QgaW4g
dGhlIHBsYWNlbWVudCBsaXN0LCBhbmQgdGhlbg0KPiBtaWdyYXRlIGJhY2sgdG8gTE1FTSBmb3Ig
Z3B1IGFjY2Vzcy4NCj4gDQo+IEJ1dCBjYW4gdXNlci1zcGFjZSBldmVuIGludGVycHJldCB0aGUg
Y29tcHJlc3NlZCBkYXRhIHdoZW4gQ1BVLQ0KPiBtYXBwaW5nPw0KPiB3aXRob3V0IGFjY2VzcyB0
byB0aGUgQ0NTIG1ldGFkYXRhPw0KPiANCj4gPg0KPiA+ID4gKikgTmVpdGhlciBjYW4gY29tcHJl
c3NlZCBkYXRhIGJlIHBhcnQgb2YgYSBDQVBUVVJFIGJ1ZmZlciwgYmVjYXVzZQ0KPiA+ID4gdGhh
dA0KPiA+ID4gcmVxdWlyZXMgdGhlIGRhdGEgdG8gYmUgQ1BVLW1hcHBhYmxlLg0KPiA+DQo+ID4g
RXNwZWNpYWxseSB0aGlzIHdpbGwgYmUgdG9vIGJpZyBvZiBhIGxpbWl0YXRpb24gd2hpY2ggd2Ug
Y2FuJ3QgcmVhbGx5DQo+ID4gYWZmb3JkDQo+ID4gd2hlbiBpdCBjb21lcyB0byBkZWJ1Z2dpbmcu
DQo+IA0KPiBTYW1lIGhlcmUgV1JUIHVzZXItc3BhY2UgaW50ZXJwcmV0YXRpb24uDQo+IA0KPiBU
aGlzIHdpbGwgYmVjb21lIGVzcGVjaWFsbHkgdHJpY2t5IG9uIHNtYWxsIEJBUiwgYmVjYXVzZSBl
aXRoZXIgd2UgbmVlZA0KPiB0byBmaXQgYWxsIGNvbXByZXNzZWQgYnVmZmVycyBpbiB0aGUgbWFw
cGFibGUgcG9ydGlvbiwgb3IgYmUgYWJsZSB0bw0KPiBibGl0IHRoZSBjb250ZW50cyBvZiB0aGUg
Y2FwdHVyZSBidWZmZXJzIGZyb20gd2l0aGluIHRoZSBmZW5jZQ0KPiBzaWduYWxsaW5nIGNyaXRp
Y2FsIHNlY3Rpb24sIHdoaWNoIHdpbGwgcmVxdWlyZSBhIGxvdCBvZiB3b3JrIEkgZ3Vlc3MuDQo+
IA0KPiAvVGhvbWFzDQo+IA0KPiANCj4gPg0KPiA+IFJlZ2FyZHMsIEpvb25hcw0KPiA+DQo+ID4g
PiBBcmUgd2UgKGFuZCB1c2VyLW1vZGUgZHJpdmVycykgT0sgd2l0aCB0aGVzZSByZXN0cmljdGlv
bnMsIG9yIGRvIHdlDQo+ID4gPiBuZWVkDQo+ID4gPiB0byByZXRoaW5rPw0KPiA+ID4NCj4gPiA+
IFRoYW5rcywNCj4gPiA+DQo+ID4gPiBUaG9tYXMNCj4gPiA+DQo+ID4gPg0KPiANCg0K
