Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A88BD1C32C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 08:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 959AD8926E;
	Tue, 14 May 2019 06:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA4F98926A;
 Tue, 14 May 2019 06:18:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 23:18:52 -0700
X-ExtLoop1: 1
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by fmsmga006.fm.intel.com with ESMTP; 13 May 2019 23:18:49 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.93]) by
 irsmsx110.ger.corp.intel.com ([169.254.15.227]) with mapi id 14.03.0415.000;
 Tue, 14 May 2019 07:18:48 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "daniel@ffwll.ch" <daniel@ffwll.ch>
Thread-Topic: [PATCH v7 09/11] drm: uevent for connector status change
Thread-Index: AQHVCWqJ5jc1dpU7oUmRMC7jlFLrlaZouqkAgAAKCYCAAFICAIAA/3IA
Date: Tue, 14 May 2019 06:18:48 +0000
Message-ID: <27ea154a9c9f49a584508bffe2f238a0d3b8ea57.camel@intel.com>
References: <20190507162745.25600-1-ramalingam.c@intel.com>
 <20190507162745.25600-10-ramalingam.c@intel.com>
 <31dad9a323382628911c5301a6eec179855aa815.camel@bootlin.com>
 <CAKMK7uEwHZ=As3B4z+WZ1fyd2yP5Krg3hVzfCcCAtv3jOxmTrA@mail.gmail.com>
 <8aa3980a6948b9b2b989c237f8453ca54e72ad95.camel@bootlin.com>
 <CAKMK7uFaEPm+kqYdc=vkb_iRRXDf=P6D98VTMMKtCMQHCixhLg@mail.gmail.com>
 <a90d64ddaf5d256812bfc2f8a1d6d44344b56c32.camel@intel.com>
 <20190513150424.GT17751@phenom.ffwll.local>
In-Reply-To: <20190513150424.GT17751@phenom.ffwll.local>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <D2E717D36C5C0F43B4739C65FEBEF34A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 09/11] drm: uevent for connector status
 change
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
Cc: "airlied@linux.ie" <airlied@linux.ie>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "paul.kocialkowski@bootlin.com" <paul.kocialkowski@bootlin.com>,
 "ppaalanen@gmail.com" <ppaalanen@gmail.com>,
 "thomas.petazzoni@bootlin.com" <thomas.petazzoni@bootlin.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Vetter,
 Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTA1LTEzIGF0IDE3OjA0ICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOg0K
PiBPbiBNb24sIE1heSAxMywgMjAxOSBhdCAxMDoxMTowMUFNICswMDAwLCBTZXIsIFNpbW9uIHdy
b3RlOg0KPiA+IE9uIE1vbiwgMjAxOS0wNS0xMyBhdCAxMTozNCArMDIwMCwgRGFuaWVsIFZldHRl
ciB3cm90ZToNCj4gPiA+IE9uIE1vbiwgTWF5IDEzLCAyMDE5IGF0IDExOjAyIEFNIFBhdWwgS29j
aWFsa293c2tpDQo+ID4gPiA8cGF1bC5rb2NpYWxrb3dza2lAYm9vdGxpbi5jb20+IHdyb3RlOg0K
PiA+ID4gPiBIaSwNCj4gPiA+ID4gDQo+ID4gPiA+IE9uIEZyaSwgMjAxOS0wNS0xMCBhdCAxNjo1
NCArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToNCj4gPiA+ID4gPiBPbiBGcmksIE1heSAxMCwg
MjAxOSBhdCAyOjEyIFBNIFBhdWwgS29jaWFsa293c2tpDQo+ID4gPiA+ID4gPHBhdWwua29jaWFs
a293c2tpQGJvb3RsaW4uY29tPiB3cm90ZToNCj4gPiA+ID4gPiA+IEhpLA0KPiA+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gPiBPbiBUdWUsIDIwMTktMDUtMDcgYXQgMjE6NTcgKzA1MzAsIFJhbWFsaW5n
YW0gQyB3cm90ZToNCj4gPiA+ID4gPiA+ID4gRFJNIEFQSSBmb3IgZ2VuZXJhdGluZyB1ZXZlbnQg
Zm9yIGEgc3RhdHVzIGNoYW5nZXMgb2YgY29ubmVjdG9yJ3MNCj4gPiA+ID4gPiA+ID4gcHJvcGVy
dHkuDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBUaGlzIHVldmVudCB3aWxsIGhhdmUg
Zm9sbG93aW5nIGRldGFpbHMgcmVsYXRlZCB0byB0aGUgc3RhdHVzIGNoYW5nZToNCj4gPiA+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gPiA+ICAgSE9UUExVRz0xLCBDT05ORUNUT1I9PGNvbm5lY3Rvcl9p
ZD4gYW5kIFBST1BFUlRZPTxwcm9wZXJ0eV9pZD4NCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
PiA+IE5lZWQgQUNLIGZyb20gdGhpcyB1ZXZlbnQgZnJvbSB1c2Vyc3BhY2UgY29uc3VtZXIuDQo+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFNvIHdlIGp1c3QgaGFkIHNvbWUgZGlzY3Vzc2lvbnMg
b3ZlciBvbiBJUkMgYW5kIGF0IGFib3V0IHRoZSBob3RwbHVnDQo+ID4gPiA+ID4gPiBpc3N1ZSBh
bmQgY2FtZSB1cCB3aXRoIHNpbWlsYXIgaWRlYXM6DQo+ID4gPiA+ID4gPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1NYXkvMjE3NDA4Lmh0bWwN
Cj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVGhlIGNvbmNsdXNpb25zIG9mIHRoZXNlIGRpc2N1
c3Npb25zIHNvIGZhciB3b3VsZCBiZSB0byBoYXZlIGEgbW9yZSBvcg0KPiA+ID4gPiA+ID4gbGVz
cyBmaW5lIGdyYWluIG9mIHVldmVudCByZXBvcnRpbmcgZGVwZW5kaW5nIG9uIHdoYXQgaGFwcGVu
ZWQuIFRoZQ0KPiA+ID4gPiA+ID4gcG9pbnQgaXMgdGhhdCB3ZSBuZWVkIHRvIGNvdmVyIGRpZmZl
cmVudCBjYXNlczoNCj4gPiA+ID4gPiA+IC0gb25lIG9yIG1vcmUgcHJvcGVydGllcyBjaGFuZ2Vk
Ow0KPiA+ID4gPiA+ID4gLSB0aGUgY29ubmVjdG9yIHN0YXR1cyBjaGFuZ2VkOw0KPiA+ID4gPiA+
ID4gLSBzb21ldGhpbmcgZWxzZSBhYm91dCB0aGUgY29ubmVjdG9yIGNoYW5nZWQgKGUuZy4gRURJ
RC9tb2RlcykNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gRm9yIHRoZSBmaXJzdCBjYXNlLCB3
ZSBjYW4gc2VuZCBvdXQ6DQo+ID4gPiA+ID4gPiBIT1RQTFVHPTENCj4gPiA+ID4gPiA+IENPTk5F
Q1RPUj08aWQ+DQo+ID4gPiA+ID4gPiBQUk9QRVJUWT08aWQ+DQo+ID4gPiA+ID4gPiANCj4gPiA+
ID4gPiA+IGFuZCBubyByZXByb2JlIGlzIHJlcXVpcmVkLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gPiBGb3IgdGhlIHNlY29uZCBvbmUsIHNvbWV0aGluZyBsaWtlOg0KPiA+ID4gPiA+ID4gSE9U
UExVRz0xDQo+ID4gPiA+ID4gPiBDT05ORUNUT1I9PGlkPg0KPiA+ID4gPiA+ID4gU1RBVFVTPUNv
bm5lY3RlZC9EaXNjb25uZWN0ZWQNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gYW5kIGEgY29u
bmVjdG9yIHByb2JlIGlzIG5lZWRlZCBmb3IgY29ubmVjdGVkLCBidXQgbm90IGZvcg0KPiA+ID4g
PiA+ID4gZGlzY29ubmVjdGVkOw0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBGb3IgdGhlIHRo
aXJkIG9uZSwgd2UgY2FuIG9ubHkgaW5kaWNhdGUgdGhlIGNvbm5lY3RvcjoNCj4gPiA+ID4gPiA+
IEhPVFBMVUc9MQ0KPiA+ID4gPiA+ID4gQ09OTkVDVE9SPTxpZD4NCj4gPiA+ID4gPiA+IA0KPiA+
ID4gPiA+ID4gYW5kIGEgcmVwcm9iZSBvZiB0aGUgY29ubmVjdG9yIGlzIGFsd2F5cyBuZWVkZWQN
Cj4gPiA+ID4gPiANCj4gPiA+ID4gPiBUaGVyZSdzIG5vIG1hdGVyaWFsIGRpZmZlcmVuY2UgYmV0
d2VlbiB0aGlzIG9uZSBhbmQgdGhlIHByZXZpb3VzIG9uZS4NCj4gPiA+ID4gPiBQbHVzIHRoZXJl
J3Mgbm8gYmVlbmZpdCBpbiBzdXBwbHlpbmcgdGhlIGFjdHVhbCB2YWx1ZSBvZiB0aGUgcHJvcGVy
dHksDQo+ID4gPiA+ID4gaS5lLiB3ZSBjYW4gcmV1c2UgdGhlIHNhbWUgUFJPUEVSVFk9PGlkLW9m
LXN0YXR1cy1wcm9wZXJ0eT4gdHJpY2suDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGF0J3MgdGhlIGlk
ZWEsIGJ1dCB3ZSBuZWVkIHRvIGhhbmRsZSBzdGF0dXMgY2hhbmdlcyBkaWZmZXJlbnRseSB0aGFu
DQo+ID4gPiA+IHByb3BlcnRpZXMsIHNpbmNlIGFzIGZhciBhcyBJIGtub3csIGNvbm5lY3RlZC91
bmNvbm5lY3RlZCBzdGF0dXMgaXMgbm90DQo+ID4gPiA+IGV4cG9zZWQgYXMgYSBwcm9wIGZvciB0
aGUgY29ubmVjdG9yLg0KPiA+ID4gDQo+ID4gPiBPb3BzLCB0b3RhbGx5IG1pc3NlZCB0aGF0LiAi
RXZlcnl0aGluZyBpcyBhIHByb3BlcnR5IiBpcyBraW5kYQ0KPiA+ID4gbmV3LWlzaCwgYXQgbGVh
c3QgY29tcGFyZWQgdG8ga21zLiBLaW5kYSB0ZW1wdGVkIHRvIGp1c3QgbWFrZSBzdGF0dXMNCj4g
PiA+IGludG8gYSBwcm9wZXJ0eS4gT3IgYW5vdGhlciBleGN1c2Ugd2h5IHdlIHNob3VsZCBleHBv
c2UgdGhlIGVwb2NoDQo+ID4gPiBwcm9wZXJ0eSA6LSkNCj4gPiA+IA0KPiA+ID4gPiA+IEhlcmUn
cyB3aHk6DQo+ID4gPiA+ID4gLSBBIHNpZGUgZWZmZWN0IG9mIGZvcmNpbmcgYSBwcm9iZSBvbiBh
IGNvbm5lY3RvciBpcyB0aGF0IHlvdSBnZXQgdG8NCj4gPiA+ID4gPiByZWFkIGFsbCB0aGUgcHJv
cGVydGllcywgc28gc3VwcGx5aW5nIHRoZW0gaXMga2luZGEgcG9pbnRsZXNzLg0KPiA+ID4gPiAN
Cj4gPiA+ID4gQWdyZWVkLCBleGNlcHQgZm9yIHRoZSBzdGF0dXMgY2FzZSB3aGVyZSBpdCdzIHVz
ZWZ1bCB0byBrbm93IGl0J3MgYQ0KPiA+ID4gPiBkaXNjb25uZWN0LCBiZWNhdXNlIHdlIGRvbid0
IG5lZWQgYW55IHByb2JlIHN0ZXAgaW4gdGhhdCBjYXNlLg0KPiA+ID4gPiANCj4gPiA+ID4gPiAt
IFlvdSBjYW4gcmVhZCBTVEFUVVMgd2l0aG91dCBmb3JjaW5nIGEgcmVwcm9iZSwgaWYgeW91IHdh
bnQgdG8gYXZvaWQNCj4gPiA+ID4gPiB0aGUgcmVwcm9iZSBmb3IgZGlzY29ubmVjdGVkLiBJJ2Qg
a2luZGEgbm90IHJlY29tbWVuZCB0aGF0IHRob3VnaCwNCj4gPiA+ID4gPiBmZWVscyBhIGJpdCBs
aWtlIG92ZXJvcHRpbWl6aW5nLiBBbmQgZm9yIHJlYXNvbmFibGUgY29ubmVjdG9ycyAoaS5lLg0K
PiA+ID4gPiA+IGRwKSByZXByb2JpbmcgYSBkaXNjb25uZWN0ZWQgb3V0cHV0IGlzIGZhc3QuIEhE
TUkgaXMgLi4uIGxlc3MNCj4gPiA+ID4gPiByZWFzb25hYmxlIHVuZm9ydHVuYXRlbHksIGJ1dCBv
aCB3ZWxsLg0KPiA+ID4gPiANCj4gPiA+ID4gSG93IHdvdWxkIHRoYXQgYmUgcmV0cmVpdmVkIHRo
ZW4/IEZyb20gdGhlIGxvb2tzIG9mIGl0LCB0aGF0J3MgYQ0KPiA+ID4gPiBNT0RFX0dFVENPTk5F
Q1RPUiBpb2N0bCBhbmQgSSB3YXMgdW5kZXIgdGhlIGltcHJlc3Npb24gdGhpcyBpcyB3aGF0DQo+
ID4gPiA+IGRvZXMgdGhlIGZ1bGwgcmVwcm9iZS4NCj4gPiA+IA0KPiA+ID4gZHJtR2V0Q29ubmVj
dG9yIHZzIGRybUdldENvbm5lY3RvckN1cnJlbnQuDQo+ID4gPiANCj4gPiA+ID4gTm90IHN1cmUg
d2hhdCBpc3N1ZXMgY291bGQgYXJpc2UgaW4gY2FzZSBvZiBkaXNjb25uZWN0IHdpdGhvdXQgcmVw
cm9iZQ0KPiA+ID4gPiAtLSBhdCBsZWFzdCBJIGRvbid0IHNlZSB3aHkgdXNlcnNwYWNlIHNob3Vs
ZCBoYXZlIHRvIGRvIGFueXRoaW5nIGluDQo+ID4gPiA+IHBhcnRpY3VsYXIgZXhjZXB0IG5vIGxv
bmdlciB1c2luZyB0aGUgY29ubmVjdG9yLCBldmVuIGluIGNvbXBsZXggRFAgTVNUDQo+ID4gPiA+
IGNhc2VzLg0KPiA+ID4gDQo+ID4gPiBjb25uZWN0b3ItPnN0YXR1cyBtaWdodCBiZSBhIGxpZSB3
aXRob3V0IGEgZnVsbCByZXByb2JlLCBhbmQgd3JvbmdseQ0KPiA+ID4gaW5kaWNhdGUgdGhhdCB0
aGUgY29ubmVjdG9yIGlzIGRpc2Nvbm5lY3RlZCB3aGlsZSB0aGVyZSdzIHN0aWxsDQo+ID4gPiBz
b21ldGhpbmcgcGx1Z2dlZCBpbi4gSSdtIG5vdCBzdXJlIHdlJ3ZlIGZpeGVkIHRob3NlIGJ1Z3Mg
Ynkgbm93DQo+ID4gPiAodXN1YWxseSBpdCdzIGFyb3VuZCAiaHBkIGluZGljYXRlcyBkaXNjb25u
ZWN0ZWQiIHZzLiAiaTJjIGluZGljYXRlcw0KPiA+ID4gY29ubmVjdGVkLCBhbmQgd2UgY2FuJ3Qg
YnJlYWsgdGhpcyBiZWNhdXNlIGV2ZXJ5IGludGVsIHBsYXRmb3JtIGV2ZXINCj4gPiA+IHNoaXBw
ZWQgaGFzIGEgZmV3IGRldmljZXMgd2hlcmUgdGhpcyBpcyBzb21laG93IGJyb2tlbiwgaXJyZXNw
ZWN0aXZlDQo+ID4gPiBvZiB0aGUgc2luaykuDQo+ID4gPiANCj4gPiA+ID4gPiAtIFRoZXJlJ3Mg
bm8gd2F5IHRvIG9ubHkgcmVwcm9iZSBzdGF0dXMsIHlvdSBjYW4gb25seSBldmVyIHJlcHJvYmUN
Cj4gPiA+ID4gPiBldmVyeXRoaW5nIHdpdGggdGhlIGN1cnJlbnQgaW9jdGwgYW5kIGltcGxlbWVu
dGF0aW9ucy4gSGF2aW5nIGFuDQo+ID4gPiA+ID4gb3B0aW9uIHRvIHJlcHJvYmUgb25seSBwYXJ0
cyBvZiBpdCBkb2Vzbid0IHNlZW0gdXNlZnVsIHRvIG1lICh3ZSBuZWVkDQo+ID4gPiA+ID4gdG8g
cmVhZCB0aGUgRURJRCBhbnl3YXksIGFuZCB0aGF0J3MgdGhlIGV4cGVuc2l2ZSBwYXJ0IG9mIHJl
cHJvYmluZyBpbg0KPiA+ID4gPiA+IGFsbW9zdCBhbGwgY2FzZXMpLg0KPiA+ID4gPiANCj4gPiA+
ID4gQWdyZWVkLg0KPiA+ID4gPiANCj4gPiA+ID4gPiBJbiBhIHdheSBQUk9QRVJUWT08c3RhdHVz
LXByb3AtaWQ+IHNpbXBseSB0ZWxscyB1c2Vyc3BhY2UgdGhhdCBpdA0KPiA+ID4gPiA+IG5lZWRz
IHRvIHJlcHJvYmUgdGhpcyBjb25uZWN0b3IuDQo+ID4gPiA+IA0KPiA+ID4gPiBJIHRob3VnaHQg
d2UgY291bGQgYWNjZXNzIHRoZSBwcm9wcyBhbG9uZSwgd2hpY2ggYXZvaWRzIGRvaW5nIGEgcmVw
cm9iZQ0KPiA+ID4gPiB3aGVuIHRoZSBrZXJuZWwga25vd3MgdGhhdCBvbmx5IGEgcHJvcCBvciBh
IHNldCBvZiBwcm9wcyBjaGFuZ2VkIGFuZCBkbw0KPiA+ID4gPiBub3QgcmVxdWlyZSBhIGZ1bGwg
cmVwcm9iZS4gVGhhdCdzIHRoZSBmaXJzdCBjYXNlIEkgd2FzIG1lbnRpb25uaW5nLg0KPiA+ID4g
PiANCj4gPiA+ID4gPiBBdCB0aGF0IHBvaW50IHdlIG5lZWQgdG8gZmlndXJlIG91dCB3aGV0aGVy
IHRoaXMgaXMgYSBnb29kIHVhcGkgb3INCj4gPiA+ID4gPiBub3QsIGFuZCB0aGF0J3Mgd2hlcmUg
dGhlIGVwb2NoIGNvbWVzIGluLiBUaGVyZSdzIHR3byByZWFzb25zIGZvciBhbg0KPiA+ID4gPiA+
IGVwb2NoOg0KPiA+ID4gPiA+IC0gV2UgbmVlZCBpdCBpbnRlcm5hbGx5IGJlY2F1c2UgSSdtIG5v
dCBnb2luaWcgdG8gd2lyZSBhIG5ldyByZXR1cm4NCj4gPiA+ID4gPiB2YWx1ZSB0aHJvdWdoIGh1
bmRyZWRzIG9mIGNvbm5lY3RvciBwcm9iZSBmdW5jdGlvbnMuIEl0J3MgbXVjaCBlYXNpZXINCj4g
PiA+ID4gPiB0byBoYXZlIGFuIGVwb2NoIGNvdW50ZXIgd2hpY2ggd2Ugc2V0IGZyb20gZS5nLiBk
cm1fc2V0X2VkaWQgYW5kDQo+ID4gPiA+ID4gc2ltaWxhciBmdW5jdGlvbnMgdGhhdCB1cGRhdGUg
cHJvYmUgc3RhdGUuDQo+ID4gPiA+IA0KPiA+ID4gPiBJIGRvbid0IHRoaW5rIEknbSBmb2xsb3dp
bmcgd2hhdCBpc3N1ZSB0aGlzIGlzIHRyeWluZyB0byBzb2x2ZQ0KPiA+ID4gPiBpbnRlcm5hbGx5
Lg0KPiA+ID4gDQo+ID4gPiBTbyBJJ20gYXNzdW1pbmcgdGhhdCBpZiB3ZSBoYW5kbGUgYSBob3Rw
bHVnLCB3ZSBvbmx5IHdhbnQgdG8gZ2VuZXJhdGUNCj4gPiA+IG9uZSB1ZXZlbnQgZm9yIHRoYXQs
IG5vdCBvbmUgZm9yIGV2ZXJ5IGxpdHRsZSB0aGluZyB0aGF0IGNoYW5nZWQuDQo+ID4gPiBUaGVy
ZSdzIHR3byB3YXlzIHRvIGltcGxlbWVudCB0aGlzIGxvZ2ljOg0KPiA+ID4gLSBXaXRoIHNvbWUg
ZXBvY2ggY291bnRlciBhbmQgYSBoZWxwZXIgZnVuY3Rpb24geW91IGNhbiBjYWxsIGV2ZXJ5dGlt
ZQ0KPiA+ID4gc29tZXRoaW5nIGNoYW5nZWQgKGUuZy4gc3RhdHVzLCBvciBlZGlkLCBvciBhbnl0
aGluZyBlbHNlIHdlIGNhcmUNCj4gPiA+IGFib3V0IGUuZy4gZnJvbSBkcCBhdXgpLiBUaGlzIHdv
bid0IG5lZWQgbXVjaCAoaWYgYW55KSBkcml2ZXIgY2hhbmdlcywNCj4gPiA+IGJlY2F1c2Ugd2Ug
Y2FuIGp1c3QgcHV0IHRoZXNlIGludG8gdGhlIHJlbGV2YW50IGhlbHBlci9jb3JlIGZ1bmN0aW9u
cw0KPiA+ID4gKGxpa2UgZWRpZCB1cGRhdGUsIG9yIGRwIGF1eCByZWFkaW5nIG9yIHdoYXRldmVy
KS4NCj4gPiA+IC0gV2lyaW5nIGEgbmV3IHJldHVybiB2YWx1ZSB0aHJvdWdoIHRoZSBlbnRpcmUg
c3RhY2sgKGFuZCBfYWxsXyB0aGUNCj4gPiA+IGttcyBkcml2ZXJzKSBzbyB0aGF0IHRoZSBwcm9i
ZSBoZWxwZXJzIGNvdWxkIGFnZ3JlZ2F0ZSB0aGlzIGxpa2UgdGhleQ0KPiA+ID4gY3VycmVudGx5
IGRvLg0KPiA+ID4gDQo+ID4gPiBPbmUgb2YgdGhlc2UgaXMgYSBsb3QgbGVzcyB0eXBpbmcuDQo+
ID4gPiANCj4gPiA+ID4gPiAtIElmIHVzZXJzcGFjZSBtaXNzZXMgYW4gZXZlbnQgYW5kIHRoZXJl
J3Mgbm8gZXBvY2gsIHdlJ3JlIGZvcmNpbmcNCj4gPiA+ID4gPiB1c2Vyc3BhY2UgdG8gcmVwcm9i
ZSBldmVyeXRoaW5nLiBVc2UgY2FzZSB3b3VsZCBiZSBpZiBhIGNvbXBvc2l0b3IgaXMNCj4gPiA+
ID4gPiBzd2l0Y2hlZCBhd2F5IHdlIHByb2JhYmx5IGRvbid0IHdhbnQgdG8gcGlzcyBvZiB0aGUg
Y3VycmVudCBjb21wb3NpdG9yDQo+ID4gPiA+ID4gYnkgYmxvY2tpbmcgaXQncyBvd24gcHJvYmUg
a2VybmVsIGNhbGxzIGJ5IGRvaW5nIG91ciBvd24gKHByb2JlIGlzDQo+ID4gPiA+ID4gc2luZ2xl
LXRocmVhZGVkIGluIHRoZSBrZXJuZWwgdGhyb3VnaCB0aGUgZGV2LT5tb2RlX2NvbmZpZy5tdXRl
eCkuIElmDQo+ID4gPiA+ID4gaXQgY2FuIHJlYWQgdGhlIGVwb2NoIHByb3BlcnR5ICh3aGljaCBp
dCBjYW4gZG8gd2l0aG91dCBmb3JjaW5nIGENCj4gPiA+ID4gPiByZXByb2JlKSB1c2Vyc3BhY2Ug
d291bGQga25vdyB3aGljaCBjb25uZWN0b3JzIGl0IG5lZWRzIHRvIGNoZWNrIGFuZA0KPiA+ID4g
PiA+IHJlcHJvYmUuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gSGVuY2Ugd2h5IGVwb2NoLCBpdCdz
IGEgYml0IG1vcmUgcm9idXN0IHVzZXJzcGFjZSBhcGkuIE9mYyB5b3UgY291bGQNCj4gPiA+ID4g
PiBhbHNvIHJlcXVpcmUgdGhhdCB1c2Vyc3BhY2UgbmVlZHMgdG8ga2VlcCBwYXJzaW5nIGFsbCB1
ZXZlbnRzIGFuZCBtYWtlDQo+ID4gPiA+ID4gYSBsaXN0IG9mIGFsbCBjb25uZWN0b3JzIGl0IG5l
ZWRzIHRvIHJlcHJvYmUgd2hlbiBpdCdzIGJhY2sgdG8gYmVpbmcNCj4gPiA+ID4gPiB0aGUgYWN0
aXZlIGNvbXBvc2l0b3IuIEJ1dCBqdXN0IGNvbXBhcmluZyBhIGN1cnJlbnQgZXBvY2ggd2l0aCB0
aGUgb25lDQo+ID4gPiA+ID4geW91IGNhY2hlZCBmcm9tIHRoZSBsYXN0IGZ1bGwgcHJvYmUgaXMg
bXVjaCBlYXNpZXIuDQo+ID4gPiA+IA0KPiA+ID4gPiBGYWlyIGVub3VnaCwgSSB0aGluayBpdCdz
IGEgZmluZSBpZGVhIGZvciByb2J1c3RuZXNzIHllcywgYnV0IEkgdGhpbmsNCj4gPiA+ID4gd2Ug
Y291bGQgYWxzbyBwcm92aWRlIGV4dHJhIGluZm8gaW4gdGhlIHVldmVudCB3aGVuIHJlbGV2YW50
IGFuZCBub3QNCj4gPiA+ID4gcmVseSBvbiB0aGF0IGVudGlyZWx5Lg0KPiA+ID4gDQo+ID4gPiBT
ZWUgYWJvdmUsIHdpdGggZHJtR2V0Q29ubmVjdG9yQ3VycmVudCB0aGVyZSdzIG5vIG5lZWQgdG8g
cHJvdmlkZSBtb3JlDQo+ID4gPiB0aGFuIHdoYXQncyBuZWVkZWQgaW4gdGhlIHVldmVudCwgc2lu
Y2UgdXNlcnNwYWNlIGNhbiBnZXQgZXZlcnl0aGluZw0KPiA+ID4gZWxzZSBhdCB0aGUgY29zdCBv
ZiBvbmUgaW9jdGwsIHdpdGhvdXQgcmVwcm9iaW5nLiBXaXRoIGEgYml0IG9mDQo+ID4gPiBlbmdp
bmVlcmluZyB3b3JrIHdlIGNvdWxkIGV2ZW4gYXZvaWQgdGFraW5nIHRoZSBleHBlbnNpdmUNCj4g
PiA+IGRldi0+bW9kZV9jb25maWcubXV0ZXggbG9jayBmb3IgdGhpcyBmYXN0cGF0aC4NCj4gPiA+
IA0KPiA+ID4gPiA+IEFub3RoZXIgdGhpbmc6IE5vbmUgb2YgdGhpcyB3ZSBjYW4gZm9yIGNvbm5l
Y3RvcnMgd2l0aCB1bnJlbGlhYmxlIGhkcC4NCj4gPiA+ID4gPiBPciBhdCBsZWFzdCB5b3UnbGwg
cGlzcyBvZiB1c2VycyBpZiB5b3UgY2FjaGUgYWx3YXlzLiBUaGUgc2FkIHRoaW5nIGlzDQo+ID4g
PiA+ID4gdGhhdCBIRE1JIGlzIHVucmVsaWFibGUsIGF0IGxlYXN0IG9uIHNvbWUgbWFjaGluZXMv
c2NyZWVuIGNvbWJvcyAoeW91DQo+ID4gPiA+ID4gbmV2ZXIgZ2V0IGEgaHBkIGlycSBpZiB5b3Ug
cGx1ZyBpbi91bnBsdWcpLiBTbyByZWFsIGNvbXBvc2l0b3JzIHN0aWxsDQo+ID4gPiA+ID4gbmVl
ZCB0byByZXByb2JlIHdoZW4gdGhlIHVzZXIgYXNrcyBmb3IgaXQuIGlndCBjYW4gcHJvYmFibHkg
Z2V0IGF3YXkNCj4gPiA+ID4gPiB3aXRob3V0IHJlcHJvYmluZy4NCj4gPiA+ID4gDQo+ID4gPiA+
IEkgd29uZGVyIGhvdyB0aGF0IGlzIGhhbmRsZWQgY3VycmVudGx5IGFuZCBob3cgYSB1c2VyIGFj
dGlvbiBjYW4gc29sdmUNCj4gPiA+ID4gdGhlIGlzc3VlIHdpdGhvdXQgYW55IG5vdGlmaWNhdGlv
biBmcm9tIHRoZSBrZXJuZWwuIE1heWJlIGEgbmVlZCBhDQo+ID4gPiA+IGJldHRlciB1bmRlcnN0
YW5kaW5nIG9mIHRoYXQgY2FzZSB0byBoYXZlIGEgY2xlYXJlciBpZGVhLg0KPiA+ID4gDQo+ID4g
PiBVc2VyIG9wZW5zIHRoZSBzY3JlZW4gY29uZmlndXJhdGlvbiB0b29sIC0+IHVzdWFsbHkgYXQg
dGhhdCBwb2ludCB0aGUNCj4gPiA+IHRvb2wvY29tcG9zaXRvciBmb3JjZSBhIGZ1bGwgcmVwcm9i
ZSwgd2hpY2ggdGhlbiBvZnRlbiB0cmlnZ2VycyB0aGUNCj4gPiA+IGF1dG9tYXRpYyByZWNvbmZp
Z3VyaW5nLiBFLmcuIG9uIG9uZSBsYXB0b3AgSSBoYXZlIGhlcmUgd2hlbiBJIHBsdWcgaW4NCj4g
PiA+IHJhbmRvbSBzaGl0IHByb2plY3RvcnMgYXQgY29uZmVyZW5jZXMgbm90aGluZyBoYXBwZW5z
LCB1bnRpbCBJIHJ1bg0KPiA+ID4geHJhbmRyLCB3aGljaCB0cmlnZ2VycyB0aGUgZnVsbCByZXBy
b2JlLCB3aGljaCB0aGVuIG1ha2VzIHRoZSBrZXJuZWwNCj4gPiA+IHJlYWxpemUgc29tZXRoaW5n
IGNoYW5nZSwgc2VuZGluZyBhbmQgdWV2ZW50LCB3aGljaCBzdGFydHMgdGhlDQo+ID4gPiBhdXRv
bWF0aWMgcmVjb25maWd1cmUgbWFjaGluZXJ5Lg0KPiA+ID4gDQo+ID4gPiBUaGVyZSdzIGFsc28g
dGhlIGlzc3VlIHRoYXQgdGhlcmUncyBtYWNoaW5lcyB3aXRoIGhwZCBzdG9ybXMgKGV2ZW4gb24N
Cj4gPiA+IERQLCB3aGVyZSB5b3UgcmVhbGx5IG5lZWQgaHBkIHRvIHdvcmsgdG8gYmUgY29tcGxp
YW50KSwgYW5kIHdlIGhhdmUgdG8NCj4gPiA+IHR1cm4gb2YgdGhlIGhwZCBpcnEgdG8ga2VlcCB0
aGUgbWFjaGluZSB1c2VhYmxlLg0KPiA+IA0KPiA+IE5vdGUgdGhhdCB4cmFuZHIgb25seSB3b3Jr
cyBvbiBYMTEuIE9uIFdheWxhbmQsIGl0IHdvbid0Lg0KPiA+IA0KPiA+IFdoZXRoZXIgdGhlIHVz
ZXIgY2FuIGFjdHVhbGx5IGRvIGFueXRoaW5nIGRlcGVuZHMgb24gdGhlIGNvbXBvc2l0b3IuIE9u
DQo+ID4gR05PTUUgdGhlIEQtQnVzIGludGVyZmFjZSBjb3VsZCBwcm9iYWJseSBmb3JjZSBhIHJl
LXByb2JlIHdoZW4gYQ0KPiA+IGNvbmZpZ3VyYXRpb24gdG9vbCBpcyBzdGFydGVkIG9yIG1heWJl
IHdpdGggYSAiUmVzY2FuIGNvbm5lY3RvcnMiDQo+ID4gYnV0dG9uIChub3Qgc3VyZSB0aGV5J2Qg
bGlrZSB0byBoYXZlIHRoaXMgaW4gdGhlaXIgVUkpLiBPbiBLREUsIFdlc3Rvbg0KPiA+IGFuZCB3
bHJvb3RzIHRoZXJlIGlzIG5vIHdheSB0byBkbyBpdC4NCj4gPiANCj4gPiBBcyBjb21wb3NpdG9y
IHdyaXRlcnMsIGRvIHdlIHJlYWxseSBuZWVkIHRvIHByb3ZpZGUgYSB3YXkgZm9yIHVzZXJzIHRv
DQo+ID4gZm9yY2UgYSByZXByb2JlPyBDYW4ndCB0aGUga2VybmVsIGRvIGFueXRoaW5nIHRvIGhh
bmRsZSB0aGVzZSBiYWQNCj4gPiBzY3JlZW5zPw0KPiANCj4gWWVhaCwgd2UgZGVmZW5zaXZlbHkg
ZmFsbCBiYWNrIHRvIHBvbGxpbmcuIFdoaWNoIGlzbid0IGdyZWF0IGZyb20gYSBwb3dlcg0KPiB1
c2FnZSBwb3YuDQo+IA0KPiBidHcgYXMgbG9uZyBhcyBjb21wb3NpdG9ycyB1c2UgZHJtR2V0Q29u
bmVjdG9yIGFuZCBub3QganVzdA0KPiBkcm1HZXRDb25uZWN0b3JDdXJyZW50IHlvdSBjYW4gdHJp
Z2dlciBhIGZ1bGwgcmVwcm9iZS4gSWYgdGhlcmUncyBub3Qgd2F5DQo+IHRvIHRyaWdnZXIgdGhh
dCB0aGV5J2xsIGFsbCBoYXZlIHRvIGFkZCBhICJmb3JjZSBwcm9iZSIgYnV0dG9uIHNvb25lciBv
cg0KPiBsYXRlci4gQnV0IHVzdWFsbHkgaXQncyBlbm91Z2ggaWYgeW91IGRvIGEgZnVsbCByZXBy
b2JlIHdoZW4gdGhlIHVzZXINCj4gc3RhcnRzIHlvdXIgY29uZmlnIHRvb2wuDQoNCkZXSVcsIHNv
bWUgY29tcG9zaXRvcnMgKFdlc3Rvbiwgd2xyb290cy1iYXNlZCBvbmVzKSBkb24ndCBoYXZlIGEN
CiJncmFwaGljYWwgY29uZmlnIHRvb2wiLCBlaXRoZXIgYmVjYXVzZSBpdCdzIGNvbW1hbmQtbGlu
ZSAoYW5kIGV2ZW50LQ0KYmFzZWQsIG5vdCBwb2xsLWJhc2VkKSBvciBiZWNhdXNlIHNjcmVlbiBj
b25maWd1cmF0aW9uIGlzIHN0YXRpYyAoYnV0DQpob3RwbHVnIGlzIHN1cHBvcnRlZCkuIEkgZ3Vl
c3Mgd2Ugd291bGQgbmVlZCB0byBleHBvc2Ugc29tZSBraW5kIG9mDQoicmVzY2FuIiBjb21tYW5k
LCB3aGljaCBub2JvZHkgd2lsbCBrbm93IGFib3V0LiBTaWdoLg0KDQo+ID4gPiBDaGVlcnMsIERh
bmllbA0KPiA+ID4gDQo+ID4gPiA+IENoZWVycywNCj4gPiA+ID4gDQo+ID4gPiA+IFBhdWwNCj4g
PiA+ID4gDQo+ID4gPiA+ID4gLURhbmllbA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVGhlbiB3
ZSBzdGlsbCBoYXZlIHRoZSBsZWdhY3kgY2FzZToNCj4gPiA+ID4gPiA+IEhPVFBMVUc9MQ0KPiA+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiB3aGVyZSB1c2Vyc3BhY2UgaXMgZXhwZWN0ZWQgdG8gcmVw
cm9iZSBhbGwgdGhlIGNvbm5lY3RvcnMuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEkgdGhp
bmsgdGhpcyB3b3VsZCBkZXNlcnZlIHRvIGJlIGEgc2VwYXJhdGUgc2VyaWVzIG9uIGl0cyBvd24u
IFNvIEkgYW0NCj4gPiA+ID4gPiA+IHByb3Bvc2luZyB0byB0YWtlIHRoaXMgb25lIG9mZiB5b3Vy
IHBsYXRlIGFuZCBjb21lIHVwIHdpdGggYW5vdGhlcg0KPiA+ID4gPiA+ID4gc2VyZXMgaW1wbGVt
ZW50aW5nIHRoaXMgcHJvcG9zYWwuIFdoYXQgZG8geW91IHRoaW5rPw0KPiA+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gPiBDaGVlcnMsDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFBhdWwNCj4gPiA+
ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiB2MjoNCj4gPiA+ID4gPiA+ID4gICBNaW5vciBmaXhlcyBh
dCBLRG9jIGNvbW1lbnRzIFtEYW5pZWxdDQo+ID4gPiA+ID4gPiA+IHYzOg0KPiA+ID4gPiA+ID4g
PiAgIENoZWNrIHRoZSBwcm9wZXJ0eSBpcyByZWFsbHkgYXR0YWNoZWQgd2l0aCBjb25uZWN0b3Ig
W0RhbmllbF0NCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFJh
bWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4NCj4gPiA+ID4gPiA+ID4gUmV2aWV3
ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+DQo+ID4gPiA+ID4g
PiA+IC0tLQ0KPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9zeXNmcy5jIHwgMzUg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiA+ID4gPiA+ID4gIGluY2x1
ZGUvZHJtL2RybV9zeXNmcy5oICAgICB8ICA1ICsrKystDQo+ID4gPiA+ID4gPiA+ICAyIGZpbGVz
IGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5c2ZzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX3N5c2ZzLmMNCj4gPiA+ID4gPiA+ID4gaW5kZXggMThiMWFj
NDQyOTk3Li42M2ZhOTUxYTIwZGIgMTAwNjQ0DQo+ID4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fc3lzZnMuYw0KPiA+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX3N5c2ZzLmMNCj4gPiA+ID4gPiA+ID4gQEAgLTIxLDYgKzIxLDcgQEANCj4gPiA+ID4gPiA+
ID4gICNpbmNsdWRlIDxkcm0vZHJtX3N5c2ZzLmg+DQo+ID4gPiA+ID4gPiA+ICAjaW5jbHVkZSA8
ZHJtL2RybVAuaD4NCj4gPiA+ID4gPiA+ID4gICNpbmNsdWRlICJkcm1faW50ZXJuYWwuaCINCj4g
PiA+ID4gPiA+ID4gKyNpbmNsdWRlICJkcm1fY3J0Y19pbnRlcm5hbC5oIg0KPiA+ID4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+ID4gICNkZWZpbmUgdG9fZHJtX21pbm9yKGQpIGRldl9nZXRfZHJ2ZGF0
YShkKQ0KPiA+ID4gPiA+ID4gPiAgI2RlZmluZSB0b19kcm1fY29ubmVjdG9yKGQpIGRldl9nZXRf
ZHJ2ZGF0YShkKQ0KPiA+ID4gPiA+ID4gPiBAQCAtMzIwLDYgKzMyMSw5IEBAIHZvaWQgZHJtX3N5
c2ZzX2xlYXNlX2V2ZW50KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpDQo+ID4gPiA+ID4gPiA+ICAg
KiBTZW5kIGEgdWV2ZW50IGZvciB0aGUgRFJNIGRldmljZSBzcGVjaWZpZWQgYnkgQGRldi4gIEN1
cnJlbnRseSB3ZSBvbmx5DQo+ID4gPiA+ID4gPiA+ICAgKiBzZXQgSE9UUExVRz0xIGluIHRoZSB1
ZXZlbnQgZW52aXJvbm1lbnQsIGJ1dCB0aGlzIGNvdWxkIGJlIGV4cGFuZGVkIHRvDQo+ID4gPiA+
ID4gPiA+ICAgKiBkZWFsIHdpdGggb3RoZXIgdHlwZXMgb2YgZXZlbnRzLg0KPiA+ID4gPiA+ID4g
PiArICoNCj4gPiA+ID4gPiA+ID4gKyAqIEFueSBuZXcgdWFwaSBzaG91bGQgYmUgdXNpbmcgdGhl
IGRybV9zeXNmc19jb25uZWN0b3Jfc3RhdHVzX2V2ZW50KCkNCj4gPiA+ID4gPiA+ID4gKyAqIGZv
ciB1ZXZlbnRzIG9uIGNvbm5lY3RvciBzdGF0dXMgY2hhbmdlLg0KPiA+ID4gPiA+ID4gPiAgICov
DQo+ID4gPiA+ID4gPiA+ICB2b2lkIGRybV9zeXNmc19ob3RwbHVnX2V2ZW50KHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYpDQo+ID4gPiA+ID4gPiA+ICB7DQo+ID4gPiA+ID4gPiA+IEBAIC0zMzIsNiAr
MzM2LDM3IEBAIHZvaWQgZHJtX3N5c2ZzX2hvdHBsdWdfZXZlbnQoc3RydWN0IGRybV9kZXZpY2Ug
KmRldikNCj4gPiA+ID4gPiA+ID4gIH0NCj4gPiA+ID4gPiA+ID4gIEVYUE9SVF9TWU1CT0woZHJt
X3N5c2ZzX2hvdHBsdWdfZXZlbnQpOw0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gKy8q
Kg0KPiA+ID4gPiA+ID4gPiArICogZHJtX3N5c2ZzX2Nvbm5lY3Rvcl9zdGF0dXNfZXZlbnQgLSBn
ZW5lcmF0ZSBhIERSTSB1ZXZlbnQgZm9yIGNvbm5lY3Rvcg0KPiA+ID4gPiA+ID4gPiArICogcHJv
cGVydHkgc3RhdHVzIGNoYW5nZQ0KPiA+ID4gPiA+ID4gPiArICogQGNvbm5lY3RvcjogY29ubmVj
dG9yIG9uIHdoaWNoIHByb3BlcnR5IHN0YXR1cyBjaGFuZ2VkDQo+ID4gPiA+ID4gPiA+ICsgKiBA
cHJvcGVydHk6IGNvbm5lY3RvciBwcm9wZXJ0eSB3aG9lcyBzdGF0dXMgY2hhbmdlZC4NCj4gPiA+
ID4gPiA+ID4gKyAqDQo+ID4gPiA+ID4gPiA+ICsgKiBTZW5kIGEgdWV2ZW50IGZvciB0aGUgRFJN
IGRldmljZSBzcGVjaWZpZWQgYnkgQGRldi4gIEN1cnJlbnRseSB3ZQ0KPiA+ID4gPiA+ID4gPiAr
ICogc2V0IEhPVFBMVUc9MSBhbmQgY29ubmVjdG9yIGlkIGFsb25nIHdpdGggdGhlIGF0dGFjaGVk
IHByb3BlcnR5IGlkDQo+ID4gPiA+ID4gPiA+ICsgKiByZWxhdGVkIHRvIHRoZSBzdGF0dXMgY2hh
bmdlLg0KPiA+ID4gPiA+ID4gPiArICovDQo+ID4gPiA+ID4gPiA+ICt2b2lkIGRybV9zeXNmc19j
b25uZWN0b3Jfc3RhdHVzX2V2ZW50KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsDQo+
ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBk
cm1fcHJvcGVydHkgKnByb3BlcnR5KQ0KPiA+ID4gPiA+ID4gPiArew0KPiA+ID4gPiA+ID4gPiAr
ICAgICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY29ubmVjdG9yLT5kZXY7DQo+ID4gPiA+ID4g
PiA+ICsgICAgIGNoYXIgaG90cGx1Z19zdHJbXSA9ICJIT1RQTFVHPTEiLCBjb25uX2lkWzMwXSwg
cHJvcF9pZFszMF07DQo+ID4gPiA+ID4gPiA+ICsgICAgIGNoYXIgKmVudnBbNF0gPSB7IGhvdHBs
dWdfc3RyLCBjb25uX2lkLCBwcm9wX2lkLCBOVUxMIH07DQo+ID4gPiA+ID4gPiA+ICsNCj4gPiA+
ID4gPiA+ID4gKyAgICAgV0FSTl9PTighZHJtX21vZGVfb2JqX2ZpbmRfcHJvcF9pZCgmY29ubmVj
dG9yLT5iYXNlLA0KPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHByb3BlcnR5LT5iYXNlLmlkKSk7DQo+ID4gPiA+ID4gPiA+ICsNCj4gPiA+ID4g
PiA+ID4gKyAgICAgc25wcmludGYoY29ubl9pZCwgQVJSQVlfU0laRShjb25uX2lkKSwNCj4gPiA+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgIkNPTk5FQ1RPUj0ldSIsIGNvbm5lY3Rvci0+YmFzZS5p
ZCk7DQo+ID4gPiA+ID4gPiA+ICsgICAgIHNucHJpbnRmKHByb3BfaWQsIEFSUkFZX1NJWkUocHJv
cF9pZCksDQo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICJQUk9QRVJUWT0ldSIsIHByb3Bl
cnR5LT5iYXNlLmlkKTsNCj4gPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gPiArICAgICBEUk1f
REVCVUcoImdlbmVyYXRpbmcgY29ubmVjdG9yIHN0YXR1cyBldmVudFxuIik7DQo+ID4gPiA+ID4g
PiA+ICsNCj4gPiA+ID4gPiA+ID4gKyAgICAga29iamVjdF91ZXZlbnRfZW52KCZkZXYtPnByaW1h
cnktPmtkZXYtPmtvYmosIEtPQkpfQ0hBTkdFLCBlbnZwKTsNCj4gPiA+ID4gPiA+ID4gK30NCj4g
PiA+ID4gPiA+ID4gK0VYUE9SVF9TWU1CT0woZHJtX3N5c2ZzX2Nvbm5lY3Rvcl9zdGF0dXNfZXZl
bnQpOw0KPiA+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiA+ICBzdGF0aWMgdm9pZCBkcm1fc3lz
ZnNfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+ID4gPiA+ID4gPiA+ICB7DQo+ID4gPiA+
ID4gPiA+ICAgICAgIGtmcmVlKGRldik7DQo+ID4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2RybS9kcm1fc3lzZnMuaCBiL2luY2x1ZGUvZHJtL2RybV9zeXNmcy5oDQo+ID4gPiA+ID4g
PiA+IGluZGV4IDRmMzExZTgzNmNkYy4uZDQ1NGVmNjE3YjJjIDEwMDY0NA0KPiA+ID4gPiA+ID4g
PiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fc3lzZnMuaA0KPiA+ID4gPiA+ID4gPiArKysgYi9pbmNs
dWRlL2RybS9kcm1fc3lzZnMuaA0KPiA+ID4gPiA+ID4gPiBAQCAtNCwxMCArNCwxMyBAQA0KPiA+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gIHN0cnVjdCBkcm1fZGV2aWNlOw0KPiA+ID4gPiA+
ID4gPiAgc3RydWN0IGRldmljZTsNCj4gPiA+ID4gPiA+ID4gK3N0cnVjdCBkcm1fY29ubmVjdG9y
Ow0KPiA+ID4gPiA+ID4gPiArc3RydWN0IGRybV9wcm9wZXJ0eTsNCj4gPiA+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gPiA+ICBpbnQgZHJtX2NsYXNzX2RldmljZV9yZWdpc3RlcihzdHJ1Y3QgZGV2aWNl
ICpkZXYpOw0KPiA+ID4gPiA+ID4gPiAgdm9pZCBkcm1fY2xhc3NfZGV2aWNlX3VucmVnaXN0ZXIo
c3RydWN0IGRldmljZSAqZGV2KTsNCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ICB2b2lk
IGRybV9zeXNmc19ob3RwbHVnX2V2ZW50KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOw0KPiA+ID4g
PiA+ID4gPiAtDQo+ID4gPiA+ID4gPiA+ICt2b2lkIGRybV9zeXNmc19jb25uZWN0b3Jfc3RhdHVz
X2V2ZW50KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ID4gPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1fcHJvcGVydHkgKnBy
b3BlcnR5KTsNCj4gPiA+ID4gPiA+ID4gICNlbmRpZg0KPiA+ID4gPiA+ID4gLS0NCj4gPiA+ID4g
PiA+IFBhdWwgS29jaWFsa293c2tpLCBCb290bGluDQo+ID4gPiA+ID4gPiBFbWJlZGRlZCBMaW51
eCBhbmQga2VybmVsIGVuZ2luZWVyaW5nDQo+ID4gPiA+ID4gPiBodHRwczovL2Jvb3RsaW4uY29t
DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gLS0NCj4gPiA+ID4gUGF1bCBLb2NpYWxrb3dza2ksIEJv
b3RsaW4NCj4gPiA+ID4gRW1iZWRkZWQgTGludXggYW5kIGtlcm5lbCBlbmdpbmVlcmluZw0KPiA+
ID4gPiBodHRwczovL2Jvb3RsaW4uY29tDQo+ID4gPiA+IA0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
