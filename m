Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3347F17F45C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 11:07:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F24C6E853;
	Tue, 10 Mar 2020 10:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CA606E853
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 10:07:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 03:07:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,536,1574150400"; d="scan'208";a="388878152"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga004.jf.intel.com with ESMTP; 10 Mar 2020 03:07:23 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 03:07:23 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 FMSMSX112.amr.corp.intel.com (10.18.116.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 03:07:22 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.153]) with mapi id 14.03.0439.000;
 Tue, 10 Mar 2020 15:37:19 +0530
From: "B S, Karthik" <karthik.b.s@intel.com>
To: "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 0/7] Asynchronous flip implementation for i915
Thread-Index: AQHV86zf1beivsG2EUK5Tuv1EdIffqhAm2oAgAEBNLA=
Date: Tue, 10 Mar 2020 10:07:18 +0000
Message-ID: <7138C0D2D3905F4CB0CD9B8757DFA969274B4AD4@BGSMSX104.gar.corp.intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
 <359b05b24d5258a6bec9832060668c1e3cc27f49.camel@intel.com>
In-Reply-To: <359b05b24d5258a6bec9832060668c1e3cc27f49.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 0/7] Asynchronous flip implementation for i915
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWmFub25pLCBQYXVsbyBS
IDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDEwLCAy
MDIwIDU6MzUgQU0NCj4gVG86IEIgUywgS2FydGhpayA8a2FydGhpay5iLnNAaW50ZWwuY29tPjsg
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb207IEt1bGthcm5pLCBWYW5kaXRhDQo+IDx2YW5kaXRhLmt1bGthcm5pQGludGVs
LmNvbT47IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBS
ZTogW1JGQyAwLzddIEFzeW5jaHJvbm91cyBmbGlwIGltcGxlbWVudGF0aW9uIGZvciBpOTE1DQo+
IA0KPiBFbSBzZXgsIDIwMjAtMDMtMDYgw6BzIDE3OjA5ICswNTMwLCBLYXJ0aGlrIEIgUyBlc2Ny
ZXZldToNCj4gPiBXaXRob3V0IGFzeW5jIGZsaXAgc3VwcG9ydCBpbiB0aGUga2VybmVsLCBmdWxs
c2NyZWVuIGFwcHMgd2hlcmUgZ2FtZQ0KPiA+IHJlc29sdXRpb24gaXMgZXF1YWwgdG8gdGhlIHNj
cmVlbiByZXNvbHV0aW9uLCBtdXN0IHBlcmZvcm0gYW4gZXh0cmENCj4gPiBibGl0IHBlciBmcmFt
ZSBwcmlvciB0byBmbGlwcGluZy4NCj4gPg0KPiA+IEFzeW5jaHJvbm91cyBwYWdlIGZsaXBzIHdp
bGwgYWxzbyBib29zdCB0aGUgRlBTIG9mIE1lc2EgYmVuY2htYXJrcy4NCj4gDQo+IA0KPiBUaGFu
a3MgYSBsb3QgZm9yIGRvaW5nIHRoaXMgd29yayENCg0KVGhhbmtzIGEgbG90IGZvciB0aGUgcmV2
aWV3Lg0KPiANCj4gSSBkaWQgc29tZSBxdWljayBzbW9rZSB0ZXN0cyBvbiBhIEdlbWluaSBMYWtl
IGFuZCB3aGlsZSB0aGlzIGFwcGVhcnMgdG8gYmUNCj4gd29ya2luZyBmaW5lIHdpdGggeGY4Ni12
aWRlby1tb2Rlc2V0dGluZywgdGhlICJwYWdlZmxpcC5jIiBwcm9ncmFtIEkgc2hhcmVkDQo+IHBy
ZXZpb3VzbHkgYnJlYWtzIHdoZW4geW91IGxhdW5jaCBpdCBhcyAiLi9wYWdlZmxpcCAtbiI6IHRo
aXMgYXJndW1lbnQgbWFrZXMNCj4gdGhlIHByb2dyYW0gKm5vdCogcmVxdWVzdCBmb3IgcGFnZSBm
bGlwIGV2ZW50cyAoYnkgbm90IHNldHRpbmcNCj4gRFJNX01PREVfUEFHRV9GTElQX0VWRU5UKSBh
bmQganVzdCB0cnkgdG8gZmxpcCBhcyBmYXN0IGFzIGl0IGNhbi4gSSBkaWRuJ3QNCj4gaW52ZXN0
aWdhdGUgd2h5IHRoaXMgYnJlYWtzLCBidXQgaXQncyBwcm9iYWJseSBzb21lIGNvcm5lciBjYXNl
IHRoZSBzZXJpZXMgaXMNCj4gZm9yZ2V0dGluZy4NCg0KSSBoYWRuJ3QgdHJpZWQgb3V0IHRoaXMg
b3B0aW9uLiBUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0Lg0KV2lsbCBmaXggdGhpcyBpbiB0
aGUgbmV4dCByZXZpc2lvbi4NCj4gDQo+IEFsc28sIGRvZXNuJ3QgYXN5bmMgcGFnZWZsaXAgaW50
ZXJhY3Qgd2l0aCBzb21lIG90aGVyIGRpc3BsYXkgZmVhdHVyZXM/DQo+IERvbid0IHdlIG5lZWQg
dG8gZGlzYWJsZSBhdCBsZWFzdCBvbmUgb2YgRkJDLCBQU1IgYW5kL29yIHJlbmRlciBjb21wcmVz
c2lvbg0KPiB3aGVuIHVzaW5nIGFzeW5jIHBhZ2UgZmxpcHM/DQo+IA0KPiBWaWxsZSBtZW50aW9u
ZWQgc29tZSBwb3NzaWJsZSBpbnRlcmFjdGlvbnMgd2l0aCBTVVJGL09GRlNFVCB0cmFja2luZyB0
b28NCj4gKGZyYW1lYnVmZmVycyBub3QgYmVpbmcgYXQgdGhlIHN0YXJ0IG9mIHRoZSBibyksIHdo
aWNoIGRvZXNuJ3Qgc2VlbSB0byBiZQ0KPiBjb3ZlcmVkIGJ5IHRoZSBzZXJpZXMuDQo+IA0KDQpZ
ZXMsIGJvdGggdGhlIGFib3ZlIGhhc24ndCBiZWVuIHRha2VuIGNhcmUgb2YgaW4gdGhpcyBzZXJp
ZXMuIFRoYW5rcyBmb3IgcG9pbnRpbmcgaXQgb3V0Lg0KV2lsbCBjaGVjayBpdCBhbmQgdXBkYXRl
IGluIHRoZSBuZXh0IHJldmlzaW9uLg0KDQpUaGFua3MsDQpLYXJ0aGlrDQoNCj4gVGhhbmtzLA0K
PiBQYXVsbw0KPiANCj4gPg0KPiA+IEthcnRoaWsgQiBTICg3KToNCj4gPiAgIGRybS9pOTE1OiBE
ZWZpbmUgZmxpcCBkb25lIGZ1bmN0aW9ucyBhbmQgZW5hYmxlIElFUg0KPiA+ICAgZHJtL2k5MTU6
IEFkZCBzdXBwb3J0IGZvciBhc3luYyBmbGlwcyBpbiBJOTE1DQo+ID4gICBkcm0vaTkxNTogTWFr
ZSBjb21taXQgY2FsbCBibG9ja2luZyBpbiBjYXNlIG9mIGFzeW5jIGZsaXBzDQo+ID4gICBkcm0v
aTkxNTogQWRkIGNoZWNrcyBzcGVjaWZpYyB0byBhc3luYyBmbGlwcw0KPiA+ICAgZHJtL2k5MTU6
IEFkZCBmbGlwX2RvbmVfaGFuZGxlciBkZWZpbml0aW9uDQo+ID4gICBkcm0vaTkxNTogRW5hYmxl
IGFuZCBoYW5kbGUgZmxpcCBkb25lIGludGVycnVwdA0KPiA+ICAgZHJtL2k5MTU6IERvIG5vdCBj
YWxsIGRybV9jcnRjX2FybV92YmxhbmtfZXZlbnQgaW4gYXN5bmMgZmxpcHMNCj4gPg0KPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDU1ICsrKysrKysr
KysrKysrKysrLS0NCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0
ZS5jICB8IDEyICsrLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAg
ICAgICAgICAgfCA1OCArKysrKysrKysrKysrKysrKysrLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5oICAgICAgICAgICAgICB8ICAyICsNCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAgMSArDQo+ID4gIDUgZmlsZXMgY2hhbmdl
ZCwgMTE3IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiA+DQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
