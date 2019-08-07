Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1342A84ECD
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 16:33:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47CDD6E71B;
	Wed,  7 Aug 2019 14:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ABCE6E716
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 14:33:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 07:33:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="203209767"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 07 Aug 2019 07:33:52 -0700
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 7 Aug 2019 07:33:51 -0700
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.194]) by
 FMSMSX126.amr.corp.intel.com ([169.254.1.198]) with mapi id 14.03.0439.000;
 Wed, 7 Aug 2019 07:33:52 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/5] drm/i915: Cancel non-persistent contexts on close
Thread-Index: AQHVTF3WOspWOWKwrUWKuzI5V+dLE6bwIvMA//+SotCAAHvUAP//jAhg
Date: Wed, 7 Aug 2019 14:33:51 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68B3AACF2@fmsmsx120.amr.corp.intel.com>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-5-chris@chris-wilson.co.uk>
 <156518415199.6198.1857505692805477616@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3AAC60@fmsmsx120.amr.corp.intel.com>
 <156518725889.6198.287254944385716344@skylake-alporthouse-com>
In-Reply-To: <156518725889.6198.287254944385716344@skylake-alporthouse-com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWViYWVkZDYtOWI5Yi00NzdhLWIxYjctZGNhODU4YjZjOGUxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMjRoWXVzV0l0cll1WHZaNGhYbUE0SFZIbGlpN2dsVWgrNE8xcWRDeGFqeWo2OXl4M3orUUJqYlltV2ljempoTiJ9
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
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAxOSA3
OjE0IEFNDQo+IFRvOiBCbG9vbWZpZWxkLCBKb24gPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT47
IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBKb29uYXMgTGFodGlu
ZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+OyBXaW5pYXJza2ksIE1pY2hhbA0K
PiA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggNS81
XSBkcm0vaTkxNTogQ2FuY2VsIG5vbi1wZXJzaXN0ZW50IGNvbnRleHRzIG9uIGNsb3NlDQo+IA0K
PiBRdW90aW5nIEJsb29tZmllbGQsIEpvbiAoMjAxOS0wOC0wNyAxNTowNDoxNikNCj4gPiBPaywg
c28geW91ciBjb25jZXJuIGlzIHN1cHBvcnRpbmcgbm9uLXBlcnNpc3RlbmNlIG9uIG9sZGVyIG5v
bi1wcmVlbXB0aW5nLA0KPiBlbmdpbmUtcmVzZXQgY2FwYWJsZSwgaGFyZHdhcmUuIFdoeSBpcyB0
aGF0IHN0cmljdGx5IHJlcXVpcmVkPyBDYW4ndCB3ZSBzaW1wbHkNCj4gbWFrZSBpdCBkZXBlbmRl
bnQgb24gdGhlIGZlYXR1cmVzIG5lZWRlZCB0byBkbyBpdCB3ZWxsLCBhbmQgaWYgeW91ciBoYXJk
d2FyZQ0KPiBjYW5ub3QsIHRoZW4gdGhlIGFkdmljZSBpcyBub3QgdG8gZGlzYWJsZSBoYW5nY2hl
Y2s/IEknbSBkb3VidGZ1bCB0aGF0IGFueW9uZQ0KPiB3b3VsZCBhdHRlbXB0IGEgSFBDIHR5cGUg
d29ya2xvYWQgb24gbiBJVkIuDQo+IA0KPiBPdXIgYWR2aWNlIHdhcyBub3QgdG8gZGlzYWJsZSBo
YW5nY2hlY2sgOikNCj4gDQo+IFdpdGggdGhlIGNhdCBvdXQgb2YgdGhlIGJhZywgbXkgY29uY2Vy
biBpcyBkb3R0aW5nIHRoZSBJcyBhbmQgY3Jvc3NpbmcNCj4gdGhlIFRzLiBGaXhpbmcgdXAgdGhl
IGVycm9yIGhhbmRsaW5nIHBhdGggdG8gdGhlIHJlc2V0IGlzbid0IGFsbCB0aGF0DQo+IGJhZC4g
QnV0IEknbSBub3QgZ29pbmcgdG8gYWR2ZXJ0aXNlIHRoZSBwZXJzaXN0ZW5jZS1wYXJhbWV0ZXIg
c3VwcG9ydA0KPiB1bmxlc3Mgd2UgaGF2ZSBhIGNsZWFuIHNvbHV0aW9uLCBhbmQgd2UgY2FuIGFk
dmlzZSB0aGF0IGNvbXB1dGUNCj4gd29ya2xvYWRzIGFyZSBiZXR0ZXIgaGFuZGxlZCB3aXRoIG5l
dyBoYXJkd2FyZS4NCj4gDQo+ID4gSSdtIG5vdCBzdXJlIEkgdW5kZXJzdGFuZCB5b3VyICJzdXJ2
aXZlcyBoYW5nY2hlY2siIGlkZWEuIFlvdSBtZWFuIGluc3RlYWQNCj4gb2Ygc2ltcGx5IGRpc2Fi
bGluZyBoYW5nY2hlY2ssIGp1c3Qgb3B0IGluIHRvIHBlcnNpc3RlbmNlIGFuZCBoYXZlIHRoYXQg
YWxzbw0KPiBwcmV2ZW50IGhhbmdjaGVjaz8gSXNuJ3QgdGhhdCB0aGUgd3Jvbmcgd2F5IGFyb3Vu
ZCwgc2luY2UgcGVyc2lzdGVuY2UgaXMgd2hhdA0KPiBpcyBoYXBwZW5pbmcgdG9kYXk/DQo+IA0K
PiBQZXJzaXN0ZW5jZSBpcyB0aGUgY2xlYXItYW5kLXByZXNlbnQgZGFuZ2VyLiBJJ20ganVzdCB0
cnlpbmcgdG8gc2tldGNoIGENCj4gcGF0aCBmb3IgZW5kbGVzcyBzdXBwb3J0LCB0cnlpbmcgdG8g
YXNrIG15c2VsZiBxdWVzdGlvbnMgc3VjaCBhczogSXMgdGhlDQo+IHBlcnNpc3RlbmNlIHBhcmFt
ZXRlciBzdGlsbCByZXF1aXJlZD8gV2hhdCBvdGhlciBwYXJhbWV0ZXJzIG1ha2Ugc2Vuc2U/DQo+
IERvZXMgYW55dGhpbmcgbGVzcyB0aGFuIENQVS1lc3F1ZSBpc29sYXRpb24gbWFrZSBzZW5zZT8g
OikNCj4gLUNocmlzDQoNCkkgcGVyc29uYWxseSBsaWtlZCB5b3VyIHBlcnNpc3RlbmNlIGlkZWEg
Oi0pDQoNCklzb2xhdGlvbiBkb2Vzbid0IHJlYWxseSBzb2x2ZSB0aGUgcHJvYmxlbSBpbiB0aGlz
IGNhc2UuIFNvLCBjdXN0b21lciBlbmFibGVzIGlzb2xhdGlvbiBmb3IgYSBIUEMgd29ya2xvYWQu
IFRoYXQgd29ya2xvYWQgaGFuZ3MsIGFuZCB1c2VyIGhpdHMgY3RybC1DLiBXZSBzdGlsbCBoYXZl
IGEgaHVuZyB3b3JrbG9hZCBhbmQgdGhlIG5leHQgam9iIGluIHRoZSBxdWV1ZSBzdGlsbCBjYW4n
dCBydW4uDQoNCkFsc28sIElzb2xhdGlvbiBpcyBraW5kIG9mIG1lYW5pbmdsZXNzIHdoZW4gdGhl
cmUgaXMgb25seSBvbmUgZW5naW5lIHRoYXQncyBjYXBhYmxlIG9mIHJ1bm5pbmcgeW91ciB3b3Jr
bG9hZC4gT24gR2VuOSwgcHJldHR5IG11Y2ggZXZlcnkgdHlwZSBvZiB3b3JrbG9hZCByZXF1aXJl
cyBzb21lIFJDUyBpbnZvbHZlbWVudCwgYW5kIFJDUyBpcyB3aGVyZSB0aGUgY29tcHV0ZSB3b3Jr
bG9hZHMgbmVlZCB0byBydW4uIFNvIGlzb2xhdGlvbiBoYXNuJ3QgaGVscGVkIHVzLg0KDQpJJ2Qg
c2V0dGxlIGZvciB1bWQgb3B0aW5nIGluIHRvIG5vbi1wZXJzaXN0ZW5jZSBhbmQgbm90IHByb3Zp
ZGluZyB0aGUgYXV0b21hdGljIGFzc29jaWF0aW9uIHdpdGggaGFuZ2NoZWNrLiBUaGF0IGF0IGxl
YXN0IGVuc3VyZXMgd2VsbCBiZWhhdmVkIHVtZCdzIGRvbid0IGtpbGwgdGhlIHN5c3RlbS4NCg0K
V2UgZGlkbid0IGV4cGxvcmUgdGhlIGlkZWEgb2YgdGVybWluYXRpbmcgb3JwaGFuZWQgY29udGV4
dHMgdGhvdWdoICh3aGVyZSBub25lIG9mIHRoZWlyIHJlc291cmNlcyBhcmUgcmVmZXJlbmNlZCBi
eSBhbnkgb3RoZXIgY29udGV4dHMpLiBJcyB0aGVyZSBhIHJlYXNvbiB3aHkgdGhpcyBpcyBub3Qg
ZmVhc2libGU/IEluIHRoZSBjYXNlIG9mIGNvbXB1dGUgKGNlcnRhaW5seSBIUEMpIHdvcmtsb2Fk
cywgdGhlcmUgd291bGQgYmUgbm8gY29tcG9zaXRvciB0YWtpbmcgdGhlIG91dHB1dCBzbyB0aGlz
IG1pZ2h0IGJlIGEgc29sdXRpb24uDQoNCkpvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
