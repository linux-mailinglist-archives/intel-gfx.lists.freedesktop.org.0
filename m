Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4887346CDBC
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 07:28:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65E2A6E923;
	Wed,  8 Dec 2021 06:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CC46E923
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 06:28:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="301149142"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="301149142"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 22:28:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="461587295"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2021 22:28:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 22:28:46 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 22:28:45 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.020;
 Tue, 7 Dec 2021 22:28:45 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dmc: Change DMC FW size on ADL-P
Thread-Index: AQHX6xN1DYKyMcbnskG2PHk8itUxKqwnG7EAgAFSGwD//7WbwA==
Date: Wed, 8 Dec 2021 06:28:45 +0000
Message-ID: <7dcb229970e34713bf8fc0665c37354b@intel.com>
References: <20211207023718.322349-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <20211207064422.if3bq2e2wolzcryz@ldmartin-desk2>
 <ee330af8f5dbcc319e2b1d66c5ae03eaecf1ac90.camel@intel.com>
In-Reply-To: <ee330af8f5dbcc319e2b1d66c5ae03eaecf1ac90.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Change DMC FW size on ADL-P
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVG9sYWthbmFoYWxsaSBQ
cmFkZWVwLCBNYWRodW1pdGhhDQo+IDxtYWRodW1pdGhhLnRvbGFrYW5haGFsbGkucHJhZGVlcEBp
bnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgOCwgMjAyMSA4OjI1IEFNDQo+
IFRvOiBTcml2YXRzYSwgQW51c2hhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPjsgRGUgTWFy
Y2hpLCBMdWNhcw0KPiA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENI
XSBkcm0vaTkxNS9kbWM6IENoYW5nZSBETUMgRlcgc2l6ZSBvbiBBREwtDQo+IFANCj4gDQo+IEBM
dWNhcyBUaGFua3MgZm9yIHRoZSBSLWIuDQo+IA0KPiBUaGUgQlNwZWMgaXMgY3VycmVudGx5IG1p
c3Npbmcgc2l6ZSByZWxhdGVkIGluZm8sIHdlJ3JlIHdvcmtpbmcgb24gZ2V0dGluZyBpdA0KPiBh
ZGRlZC4NCj4gDQo+IFN0cmFuZ2UgaW5kZWVkIHRoYXQgdjIuMTIgd2FzIGFib3ZlIDI0a0IuDQo+
IA0KPiBAQW51c2hhLCBkbyB5b3UgcmVjYWxsIGFueSBzaXplIHJlbGF0ZWQgaXNzdWVzIGZvciB2
Mi4xMj8NCg0KTm8uIEkgZG9u4oCZdCByZWNhbGwgYW55IHNpemUgcmVsYXRlZCBpc3N1ZSBmb3Ig
YW55IGRtYyB2ZXJzaW9uIHRpbGwgMi4xNA0KDQpBbnVzaGENCj4gLSBNYWRodW1pdGhhDQo+IA0K
PiBPbiBNb24sIDIwMjEtMTItMDYgYXQgMjI6NDQgLTA4MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90
ZToNCj4gPiBPbiBNb24sIERlYyAwNiwgMjAyMSBhdCAwNjozNzoxOFBNIC0wODAwLCBNYWRodW1p
dGhhIFRvbGFrYW5haGFsbGkNCj4gPiBQcmFkZWVwIHdyb3RlOg0KPiA+ID4gSW5jcmVhc2UgdGhl
IHNpemUgb2YgRE1DIG9uIEFETC1QIHRvIGFjY291bnQgZm9yIHN1cHBvcnQgb2YgbmV3DQo+ID4g
PiBmZWF0dXJlcyBpbiB0aGUgY3VycmVudC91cGNvbWluZyBETUMgdmVyc2lvbnMuDQo+ID4NCj4g
PiBJIHdhcyB0cnlpbmcgdG8gZmluZCBhbnl0aGluZyByZWxhdGVkIG9uIEJzcGVjIDQ5MTkzIGFu
ZCA0OTE5NCwgYnV0DQo+ID4gZGlkbid0IGZpbmQgYW55dGhpbmcgcmVsYXRlZCB0byBzaXplLg0K
PiA+DQo+ID4gSG93ZXZlciBJIHNlZSBhZGwtcCAyLjEyIGZpcm13YXJlIGlzIGFscmVhZHkgYWJv
dmUgdGhlIHByZXZpb3VzIDI0a0IuDQo+ID4gSG93IGRpZCB3ZSBldmVyIGxvYWRlZCBETUM/IFll
cywgdGhpcyBpcyBub3QgdGhlIGZpbGUgc2l6ZSwgYnV0IHJhdGhlcg0KPiA+IHRoZSBwYXlsb2Fk
IHNpemUsIGJ1dCBBRkFJQ1MgdGhlIHJlc3Qgc2hvdWxkIGFjY291bnQgZm9yIGxlc3MgdGhhbiAx
aywNCj4gPiBzbyBpdCBkb2Vzbid0IG1ha2UgYSByZWFsIGRpZmZlcmVuY2UuDQo+ID4NCj4gPiBG
b3IgdGhpcyBzcGVjaWZpYyBjaGFuZ2U6DQo+ID4NCj4gPg0KPiA+IFJldmlld2VkLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gPg0KPiA+IHRoYW5rcw0K
PiA+IEx1Y2FzIERlIE1hcmNoaQ0KPiANCg0K
