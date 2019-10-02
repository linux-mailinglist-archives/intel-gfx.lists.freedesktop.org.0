Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 407E0C8B5C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 16:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BB058967A;
	Wed,  2 Oct 2019 14:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C64768967A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 14:36:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:36:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="392856581"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga006.fm.intel.com with ESMTP; 02 Oct 2019 07:36:34 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 2 Oct 2019 07:36:33 -0700
Received: from fmsmsx119.amr.corp.intel.com ([169.254.14.227]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.243]) with mapi id 14.03.0439.000;
 Wed, 2 Oct 2019 07:36:34 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Cancel non-persistent contexts on close
Thread-Index: AQHVeSzzoeQSVw6M90euthRIUAvMAKdHaLdA
Date: Wed, 2 Oct 2019 14:36:33 +0000
Deferred-Delivery: Wed, 2 Oct 2019 14:35:49 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68CE4E15C@FMSMSX119.amr.corp.intel.com>
References: <20191002112000.12280-20-chris@chris-wilson.co.uk>
 <20191002142315.23108-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191002142315.23108-1-chris@chris-wilson.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTUxMTY2M2MtNzI5ZS00MWI4LWI3YzAtZmJiY2M1MmE2MzRmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoialcySlU2NlBPaklEY3RpUURqckUyVkpcL1Z2Mm96cWUwd1o1U1hMYXQ0eUdnZE9oSlJBalRhcUtNNTlnUnUzNGEifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Cancel non-persistent contexts
 on close
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
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDIsIDIwMTkg
NzoyMyBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+OyBKb29uYXMgTGFodGluZW4NCj4g
PGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+OyBXaW5pYXJza2ksIE1pY2hhbA0KPiA8
bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+OyBCbG9vbWZpZWxkLCBKb24gPGpvbi5ibG9vbWZp
ZWxkQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYyXSBkcm0vaTkxNTogQ2FuY2VsIG5v
bi1wZXJzaXN0ZW50IGNvbnRleHRzIG9uIGNsb3NlDQo+IA0KPiBOb3JtYWxseSwgd2UgcmVseSBv
biBvdXIgaGFuZ2NoZWNrIHRvIHByZXZlbnQgcGVyc2lzdGVudCBiYXRjaGVzIGZyb20NCj4gaG9n
Z2luZyB0aGUgR1BVLiBIb3dldmVyLCBpZiB0aGUgdXNlciBkaXNhYmxlcyBoYW5nY2hlY2ssIHRo
aXMgbWVjaGFuaXNtDQo+IGJyZWFrcyBkb3duLiBEZXNwaXRlIG91ciBpbnNpc3RlbmNlIHRoYXQg
dGhpcyBpcyB1bnNhZmUsIHRoZSB1c2VycyBhcmUNCj4gZXF1YWxseSBpbnNpc3RlbnQgdGhhdCB0
aGV5IHdhbnQgdG8gdXNlIGVuZGxlc3MgYmF0Y2hlcyBhbmQgd2lsbCBkaXNhYmxlDQo+IHRoZSBo
YW5nY2hlY2sgbWVjaGFuaXNtLiBXZSBhcmUgbG9va2luZyBhdCBwZXJoYXBzIHJlcGxhY2luZyBo
YW5nY2hlY2sNCj4gd2l0aCBhIHNvZnRlciBtZWNoYW5pc20sIHRoYXQgc2VuZHMgYSBwdWxzZSBk
b3duIHRoZSBlbmdpbmUgdG8gY2hlY2sgaWYNCj4gaXQgaXMgd2VsbC4gV2UgY2FuIHVzZSB0aGUg
c2FtZSBwcmVlbXB0aXZlIHB1bHNlIHRvIGZsdXNoIGFuIGFjdGl2ZQ0KPiBwZXJzaXN0ZW50IGNv
bnRleHQgb2ZmIHRoZSBHUFUgdXBvbiBjb250ZXh0IGNsb3NlLCBwcmV2ZW50aW5nIHJlc291cmNl
cw0KPiBiZWluZyBsb3N0IGFuZCB1bmtpbGxhYmxlIHJlcXVlc3RzIHJlbWFpbmluZyBvbiB0aGUg
R1BVIGFmdGVyIHByb2Nlc3MNCj4gdGVybWluYXRpb24uIFRvIGF2b2lkIGNoYW5naW5nIHRoZSBB
QkkgYW5kIGFjY2lkZW50YWxseSBicmVha2luZw0KPiBleGlzdGluZyB1c2Vyc3BhY2UsIHdlIG1h
a2UgdGhlIHBlcnNpc3RlbmNlIG9mIGEgY29udGV4dCBleHBsaWNpdCBhbmQNCj4gZW5hYmxlIGl0
IGJ5IGRlZmF1bHQgKG1hdGNoaW5nIGN1cnJlbnQgQUJJKS4gVXNlcnNwYWNlIGNhbiBvcHQgb3V0
IG9mDQo+IHBlcnNpc3RlbnQgbW9kZSAoZm9yY2luZyByZXF1ZXN0cyB0byBiZSBjYW5jZWxsZWQg
d2hlbiB0aGUgY29udGV4dCBpcw0KPiBjbG9zZWQgYnkgcHJvY2VzcyB0ZXJtaW5hdGlvbiBvciBl
eHBsaWNpdGx5KSBieSBhIGNvbnRleHQgcGFyYW1ldGVyLiBUbw0KPiBmYWNpbGl0YXRlIGV4aXN0
aW5nIHVzZS1jYXNlcyBvZiBkaXNhYmxpbmcgaGFuZ2NoZWNrLCBpZiB0aGUgbW9kcGFyYW0gaXMN
Cj4gZGlzYWJsZWQgKGk5MTUuZW5hYmxlX2hhbmdjaGVjaz0wKSwgd2UgZGlzYWJsZSBwZXJzaXN0
ZW5jZSBtb2RlIGJ5DQo+IGRlZmF1bHQuICAoTm90ZSwgb25lIG9mIHRoZSBvdXRjb21lcyBmb3Ig
c3VwcG9ydGluZyBlbmRsZXNzIG1vZGUgd2lsbCBiZQ0KPiB0aGUgcmVtb3ZhbCBvZiBoYW5nY2hl
Y2tpbmcsIGF0IHdoaWNoIHBvaW50IG9wdGluZyBpbnRvIHBlcnNpc3RlbnQgbW9kZQ0KPiB3aWxs
IGJlIG1hbmRhdG9yeSwgb3IgbWF5YmUgdGhlIGRlZmF1bHQgcGVyaGFwcyBjb250cm9sbGVkIGJ5
IGNncm91cHMuKQ0KPiANCj4gdjI6IENoZWNrIGZvciBoYW5nY2hlY2tpbmcgYXQgY29udGV4dCB0
ZXJtaW5hdGlvbiwgc28gdGhhdCB3ZSBhcmUgbm90DQo+IGxlZnQgd2l0aCB1bmR5aW5nIGNvbnRl
eHRzIGZyb20gYSBjcmFmdCB1c2VyLg0KDQpzL2NyYWZ0L2NyYWZ0eS8gdW5sZXNzIHdlIG9ubHkg
Y2FyZSBhYm91dCBzYWlsb3JzLg0KDQpPdGhlcndpc2U6DQpSZXZpZXdlZC1ieTogSm9uIEJsb29t
ZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
