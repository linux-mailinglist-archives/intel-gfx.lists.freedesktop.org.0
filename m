Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBECEE7B51
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 22:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C90E6EA93;
	Mon, 28 Oct 2019 21:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183A66EA93
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 21:25:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 14:25:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,241,1569308400"; d="scan'208";a="210961769"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga001.fm.intel.com with ESMTP; 28 Oct 2019 14:25:01 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 28 Oct 2019 14:25:00 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.210]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.146]) with mapi id 14.03.0439.000;
 Mon, 28 Oct 2019 14:25:00 -0700
From: "Hiatt, Don" <don.hiatt@intel.com>
To: "Hiatt, Don" <don.hiatt@intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i914/guc: Fix resume on platforms w/o
 GuC submission but enabled
Thread-Index: AQHViohM005e6yyaHEGJsPy5MI+iM6dwvi2A//+j+1CAAHmsgP//pJCAgAAV4yA=
Date: Mon, 28 Oct 2019 21:25:00 +0000
Message-ID: <97654A90DB924C44A3AE6C902A3FEAC15F976C3D@ORSMSX106.amr.corp.intel.com>
References: <20191024162958.11839-1-don.hiatt@intel.com>
 <0f6b50af-70a4-819b-946d-079d6f9d80f1@intel.com>
 <97654A90DB924C44A3AE6C902A3FEAC15F976A54@ORSMSX106.amr.corp.intel.com>
 <e0f9e325-2783-4a2d-7eaf-ac0b78c15e1c@intel.com>
 <97654A90DB924C44A3AE6C902A3FEAC15F976B28@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <97654A90DB924C44A3AE6C902A3FEAC15F976B28@ORSMSX106.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGI5ZTIxNDMtZTRhNC00MGFkLThkMzQtNWQ3NjdiYTlhZDBkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZ091OXpYUkZscjJJbTFiVFZaZGZtZTNqaWdRaGtnRUNyaFlsUGkwV3JteWtMM2ZkZ2FlNHdON3hMSjlVeE9BUCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i914/guc: Fix resume on platforms w/o
 GuC submission but enabled
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

DQoNCj4gPiBGcm9tOiBDZXJhb2xvIFNwdXJpbywgRGFuaWVsZSA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4NCj4gPiBTZW50OiBNb25kYXksIE9jdG9iZXIgMjgsIDIwMTkgMTE6MzAg
QU0NCj4gPiBUbzogSGlhdHQsIERvbiA8ZG9uLmhpYXR0QGludGVsLmNvbT47IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENI
XSBkcm0vaTkxNC9ndWM6IEZpeCByZXN1bWUgb24gcGxhdGZvcm1zIHcvbw0KPiBHdUMNCj4gPiBz
dWJtaXNzaW9uIGJ1dCBlbmFibGVkDQo+ID4NCj4gPg0KPiA+DQo+ID4gT24gMTAvMjgvMTkgMTE6
MTcgQU0sIEhpYXR0LCBEb24gd3JvdGU6DQo+ID4gPj4gRnJvbTogQ2VyYW9sbyBTcHVyaW8sIERh
bmllbGUgPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+ID4gPj4gU2VudDogTW9u
ZGF5LCBPY3RvYmVyIDI4LCAyMDE5IDk6NDQgQU0NCj4gPiA+PiBUbzogSGlhdHQsIERvbiA8ZG9u
LmhpYXR0QGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+
PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNC9ndWM6IEZpeCByZXN1
bWUgb24gcGxhdGZvcm1zIHcvbw0KPiA+IEd1Qw0KPiA+ID4+IHN1Ym1pc3Npb24gYnV0IGVuYWJs
ZWQNCj4gPiA+Pg0KPiA+ID4+DQo+ID4gPj4NCj4gPiA+PiBPbiAxMC8yNC8xOSA5OjI5IEFNLCBk
b24uaGlhdHRAaW50ZWwuY29tIHdyb3RlOg0KPiA+ID4+PiBGcm9tOiBEb24gSGlhdHQgPGRvbi5o
aWF0dEBpbnRlbC5jb20+DQo+ID4gPj4+DQo+ID4gPj4+IENoZWNrIHRvIHNlZSBpZiBHdUMgc3Vi
bWlzc2lvbiBpcyBlbmFibGVkIGJlZm9yZSByZXF1ZXN0aW5nIHRoZQ0KPiA+ID4+PiBFWElUX1Nf
U1RBVEUgYWN0aW9uLg0KPiA+ID4+Pg0KPiA+ID4+DQo+ID4gPj4gWW91J3JlIG9ubHkgc2tpcHBp
bmcgdGhlIHJlc3VtZSwgYnV0IGRvZXMgaXQgbWFrZSBhbnkgc2Vuc2UgdG8gZG8gdGhlDQo+ID4g
Pj4gc3VzcGVuZCBhY3Rpb24gaWYgd2UncmUgbm90IGdvaW5nIHRvIGNhbGwgdGhlIHJlc3VtZSBv
bmU/IERvZXMgZ3VjIGRvDQo+ID4gPj4gYW55dGhpbmcgaW4gdGhlIHN1c3BlbmQgYWN0aW9uIHRo
YXQgd2Ugc3RpbGwgcmVxdWlyZT8gSSB0aG91Z2h0IGl0IG9ubHkNCj4gPiA+PiBzYXZlZCB0aGUg
c3VibWlzc2lvbiBzdGF0dXMsIHdoaWNoIHdlIGRvbid0IGNhcmUgYWJvdXQgaWYgZ3VjIHN1Ym1p
c3Npb24NCj4gPiA+PiBpcyBkaXNhYmxlZC4NCj4gPiA+Pg0KPiA+ID4+IERhbmllbGUNCj4gPiA+
Pg0KPiA+ID4NCj4gPiA+IEhpIERhbmllbGUsDQo+ID4gPg0KPiA+ID4gSSB0cmllZCBza2lwcGlu
ZyB0aGUgc3VzcGVuZCBhbGwgdG9nZXRoZXIgYnV0IHRoZW4gdGhlIEh1QyBnZXRzIHRpbWVvdXRz
DQo+ID4gPiB3YWl0aW5nIGZvciB0aGUgR3VDIHRvIGFja25vd2xlZGdlIHRoZSBhdXRoZW50aWNh
dGlvbiByZXF1ZXN0IHdoaWNoIGxlYWRzDQo+IHRvDQo+ID4gYQ0KPiA+ID4gd2VkZ2VkIEdQVS4g
4pi5DQo+ID4gPg0KPiA+DQo+ID4gRG8gd2Uga25vdyB3aHk/IGlmIHdlIHNraXAgdGhlIHN1c3Bl
bmQvcmVzdW1lIEgyRyBhbmQgcmVsb2FkIHRoZSBibG9icw0KPiA+IGFmdGVyIHJlc2V0dGluZyB0
aGUgSFcgaXQgc2hvdWxkIGxvb2sgbGlrZSBhIGNsZWFuIGJvb3QgZnJvbSB0aGUgSFcNCj4gPiBw
ZXJzcGVjdGl2ZSwgc28gdGhlIGZhY3QgdGhhdCBIdUMgYXV0aCB0aW1lcyBvdXQgZmVlbHMgd2Vp
cmQgYW5kIG1pZ2h0DQo+ID4gaGlkZSBvdGhlciBpc3N1ZXMuIEkgYXNrZWQgb25lIG9mIHRoZSBn
dWMgZGV2cyBhbmQgaGUgYWxzbyB0aGlua3MgdGhpcw0KPiA+IGlzIG5vdCBleHBlY3RlZCBiZWhh
dmlvci4gQ2FuIHlvdSBkaWcgYSBiaXQgbW9yZT8NCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBEYW5p
ZWxlDQo+ID4NCj4gDQo+IE5vIGlkZWEgd2h5IGJ1dCBJJ2xsIGRvIHNvbWUgZGlnZ2luZyBhbmQg
c2VlIHdoYXQgSSBmaW5kLg0KPiANCj4gVGhhbmtzIQ0KPiANCj4gZG9uDQo+IA0KSGkgRGFuaWVs
ZSwNCg0KSSB3YXMgYSBsaXR0bGUgb3ZlcnplYWxvdXMgb24gbXkgcmVtb3ZhbCBvZiBzdXNwZW5k
L3Jlc3VtZS4gV2Ugc3RpbGwgbmVlZCB0byBnbw0KdGhyb3VnaCB0aGUgc3RlcHMgb2YgZW5hYmxl
L2Rpc2FibGUgR3VDIGNvbW11bmljYXRpb24gb24gc3VzcGVuZC9yZXN1bWUgYnV0DQpqdXN0IG5v
dCBzZW5kIHRoZSBHdUMgYWN0aW9uLiBNeSBmaXJzdCBhdHRlbXB0IHdhcyBub3QgaGFuZGxpbmcg
dGhlIEd1QyBjb21tdW5pY2F0aW9uDQpwcm9wZXJseSBzbyB0aGF0IGlzIHdoeSBJIHdhcyBzZWVp
bmcgdGhlIEh1QyBhdXRoZW50aWNhdGlvbiB0aW1lc291dHMuDQoNCkknbSBzdWJtaXR0aW5nIG5l
dyBwYXRjaCAtLSB3aXRoIHRoZSBwcm9wZXIgJ2RybS9pOTE1JyAtLSBhbmQgd2lsbCBDQyB5b3Uu
DQoNClRoYW5rcyENCg0KZG9uDQoNCg0KPiA+ID4gQlRXLCBJIG1hZGUgYSB0eXBvIGluIHRoZSBw
YXRjaCwgc2hvdWxkIGJlICdkcm0vaTkxNScgbm90ICc5MTQnLCBJJ2xsIGZpeCB0aGF0DQo+ID4g
PiB1cC4NCj4gPiA+DQo+ID4gPiBUaGFua3MsDQo+ID4gPg0KPiA+ID4gZG9uDQo+ID4gPg0KPiA+
ID4NCj4gPiA+Pj4gT24gc29tZSBwbGF0Zm9ybXMgKGUuZy4gS0JMKSB0aGF0IGRvIG5vdCBzdXBw
b3J0IEd1QyBzdWJtaXNzaW9uLCBidXQNCj4gPiA+Pj4gdGhlIHVzZXIgZW5hYmxlZCB0aGUgR3VD
IGNvbW11bmljYXRpb24gKGUuZyBmb3IgSHVDIGF1dGhlbnRpY2F0aW9uKQ0KPiA+ID4+PiBjYWxs
aW5nIHRoZSBHdUMgRVhJVF9TX1NUQVRFIGFjdGlvbiByZXN1bHRzIGluIGxvc2Ugb2YgYWJpbGl0
eSB0bw0KPiA+ID4+PiBlbnRlciBSQzYuIEd1YXJkIGFnYWluc3QgdGhpcyBieSBvbmx5IHJlcXVl
c3RpbmcgdGhlIEd1QyBhY3Rpb24gb24NCj4gPiA+Pj4gcGxhdGZvcm1zIHRoYXQgc3VwcG9ydCBH
dUMgc3VibWlzc2lvbi4NCj4gPiA+Pj4NCj4gPiA+Pj4gSSd2ZSB2ZXJmaWVkIHRoYXQgaW50ZWxf
Z3VjX3Jlc3VtZSgpIG9ubHkgZ2V0cyBjYWxsZWQgd2hlbiBkcml2ZXINCj4gPiA+Pj4gaXMgbG9h
ZGVkIHdpdGg6IGd1Y19lbmFibGU9ezEsMiwzfSwgYWxsIG90aGVyIGNhc2VzIChubyBhcmdzLA0K
PiA+ID4+PiBndWNfZW5hYmxlPXswLC0xfSB0aGUgaW50ZWxfZ3VjX3Jlc3VtZSgpIGlzIG5vdCBj
YWxsZWQuDQo+ID4gPj4+DQo+ID4gPj4+IFNpZ25lZC1vZmYtYnk6IERvbiBIaWF0dCA8ZG9uLmhp
YXR0QGludGVsLmNvbT4NCj4gPiA+Pj4gLS0tDQo+ID4gPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Yy5jIHwgNSArKysrLQ0KPiA+ID4+PiAgICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPj4+DQo+ID4gPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYw0KPiA+ID4+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMNCj4gPiA+Pj4gaW5kZXggMzdm
N2JjYmY3ZGFjLi4zMzMxOGVkMTM1YzAgMTAwNjQ0DQo+ID4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jDQo+ID4gPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5jDQo+ID4gPj4+IEBAIC01NjUsNyArNTY1LDEwIEBAIGlu
dCBpbnRlbF9ndWNfcmVzdW1lKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykNCj4gPiA+Pj4gICAgCQlH
VUNfUE9XRVJfRDAsDQo+ID4gPj4+ICAgIAl9Ow0KPiA+ID4+Pg0KPiA+ID4+PiAtCXJldHVybiBp
bnRlbF9ndWNfc2VuZChndWMsIGFjdGlvbiwgQVJSQVlfU0laRShhY3Rpb24pKTsNCj4gPiA+Pj4g
KwlpZiAoZ3VjLT5zdWJtaXNzaW9uX3N1cHBvcnRlZCkNCj4gPiA+Pj4gKwkJcmV0dXJuIGludGVs
X2d1Y19zZW5kKGd1YywgYWN0aW9uLCBBUlJBWV9TSVpFKGFjdGlvbikpOw0KPiA+ID4+PiArDQo+
ID4gPj4+ICsJcmV0dXJuIDA7DQo+ID4gPj4+ICAgIH0NCj4gPiA+Pj4NCj4gPiA+Pj4gICAgLyoq
DQo+ID4gPj4+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
