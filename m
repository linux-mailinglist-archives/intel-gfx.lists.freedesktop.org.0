Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C3D10AE7C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 12:06:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 211406E50E;
	Wed, 27 Nov 2019 11:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A1366E512
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 11:06:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 03:06:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,249,1571727600"; d="scan'208";a="260976559"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Nov 2019 03:06:48 -0800
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 Nov 2019 03:06:48 -0800
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 FMSMSX112.amr.corp.intel.com (10.18.116.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 Nov 2019 03:06:47 -0800
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.80]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.49]) with mapi id 14.03.0439.000;
 Wed, 27 Nov 2019 16:36:45 +0530
From: "Navik, Ankit P" <ankit.p.navik@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v6 3/3] drm/i915: Predictive governor to
 control slice/subslice/eu
Thread-Index: AQHVpBVnjOmf6/UEtkazYOmCNrOFhKec6oMAgAAFHICAAeuIoA==
Date: Wed, 27 Nov 2019 11:06:44 +0000
Message-ID: <2F886D5F95ED3A47BC8C177EADCD1CC72844B559@BGSMSX104.gar.corp.intel.com>
References: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
 <1574743899-17638-4-git-send-email-ankit.p.navik@intel.com>
 <6b39bcc7-ac78-49ef-c1b1-3741458f548f@linux.intel.com>
 <157476657941.15944.5831614278996048894@skylake-alporthouse-com>
In-Reply-To: <157476657941.15944.5831614278996048894@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzlhNjFkM2UtZTI5MC00ZDU3LThhYzItYmY4NzUxMjI0MmUyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNjB3dExUVkQ0Y2UxMFdGUFNCOGJCWllZbUREcnFaeWlZemxnY0xSV2tybXdmV1pIRHlDanBqTDZOWDFMNU1xSiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915: Predictive governor to
 control slice/subslice/eu
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
Cc: "Anand, Vipin" <vipin.anand@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsIA0KDQpUaGFuayB5b3UgZm9yIHlvdXIgZmVlZGJhY2suDQoNCj4gT24gMjYvMTEv
MjAxOSAxMDo1MiwgQ2hhcmlzIFdpbHNvbiB3cm90ZToNCj4gDQo+IFF1b3RpbmcgVHZydGtvIFVy
c3VsaW4gKDIwMTktMTEtMjYgMTA6NTE6MjIpDQo+ID4gWW91IG1lbnRpb25lZCB5b3UgZGlkIHNv
bWUgZXhwZXJpbWVudCB3aGVyZSB5b3UgZGlkIHNvbWV0aGluZyBvbg0KPiA+IGNvbnRleHQgcGlu
bmluZyBhbmQgdGhhdCBpdCBkaWQgbm90IHdvcmsgc28gd2VsbC4gSSBkb24ndCBrbm93IHdoYXQN
Cj4gPiB0aGF0IHdhcyB0aG91Z2guIEkgZG9uJ3QgdGhpbmsgdGhhdCB3YXMgZXZlciBwb3N0ZWQ/
DQo+ID4NCj4gPiBXaGF0IEkgYW0gdGhpbmtpbmcgaXMgdGhpczogWW91IGRyb3AgdGhlIHRpbWVy
IGFsdG9nZXRoZXIuIEluc3RlYWQgaW4NCj4gPiBfX2V4ZWNsaXN0c191cGRhdGVfcmVnX3N0YXRl
IHlvdSBsb29rIGF0IHlvdXIgZ2VtX2NvbnRleHQtPnJlcV9jbnQgYW5kDQo+ID4gaW1wbGVtZW50
IHlvdXIgbG9naWMgdGhlcmUuDQo+IA0KPiBJIG5vdGljZWQgdGhlIHNhbWUgbm9uLXNlcXVpdHVy
LiBFeGNlcHQgSSB3b3VsZCBwdXNoIHRoYXQgZWl0aGVyIHRoZSBlbnRpcmUNCj4gbWVhc3VyZW1l
bnQgYW5kIGhlbmNlIHBhdGNoIHNlcmllcyBpcyBib2d1cyAoYmV5b25kIHRoZSBwYXRjaGVzIHRo
ZW1zZWx2ZXMNCj4gYmVpbmcgdHJpdmlhbGx5IGJyb2tlbiwgdGVzdGVkIG11Y2g/KSwgb3IgdGhh
dCBpdCByZWFsbHkgc2hvdWxkIGJlIGRvbmUgZnJvbSBhDQo+IHRpbWVyIGFuZCBhbHNvIGFkanVz
dCBwaW5uZWQgY29udGV4dHMgYWxhIHJlY29uZmlndXJlX3NzZXUuDQo+IA0KPiBBIGJ1bmNoIG9m
IHNlbGZ0ZXN0cyBhbmQgaWd0IHByb3ZpbmcgdGhhdCBkaWZmZXJlbnQgc3NldSBzZXR1cHMgZG8g
Y29uc3VtZQ0KPiBkaWZmZXJlbnQgcG93ZXIgKGkuZS4gdGhhdCB3ZSBjYW4gYWRqdXN0IHNzZXUg
Y29ycmVjdGx5KSwgYWxvbmcgd2l0aA0KPiBkZW1vbnN0cmF0aW5nIGdvb2Qgd29ya2xvYWRzIHdo
ZXJlIGF1dG90dW5pbmcgcHJvZHVjZXMgYmVuZWZpY2lhbCByZXN1bHRzIGlzDQo+IGEgbXVzdC4N
Cj4gDQo+IEFsc28gZ2l2ZW4gVHZydGtvJ3Mgc3RhdHMsIHRoaXMgY291bGQgYWxsIGJlIGRvbmUg
ZnJvbSB1c2Vyc3BhY2Ugd2l0aCBhbiBleHRlbmRlZA0KPiBDT05URVhUX1BBUkFNX1NTRVUsIHNv
IHdoeSB3b3VsZCB3ZSBub3QgZG8gaXQgdGhhdCB3YXk/DQo+IC1DaHJpcw0KDQpXZSBoYXZlIHZl
cmlmaWVkIHRoaXMgcGF0Y2ggc2VyaWVzIG9uIEtCTCwgR0xLICYgQ01MIHBsYXRmb3JtcyB3aXRo
IHdlbGwNCmtub3duIHN0YW5kYXJkIGJlbmNobWFya3MgYXMgbWVudGlvbmVkIGluIHRoZSBjb3Zl
ciBsZXR0ZXJzLg0KUG93ZXIgc2F2aW5ncyBhcmUgdmVyaWZpZWQgd2l0aCB2YXJpb3VzIHRvb2xz
IChSQVBMIGNvdW50ZXJzLCBNb29uc29vbg0KcG93ZXIgbW9uaXRvciBhbmQgc29jd2F0Y2gpLg0K
V2UgaGF2ZSBhbHNvIHZlcmlmaWVkIEJhdHRlcnkgTGlmZSB1c2UgY2FzZXMgd2hpY2ggc2hvd3Mg
c2lnbmlmaWNhbnQgcG93ZXINCnNhdmluZ3MuIFNvIEkgaG9wZSB5b3Ugd2lsbCB1bmRlcnN0YW5k
IHRoZSB3ZSBoYXZlIHRha2VuIHByb3BlciBtZWFzdXJlbWVudHMNCmJlZm9yZSBwdXNoaW5nIHRo
ZSBwYXRjaCBzZXJpZXMuIA0KDQpUaGFua3MgJiBSZWdhcmRzLCANCkFua2l0DQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
