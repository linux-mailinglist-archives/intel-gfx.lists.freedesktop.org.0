Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 377231AE663
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C1576EA22;
	Fri, 17 Apr 2020 19:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8556EA22
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 19:57:32 +0000 (UTC)
IronPort-SDR: /AE5ECEHbCJ0yElFAxZ00YXB166fJFCwsnx8VYxWB8Gp/e+GpZnsAQYavW3v0t7nF3HBFoULRL
 e9/YCZ6VA2UQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 12:57:31 -0700
IronPort-SDR: KzccM/1HckoFmjfKgPdOJNHqs2UdanMwBuexIbU+LUcZO2BSuVMsPZeGHRgA8Ifjl474IVxpJN
 HhRsdA8odJSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="244797943"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 17 Apr 2020 12:57:31 -0700
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.13]) by
 fmsmsx107.amr.corp.intel.com ([169.254.6.218]) with mapi id 14.03.0439.000;
 Fri, 17 Apr 2020 12:57:31 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Refactor setting dma info to
 a common helper
Thread-Index: AQHWFPGRyge1SK/EbE+TuBWTLC1dUKh+L6eA//+LJcA=
Date: Fri, 17 Apr 2020 19:57:30 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E866301021232BF@FMSMSX108.amr.corp.intel.com>
References: <20200417195107.68732-1-michael.j.ruhl@intel.com>
 <158715330999.2062.12066493041843592892@build.alporthouse.com>
In-Reply-To: <158715330999.2062.12066493041843592892@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Refactor setting dma info to a
 common helper
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPg0KPlNlbnQ6IEZyaWRheSwgQXByaWwgMTcsIDIwMjAgMzo1
NSBQTQ0KPlRvOiBSdWhsLCBNaWNoYWVsIEogPG1pY2hhZWwuai5ydWhsQGludGVsLmNvbT47IGlu
dGVsLQ0KPmdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj5TdWJqZWN0OiBSZTogW0ludGVsLWdm
eF0gW1BBVENIIHYyXSBkcm0vaTkxNTogUmVmYWN0b3Igc2V0dGluZyBkbWEgaW5mbyB0byBhDQo+
Y29tbW9uIGhlbHBlcg0KPg0KPlF1b3RpbmcgTWljaGFlbCBKLiBSdWhsICgyMDIwLTA0LTE3IDIw
OjUxOjA3KQ0KPj4gRE1BX01BU0sgYml0IHZhbHVlcyBhcmUgZGlmZmVyZW50IGZvciBkaWZmZXJl
bnQgZ2VuZXJhdGlvbnMuDQo+Pg0KPj4gVGhpcyB3aWxsIGJlY29tZSBtb3JlIGRpZmZpY3VsdCB0
byBtYW5hZ2Ugb3ZlciB0aW1lIHdpdGggdGhlIG9wZW4NCj4+IGNvZGVkIHVzYWdlIG9mIGRpZmZl
cmVudCB2ZXJzaW9ucyBvZiB0aGUgZGV2aWNlLg0KPj4NCj4+IEZpeCBieToNCj4+ICAgZGlzYWxs
b3cgc2V0dGluZyBvZiBkbWEgbWFzayBpbiBBR1AgcGF0aCAoPCBHRU4oNSkgZm9yIGk5MTUsDQo+
PiAgIGFkZCBkbWFfbWFza19zaXplIHRvIHRoZSBkZXZpY2UgaW5mbyBjb25maWd1cmF0aW9uLA0K
Pj4gICB1cGRhdGluZyBvcGVuIGNvZGUgY2FsbCBzZXF1ZW5jZSB0byB0aGUgbGF0ZXN0IGludGVy
ZmFjZSwNCj4+ICAgcmVmYWN0b3JpbmcgaW50byBhIGNvbW1vbiBmdW5jdGlvbiBmb3Igc2V0dGlu
ZyB0aGUgZG1hIHNlZ21lbnQNCj4+ICAgYW5kIG1hc2sgaW5mbw0KPj4NCj4+IFJldmlld2VkLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4NCj4+IFNpZ25lZC1vZmYt
Ynk6IE1pY2hhZWwgSi4gUnVobCA8bWljaGFlbC5qLnJ1aGxAaW50ZWwuY29tPg0KPj4gY2M6IEJy
aWFuIFdlbHR5IDxicmlhbi53ZWx0eUBpbnRlbC5jb20+DQo+PiBjYzogRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4NCj4+DQo+PiAtLS0NCj4+
IHYxOiByZW1vdmVkIGk5MTUgZGVwZW5hbmN5IGZyb20gYWdwIHBhdGggZm9yIGRtYSBtYXNrDQo+
PiAgICAgQ29uc29saWRhdGVkIHNlZ21lbnQgc2l6ZSBhbmQgd29yayBhcm91bmRzIHRvIHRoZSBo
ZWxwZXINCj4+IHYyOiBhZGRlZCByLWINCj4NCj5Zb3UgZG9uJ3QgbmVlZCB0byByZXNlbmQgZm9y
IGFkZGluZyByLWIgYnkgaXRzZWxmLCBwYXRjaHdvcmsgd2lsbCBkbw0KPnRoYXQsIGFuZCB0aGUg
Y29tbWl0dGVyIHNob3VsZCBiZSBjaGVja2luZyB0aGUgb3V0cHV0IGZyb20gcHcuIGRpbSB0aGVu
DQo+ZG91YmxlIGNoZWNrcyB0aGF0IHdlIGhhdmVuJ3QgbWlzc2VkIGFueXRoaW5nIHZpdGFsLg0K
DQpDb29sLg0KDQpJIHdpbGwgcmVmcmFpbiBmcm9tIGZ1dHVyZSBzZW5kcy4g8J+Yig0KDQpNDQoN
Cj4tQ2hyaXMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
