Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E94C3105D75
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 00:56:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79E826E1DE;
	Thu, 21 Nov 2019 23:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 413226E1D2;
 Thu, 21 Nov 2019 23:56:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 15:56:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,227,1571727600"; d="scan'208";a="259537435"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Nov 2019 15:56:05 -0800
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 Nov 2019 15:56:05 -0800
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.77]) by
 fmsmsx120.amr.corp.intel.com ([169.254.15.106]) with mapi id 14.03.0439.000;
 Thu, 21 Nov 2019 15:56:05 -0800
From: "Tang, CQ" <cq.tang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH i-g-t 5/9] i915/gem_ctx_isolation: Check
 engine relative registers
Thread-Index: AQHVmiFg1hz+X2kwukOphZHGyumq8aeWKqqwgACydwD//3zZYA==
Date: Thu, 21 Nov 2019 23:56:05 +0000
Message-ID: <1D440B9B88E22A4ABEF89F9F1F81BC29E94A74D9@FMSMSX106.amr.corp.intel.com>
References: <20191113125240.3781-1-chris@chris-wilson.co.uk>
 <20191113125240.3781-5-chris@chris-wilson.co.uk>
 <1D440B9B88E22A4ABEF89F9F1F81BC29E94A5E2E@FMSMSX106.amr.corp.intel.com>
 <157437988036.2524.15103838845430811433@skylake-alporthouse-com>
In-Reply-To: <157437988036.2524.15103838845430811433@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTg0MTE5ZTQtZWI4ZC00MDRlLTk3OTEtNGJiYmFlNWY5ZjJiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidjVsT1ZtUDlVTjIzZVVnSFBMT3BsOHBValJpM2JSdGdNQ2NoUXNhek5NMVlNcjRIU2JwYjFNdWxtZlBSaFBETiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t 5/9] i915/gem_ctx_isolation: Check
 engine relative registers
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAyMSwg
MjAxOSAzOjQ1IFBNDQo+IFRvOiBUYW5nLCBDUSA8Y3EudGFuZ0BpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpZ3QtZGV2QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBTdWJqZWN0OiBSRTogW0ludGVsLWdmeF0gW1BBVENIIGktZy10IDUvOV0gaTkxNS9n
ZW1fY3R4X2lzb2xhdGlvbjogQ2hlY2sNCj4gZW5naW5lIHJlbGF0aXZlIHJlZ2lzdGVycw0KPiAN
Cj4gUXVvdGluZyBUYW5nLCBDUSAoMjAxOS0xMS0yMSAyMTowNzoxMykNCj4gPg0KPiA+DQo+ID4g
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0KPiA+ID4gT2Yg
Q2hyaXMgV2lsc29uDQo+ID4gPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDEzLCAyMDE5IDQ6
NTMgQU0NCj4gPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBD
YzogaWd0LWRldkBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IFN1YmplY3Q6IFtJbnRlbC1n
ZnhdIFtQQVRDSCBpLWctdCA1LzldIGk5MTUvZ2VtX2N0eF9pc29sYXRpb246IENoZWNrDQo+ID4g
PiBlbmdpbmUgQEAgLTI0OCw2ICsyMzgsNyBAQCBzdGF0aWMgdm9pZCB0bXBsX3JlZ3MoaW50IGZk
LCAgew0KPiA+ID4gICAgICAgY29uc3QgdW5zaWduZWQgaW50IGdlbl9iaXQgPSAxIDw8DQo+ID4g
PiBpbnRlbF9nZW4oaW50ZWxfZ2V0X2RybV9kZXZpZChmZCkpOw0KPiA+ID4gICAgICAgY29uc3Qg
dW5zaWduZWQgaW50IGVuZ2luZV9iaXQgPSBFTkdJTkUoZS0+Y2xhc3MsIGUtPmluc3RhbmNlKTsN
Cj4gPiA+ICsgICAgIGNvbnN0IHVpbnQzMl90IG1taW9fYmFzZSA9IGdlbV9lbmdpbmVfbW1pb19i
YXNlKGZkLCBlLT5uYW1lKTsNCj4gPg0KPiA+IENocmlzLCBJIHRyaWVkIHRvIHRlc3QgdGhpcyBw
YXRjaCwgYnV0ICJnZW1fZW5naW5lX21taW9fYmFzZSgpIiBhYm92ZSBpcw0KPiBub3QgZGVmaW5l
ZC4NCj4gPiBDYW4geW91IGNoZWNrPw0KPiANCj4gRGlkIHlvdSBwZXJjaGFuY2UgbG9vayBhdCBw
YXRjaCA0Pw0KDQpUaGFua3MsIGZpbmQgdGhpcyBvbmU6DQpbaS1nLXQsNC85XSBpOTE1OiBTdGFy
dCBwdXR0aW5nIHRoZSBtbWlvX2Jhc2UgdG8gd2lkZXIgdXNlDQoNCi0tQ1ENCg0KPiAtQ2hyaXMN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
