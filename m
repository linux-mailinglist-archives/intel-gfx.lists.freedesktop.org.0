Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C2D576EA6
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:36:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 636CF10EB43;
	Sat, 16 Jul 2022 14:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839A410E06A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 14:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657895909; x=1689431909;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=OWW9Rkfc/B5tcg2dbdRjPkZm0q9gxcYXmK9hysgLlAg=;
 b=WHfnG7Sbpt//RLpC8jKY2mxMMvXpgef4/jgJ3N1GZ+9MmHoYjSzNf9XE
 5QyiGbkUBsh+c46IXV6pXdvoKgvJ/1Z54cWFkokVuR5tvzaWs2dJUJsHg
 zSk8GVU8Ou76Itgic/ycW/VFm4pLjF4zae17AI+F/8vqoxWH0A+kG0X1X
 U9ABMImvFZnn7MBnHCgEBa7+V03G6t9sq3FOmux7xx4KA2FD6xFPfSTOR
 FSnAT5QznSTAUB/slw+1g+ERi9uxjyQeBSuf1otXduOs7KUWDJRjYdGw8
 TQ89iX2S6AAA/J7BpFfyJNY0Lwm1GW/rDSJpSxTeqds+hI61bzNsj+sKv Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="265584703"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="265584703"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 06:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="623860583"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 15 Jul 2022 06:35:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 06:35:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 06:35:15 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 15 Jul 2022 06:35:15 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/psr: Disable PSR before disable pipe
Thread-Index: AQHYl5OH5b9tVPtv6EWR6pJQ2Rc3qK1/XxaAgAAzzICAAFK6AA==
Date: Fri, 15 Jul 2022 13:35:15 +0000
Message-ID: <21236956017a23c47350f7da0c175d5baa01b57a.camel@intel.com>
References: <20220714150755.154985-1-jose.souza@intel.com>
 <20220714150755.154985-2-jose.souza@intel.com>
 <dd78907477a8c19da80cbb1442c0688eb915a004.camel@intel.com>
 <YtEnq9fpkVAEohbQ@intel.com>
In-Reply-To: <YtEnq9fpkVAEohbQ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <606C7995DDF9DD4AA6CC507DFCCDDD26@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/psr: Disable PSR before
 disable pipe
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA3LTE1IGF0IDExOjM5ICswMzAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gRnJpLCBKdWwgMTUsIDIwMjIgYXQgMDg6MzM6NDNBTSArMDMwMCwgSG9nYW5k
ZXIsIEpvdW5pIHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMi0wNy0xNCBhdCAwODowNyAtMDcwMCwg
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+IFRoZSBpc3N1ZSBoZXJlIHdhcyBv
biBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2tfd2l0aF9wc3IoKSBvdmVyIHRoZQ0KPiA+ID4g
bmV3X2NydGNfc3RhdGUgZW5jb2RlciBtYXNrLCBzbyBpZiB0aGUgQ1JUQyB3YXMgYmVpbmcgZGlz
YWJsZWQgbWFzaw0KPiA+ID4gd291bGQgYmUgemVybyBhbmQgaXQgd291bGQgbm90IGhhdmUgYW55
IGNoYW5jZSB0byBkaXNhYmxlIFBTUi4NCj4gPiA+IA0KPiA+ID4gU28gaGVyZSBkb2luZyBmb3Jf
ZWFjaF9pbnRlbF9lbmNvZGVyX21hc2tfd2l0aF9wc3IoKSBvdmVyIHRoZQ0KPiA+ID4gb2xkX2Ny
dGNfc3RhdGUgZW5jb2RlciBtYXNrIGFuZCB0aGVuIHVzaW5nIHRoZSBuZXdfY3J0Y19zdGF0ZSB0
bw0KPiA+ID4gY2hlY2sgaWYgUFNSIG5lZWRzIHRvIGJlIGRpc2FibGVkLg0KPiANCj4gQXJlIHdl
IHN1cmUgdGhhdCB1c2luZyBvbGRfY3J0Y19zdGF0ZSBtYXNrIGlzIHNhZmUgaGVyZT8NCj4gQmVj
YXVzZSBjdXJyZW50bHkgd2Ugd291bGQgYmUgYmFzaWNhbGx5IG1peGluZyBhIHVzYWdlIG9mIA0K
PiBlbmNvZGVyIGZyb20gb2xkX2NydGNfc3RhdGUgbWFzayB3aXRoIG5ld19jcnRjX3N0YXRlLg0K
PiANCj4gSWYgeW91IG1lbnRpb24gYSBzcGVjaWZpYyBzY2VuYXJpbywgd2hlbiB0aGlzIGhhcHBl
bnMoaS5lIGNydGMNCj4gaXMgYmVpbmcgZGlzYWJsZWQgYW5kIG5ldyBtYXNrIGlzIDApIHNob3Vs
ZCB3ZSBhZGQgYSBzcGVjaWZpYyBjaGVjayANCj4gaW5zdHJ1Y3RpbmcgdXMgdG8gdXNlIG9sZF9j
cnRjX3N0YXRlIG1hc2sgb25seT8NCj4gDQoNClRoaXMgc2NlbmFyaW8gd2VyZSBuZXdfY3J0Y19z
dGF0ZSBpcyBiZWluZyBkaXNhYmxlZChpZSBlbmNvZGVyX21hc2sgPSAwKSBpcyBoYW5kbGVkIGJ5
IGludGVsX2NydGNfbmVlZHNfbW9kZXNldCgpIGNoZWNrLg0KVGhpcyBzYW1lIGNoZWNrIHdpbGwg
aGFuZGxlIG1vcmUgY29tcGxpY2F0ZWQgY2FzZXMgbGlrZSBwaXBlIEEod2l0aCBQU1IpIG5vdyB3
aWxsIGRyaXZlIGEgZGlmZmVyZW50IHBvcnQuLi4NCg0KPiBCZWNhdXNlIGN1cnJlbnRseSB5b3Ug
bWlnaHQgYmUgdG91Y2hpbmcgc29tZSBvdGhlciBzY2VuYXJpb3MgYXMNCj4gd2VsbCwgdGhhdCBp
cyB3aGF0IEknbSBjb25jZXJuZWQgYWJvdXQuDQo+IA0KPiANCj4gU3Rhbg0KPiANCj4gPiA+IA0K
PiA+ID4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+
ID4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29t
Pg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jIHwgMTQgKysrKysrKystLS0tLS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBpbmRleCBlNmE4
NzA2NDFjZDI1Li45OGMzYzgwMTVhNWM0IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gQEAgLTE4NjMsNyArMTg2Myw5IEBAIHZv
aWQgaW50ZWxfcHNyX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0DQo+ID4gPiBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLA0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IGludGVsX2NydGMgKmNydGMpDQo+ID4gPiAgew0KPiA+ID4gICAgICAgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7DQo+ID4gPiAtICAgICBj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ID4gPiArICAgICBj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiA+ID4gKyAg
ICAgICAgICAgICBpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsN
Cj4gPiA+ICsgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0
ZSA9DQo+ID4gPiAgICAgICAgICAgICAgIGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUo
c3RhdGUsIGNydGMpOw0KPiA+ID4gICAgICAgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7
DQo+ID4gPiANCj4gPiA+IEBAIC0xODcxLDcgKzE4NzMsNyBAQCB2b2lkIGludGVsX3Bzcl9wcmVf
cGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
PiA+ICAgICAgICAgICAgICAgcmV0dXJuOw0KPiA+ID4gDQo+ID4gPiAgICAgICBmb3JfZWFjaF9p
bnRlbF9lbmNvZGVyX21hc2tfd2l0aF9wc3Ioc3RhdGUtPmJhc2UuZGV2LCBlbmNvZGVyLA0KPiA+
ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNydGNfc3RhdGUt
DQo+ID4gPiA+IHVhcGkuZW5jb2Rlcl9tYXNrKSB7DQo+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgb2xkX2NydGNfc3RhdGUtDQo+ID4gPiA+IHVhcGkuZW5j
b2Rlcl9tYXNrKSB7DQo+ID4gDQo+ID4gSSB3b3VsZCBhZGQgY29tbWVudCBoZXJlIGV4cGxhaW5p
bmcgd2h5IHVzaW5nIGVuY29kZXIgbWFzayBmcm9tDQo+ID4gb2xkX2NydGNfc3RhdGUsIGJ1dCB1
c2luZyBuZXdfY3J0Y19zdGF0ZSBpbnNpZGUgdGhlIGxvb3AuIEl0J3MgdXAgdG8NCj4gPiB5b3U6
DQo+ID4gDQo+ID4gUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiA+IA0KPiA+ID4gICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiA+ID4gICAgICAgICAgICAgICBz
dHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gPiA+ICAgICAgICAgICAg
ICAgYm9vbCBuZWVkc190b19kaXNhYmxlID0gZmFsc2U7DQo+ID4gPiBAQCAtMTg4NCwxMCArMTg4
NiwxMCBAQCB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+ID4gaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+ICAgICAgICAgICAgICAgICogLSBBbGwgcGxh
bmVzIHdpbGwgZ28gaW5hY3RpdmUNCj4gPiA+ICAgICAgICAgICAgICAgICogLSBDaGFuZ2luZyBi
ZXR3ZWVuIFBTUiB2ZXJzaW9ucw0KPiA+ID4gICAgICAgICAgICAgICAgKi8NCj4gPiA+IC0gICAg
ICAgICAgICAgbmVlZHNfdG9fZGlzYWJsZSB8PQ0KPiA+ID4gaW50ZWxfY3J0Y19uZWVkc19tb2Rl
c2V0KGNydGNfc3RhdGUpOw0KPiA+ID4gLSAgICAgICAgICAgICBuZWVkc190b19kaXNhYmxlIHw9
ICFjcnRjX3N0YXRlLT5oYXNfcHNyOw0KPiA+ID4gLSAgICAgICAgICAgICBuZWVkc190b19kaXNh
YmxlIHw9ICFjcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzOw0KPiA+ID4gLSAgICAgICAgICAgICBu
ZWVkc190b19kaXNhYmxlIHw9IGNydGNfc3RhdGUtPmhhc19wc3IyICE9IHBzci0NCj4gPiA+ID4g
cHNyMl9lbmFibGVkOw0KPiA+ID4gKyAgICAgICAgICAgICBuZWVkc190b19kaXNhYmxlIHw9DQo+
ID4gPiBpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpOw0KPiA+ID4gKyAg
ICAgICAgICAgICBuZWVkc190b19kaXNhYmxlIHw9ICFuZXdfY3J0Y19zdGF0ZS0+aGFzX3BzcjsN
Cj4gPiA+ICsgICAgICAgICAgICAgbmVlZHNfdG9fZGlzYWJsZSB8PSAhbmV3X2NydGNfc3RhdGUt
PmFjdGl2ZV9wbGFuZXM7DQo+ID4gPiArICAgICAgICAgICAgIG5lZWRzX3RvX2Rpc2FibGUgfD0g
bmV3X2NydGNfc3RhdGUtPmhhc19wc3IyICE9IHBzci0NCj4gPiA+ID4gcHNyMl9lbmFibGVkOw0K
PiA+ID4gDQo+ID4gPiAgICAgICAgICAgICAgIGlmIChwc3ItPmVuYWJsZWQgJiYgbmVlZHNfdG9f
ZGlzYWJsZSkNCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF9wc3JfZGlzYWJsZV9s
b2NrZWQoaW50ZWxfZHApOw0KPiA+IA0KDQo=
