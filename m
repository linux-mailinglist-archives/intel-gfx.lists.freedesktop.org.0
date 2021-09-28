Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3CE41B852
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 22:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A00EC6E96E;
	Tue, 28 Sep 2021 20:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 383586E96E
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 20:30:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="221595264"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="221595264"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 13:29:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="616910170"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by fmsmga001.fm.intel.com with ESMTP; 28 Sep 2021 13:29:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 28 Sep 2021 21:29:51 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 28 Sep 2021 13:29:49 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 07/13] drm/i915/tc: Add a mode for the TypeC PHY's
 disconnected state
Thread-Index: AQHXrn7mjM9prFOKd0GJlbH3sAKATKu44+kAgAAGxQCAAWqAAIAAAsgAgAAE4gCAAAEEAIAAA60A////+oCAAAefgA==
Date: Tue, 28 Sep 2021 20:29:49 +0000
Message-ID: <bbf4399a8f430b28f75eecbd58dcbd9db6ee882f.camel@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-8-imre.deak@intel.com>
 <689f485c910ca7cce9793fecaa53778950242892.camel@intel.com>
 <20210927214644.GA2043218@ideak-desk.fi.intel.com>
 <c0f746d643195d9f36e990a9489f48a74d2e5508.camel@intel.com>
 <20210928193408.GA2103381@ideak-desk.fi.intel.com>
 <cb65b5ec8453304853616eb52288921ae253cd19.camel@intel.com>
 <20210928195514.GB2103381@ideak-desk.fi.intel.com>
 <ed58f88653ccc788d70e2924eee1754cf7201280.camel@intel.com>
 <20210928200819.GC2103381@ideak-desk.fi.intel.com>
In-Reply-To: <20210928200819.GC2103381@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B40DF2A809E9FD428024857A5B1D218F@intel.com>
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

T24gVHVlLCAyMDIxLTA5LTI4IGF0IDIzOjA4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgU2VwIDI4LCAyMDIxIGF0IDExOjAyOjM3UE0gKzAzMDAsIFNvdXphLCBKb3NlIHdyb3Rl
Og0KPiA+IE9uIFR1ZSwgMjAyMS0wOS0yOCBhdCAyMjo1NSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Og0KPiA+ID4gT24gVHVlLCBTZXAgMjgsIDIwMjEgYXQgMTA6NDU6NTBQTSArMDMwMCwgU291emEs
IEpvc2Ugd3JvdGU6DQo+ID4gPiA+ID4gPiBbLi4uXQ0KPiA+ID4gPiA+ID4gV291bGQgbm90IGJl
IHBvc3NpYmxlIHRvIHVzZSBUQ19QT1JUX0RJU0NPTk5FQ1RFRCB3aGVuIHJlYWxseQ0KPiA+ID4g
PiA+ID4gZGlzY29ubmVjdGVkIGFuZCBkcm9wcGluZyB0aGUgdXNlIG9mIFRDX1BPUlRfVEJUX0FM
VCBmb3IgaXQ/DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gVENfUE9SVF9ESVNDT05ORUNURUQgaXMg
dGhlIHN0YXRlIHdoZW4gdGhlIFBIWSBvd25lcnNoaXAgaXMgbm90IGhlbGQgYW5kDQo+ID4gPiA+
ID4gd2UgZG9uJ3QgaG9sZCBhbnkgcG93ZXIgZG9tYWlucy4NCj4gPiA+ID4gPiANCj4gPiA+ID4g
PiBUQ19QT1JUX1RCVF9BTFQgaXMgdGhlIHN0YXRlIHdoZW4gdGhlIFBIWSBvd25lcnNoaXAgaXMg
bm90IGhlbGQgKGxpa2UNCj4gPiA+ID4gPiBhYm92ZSksIGFuZCB3ZSBob2xkIHRoZSBwb3dlciBk
b21haW4gbmVlZGVkIHRvIGJsb2NrIFRDLWNvbGQuDQo+ID4gPiA+IA0KPiA+ID4gPiBTd2FwcGlu
ZyBpdCB3b3VsZCBtYWtlIG1vZGVzIG5hbWVzIGRvIHdoYXQgdGhlaXIgbmFtZXMgaW50ZW5kIHRv
Lg0KPiA+ID4gPiANCj4gPiA+ID4gVXAgdG8gdGhlIHBvaW50IHRoYXQgd2Ugb25seSBoYWQgVEJU
LCBUQyBhbHQgYW5kIGxlZ2FjeSBpdCB3YXMgZmluZSB0bw0KPiA+ID4gPiBrZWVwIGludG8gVEJU
IG1vZGUgd2hlbiBkaXNjb25uZWN0ZWQgYnV0IG5vdyB3aXRoIGEgZGlzY29ubmVjdGVkIHN0YXRl
DQo+ID4gPiA+IGl0IGRvIG5vdCBtYWtlIHNlbnNlIHRvIGtlZXAgaXQgaW4gVEJUIG1vZGUgd2hl
biBkaXNjb25uZWN0ZWQuDQo+ID4gPiA+IA0KPiA+ID4gPiBPciB5b3UgcmVuYW1lIGl0IHRvIFRD
X1BPUlRfVU5LTk9XTiwgYXMgaXQgc2V0cyB0bw0KPiA+ID4gPiBUQ19QT1JUX0RJU0NPTk5FQ1RF
RCBtb2RlIGR1cmluZyB0Y19pbml0KCkgYW5kIHdoZW4gZ29pbmcgdG8gc3VzcGVuZC4NCj4gPiA+
IA0KPiA+ID4gTm90IHN1cmUgd2hhdCB5b3UgbWVhbiwgYmVjYXVzZSB3aGF0IHlvdSBkZXNjcmli
ZSBpcyB3aGF0IGFjdHVhbGx5DQo+ID4gPiBoYXBwZW5zLiBGcm9tIGFsbCBzdGF0ZXMgaWNsX3Rj
X3BoeV9kaXNjb25uZWN0KCkgd2lsbCBjaGFuZ2UgdG8NCj4gPiA+IHRoZSBkaXNjb25uZWN0ZWQg
c3RhdGUsIHdoaWNoIGlzIHRoZSBzdGF0ZSBhdCBpbml0IHRpbWUgYW5kIGR1cmluZw0KPiA+ID4g
c3VzcGVuZCBvciBhZnRlciB1bmxvYWRpbmcgdGhlIGRyaXZlci4NCj4gPiANCj4gPiBJJ20gdGFs
a2luZyBhYm91dCB0aGUgc3RhdGUgd2hlbiBzeXN0ZW0gaXMgdXAgd2l0aG91dCBhbnl0aGluZw0K
PiA+IGNvbm5lY3RlZCB0byB0aGUgcG9ydCwgYWZ0ZXIgaWNsX3RjX3BoeV9kaXNjb25uZWN0KCkg
c2V0cw0KPiA+IGRpZ19wb3J0LT50Y19tb2RlID0gVENfUE9SVF9ESVNDT05ORUNURUQsIGljbF90
Y19waHlfY29ubmVjdCgpIGdvZXMNCj4gPiBhbmQgc2V0IGl0IGJhY2sgdG8gVENfUE9SVF9UQlRf
QUxULg0KPiANCj4gWWVzLCB3aGVuIHRoZSBwb3J0IGlzIGxvY2tlZCB3ZSBhcmUgaW4gb25lIG9m
IFRCVC1hbHQsIERQLWFsdCBvciBsZWdhY3kNCj4gbW9kZS4gVGhlc2UgYXJlIHRoZSBvbmx5IG1v
ZGVzIHRoYXQgbWFrZSBzZW5zZSBmb3IgYW4gQVVYIHRyYW5zZmVyIG9yIGENCj4gbW9kZXNldCwg
Zm9yIHdoaWNoIHRoZSBsb2NrIHdhcyB0YWtlbi4NCg0KT2theSBhdCB0aGUgZW5kIG9mIHRoZSBz
ZXJpZXMgbW9kZSBnb2VzIHRvIFRDX1BPUlRfRElTQ09OTkVDVEVEIGlmIG5vIHJlZmVyZW5jZSBp
cyBoZWxkLg0KDQo+IA0KPiAtLUltcmUNCg0K
