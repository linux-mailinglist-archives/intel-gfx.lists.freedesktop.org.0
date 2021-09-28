Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 643F541B8C5
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 22:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C5F89CB9;
	Tue, 28 Sep 2021 20:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A74C89CB9
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 20:56:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="224459246"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="224459246"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 13:56:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="562638131"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga002.fm.intel.com with ESMTP; 28 Sep 2021 13:56:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 28 Sep 2021 21:56:44 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 28 Sep 2021 13:56:43 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 07/13] drm/i915/tc: Add a mode for the TypeC PHY's
 disconnected state
Thread-Index: AQHXrn7mjM9prFOKd0GJlbH3sAKATKu44+kAgAAGxQCAAWqAAIAAAsgAgAAE4gCAAAEEAIAAA60A////+oCAAAefgIAAAPOAgAAGkYA=
Date: Tue, 28 Sep 2021 20:56:43 +0000
Message-ID: <5f5a0bda264ac226b49e6703747ac7a5b7de903a.camel@intel.com>
References: <20210921002313.1132357-8-imre.deak@intel.com>
 <689f485c910ca7cce9793fecaa53778950242892.camel@intel.com>
 <20210927214644.GA2043218@ideak-desk.fi.intel.com>
 <c0f746d643195d9f36e990a9489f48a74d2e5508.camel@intel.com>
 <20210928193408.GA2103381@ideak-desk.fi.intel.com>
 <cb65b5ec8453304853616eb52288921ae253cd19.camel@intel.com>
 <20210928195514.GB2103381@ideak-desk.fi.intel.com>
 <ed58f88653ccc788d70e2924eee1754cf7201280.camel@intel.com>
 <20210928200819.GC2103381@ideak-desk.fi.intel.com>
 <bbf4399a8f430b28f75eecbd58dcbd9db6ee882f.camel@intel.com>
 <20210928203859.GD2103381@ideak-desk.fi.intel.com>
In-Reply-To: <20210928203859.GD2103381@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <D4E3C2353A838A4D90BB95009EAE247F@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/tc: Add a mode for the TypeC
 PHY's disconnected state
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

T24gVHVlLCAyMDIxLTA5LTI4IGF0IDIzOjM4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgU2VwIDI4LCAyMDIxIGF0IDExOjI5OjQ5UE0gKzAzMDAsIFNvdXphLCBKb3NlIHdyb3Rl
Og0KPiA+IE9uIFR1ZSwgMjAyMS0wOS0yOCBhdCAyMzowOCArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Og0KPiA+ID4gT24gVHVlLCBTZXAgMjgsIDIwMjEgYXQgMTE6MDI6MzdQTSArMDMwMCwgU291emEs
IEpvc2Ugd3JvdGU6DQo+ID4gPiA+IE9uIFR1ZSwgMjAyMS0wOS0yOCBhdCAyMjo1NSArMDMwMCwg
SW1yZSBEZWFrIHdyb3RlOg0KPiA+ID4gPiA+IE9uIFR1ZSwgU2VwIDI4LCAyMDIxIGF0IDEwOjQ1
OjUwUE0gKzAzMDAsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+ID4gPiA+ID4gPiA+IFsuLi5dDQo+
ID4gPiA+ID4gPiA+ID4gV291bGQgbm90IGJlIHBvc3NpYmxlIHRvIHVzZSBUQ19QT1JUX0RJU0NP
Tk5FQ1RFRCB3aGVuIHJlYWxseQ0KPiA+ID4gPiA+ID4gPiA+IGRpc2Nvbm5lY3RlZCBhbmQgZHJv
cHBpbmcgdGhlIHVzZSBvZiBUQ19QT1JUX1RCVF9BTFQgZm9yIGl0Pw0KPiA+ID4gPiA+ID4gPiAN
Cj4gPiA+ID4gPiA+ID4gVENfUE9SVF9ESVNDT05ORUNURUQgaXMgdGhlIHN0YXRlIHdoZW4gdGhl
IFBIWSBvd25lcnNoaXAgaXMgbm90IGhlbGQgYW5kDQo+ID4gPiA+ID4gPiA+IHdlIGRvbid0IGhv
bGQgYW55IHBvd2VyIGRvbWFpbnMuDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBUQ19Q
T1JUX1RCVF9BTFQgaXMgdGhlIHN0YXRlIHdoZW4gdGhlIFBIWSBvd25lcnNoaXAgaXMgbm90IGhl
bGQgKGxpa2UNCj4gPiA+ID4gPiA+ID4gYWJvdmUpLCBhbmQgd2UgaG9sZCB0aGUgcG93ZXIgZG9t
YWluIG5lZWRlZCB0byBibG9jayBUQy1jb2xkLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBT
d2FwcGluZyBpdCB3b3VsZCBtYWtlIG1vZGVzIG5hbWVzIGRvIHdoYXQgdGhlaXIgbmFtZXMgaW50
ZW5kIHRvLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBVcCB0byB0aGUgcG9pbnQgdGhhdCB3
ZSBvbmx5IGhhZCBUQlQsIFRDIGFsdCBhbmQgbGVnYWN5IGl0IHdhcyBmaW5lIHRvDQo+ID4gPiA+
ID4gPiBrZWVwIGludG8gVEJUIG1vZGUgd2hlbiBkaXNjb25uZWN0ZWQgYnV0IG5vdyB3aXRoIGEg
ZGlzY29ubmVjdGVkIHN0YXRlDQo+ID4gPiA+ID4gPiBpdCBkbyBub3QgbWFrZSBzZW5zZSB0byBr
ZWVwIGl0IGluIFRCVCBtb2RlIHdoZW4gZGlzY29ubmVjdGVkLg0KPiA+ID4gPiA+ID4gDQo+ID4g
PiA+ID4gPiBPciB5b3UgcmVuYW1lIGl0IHRvIFRDX1BPUlRfVU5LTk9XTiwgYXMgaXQgc2V0cyB0
bw0KPiA+ID4gPiA+ID4gVENfUE9SVF9ESVNDT05ORUNURUQgbW9kZSBkdXJpbmcgdGNfaW5pdCgp
IGFuZCB3aGVuIGdvaW5nIHRvIHN1c3BlbmQuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gTm90IHN1
cmUgd2hhdCB5b3UgbWVhbiwgYmVjYXVzZSB3aGF0IHlvdSBkZXNjcmliZSBpcyB3aGF0IGFjdHVh
bGx5DQo+ID4gPiA+ID4gaGFwcGVucy4gRnJvbSBhbGwgc3RhdGVzIGljbF90Y19waHlfZGlzY29u
bmVjdCgpIHdpbGwgY2hhbmdlIHRvDQo+ID4gPiA+ID4gdGhlIGRpc2Nvbm5lY3RlZCBzdGF0ZSwg
d2hpY2ggaXMgdGhlIHN0YXRlIGF0IGluaXQgdGltZSBhbmQgZHVyaW5nDQo+ID4gPiA+ID4gc3Vz
cGVuZCBvciBhZnRlciB1bmxvYWRpbmcgdGhlIGRyaXZlci4NCj4gPiA+ID4gDQo+ID4gPiA+IEkn
bSB0YWxraW5nIGFib3V0IHRoZSBzdGF0ZSB3aGVuIHN5c3RlbSBpcyB1cCB3aXRob3V0IGFueXRo
aW5nDQo+ID4gPiA+IGNvbm5lY3RlZCB0byB0aGUgcG9ydCwgYWZ0ZXIgaWNsX3RjX3BoeV9kaXNj
b25uZWN0KCkgc2V0cw0KPiA+ID4gPiBkaWdfcG9ydC0+dGNfbW9kZSA9IFRDX1BPUlRfRElTQ09O
TkVDVEVELCBpY2xfdGNfcGh5X2Nvbm5lY3QoKSBnb2VzDQo+ID4gPiA+IGFuZCBzZXQgaXQgYmFj
ayB0byBUQ19QT1JUX1RCVF9BTFQuDQo+ID4gPiANCj4gPiA+IFllcywgd2hlbiB0aGUgcG9ydCBp
cyBsb2NrZWQgd2UgYXJlIGluIG9uZSBvZiBUQlQtYWx0LCBEUC1hbHQgb3IgbGVnYWN5DQo+ID4g
PiBtb2RlLiBUaGVzZSBhcmUgdGhlIG9ubHkgbW9kZXMgdGhhdCBtYWtlIHNlbnNlIGZvciBhbiBB
VVggdHJhbnNmZXIgb3IgYQ0KPiA+ID4gbW9kZXNldCwgZm9yIHdoaWNoIHRoZSBsb2NrIHdhcyB0
YWtlbi4NCj4gPiANCj4gPiBPa2F5IGF0IHRoZSBlbmQgb2YgdGhlIHNlcmllcyBtb2RlIGdvZXMg
dG8gVENfUE9SVF9ESVNDT05ORUNURUQgaWYgbm8NCj4gPiByZWZlcmVuY2UgaXMgaGVsZC4NCj4g
DQo+IFllcy4NCg0KV2l0aCB0aGUgd2Fybl9vbiBmaXhlZDoNCg0KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiAtLUltcmUN
Cg0K
