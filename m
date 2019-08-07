Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4736584FEE
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 17:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A508A6E72D;
	Wed,  7 Aug 2019 15:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78E9A6E72D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 15:30:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 08:30:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="203229567"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga002.fm.intel.com with ESMTP; 07 Aug 2019 08:29:56 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 7 Aug 2019 08:29:56 -0700
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.194]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.42]) with mapi id 14.03.0439.000;
 Wed, 7 Aug 2019 08:29:56 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/5] drm/i915: Cancel non-persistent contexts on close
Thread-Index: AQHVTF3WOspWOWKwrUWKuzI5V+dLE6bwIvMA//+SotCAAHvUAP//jAhggACC+4D//4+VYA==
Date: Wed, 7 Aug 2019 15:29:55 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68B3AAF08@fmsmsx120.amr.corp.intel.com>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-5-chris@chris-wilson.co.uk>
 <156518415199.6198.1857505692805477616@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3AAC60@fmsmsx120.amr.corp.intel.com>
 <156518725889.6198.287254944385716344@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3AACF2@fmsmsx120.amr.corp.intel.com>
 <156519048120.6198.8160520723086584407@skylake-alporthouse-com>
In-Reply-To: <156519048120.6198.8160520723086584407@skylake-alporthouse-com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjE5ZGM1YjktZDZhOC00MGI1LWI4Y2EtYmFmNzk2NTg4NjVhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY3lTWVNxNVc0QUVBUFBkZldwdnJuWWo4cmR2MUJNTkZ2WnF6QkVGRW5EVDJCVWZFUUEwZVRlRFpTZ2VnOVVKcyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Cancel non-persistent
 contexts on close
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAxOSA4
OjA4IEFNDQo+IFRvOiBCbG9vbWZpZWxkLCBKb24gPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT47
IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBKb29uYXMgTGFodGlu
ZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+OyBXaW5pYXJza2ksIE1pY2hhbA0K
PiA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggNS81
XSBkcm0vaTkxNTogQ2FuY2VsIG5vbi1wZXJzaXN0ZW50IGNvbnRleHRzIG9uIGNsb3NlDQo+IA0K
PiBRdW90aW5nIEJsb29tZmllbGQsIEpvbiAoMjAxOS0wOC0wNyAxNTozMzo1MSkNCj4gW3NraXAg
dG8gZW5kXQ0KPiA+IFdlIGRpZG4ndCBleHBsb3JlIHRoZSBpZGVhIG9mIHRlcm1pbmF0aW5nIG9y
cGhhbmVkIGNvbnRleHRzIHRob3VnaA0KPiAod2hlcmUgbm9uZSBvZiB0aGVpciByZXNvdXJjZXMg
YXJlIHJlZmVyZW5jZWQgYnkgYW55IG90aGVyIGNvbnRleHRzKS4gSXMNCj4gdGhlcmUgYSByZWFz
b24gd2h5IHRoaXMgaXMgbm90IGZlYXNpYmxlPyBJbiB0aGUgY2FzZSBvZiBjb21wdXRlIChjZXJ0
YWlubHkNCj4gSFBDKSB3b3JrbG9hZHMsIHRoZXJlIHdvdWxkIGJlIG5vIGNvbXBvc2l0b3IgdGFr
aW5nIHRoZSBvdXRwdXQgc28gdGhpcw0KPiBtaWdodCBiZSBhIHNvbHV0aW9uLg0KPiANCj4gU291
bmRzIGVhc2llciBzYWlkIHRoYW4gZG9uZS4gV2UgaGF2ZSB0byBnbyB0aHJvdWdoIGVhY2ggcmVx
dWVzdCBhbmQNCj4gZGV0ZXJtaW5lIGl0IGlmIGhhcyBhbiBleHRlcm5hbCByZWZlcmVuY2UgKG9y
IGlmIHRoZSBvYmplY3QgaG9sZGluZyB0aGUNCj4gcmVmZXJlbmNlIGhhcyBhbiBleHRlcm5hbCBy
ZWZlcmVuY2UpIHRvIHNlZSBpZiB0aGUgb3V0cHV0IHdvdWxkIGJlDQo+IHZpc2libGUgdG8gYSB0
aGlyZCBwYXJ0eS4gU291bmRzIGxpa2UgYSBjb25zZXJ2YXRpdmUgR0MgOnwNCj4gKENvbWluZyB0
byB0aGF0IGNvbmNsdXNpb24gc3VnZ2VzdHMgdGhhdCB3ZSBzaG91bGQgc3RydWN0dXJlIHRoZSBy
ZXF1ZXN0DQo+IHRyYWNraW5nIHRvIG1ha2UgcmVwYXJlbnRpbmcgZWFzaWVyLikNCj4gDQo+IFdl
IGNvdWxkIHRha2UgYSBwaWQtMSBhcHByb2FjaCBhbmQgbW92ZSBhbGwgdGhlIG9ycGhhbiB0aW1l
bGluZXMgb3ZlciB0bw0KPiBhIG5ldyBwYXJlbnQgcHVyZWx5IHJlc3BvbnNpYmxlIGZvciB0aGVt
LiBUaGF0IGhvbmVzdGx5IGRvZXNuJ3Qgc2VlbSB0bw0KPiBhY2hpZXZlIGFueXRoaW5nLiAoV2Ug
YXJlIHN0aWxsIHN0dWNrIHdpdGggdGFza3Mgb24gdGhlIEdQVSBhbmQgbm8gd2F5DQo+IHRvIGtp
bGwgdGhlbS4pDQo+IA0KPiBJbiBjb21wYXJpc29uLCBwZXJzaXN0ZW5jZSBpcyBhIHJhcmVseSB1
c2VkICJmZWF0dXJlIiBhbmQgY2xlYW5pbmcgdXAgb24NCj4gY29udGV4dCBjbG9zZSBmaXRzIGlu
IG5pY2VseSB3aXRoIHRoZSBwcm9jZXNzIG1vZGVsLiBJdCBqdXN0IHdvcmtzIGFzDQo+IG1vc3Qg
dXNlcnMvY2xpZW50cyB3b3VsZCBleHBlY3QuIChBbHRob3VnaCBydW5uaW5nIGluIG5vbi1wZXJz
aXN0ZW50DQo+IGJ5IGRlZmF1bHQgaGFzbid0IHNob3cgYW55dGhpbmcgdG8gZXhwbG9kZSBvbiB0
aGUgZGVza3RvcCwgaXQncyB0b28gZWFzeQ0KPiB0byBjb25zdHJ1Y3Qgc2NlbmFyaW9zIHdoZXJl
IHBlcnNpc3RlbmNlIHR1cm5zIG91dCB0byBiZSBhbiBhZHZhbnRhZ2UsDQo+IHBhcnRpY3VsYXJs
eSB3aXRoIGNoYWlucyBvZiBjbGllbnRzICh0aGUgY29tcG9zaXRvciBtb2RlbCkuKSBCZXR3ZWVu
IHRoZQ0KPiB0d28gbW9kZXMsIHdlIHNob3VsZCBoYXZlIG1vc3QgYmFzZXMgY292ZXJlZCwgaXQn
cyBoYXJkIHRvIGFyZ3VlIGZvciBhDQo+IHRoaXJkIHdheSAodGhhdCBpcyB1bnRpbCBzb21lb25l
IGhhcyBhIHVzZWNhc2UhKQ0KPiAtQ2hyaXMNCg0KT2ssIG1ha2VzIHNlbnNlLiBUaGFua3MuDQoN
CkJ1dCBoYXZlIHdlIGNvbnZlcmdlZCBvbiBhIGRlY2lzaW9uIDotKQ0KDQpBcyBJIHNhaWQsIHJl
cXVpcmluZyBjb21wdXRlIHVtZCBvcHRpbiBzaG91bGQgYmUgb2sgZm9yIHRoZSBpbW1lZGlhdGUg
SFBDIGlzc3VlLCBidXQgSSdkIHBlcnNvbmFsbHkgYXJndWUgdGhhdCBpdCdzIHZhbGlkIHRvIGNo
YW5nZSB0aGUgY29udHJhY3QgZm9yIGhhbmdjaGVjaz0wIGFuZCBzd2l0Y2ggdGhlIGRlZmF1bHQg
dG8gbm9uLXBlcnNpc3RlbnQuDQoNCkpvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
