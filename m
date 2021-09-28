Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4E341B7E7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 22:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FBEF6E96C;
	Tue, 28 Sep 2021 20:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F4C56E96C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 20:02:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="310344391"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="310344391"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 13:02:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="554283417"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Sep 2021 13:02:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 28 Sep 2021 21:02:39 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 28 Sep 2021 13:02:38 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 07/13] drm/i915/tc: Add a mode for the TypeC PHY's
 disconnected state
Thread-Index: AQHXrn7mjM9prFOKd0GJlbH3sAKATKu44+kAgAAGxQCAAWqAAIAAAsgAgAAE4gCAAAEEAIAAA60A
Date: Tue, 28 Sep 2021 20:02:37 +0000
Message-ID: <ed58f88653ccc788d70e2924eee1754cf7201280.camel@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-8-imre.deak@intel.com>
 <689f485c910ca7cce9793fecaa53778950242892.camel@intel.com>
 <20210927214644.GA2043218@ideak-desk.fi.intel.com>
 <c0f746d643195d9f36e990a9489f48a74d2e5508.camel@intel.com>
 <20210928193408.GA2103381@ideak-desk.fi.intel.com>
 <cb65b5ec8453304853616eb52288921ae253cd19.camel@intel.com>
 <20210928195514.GB2103381@ideak-desk.fi.intel.com>
In-Reply-To: <20210928195514.GB2103381@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <3D33DC1D0DDF154B8E8C9930957B0328@intel.com>
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

T24gVHVlLCAyMDIxLTA5LTI4IGF0IDIyOjU1ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgU2VwIDI4LCAyMDIxIGF0IDEwOjQ1OjUwUE0gKzAzMDAsIFNvdXphLCBKb3NlIHdyb3Rl
Og0KPiA+ID4gPiBbLi4uXQ0KPiA+ID4gPiBXb3VsZCBub3QgYmUgcG9zc2libGUgdG8gdXNlIFRD
X1BPUlRfRElTQ09OTkVDVEVEIHdoZW4gcmVhbGx5DQo+ID4gPiA+IGRpc2Nvbm5lY3RlZCBhbmQg
ZHJvcHBpbmcgdGhlIHVzZSBvZiBUQ19QT1JUX1RCVF9BTFQgZm9yIGl0Pw0KPiA+ID4gDQo+ID4g
PiBUQ19QT1JUX0RJU0NPTk5FQ1RFRCBpcyB0aGUgc3RhdGUgd2hlbiB0aGUgUEhZIG93bmVyc2hp
cCBpcyBub3QgaGVsZCBhbmQNCj4gPiA+IHdlIGRvbid0IGhvbGQgYW55IHBvd2VyIGRvbWFpbnMu
DQo+ID4gPiANCj4gPiA+IFRDX1BPUlRfVEJUX0FMVCBpcyB0aGUgc3RhdGUgd2hlbiB0aGUgUEhZ
IG93bmVyc2hpcCBpcyBub3QgaGVsZCAobGlrZQ0KPiA+ID4gYWJvdmUpLCBhbmQgd2UgaG9sZCB0
aGUgcG93ZXIgZG9tYWluIG5lZWRlZCB0byBibG9jayBUQy1jb2xkLg0KPiA+IA0KPiA+IFN3YXBw
aW5nIGl0IHdvdWxkIG1ha2UgbW9kZXMgbmFtZXMgZG8gd2hhdCB0aGVpciBuYW1lcyBpbnRlbmQg
dG8uDQo+ID4gDQo+ID4gVXAgdG8gdGhlIHBvaW50IHRoYXQgd2Ugb25seSBoYWQgVEJULCBUQyBh
bHQgYW5kIGxlZ2FjeSBpdCB3YXMgZmluZSB0bw0KPiA+IGtlZXAgaW50byBUQlQgbW9kZSB3aGVu
IGRpc2Nvbm5lY3RlZCBidXQgbm93IHdpdGggYSBkaXNjb25uZWN0ZWQgc3RhdGUNCj4gPiBpdCBk
byBub3QgbWFrZSBzZW5zZSB0byBrZWVwIGl0IGluIFRCVCBtb2RlIHdoZW4gZGlzY29ubmVjdGVk
Lg0KPiA+IA0KPiA+IE9yIHlvdSByZW5hbWUgaXQgdG8gVENfUE9SVF9VTktOT1dOLCBhcyBpdCBz
ZXRzIHRvDQo+ID4gVENfUE9SVF9ESVNDT05ORUNURUQgbW9kZSBkdXJpbmcgdGNfaW5pdCgpIGFu
ZCB3aGVuIGdvaW5nIHRvIHN1c3BlbmQuDQo+IA0KPiBOb3Qgc3VyZSB3aGF0IHlvdSBtZWFuLCBi
ZWNhdXNlIHdoYXQgeW91IGRlc2NyaWJlIGlzIHdoYXQgYWN0dWFsbHkNCj4gaGFwcGVucy4gRnJv
bSBhbGwgc3RhdGVzIGljbF90Y19waHlfZGlzY29ubmVjdCgpIHdpbGwgY2hhbmdlIHRvDQo+IHRo
ZSBkaXNjb25uZWN0ZWQgc3RhdGUsIHdoaWNoIGlzIHRoZSBzdGF0ZSBhdCBpbml0IHRpbWUgYW5k
IGR1cmluZw0KPiBzdXNwZW5kIG9yIGFmdGVyIHVubG9hZGluZyB0aGUgZHJpdmVyLg0KDQpJJ20g
dGFsa2luZyBhYm91dCB0aGUgc3RhdGUgd2hlbiBzeXN0ZW0gaXMgdXAgd2l0aG91dCBhbnl0aGlu
ZyBjb25uZWN0ZWQgdG8gdGhlIHBvcnQsIGFmdGVyIGljbF90Y19waHlfZGlzY29ubmVjdCgpIHNl
dHMgZGlnX3BvcnQtPnRjX21vZGUgPQ0KVENfUE9SVF9ESVNDT05ORUNURUQsIGljbF90Y19waHlf
Y29ubmVjdCgpIGdvZXMgYW5kIHNldCBpdCBiYWNrIHRvIFRDX1BPUlRfVEJUX0FMVC4NCg0KDQo+
IA0KPiAtLUltcmUNCg0K
