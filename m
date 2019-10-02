Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDBBC8B74
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 16:40:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B9296E063;
	Wed,  2 Oct 2019 14:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF5406E063
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 14:40:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:40:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="185568902"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga008.jf.intel.com with ESMTP; 02 Oct 2019 07:40:40 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 2 Oct 2019 07:40:40 -0700
Received: from fmsmsx119.amr.corp.intel.com ([169.254.14.227]) by
 FMSMSX151.amr.corp.intel.com ([169.254.7.148]) with mapi id 14.03.0439.000;
 Wed, 2 Oct 2019 07:40:34 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 20/30] drm/i915: Cancel non-persistent contexts on close
Thread-Index: AQHVeRNiCwoja/k7gkm70/7dZOHK+adHW++AgACBQwD//4zU0A==
Date: Wed, 2 Oct 2019 14:40:33 +0000
Deferred-Delivery: Wed, 2 Oct 2019 14:39:53 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68CE4E173@FMSMSX119.amr.corp.intel.com>
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
 <20191002112000.12280-20-chris@chris-wilson.co.uk>
 <AD48BB7FB99B174FBCC69E228F58B3B68CE4E083@FMSMSX119.amr.corp.intel.com>
 <157002622680.1880.4071563479110739610@skylake-alporthouse-com>
In-Reply-To: <157002622680.1880.4071563479110739610@skylake-alporthouse-com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNThlYTcwMzMtYTdhMi00ZDNiLTllYmEtMzk0NDExYzA3OGQxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSU4yRmVMVDUxK1NMT2I3aGU5czJpbTBGMG5wMHRZV25VOXMwbzllSG9ycjZlbHkrQVlMOUxMQ3NQWEVJVGxjVyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 20/30] drm/i915: Cancel non-persistent
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
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDIsIDIwMTkg
NzoyNCBBTQ0KPiBUbzogQmxvb21maWVsZCwgSm9uIDxqb24uYmxvb21maWVsZEBpbnRlbC5jb20+
OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPjsgV2luaWFyc2tpLCBNaWNoYWwN
Cj4gPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSRTogW1BBVENIIDIw
LzMwXSBkcm0vaTkxNTogQ2FuY2VsIG5vbi1wZXJzaXN0ZW50IGNvbnRleHRzIG9uIGNsb3NlDQo+
IA0KPiBRdW90aW5nIEJsb29tZmllbGQsIEpvbiAoMjAxOS0xMC0wMiAxNDo1MjozMikNCj4gPg0K
PiA+DQo+ID4NCj4gPiBIbW1uLiBHaXZlbiB0aGF0IGRpc2FibGluZyBoYW5nY2hlY2sgaXMgYW4g
ZXhwbGljaXQgb3BlcmF0aW9uLCBhbmQgd2UNCj4gYWxyZWFkeSBjaGFuZ2UgdGhlIGRlZmF1bHQg
c2V0dGluZywgY2FuJ3Qgd2UgbWFrZSBpdCBhIGhhcmQgcmVxdWlyZW1lbnQgdGhhdA0KPiBwZXJz
aXN0ZW5jZSByZXF1aXJlcyBoYW5nY2hlY2s/IFlvdSBzaG91bGQgbm90IHJlYWxseSBiZSBhYmxl
IHRvIG9wdCBiYWNrIGluIHRvDQo+IHBlcnNpc3RlbmNlIGlmIGhhbmdjaGVjayBpcyBkaXNhYmxl
ZC4gSW4gZmFjdCB5b3UgY291bGQganVzdCB0ZXN0IGZvciBoYW5nY2hlY2sNCj4gd2hlbiBkZWNp
ZGluZyB3aGV0aGVyIHRvIGtpbGwgdGhlIGNvbnRleHQsIGFuZCBmb3JjZS1raWxsIGlmIGl0IGlz
IG9mZiAtIHRoYXQgd2F5IGlmDQo+IGhhbmdjaGVjayBpcyBkaXNhYmxlZCBhZnRlciBhIGNvbnRl
eHQgc3RhcnRzIGl0IHdpbGwgZ2V0IGNsZWFuZWQgdXAuDQo+IA0KPiBKdXN0IGdyZWF0LCBub3cg
SSBnb3QgdG8gdXBkYXRlIHRoZSBpZ3QgdG8gdHJlYXQgaTkxNS5lbmFibGVfaGFuZ2NoZWNrDQo+
IGFzIEFQSSENCj4gLUNocmlzDQpEb24ndCBibGFtZSBtZSA7LSkNCkknbSBpbiBkYW1hZ2UgbGlt
aXRhdGlvbiBtb2RlLiBJJ2QgcHJlZmVyIHdlIGRpZG4ndCBoYXZlIHBlcnNpc3RlbmNlIGF0IGFs
bC4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
