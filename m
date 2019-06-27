Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1FD584EA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 16:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10F0A6E03D;
	Thu, 27 Jun 2019 14:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 058A96E038;
 Thu, 27 Jun 2019 14:53:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 07:53:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="183471173"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2019 07:53:17 -0700
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 27 Jun 2019 15:53:16 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.143]) by
 irsmsx155.ger.corp.intel.com ([169.254.14.100]) with mapi id 14.03.0439.000;
 Thu, 27 Jun 2019 15:53:16 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>
Thread-Topic: [PATCH i-g-t v3 1/1] gitlab-ci: add build and tests for MIPS
Thread-Index: AQHVJdNZvjPLhLPY6UmtHSQuGYJGi6asUeCAgAK+MYCAADJbgIAANc8AgAABMQCAABpMgA==
Date: Thu, 27 Jun 2019 14:53:16 +0000
Message-ID: <41bace6d1e9d922492da0fc7822252541ceaac96.camel@intel.com>
References: <20190618124221.62715-1-guillaume.tucker@collabora.com>
 <e166f58e-f7e2-f6a5-d78d-40cf1b6692db@collabora.com>
 <b59592bb3795f5aa6e48bdd6477b8ea0c0db6beb.camel@intel.com>
 <58f2692b-416e-fbdb-646e-b9f0e4fceaf4@collabora.com>
 <b2b545f267d8f9d99909f055b9979908100aff6c.camel@intel.com>
 <20190627131916.fpakdc3wzybfpwew@ahiler-desk1.fi.intel.com>
In-Reply-To: <20190627131916.fpakdc3wzybfpwew@ahiler-desk1.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <8B25B5F616C2D74CA2C1173648583B7E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 1/1] gitlab-ci: add build and tests
 for MIPS
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA2LTI3IGF0IDE2OjE5ICswMzAwLCBBcmthZGl1c3ogSGlsZXIgd3JvdGU6
DQo+IE9uIFRodSwgSnVuIDI3LCAyMDE5IGF0IDA0OjE0OjUzUE0gKzAzMDAsIFNlciwgU2ltb24g
d3JvdGU6DQo+ID4gT24gVGh1LCAyMDE5LTA2LTI3IGF0IDExOjAyICswMTAwLCBHdWlsbGF1bWUg
VHVja2VyIHdyb3RlOg0KPiA+ID4gT24gMjcvMDYvMjAxOSAwODowMiwgU2VyLCBTaW1vbiB3cm90
ZToNCj4gPiA+ID4gT24gVHVlLCAyMDE5LTA2LTI1IGF0IDE0OjA4ICswMTAwLCBHdWlsbGF1bWUg
VHVja2VyIHdyb3RlOg0KPiA+ID4gPiA+IE9uIDE4LzA2LzIwMTkgMTM6NDIsIEd1aWxsYXVtZSBU
dWNrZXIgd3JvdGU6DQo+ID4gPiA+ID4gPiBBZGQgRG9ja2VyIGltYWdlIGFuZCBHaXRsYWIgQ0kg
c3RlcHMgdG8gcnVuIGJ1aWxkcyBhbmQgdGVzdHMgZm9yDQo+ID4gPiA+ID4gPiB0aGUNCj4gPiA+
ID4gPiA+IE1JUFMgYXJjaGl0ZWN0dXJlIHVzaW5nIERlYmlhbiBTdHJldGNoIHdpdGggYmFja3Bv
cnRzLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUg
VHVja2VyIDxndWlsbGF1bWUudHVja2VyQGNvbGxhYm9yYS5jb20+DQo+ID4gPiA+ID4gPiAtLS0N
Cj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gTm90ZXM6DQo+ID4gPiA+ID4gPiAgICAgdjI6IHVz
ZSBzdHJldGNoLWJhY2twb3J0cyBhbmQgcmVxdWlyZSBsaWJhdG9taWMxDQo+ID4gPiA+ID4gPiAg
ICAgdjM6IGFkZCBtaXBzIGNpIHRlc3RzIGFuZCByZXF1aXJlIERlYmlhbiBsaWJhdG9taWMxIGZv
ciBtaXBzDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gVGhlIHNlcmllcyB0byB1c2UgcG9ydGFibGUg
YXRvbWljcyBmdW5jdGlvbnMgd2FzIG1lcmdlZCB0b2RheSwgc28NCj4gPiA+ID4gPiBJIHRoaW5r
IHRoaXMgb25lIHNob3VsZCBub3cgYmUgZ29vZCB0byBnbyBhcyB3ZWxsLiAgSXQgYXBwbGllcw0K
PiA+ID4gPiA+IGNsZWFubHkgb24gdG9wIG9mIHRoZSBjdXJyZW50IG1hc3RlciBicmFuY2ggYW5k
IHRoZSBHaXRsYWIgQ0kNCj4gPiA+ID4gPiBwaXBlbGluZSBwYXNzZWQ6DQo+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gICANCj4gPiA+ID4gPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ3R1
Y2tlci9pZ3QtZ3B1LXRvb2xzL3BpcGVsaW5lcy80NDcwNA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+
IFBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3Ugd2FudCBtZSB0byByZXN1Ym1pdCBpdCB0byBnZXQg
YW5vdGhlcg0KPiA+ID4gPiA+IFBhdGNod29yayBDSSBydW4gb3IgaWYgYW55dGhpbmcgZWxzZSBu
ZWVkcyB0byBiZSBkb25lLg0KPiA+ID4gPiANCj4gPiA+ID4gTEdUTSENCj4gPiA+ID4gDQo+ID4g
PiA+IFJldmlld2VkLWJ5OiBTaW1vbiBTZXIgPHNpbW9uLnNlckBpbnRlbC5jb20+DQo+ID4gPiA+
IA0KPiA+ID4gPiBBbmQgcHVzaGVkOg0KPiA+ID4gPiANCj4gPiA+ID4gVG8gZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZzpkcm0vaWd0LWdwdS10b29scy5naXQNCj4gPiA+ID4gICAgMTVhZDY2NDUzNDQx
Li40MzlhOWY1ZDYxNWYgIG1hc3RlciAtPiBtYXN0ZXINCj4gPiA+IA0KPiA+ID4gVGhhbmtzIQ0K
PiA+ID4gDQo+ID4gPiBFcnIsIGhvd2V2ZXIgaXQgbG9va3MgbGlrZSB5b3UgcHVzaGVkIHRoZSB2
MiB3aGljaCBoYWQgb25seQ0KPiA+ID4gYnVpbGRzIHJhdGhlciB0aGFuIHRoaXMgdjMgd2hpY2gg
ZG9lcyBidWlsZHMgYW5kIHRlc3RzOg0KPiA+ID4gDQo+ID4gPiAgIDQzOWE5ZjVkNjE1ZiBnaXRs
YWItY2k6IGFkZCBidWlsZCBmb3IgTUlQUw0KPiA+ID4gDQo+ID4gPiBJJ3ZlIG1hZGUgYW5vdGhl
ciBwYXRjaCB3aXRoIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gdjIgYW5kIHYzIGFuZA0KPiA+ID4g
cHVzaGVkIGl0IHRvIG15IGJyYW5jaDoNCj4gPiA+IA0KPiA+ID4gICBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZ3R1Y2tlci9pZ3QtZ3B1LXRvb2xzL2NvbW1pdC85NjkzZTI4ODcxZjI3
ZWZiNzM0MGFkMjlkNTRkZTRiZTdiNTQ2MWE5DQo+ID4gPiANCj4gPiA+IEknbGwgd2FpdCBmb3Ig
dGhlIEdpdGxhYiBDSSBwaXBlbGluZSB0byBjb21wbGV0ZSBhbmQgdGhlbiBJIGd1ZXNzDQo+ID4g
PiBJIHNob3VsZCBzZW5kIHRoYXQgdG8gdGhlIG1haWxpbmcgbGlzdC4NCj4gPiANCj4gPiBCbGVo
LCBJJ20gc29ycnkgYWJvdXQgdGhpcyEgSXQgc2VlbXMgbGlrZSBwYXRjaHdvcmsgZ290IGNvbmZ1
c2VkLg0KPiA+IA0KPiA+IEknbGwgZ2xhZGx5IHJldmlldyBhbmQgbWVyZ2UgYSBmaXgsIGZlZWwg
ZnJlZSB0byBDYyBtZSA6KQ0KPiANCj4gVGhlIHRpdGxlIG9mIHRoZSBmaXJzdCBwYXRjaCBoYXMg
Y2hhbmdlZCwgc28gcGF0Y2h3b3JrIHRyZWF0cyBpdCBhcyBhDQo+IHNlcGFyYXRlIHNlcmllcyBp
bnN0ZWFkIG9mIGEgcmV2aXNpb24gdG8gZXhpc3Rpbmcgb25lLg0KPiANCj4gSXQncyBzYWZlciB0
byB0YWtlIHRoZSBwYXRjaHdvcmsgbGlua3MgKGJvdGggdG8gc2VyaWVzIGFuZCB0aGUgbWJveCkN
Cj4gZnJvbSB0aGUgQ0kgcmVzdWx0cyBpbnN0ZWFkIG9mIHRyeWluZyB0byBicm93c2UgZm9yIHRo
ZW0geW91cnNlbGYuDQoNClllYWgsIHRoaXMgbWFrZXMgc2Vuc2UuIFRoYW5rcyBmb3IgdGhlIGlu
Zm8hDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
