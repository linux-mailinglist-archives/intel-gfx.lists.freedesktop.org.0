Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B76084DDEE2
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 17:26:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0576C10E6E6;
	Fri, 18 Mar 2022 16:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D974310E6E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 16:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647620772; x=1679156772;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mYG9Gjl6TqSgga/z2uLDNPCvmLba8QBzNKMgqvI9ups=;
 b=cScm1+H7DqxXYzP+5q1bxPZqPqLxj4ytN0h53nY+nsNEixErqaWQarfj
 yNc2Fsip5J3tgDKXFXzZmqzWjrcr9FqKEjJqOcA/9TXWrYoQ0BPFEWTJ1
 1QsPq3GwmCKVz13EtpfPMRJ6UYgMCDLFRtbElSEhEdd4R+Mwzti5tzxQs
 WGs3z4FrA8hAxFe38Nq5Wz8Al+1AwKegwWqsi2GcED54/Yudpen3QKyoF
 eaVuWOIq5mAmvJRjm+fOwKlvrq6e+XQcZKxkuYWIUD4LhNAMzLThyGhNy
 gDjTOdrmTmb1XJThjtKP5wW8MDTof2awnpMsFO8Zv5atXZLSzFvQmLlpq g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="237113486"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="237113486"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 09:26:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="635810716"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Mar 2022 09:26:12 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 18 Mar 2022 09:26:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 18 Mar 2022 21:56:08 +0530
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.021;
 Fri, 18 Mar 2022 09:26:06 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: =?utf-8?B?VGhvbWFzIEhlbGxzdHLDtm0=?= <thomas.hellstrom@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>, "Auld, Matthew" <matthew.auld@intel.com>,
 "C, Ramalingam" <ramalingam.c@intel.com>, "Vetter, Daniel"
 <daniel.vetter@intel.com>
Thread-Topic: Small bar recovery vs compressed content on DG2
Thread-Index: AQHYOQcI+6pND/AsdEedXcIWbe1qA6zDuYcAgAAOWgCAABbHgIABfysA///3TGA=
Date: Fri, 18 Mar 2022 16:25:42 +0000
Deferred-Delivery: Fri, 18 Mar 2022 16:25:29 +0000
Message-ID: <f80dc6ccf38343beb819e1584a9017f7@intel.com>
References: <162c1566-87c6-072f-d340-1693f6a71aea@linux.intel.com>
 <164750662822.7267.9355161518284202141@jlahtine-mobl.ger.corp.intel.com>
 <9eb06b576948707f9a0527b07b58b9640821bf19.camel@linux.intel.com>
 <d874ba08a65e4468baae737d826a85a5@intel.com>
 <ddd7af8f57320a7e2a84b3fdb94e3050eae81857.camel@linux.intel.com>
In-Reply-To: <ddd7af8f57320a7e2a84b3fdb94e3050eae81857.camel@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-Mentions: thomas.hellstrom@linux.intel.com,joonas.lahtinen@linux.intel.com
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

QFRob21hcyBIZWxsc3Ryw7ZtIC0gSSBhZ3JlZSA6LSkNCg0KTXkgcXVlc3Rpb24gd2FzIHJlYWxs
eSB0byBASm9vbmFzIExhaHRpbmVuLCB3aG8gd2FzIHNheWluZyB3ZSBjb3VsZCBhbHdheXMgbWln
cmF0ZSBpbiB0aGUgQ1BVIGZhdWx0IGhhbmRsZXIuIEkgYW0gcHVzaGluZyBiYWNrIG9uIHRoYXQg
dW5sZXNzIHdlIGhhdmUgbm8gY2hvaWNlLiBJdCdzIHRoZSB2ZXJ5IGNvbXBsaWNhdGlvbiB3ZSB3
ZXJlIHRyeWluZyB0byBhdm9pZCB3aXRoIHRoZSBjdXJyZW50IFNBUy4gSWYgdGhhdCdzIHdoYXQn
cyBuZWVkZWQsIHRoZW4gc28gYmUgaXQuIEJ1dCBJJ20gYXNraW5nIHdoZXRoZXIgd2UgY2FuIGlu
c3RlYWQgaGFuZGxlIHRoaXMgc3BlY2lhbGx5LCBpbnN0ZWFkIG9mIGFkZGluZyBnZW5lcmljIGNv
bXBsZXhpdHkgdG8gdGhlIHByaW1hcnkgY29kZSBwYXRocy4NCg0KSm9uDQoNCj4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxs
c3Ryb21AbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDE4LCAyMDIyIDI6
NDggQU0NCj4gVG86IEJsb29tZmllbGQsIEpvbiA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPjsg
Sm9vbmFzIExhaHRpbmVuDQo+IDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPjsgSW50
ZWwgR3JhcGhpY3MgRGV2ZWxvcG1lbnQgPGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnPjsgQXVsZCwgTWF0dGhldyA8bWF0dGhldy5hdWxkQGludGVsLmNvbT47IEMsDQo+IFJhbWFs
aW5nYW0gPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+OyBWZXR0ZXIsIERhbmllbA0KPiA8ZGFuaWVs
LnZldHRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBTbWFsbCBiYXIgcmVjb3ZlcnkgdnMg
Y29tcHJlc3NlZCBjb250ZW50IG9uIERHMg0KPiANCj4gSGksDQo+IA0KPiBPbiBUaHUsIDIwMjIt
MDMtMTcgYXQgMTg6MjEgKzAwMDAsIEJsb29tZmllbGQsIEpvbiB3cm90ZToNCj4gPiArQFZldHRl
ciwgRGFuaWVsDQo+ID4NCj4gPiBMZXQncyBub3Qgc3RhcnQgcmUtaW52ZW50aW5nIHRoaXMgb24g
dGhlIGZseSBhZ2Fpbi4gVGhhdCdzIGhvdyB3ZSBnb3QNCj4gPiBpbnRvIHRyb3VibGUgaW4gdGhl
IHBhc3QuIFRoZSBTQVMvV2hpdGVwYXBlciBkb2VzIGN1cnJlbnRseSByZXF1aXJlDQo+ID4gdGhl
IFNNRU0rTE1FTSBwbGFjZW1lbnQgZm9yIG1hcHBhYmxlLCBmb3IgZ29vZCByZWFzb25zLg0KPiAN
Cj4gSnVzdCB0byBhdm9pZCBhbnkgbWlzdW5kZXJzdGFuZGluZ3MgaGVyZToNCj4gDQo+IFdlIGhh
dmUgdHdvIGhhcmQgcmVxdWlyZW1lbnRzIGZyb20gQXJjaCB0aGF0IGNsYXNoLCBtYWluIHByb2Js
ZW0gaXMNCj4gY29tcHJlc3NlZCBib3MgY2FuJ3QgYmUgY2FwdHVyZWQgb24gZXJyb3Igd2l0aCBj
dXJyZW50IGRlc2lnbnMuDQo+IA0KPiBGcm9tIGFuIGVuZ2luZWVyaW5nIHBvaW50IG9mIHZpZXcg
d2UgY2FuIGRvIGxpdHRsZSBtb3JlIHRoYW4gbGlzdA0KPiBvcHRpb25zIGF2YWlsYWJsZSB0byBy
ZXNvbHZlIHRoaXMgYW5kIHdoZXRoZXIgdGhleSBhcmUgaGFyZCBvciBub3Qgc28NCj4gaGFyZCB0
byBpbXBsZW1lbWVudC4gQnV0IElNSE8gQXJjaCBuZWVkcyB0byBhZ3JlZSBvbiB3aGF0J3MgZ290
IHRvDQo+IGdpdmUuDQo+IA0KPiBUaGFua3MsDQo+IFRob21hcw0KPiANCj4gDQo+ID4NCj4gPiBX
ZSBjYW5ub3QgJ2Fsd2F5cyBtaWdyYXRlIHRvIG1hcHBhYmxlIGluIHRoZSBmYXVsdCBoYW5kbGVy
Jy4gT3IgYXQNCj4gPiBsZWFzdCwgdGhpcyBpcyBub3QgYXMgdHJpdmlhbCBhcyBpdCBpcyB0byB3
cml0ZSBpbiBhIHNlbnRlbmNlIGR1ZSB0bw0KPiA+IHRoZSBuZWVkIHRvIHNwaWxsIG91dCBvdGhl
ciBhY3RpdmUgb2JqZWN0cywgYW5kIGFsbCB0aGUgdXN1YWwNCj4gPiBjaGFsbGVuZ2VzIHdpdGgg
Y29udGV4dCBzeW5jaHJvbml6YXRpb24gZXRjLiBJdCBpcyBwb3NzaWJsZSwgcGVyaGFwcw0KPiA+
IHdpdGggYSBsb3Qgb2YgY2FyZSwgYnV0IGl0IGlzIGNoYWxsZW5naW5nIHRvIGd1YXJhbnRlZSwg
ZWFzeSB0bw0KPiA+IGJyZWFrLCBhbmQgbm90IG5lZWRlZCBmb3IgOTkuOSUgb2Ygc29mdHdhcmUu
IFdlIGFyZSB0cnlpbmcgdG8NCj4gPiBzaW1wbGlmeSBvdXIgZHJpdmVyIHN0YWNrLg0KPiA+DQo+
ID4gSWYgd2UgbmVlZCBhIHNwZWNpYWwgbWVjaGFuaXNtIGZvciBkZWJ1Zywgd2Ugc2hvdWxkIGRl
dmlzZSBhIHNwZWNpYWwNCj4gPiBtZWNoYW5pc20sIG5vdCB0aHJvdyBvdXQgdGhlIGdlbmVyYWwg
TE1FTStTTUVNIHJlcXVpcmVtZW50LiBBcmUNCj4gdGhlcmUNCj4gPiBhbnkgaWRlbnRpZmllZCBm
aXJzdC1jbGFzcyBjbGllbnRzIHRoYXQgcmVxdWlyZSBzdWNoIGFjY2Vzcywgb3IgaXMgaXQNCj4g
PiBvbmx5IGRlYnVnZ2luZyB0b29scz8NCj4gPg0KPiA+IElmIG9ubHkgZGVidWcsIHRoZW4gd2h5
IGNhbid0IHRoZSB0b29sIHVzZSBhIGNvcHkgZW5naW5lIHN1Ym1pc3Npb24NCj4gPiB0byBhY2Nl
c3MgdGhlIGRhdGEgaW4gcGxhY2U/IE9yIHBlcmhhcHMgYSBiZXNwb2tlIGlvY3RsIHRvIGFjY2Vz
cw0KPiA+IHRoaXMgdmlhIHRoZSBLTUQgKGFuZCBrbWQgc3VibWl0dGVkIGNvcHktZW5naW5lIEJC
KT8NCj4gPg0KPiA+IFRoYW5rcywNCj4gPg0KPiA+IEpvbg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPg0KPiA+ID4gU2VudDogVGh1cnNkYXksIE1hcmNoIDE3
LCAyMDIyIDI6MzUgQU0NCj4gPiA+IFRvOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5l
bkBsaW51eC5pbnRlbC5jb20+OyBCbG9vbWZpZWxkLA0KPiA+ID4gSm9uDQo+ID4gPiA8am9uLmJs
b29tZmllbGRAaW50ZWwuY29tPjsgSW50ZWwgR3JhcGhpY3MgRGV2ZWxvcG1lbnQgPGludGVsLQ0K
PiA+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZz47IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+Ow0KPiA+ID4gQywNCj4gPiA+IFJhbWFsaW5nYW0gPHJhbWFsaW5nYW0u
Y0BpbnRlbC5jb20+DQo+ID4gPiBTdWJqZWN0OiBSZTogU21hbGwgYmFyIHJlY292ZXJ5IHZzIGNv
bXByZXNzZWQgY29udGVudCBvbiBERzINCj4gPiA+DQo+ID4gPiBPbiBUaHUsIDIwMjItMDMtMTcg
YXQgMTA6NDMgKzAyMDAsIEpvb25hcyBMYWh0aW5lbiB3cm90ZToNCj4gPiA+ID4gUXVvdGluZyBU
aG9tYXMgSGVsbHN0csO2bSAoMjAyMi0wMy0xNiAwOToyNToxNikNCj4gPiA+ID4gPiBIaSENCj4g
PiA+ID4gPg0KPiA+ID4gPiA+IERvIHdlIHNvbWVob3cgbmVlZCB0byBjbGFyaWZ5IGluIHRoZSBo
ZWFkZXJzIHRoZSBzZW1hbnRpY3MgZm9yDQo+ID4gPiA+ID4gdGhpcz8NCj4gPiA+ID4gPg0KPiA+
ID4gPiA+IMKgRnJvbSBteSB1bmRlcnN0YW5kaW5nIHdoZW4gZGlzY3Vzc2luZyB0aGUgQ0NTIG1p
Z3JhdGlvbiBzZXJpZXMNCj4gPiA+ID4gPiB3aXRoDQo+ID4gPiA+ID4gUmFtLCB0aGUga2VybmVs
IHdpbGwgbmV2ZXIgZG8gYW55IHJlc29sdmluZyAoY29tcHJlc3NpbmcgLw0KPiA+ID4gPiA+IGRl
Y29tcHJlc3NpbmcpIG1pZ3JhdGlvbnMgb3IgZXZpY3Rpb25zIHdoaWNoIGJhc2ljYWxseSBpbXBs
aWVzDQo+ID4gPiA+ID4gdGhlDQo+ID4gPiA+ID4gZm9sbG93aW5nOg0KPiA+ID4gPiA+DQo+ID4g
PiA+ID4gKikgQ29tcHJlc3NlZCBkYXRhIG11c3QgaGF2ZSBMTUVNIG9ubHkgcGxhY2VtZW50LCBv
dGhlcndpc2UgdGhlDQo+ID4gPiBHUFUNCj4gPiA+ID4gPiB3b3VsZCByZWFkIGdhcmJhZ2UgaWYg
YWNjZXNzaW5nIGZyb20gU01FTS4NCj4gPiA+ID4NCj4gPiA+ID4gVGhpcyBoYXMgYWx3YXlzIGJl
ZW4gdGhlIGNhc2UsIHNvIGl0IHNob3VsZCBiZSBkb2N1bWVudGVkIGluIHRoZQ0KPiA+ID4gPiB1
QVBJDQo+ID4gPiA+IGhlYWRlcnMgYW5kIGtlcm5lbGRvY3MuDQo+ID4gPiA+DQo+ID4gPiA+ID4g
KikgQ29tcHJlc3NlZCBkYXRhIGNhbid0IGJlIGFzc3VtZWQgdG8gYmUgbWFwcGFibGUgYnkgdGhl
IENQVSwNCj4gPiA+ID4gPiBiZWNhdXNlDQo+ID4gPiA+ID4gaW4gb3JkZXIgdG8gZW5zdXJlIHRo
YXQgb24gc21hbGwgQkFSLCB0aGUgcGxhY2VtZW50IG5lZWRzIHRvIGJlDQo+ID4gPiA+ID4gTE1F
TStTTUVNLg0KPiA+ID4gPg0KPiA+ID4gPiBOb3Qgc3RyaWN0bHkgdHJ1ZSwgYXMgd2UgY291bGQg
YWx3YXlzIG1pZ3JhdGUgdG8gdGhlIG1hcHBhYmxlDQo+ID4gPiA+IHJlZ2lvbg0KPiA+ID4gPiBp
bg0KPiA+ID4gPiB0aGUgQ1BVIGZhdWx0IGhhbmRsZXIuIFdpbGwgbmVlZCB0aGUgc2FtZSBzZXQg
b2YgdHJpY2tzIGFzIHdpdGgNCj4gPiA+ID4gbGltaXRlZA0KPiA+ID4gPiBtYXBwYWJsZSBHR1RU
IGluIHBhc3QuDQo+ID4gPg0KPiA+ID4gSW4gYWRkaXRpb24gdG8gTWF0dCdzIHJlcGx5Og0KPiA+
ID4NCj4gPiA+IFllcywgaWYgdGhlcmUgaXMgc3VmZmljaWVudCBzcGFjZS4gSSdtIG5vdCBzdXJl
IHdlIHdhbnQgdG8NCj4gPiA+IGNvbXBsaWNhdGUNCj4gPiA+IHRoaXMgdG8gbWlncmF0ZSBvbmx5
IHBhcnQgb2YgdGhlIGJ1ZmZlciB0byBtYXBwYWJsZSBvbiBhIGZhdWx0DQo+ID4gPiBiYXNpcz8N
Cj4gPiA+IE90aGVyd2lzZSB0aGlzIGlzIGxpa2VseSB0byBmYWlsLg0KPiA+ID4NCj4gPiA+IE9u
ZSBvcHRpb24gaXMgdG8gYWxsb3cgY3B1LW1hcHBpbmcgZnJvbSBTWVNURU0gbGlrZSBUVE0gaXMg
ZG9pbmcNCj4gPiA+IGZvcg0KPiA+ID4gZXZpY3RlZCBidWZmZXJzLCBldmVuIGlmIFNZU1RFTSBp
cyBub3QgaW4gdGhlIHBsYWNlbWVudCBsaXN0LCBhbmQNCj4gPiA+IHRoZW4NCj4gPiA+IG1pZ3Jh
dGUgYmFjayB0byBMTUVNIGZvciBncHUgYWNjZXNzLg0KPiA+ID4NCj4gPiA+IEJ1dCBjYW4gdXNl
ci1zcGFjZSBldmVuIGludGVycHJldCB0aGUgY29tcHJlc3NlZCBkYXRhIHdoZW4gQ1BVLQ0KPiA+
ID4gbWFwcGluZz8NCj4gPiA+IHdpdGhvdXQgYWNjZXNzIHRvIHRoZSBDQ1MgbWV0YWRhdGE/DQo+
ID4gPg0KPiA+ID4gPg0KPiA+ID4gPiA+ICopIE5laXRoZXIgY2FuIGNvbXByZXNzZWQgZGF0YSBi
ZSBwYXJ0IG9mIGEgQ0FQVFVSRSBidWZmZXIsDQo+ID4gPiA+ID4gYmVjYXVzZQ0KPiA+ID4gPiA+
IHRoYXQNCj4gPiA+ID4gPiByZXF1aXJlcyB0aGUgZGF0YSB0byBiZSBDUFUtbWFwcGFibGUuDQo+
ID4gPiA+DQo+ID4gPiA+IEVzcGVjaWFsbHkgdGhpcyB3aWxsIGJlIHRvbyBiaWcgb2YgYSBsaW1p
dGF0aW9uIHdoaWNoIHdlIGNhbid0DQo+ID4gPiA+IHJlYWxseQ0KPiA+ID4gPiBhZmZvcmQNCj4g
PiA+ID4gd2hlbiBpdCBjb21lcyB0byBkZWJ1Z2dpbmcuDQo+ID4gPg0KPiA+ID4gU2FtZSBoZXJl
IFdSVCB1c2VyLXNwYWNlIGludGVycHJldGF0aW9uLg0KPiA+ID4NCj4gPiA+IFRoaXMgd2lsbCBi
ZWNvbWUgZXNwZWNpYWxseSB0cmlja3kgb24gc21hbGwgQkFSLCBiZWNhdXNlIGVpdGhlciB3ZQ0K
PiA+ID4gbmVlZA0KPiA+ID4gdG8gZml0IGFsbCBjb21wcmVzc2VkIGJ1ZmZlcnMgaW4gdGhlIG1h
cHBhYmxlIHBvcnRpb24sIG9yIGJlIGFibGUNCj4gPiA+IHRvDQo+ID4gPiBibGl0IHRoZSBjb250
ZW50cyBvZiB0aGUgY2FwdHVyZSBidWZmZXJzIGZyb20gd2l0aGluIHRoZSBmZW5jZQ0KPiA+ID4g
c2lnbmFsbGluZyBjcml0aWNhbCBzZWN0aW9uLCB3aGljaCB3aWxsIHJlcXVpcmUgYSBsb3Qgb2Yg
d29yayBJDQo+ID4gPiBndWVzcy4NCj4gPiA+DQo+ID4gPiAvVGhvbWFzDQo+ID4gPg0KPiA+ID4N
Cj4gPiA+ID4NCj4gPiA+ID4gUmVnYXJkcywgSm9vbmFzDQo+ID4gPiA+DQo+ID4gPiA+ID4gQXJl
IHdlIChhbmQgdXNlci1tb2RlIGRyaXZlcnMpIE9LIHdpdGggdGhlc2UgcmVzdHJpY3Rpb25zLCBv
cg0KPiA+ID4gPiA+IGRvIHdlDQo+ID4gPiA+ID4gbmVlZA0KPiA+ID4gPiA+IHRvIHJldGhpbms/
DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBUaGFua3MsDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBUaG9t
YXMNCj4gPiA+ID4gPg0KPiA+ID4gPiA+DQo+ID4gPg0KPiA+DQo+IA0KDQo=
