Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A20FFE3FF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 18:31:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF4286E9E8;
	Fri, 15 Nov 2019 17:31:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 910496E9E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 17:31:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 09:31:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="236144136"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga002.fm.intel.com with ESMTP; 15 Nov 2019 09:31:25 -0800
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.150]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.82]) with mapi id 14.03.0439.000;
 Fri, 15 Nov 2019 09:31:24 -0800
From: "Hiatt, Don" <don.hiatt@intel.com>
To: Tomas Janousek <tomi@nomi.cz>, Chris Wilson <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH 2/2] drm/i915/guc: Skip suspend/resume GuC action on
 platforms w/o GuC submission
Thread-Index: AQHVm9o6w4mMLLf3QEWb1tzK3F24GaeMfOsg
Date: Fri, 15 Nov 2019 17:31:24 +0000
Message-ID: <97654A90DB924C44A3AE6C902A3FEAC15F997EFF@ORSMSX106.amr.corp.intel.com>
References: <20191115011112.25249-1-don.hiatt@intel.com>
 <20191115011112.25249-2-don.hiatt@intel.com>
 <5cebb6ef4b95c893ec53f68113439a3922ea8163.camel@intel.com>
 <157383839967.11997.12324024656389899848@skylake-alporthouse-com>
 <20191115172902.yeqpnnunuowrbnrb@notes.lisk.in>
In-Reply-To: <20191115172902.yeqpnnunuowrbnrb@notes.lisk.in>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDJhZTU0ZDItMjg1ZS00NGY1LWJiNWItNGY0Y2ZhOTJmNTIzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUmhRNTZKM2N1RWU0TjhcL2k5M1pJTVk5Rnh3b0VFVWN6aWFtNFJBOFgyMGFDekdybzZiS21IZmlnV0ZXdnFteGoifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
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

DQoNCj4gRnJvbTogVG9tYXMgSmFub3VzZWsgPHRvbWlAbm9taS5jej4NCj4gU2VudDogRnJpZGF5
LCBOb3ZlbWJlciAxNSwgMjAxOSA5OjI5IEFNDQo+IFRvOiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4NCj4gQ2M6IEhpYXR0LCBEb24gPGRvbi5oaWF0dEBpbnRlbC5jb20+
OyBTdW1tZXJzLCBTdHVhcnQNCj4gPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT47IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCAyLzJdIGRybS9p
OTE1L2d1YzogU2tpcCBzdXNwZW5kL3Jlc3VtZSBHdUMgYWN0aW9uIG9uDQo+IHBsYXRmb3JtcyB3
L28gR3VDIHN1Ym1pc3Npb24NCj4gDQo+IERvbiwgQ2hyaXMsDQo+IA0KPiBBbHNvLCBhcyBtZW50
aW9uZWQgaW4gYW5vdGhlciBjb21tZW50Og0KPiANCj4gVGVzdGVkLWJ5OiBUb21hcyBKYW5vdXNl
ayA8dG9taUBub21pLmN6Pg0KPiANCg0KVGhhbmtzLCBUb21hcy4gSSByZXBsaWVkIHRvIHlvdXIg
Y29tbWVudCBlYXJsaWVyIHRvZGF5LiBJJ2xsIGluY2x1ZGUgeW91cg0KJ1Rlc3RlZC1ieScuDQoN
ClRoYW5rcywNCg0KZG9uDQoNCg0KPiAoRG8gbm90ZSB0aGF0IEknbSBydW5uaW5nIGEgYmFja3Bv
cnQgdG8gNS4zLA0KPiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL2F0dGFjaG1lbnQuY2dp
P2lkPTE0NTk2OSwgbm90IGRybS10aXAuKQ0KPiANCj4gLS0NCj4gVG9tw6HFoSBKYW5vdcWhZWss
IGEuay5hLiBQaXZuw61rLCBhLmsuYS4gTGlza25pX3NpLCBodHRwOi8vd29yay5saXNrLmluLw0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
