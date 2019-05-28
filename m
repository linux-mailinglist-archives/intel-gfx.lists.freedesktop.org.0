Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD9B2C43D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 12:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C54156E1B4;
	Tue, 28 May 2019 10:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30AD16E1B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 10:28:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 03:28:58 -0700
X-ExtLoop1: 1
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
 by orsmga004.jf.intel.com with ESMTP; 28 May 2019 03:28:57 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.166]) by
 IRSMSX154.ger.corp.intel.com ([169.254.12.120]) with mapi id 14.03.0415.000;
 Tue, 28 May 2019 11:28:56 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 00/17] GuC 32.0.3
Thread-Index: AQHVFLsaVAUpd0eHS0iusi7Pb1nH1KaAM8UAgAAEyICAAAF/AIAAHI0A
Date: Tue, 28 May 2019 10:28:31 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D076705DEA@IRSMSX106.ger.corp.intel.com>
References: <20190527183613.17076-1-michal.wajdeczko@intel.com>
 <155903540427.2573.16902107227143511776@skylake-alporthouse-com>
 <20190528094031.GQ22949@platvala-desk.ger.corp.intel.com>
 <155903675213.2573.1572948212701356584@skylake-alporthouse-com>
In-Reply-To: <155903675213.2573.1572948212701356584@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTRmMzQwNTEtOTExZS00ZGFiLTk4ZDYtZDk2NDRhZDhhYmQ3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiS09Fb2RFb0EyNnpGQmJpRUcyeGg2Q0l2Vlpoa0FMQysrYW1MSEVKUVVscCtSdUszNGo4Uk1mUEJjb1QxZUdXQiJ9
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 00/17] GuC 32.0.3
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IFtt
YWlsdG86aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnXSBPbiBCZWhhbGYg
T2YgQ2hyaXMNCj4gV2lsc29uDQo+IFNlbnQ6IHRpaXN0YWkgMjguIHRvdWtva3V1dGEgMjAxOSAx
Mi40Ng0KPiBUbzogTGF0dmFsYSwgUGV0cmkgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPg0KPiBD
YzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVs
LWdmeF0gW1BBVENIIHY1IDAwLzE3XSBHdUMgMzIuMC4zDQo+IA0KPiBRdW90aW5nIFBldHJpIExh
dHZhbGEgKDIwMTktMDUtMjggMTA6NDA6MzEpDQo+ID4gT24gVHVlLCBNYXkgMjgsIDIwMTkgYXQg
MTA6MjM6MjRBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOg0KPiA+ID4gUXVvdGluZyBNaWNo
YWwgV2FqZGVjemtvICgyMDE5LTA1LTI3IDE5OjM1OjU2KQ0KPiA+ID4gPiBOZXcgR3VDIGZpcm13
YXJlcyAoZm9yIFNLTCwgQlhULCBLQkwsIEdMSywgSUNMKSB3aXRoIHVwZGF0ZWQgQUJJIGludGVy
ZmFjZS4NCj4gPiA+DQo+ID4gPiBBbGwgcmV2aWV3ZWQvYWNrZWQsIGFuZCBJIHRydXN0IHRoZSBm
YWlsdXJlcyB3aWxsIGJlIGZpeGVkIGluIHRpbWUsDQo+ID4gPiBzbyBwdXNoZWQuIFRoYW5rcy4N
Cj4gPiA+IC1DaHJpcw0KPiA+DQo+ID4NCj4gPiBCdXQgd2l0aG91dCB0ZWxsaW5nIE1hcnRpbiB0
byBmaWxlIGNpYnVnbG9nIGZpbHRlcnMgZm9yIGtub3duIGlzc3Vlcz8NCj4gDQo+IGZpLWljbC1n
dWMgc2hvdWxkIHJlbWFpbiBzdXBwcmVzc2VkLg0KPiBmaS1hcGwtZ3VjIHNob3VsZCBiZSByZXRp
cmVkLg0KTWVhbmluZyB0byBnZXQgdG8gd2l0aG91dCBndWMgdXNhZ2UgPyANCg0KPiAtQ2hyaXMN
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
