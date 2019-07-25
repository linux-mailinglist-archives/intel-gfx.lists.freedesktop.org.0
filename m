Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F6175B66
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 01:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E8916E839;
	Thu, 25 Jul 2019 23:41:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 401396E839
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 23:41:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 16:41:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="181697469"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 25 Jul 2019 16:41:50 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 25 Jul 2019 16:41:49 -0700
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.194]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.134]) with mapi id 14.03.0439.000;
 Thu, 25 Jul 2019 16:41:49 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Replace hangcheck by heartbeats
Thread-Index: AQHVQz8hSjhQ4UQs1UeuHS9F8o95tabb9+9AgAB3+QD//4sBAA==
Date: Thu, 25 Jul 2019 23:41:49 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68B39EC9A@fmsmsx120.amr.corp.intel.com>
References: <57b95613f6cf4a0806baeb3d99790bd90b7615e4>
 <20190725231651.17660-1-chris@chris-wilson.co.uk>
 <AD48BB7FB99B174FBCC69E228F58B3B68B39EC27@fmsmsx120.amr.corp.intel.com>
 <156409725005.30723.12612262044238740018@skylake-alporthouse-com>
In-Reply-To: <156409725005.30723.12612262044238740018@skylake-alporthouse-com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTQ3M2Q4ZTMtYjI2MS00ZDU4LThiYzgtYmE4Nzg4Zjg5OGE2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZDZGdkdFV2NRejgwcXNmQUxJUVVMZDVSYzE2QUpWMjFjUFhZandIMkhcL1oxWndRSWdmOUcrWlIrVE41ZjZLc2gifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Replace hangcheck by heartbeats
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
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogVGh1cnNkYXksIEp1bHkgMjUsIDIwMTkgNDoy
OCBQTQ0KPiBUbzogQmxvb21maWVsZCwgSm9uIDxqb24uYmxvb21maWVsZEBpbnRlbC5jb20+OyBp
bnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogSm9vbmFzIExhaHRpbmVu
IDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPjsgVXJzdWxpbiwgVHZydGtvDQo+IDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0hdIGRybS9pOTE1
OiBSZXBsYWNlIGhhbmdjaGVjayBieSBoZWFydGJlYXRzDQo+IA0KPiBRdW90aW5nIEJsb29tZmll
bGQsIEpvbiAoMjAxOS0wNy0yNiAwMDoyMTo0NykNCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+ID4gPiBGcm9tOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4NCj4gPiA+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDI1LCAyMDE5IDQ6MTcgUE0NCj4gPiA+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBDYzogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+OyBKb29uYXMgTGFodGluZW4NCj4gPiA+IDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPjsgVXJzdWxpbiwgVHZydGtvDQo+IDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Ow0KPiA+ID4gQmxvb21maWVsZCwgSm9uIDxqb24uYmxvb21maWVs
ZEBpbnRlbC5jb20+DQo+ID4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1OiBSZXBsYWNlIGhh
bmdjaGVjayBieSBoZWFydGJlYXRzDQo+ID4gPg0KPiA+ID4gUmVwbGFjZSBzYW1wbGluZyB0aGUg
ZW5naW5lIHN0YXRlIGV2ZXJ5IHNvIG9mdGVuIHdpdGggYSBwZXJpb2RpYw0KPiA+ID4gaGVhcnRi
ZWF0IHJlcXVlc3QgdG8gbWVhc3VyZSB0aGUgaGVhbHRoIG9mIGFuIGVuZ2luZS4gVGhpcyBpcyBj
b3VwbGVkDQo+ID4gPiB3aXRoIHRoZSBmb3JjZWQtcHJlZW1wdGlvbiB0byBhbGxvdyBsb25nIHJ1
bm5pbmcgcmVxdWVzdHMgdG8gc3Vydml2ZSBzbw0KPiA+ID4gbG9uZyBhcyB0aGV5IGRvIG5vdCBi
bG9jayBvdGhlciB1c2Vycy4NCj4gPg0KPiA+IENhbiB5b3UgZXhwbGFpbiB3aHkgd2Ugd291bGQg
bmVlZCB0aGlzIGF0IGFsbCBpZiB3ZSBoYXZlIGZvcmNlZC1wcmVlbXB0aW9uPw0KPiA+IEZvcmNl
ZCBwcmVlbXB0aW9uIGd1YXJhbnRlZXMgdGhhdCBhbiBlbmdpbmUgY2Fubm90IGludGVyZmVyZSB3
aXRoIHRoZQ0KPiB0aW1lbHkNCj4gPiBleGVjdXRpb24gb2Ygb3RoZXIgY29udGV4dHMuIElmIGl0
IGhhbmdzLCBidXQgbm90aGluZyBlbHNlIHdhbnRzIHRvIHVzZSB0aGUNCj4gZW5naW5lDQo+ID4g
dGhlbiBkbyB3ZSBjYXJlPw0KPiANCj4gV2UgbWF5IG5vdCBoYXZlIHNvbWV0aGluZyBlbHNlIHdh
aXRpbmcgdG8gdXNlIHRoZSBlbmdpbmUsIGJ1dCB3ZSBtYXkNCj4gaGF2ZSB1c2VycyB3YWl0aW5n
IGZvciB0aGUgcmVzcG9uc2Ugd2hlcmUgd2UgbmVlZCB0byBkZXRlY3QgdGhlIEdQVSBoYW5nDQo+
IHRvIHByZXZlbnQgYW4gaW5maW5pdGUgd2FpdCAvIHN0dWNrIHByb2Nlc3NlcyBhbmQgaW5maW5p
dGUgcG93ZXIgZHJhaW4uDQoNCkknbSBub3Qgc3VyZSBJIGJ1eSB0aGF0IGxvZ2ljLiBCZWluZyBh
YmxlIHRvIHByZS1lbXB0IGRvZXNuJ3QgaW1wbHkgaXQgd2lsbA0KZXZlciBlbmQuIEFzIHdyaXR0
ZW4gYSBjb250ZXh0IGNhbiBzaXQgZm9yZXZlciwgYXBwYXJlbnRseSBtYWtpbmcgcHJvZ3Jlc3MN
CmJ1dCBuZXZlciBhY3R1YWxseSByZXR1cm5pbmcgYSByZXNwb25zZSB0byB0aGUgdXNlci4gSWYg
dGhlIHVzZXIgaXNuJ3QgaGFwcHkNCndpdGggdGhlIHByb2dyZXNzIHRoZXkgd2lsbCBraWxsIHRo
ZSBwcm9jZXNzLiBTbyB3ZSBoYXZlbid0IHNvbHZlZCB0aGUNCnVzZXIgcmVzcG9uc2l2ZW5lc3Mg
aGVyZS4gQWxsIHdlJ3ZlIGRvbmUgaXMgZWxpbWluYXRlZCB0aGUgcG90ZW50aWFsIHRvDQpydW4g
b25lIGNsYXNzIG9mIG90aGVyd2lzZSB2YWxpZCB3b3JrbG9hZC4NCg0KU2FtZSBhcmd1bWVudCBn
b2VzIGZvciBwb3dlci4gSnVzdCBiZWNhdXNlIGl0IHlpZWxkcyB3aGVuIG90aGVyIGNvbnRleHRz
DQp3YW50IHRvIHJ1biBkb2Vzbid0IG1lYW4gaXQgd29uJ3QgY29uc3VtZSBsb3RzIG9mIHBvd2Vy
IGluZGVmaW5pdGVseS4gSSBjYW4NCmVxdWFsbHkgd3JpdGUgYSBDUFUgcHJvZ3JhbSB0byBidXJu
IGxvdHMgb2YgcG93ZXIsIGZvcmV2ZXIsIGFuZCBpdCB3b24ndCBnZXQNCm51a2VkLg0KDQpURFIg
bWFkZSBzZW5zZSB3aGVuIGl0IHdhcyB0aGUgb25seSB3YXkgdG8gZW5zdXJlIGNvbnRleHRzIGNv
dWxkIGFsd2F5cw0KbWFrZSBmb3J3YXJkIHByb2dyZXNzLiBCdXQgZm9yY2UtcHJlZW1wdGlvbiBk
b2VzIGV2ZXJ5dGhpbmcgd2UgbmVlZCB0bw0KZW5zdXJlIHRoYXQgYXMgZmFyIGFzIEkgY2FuIHRl
bGwuDQoNCj4gDQo+IFRoZXJlIGlzIGFsc28gdGhlIHNlY29uZGFyeSB0YXNrIG9mIGZsdXNoaW5n
IGlkbGUgYmFycmllcnMuDQo+IA0KPiA+IFBvd2VyLCBvYnZpb3VzbHkuIEJ1dCBJJ20gbm90IGV2
ZXJ5dGhpbmcgY2FuIGJlIHByZS1lbXB0ZWQuIElmIGEgY29tcHV0ZQ0KPiA+IGNvbnRleHQgaXMg
cnVubmluZyBvbiBhbiBlbmdpbmUsIGFuZCBubyBvdGhlciBjb250ZXh0cyByZXF1aXJlIHRoYXQg
ZW5naW5lLA0KPiA+IHRoZW4gaXMgaXQgIHJpZ2h0IHRvIG51a2UgaXQganVzdCBiZWNhdXNlIGl0
J3MgYnVzeSBpbiBhIGxvbmcgcnVubmluZyB0aHJlYWQ/DQo+IA0KPiBZZXMuIFVubGVzcyB5b3Ug
YXNrIHRoYXQgd2UgaW1wbGVtZW50IEdQVS1pc29sYXRpb24gd2hlcmUgbm90IGV2ZW4gdGhlDQo+
IGtlcm5lbCBpcyBhbGxvd2VkIHRvIHVzZSBhIHBhcnRpY3VsYXIgc2V0IG9mIGVuZ2luZXMuDQo+
IC1DaHJpcw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
