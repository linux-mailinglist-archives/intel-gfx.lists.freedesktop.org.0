Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 588CA46B3D1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 08:25:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F2058BA5E;
	Tue,  7 Dec 2021 07:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F6F8BA5E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 07:25:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="217542046"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="217542046"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 23:25:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="502484240"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 06 Dec 2021 23:25:06 -0800
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 6 Dec 2021 23:25:05 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 12:55:03 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Tue, 7 Dec 2021 12:55:03 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v3 0/3] Enable pipe color support on D13 platform
Thread-Index: AQHX6zmtlDjO6XXTbkGf8uhzGUp4j6wmoE0w
Date: Tue, 7 Dec 2021 07:25:03 +0000
Message-ID: <06e20f0ce72c4f2c86783884e54ba033@intel.com>
References: <20211207071135.3660332-1-uma.shankar@intel.com>
In-Reply-To: <20211207071135.3660332-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v3 0/3] Enable pipe color support on D13 platform
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhbmthciwgVW1hIDx1
bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIERlY2VtYmVyIDcsIDIwMjEg
MTI6NDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tOyBNb2RlbSwgQmhhbnVwcmFrYXNoDQo+IDxiaGFu
dXByYWthc2gubW9kZW1AaW50ZWwuY29tPjsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFt2MyAwLzNdIEVuYWJsZSBwaXBlIGNvbG9yIHN1cHBvcnQgb24g
RDEzIHBsYXRmb3JtDQo+IA0KPiBFbmFibGUgcGlwZSBjb2xvciBzdXBwb3J0IGZvciBEaXNwbGF5
IDEzIHBsYXRmb3JtLiBUaGlzIHNlcmllcyBlbmFibGVzIGp1c3QgdGhlIDEwYml0DQo+IGdhbW1h
IG1vZGUuIE1vcmUgYWR2YW5jZWQgbG9nYXJpdGhtaWMgZ2FtbWEgbW9kZSB3aWxsIGJlIGVuYWJs
ZSB3aXRoIHRoZSBuZXcNCj4gZW5oYW5jZWQgVUFQSS4gSXQgd2lsbCBiZSBleHRlbmRlZCBvbmNl
IHRoZSBVQVBJIGlzIGFncmVlZCBpbiBjb21tdW5pdHkuIFRoaXMgc2VyaWVzDQo+IGp1c3QgYWRk
cyB0aGUgYmFzaWMgc3VwcG9ydCBpbiB0aGUgaW50ZXJpbS4NCj4gDQo+IHYyOiBBZGRyZXNzZWQg
VmlsbGUncyByZXZpZXcgY29tbWVudHMuDQo+IA0KPiB2MzogRHJvcHBlZCBnYW1tYSBsdXQgdGVz
dHMgZmllbGQgKFZpbGxlKQ0KDQpQdXNoZWQgdGhlIGNoYW5nZXMgdG8gZHJtLWludGVsLW5leHQu
IFRoYW5rcyBmb3IgdGhlIHJldmlld3MuDQoNClJlZ2FyZHMsDQpVbWEgU2hhbmthcg0KPiBVbWEg
U2hhbmthciAoMyk6DQo+ICAgZHJtL2k5MTUveGVscGQ6IEVuYWJsZSBQaXBlIGNvbG9yIHN1cHBv
cnQgZm9yIEQxMyBwbGF0Zm9ybQ0KPiAgIGRybS9pOTE1L3hlbHBkOiBFbmFibGUgUGlwZSBEZWdh
bW1hDQo+ICAgZHJtL2k5MTUveGVscGQ6IEFkZCBQaXBlIENvbG9yIEx1dCBjYXBzIHRvIHBsYXRm
b3JtIGNvbmZpZw0KPiANCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuYyB8IDIzICsrKysrKysrKysrKysrKysrKystLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMgICAgICAgICAgICB8ICA1ICsrKystDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDI0
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiAtLQ0KPiAyLjI1LjENCg0K
