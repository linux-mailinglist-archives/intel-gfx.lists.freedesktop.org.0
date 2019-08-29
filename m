Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD6BA1F8C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 17:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3048E6E0CC;
	Thu, 29 Aug 2019 15:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 082C36E0CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 15:45:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 08:45:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,443,1559545200"; d="scan'208";a="183512582"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 29 Aug 2019 08:45:16 -0700
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.122]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.141]) with mapi id 14.03.0439.000;
 Thu, 29 Aug 2019 08:44:41 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 28/36] drm/i915: Cancel non-persistent contexts on close
Thread-Index: AQHVXkF4PLfK4ldY8UqG9hKQEMzgBqcSRLSw
Date: Thu, 29 Aug 2019 15:44:41 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68B3DDDC3@fmsmsx120.amr.corp.intel.com>
References: <20190829081150.10271-1-chris@chris-wilson.co.uk>
 <20190829081150.10271-29-chris@chris-wilson.co.uk>
In-Reply-To: <20190829081150.10271-29-chris@chris-wilson.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzU2ZTZjZTctODMyNi00ZDM0LWFhMjYtNjg5YzBmYjg0ZTU0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNnM3ZFdHZmR5WnVpQkU3Wjk3SWV1NnFjMnZxa3FudXFmaVE2M0VwZGFIemhLcXpLQ1JqUHVITkdxTkJ4T3F0NyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 28/36] drm/i915: Cancel non-persistent
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
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogVGh1cnNkYXksIEF1Z3VzdCAyOSwgMjAxOSAx
OjEyIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az47IEpvb25hcyBMYWh0aW5lbg0KPiA8
am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT47IFdpbmlhcnNraSwgTWljaGFsDQo+IDxt
aWNoYWwud2luaWFyc2tpQGludGVsLmNvbT47IEJsb29tZmllbGQsIEpvbiA8am9uLmJsb29tZmll
bGRAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMjgvMzZdIGRybS9pOTE1OiBDYW5jZWwg
bm9uLXBlcnNpc3RlbnQgY29udGV4dHMgb24gY2xvc2UNCj4gDQo+IE5vcm1hbGx5LCB3ZSByZWx5
IG9uIG91ciBoYW5nY2hlY2sgdG8gcHJldmVudCBwZXJzaXN0ZW50IGJhdGNoZXMgZnJvbQ0KPiBo
b2dnaW5nIHRoZSBHUFUuIEhvd2V2ZXIsIGlmIHRoZSB1c2VyIGRpc2FibGVzIGhhbmdjaGVjaywg
dGhpcyBtZWNoYW5pc20NCj4gYnJlYWtzIGRvd24uIERlc3BpdGUgb3VyIGluc2lzdGVuY2UgdGhh
dCB0aGlzIGlzIHVuc2FmZSwgdGhlIHVzZXJzIGFyZQ0KPiBlcXVhbGx5IGluc2lzdGVudCB0aGF0
IHRoZXkgd2FudCB0byB1c2UgZW5kbGVzcyBiYXRjaGVzIGFuZCB3aWxsIGRpc2FibGUNCj4gdGhl
IGhhbmdjaGVjayBtZWNoYW5pc20uIFdlIGFyZSBsb29raW5nIGF0IHBlcmhhcHMgcmVwbGFjaW5n
IGhhbmdjaGVjaw0KPiB3aXRoIGEgc29mdGVyIG1lY2hhbmlzbSwgdGhhdCBzZW5kcyBhIHB1bHNl
IGRvd24gdGhlIGVuZ2luZSB0byBjaGVjayBpZg0KPiBpdCBpcyB3ZWxsLiBXZSBjYW4gdXNlIHRo
ZSBzYW1lIHByZWVtcHRpdmUgcHVsc2UgdG8gZmx1c2ggYW4gYWN0aXZlDQo+IHBlcnNpc3RlbnQg
Y29udGV4dCBvZmYgdGhlIEdQVSB1cG9uIGNvbnRleHQgY2xvc2UsIHByZXZlbnRpbmcgcmVzb3Vy
Y2VzDQo+IGJlaW5nIGxvc3QgYW5kIHVua2lsbGFibGUgcmVxdWVzdHMgcmVtYWluaW5nIG9uIHRo
ZSBHUFUgYWZ0ZXIgcHJvY2Vzcw0KPiB0ZXJtaW5hdGlvbi4gVG8gYXZvaWQgY2hhbmdpbmcgdGhl
IEFCSSBhbmQgYWNjaWRlbnRhbGx5IGJyZWFraW5nDQo+IGV4aXN0aW5nIHVzZXJzcGFjZSwgd2Ug
bWFrZSB0aGUgcGVyc2lzdGVuY2Ugb2YgYSBjb250ZXh0IGV4cGxpY2l0IGFuZA0KPiBlbmFibGUg
aXQgYnkgZGVmYXVsdCAobWF0Y2hpbmcgY3VycmVudCBBQkkpLiBVc2Vyc3BhY2UgY2FuIG9wdCBv
dXQgb2YNCj4gcGVyc2lzdGVudCBtb2RlIChmb3JjaW5nIHJlcXVlc3RzIHRvIGJlIGNhbmNlbGxl
ZCB3aGVuIHRoZSBjb250ZXh0IGlzDQo+IGNsb3NlZCBieSBwcm9jZXNzIHRlcm1pbmF0aW9uIG9y
IGV4cGxpY2l0bHkpIGJ5IGEgY29udGV4dCBwYXJhbWV0ZXIuIFRvDQo+IGZhY2lsaXRhdGUgZXhp
c3RpbmcgdXNlLWNhc2VzIG9mIGRpc2FibGluZyBoYW5nY2hlY2ssIGlmIHRoZSBtb2RwYXJhbSBp
cw0KPiBkaXNhYmxlZCAoaTkxNS5lbmFibGVfaGFuZ2NoZWNrPTApLCB3ZSBkaXNhYmxlIHBlcnNp
c3RlbmNlIG1vZGUgYnkNCj4gZGVmYXVsdC4gIChOb3RlLCBvbmUgb2YgdGhlIG91dGNvbWVzIGZv
ciBzdXBwb3J0aW5nIGVuZGxlc3MgbW9kZSB3aWxsIGJlDQo+IHRoZSByZW1vdmFsIG9mIGhhbmdj
aGVja2luZywgYXQgd2hpY2ggcG9pbnQgb3B0aW5nIGludG8gcGVyc2lzdGVudCBtb2RlDQo+IHdp
bGwgYmUgbWFuZGF0b3J5LCBvciBtYXliZSB0aGUgZGVmYXVsdCBwZXJoYXBzIGNvbnRyb2xsZWQg
YnkgY2dyb3Vwcy4pDQo+IA0KPiBUZXN0Y2FzZTogaWd0L2dlbV9jdHhfcGVyc2lzdGVuY2UNCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+
IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+DQo+
IENjOiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+DQo+IENj
OiBKb24gQmxvb21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPg0KPiAtLS0NClJldmll
d2VkLWJ5OiBKb24gQmxvb21maWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
