Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A8F6601F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 21:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0146E284;
	Thu, 11 Jul 2019 19:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 350016E284
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 19:43:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 12:43:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="177268662"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga002.jf.intel.com with ESMTP; 11 Jul 2019 12:43:32 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jul 2019 12:43:31 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.42]) with mapi id 14.03.0439.000;
 Thu, 11 Jul 2019 12:43:31 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>,
 "patchwork@emeril.freedesktop.org" <patchwork@emeril.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKckyBGaS5DSS5CQVQ6IHN1Y2Nlc3MgZm9yIGRybS9p?=
 =?utf-8?Q?915:_Revert_"drm/i915:_Enable_PSR2_by_default"?=
Thread-Index: AQHVN/xiSl4YXiBs90+gQsqlqbpUjabGRzQA
Date: Thu, 11 Jul 2019 19:43:30 +0000
Message-ID: <e26d24f11459e7fdccceab8d3eb520f4f23f95b9.camel@intel.com>
References: <20190711092254.1719-1-chris@chris-wilson.co.uk>
 <20190711151645.9534.81018@emeril.freedesktop.org>
 <156285850603.23185.10364088908014716555@skylake-alporthouse-com>
In-Reply-To: <156285850603.23185.10364088908014716555@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.133]
Content-ID: <5C09A9DF5BDE3D41B5C1D48BD2C16ED8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Revert_=22drm/i915=3A_Enable_PSR2_by_default=22?=
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

T24gVGh1LCAyMDE5LTA3LTExIGF0IDE2OjIxICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFF1b3RpbmcgUGF0Y2h3b3JrICgyMDE5LTA3LTExIDE2OjE2OjQ1KQ0KPiA+ICMjIyMgUG9zc2li
bGUgZml4ZXMgIyMjIw0KPiA+IA0KPiA+ICAgKiBpZ3RAa21zX3BzckBjdXJzb3JfcGxhbmVfbW92
ZToNCj4gPiAgICAgLSBmaS13aGwtdTogICAgICAgICAgIFtGQUlMXVs3XSAoW2ZkbyMxMDczODNd
KSAtPiBbUEFTU11bOF0gKzMNCj4gPiBzaW1pbGFyIGlzc3Vlcw0KPiA+ICAgIFs3XTogDQo+ID4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjQ1OC9maS13
aGwtdS9pZ3RAa21zX3BzckBjdXJzb3JfcGxhbmVfbW92ZS5odG1sDQo+ID4gICAgWzhdOiANCj4g
PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzYy
MC9maS13aGwtdS9pZ3RAa21zX3BzckBjdXJzb3JfcGxhbmVfbW92ZS5odG1sDQo+IA0KPiBUbyBu
byBncmVhdCBzdXJwcmlzZSBhcyB0aGlzIHJlZ3Jlc3NlZCBmcm9tIHRoZSBzYW1lIHBhdGNoIHRv
IGVuYWJsZQ0KPiBwc3IyIGJ5IGRlZmF1bHQuDQoNClRoaXMgaXMgYSBmbGlwcGluZyByZXN1bHQg
YXMgY3Vyc29yX3BsYW5lX21vdmUgd2lsbCBhbHdheXMgdGVzdCBQU1IxLA0Kd2UgaGF2ZSB0aGUg
c2FtZSB0ZXN0IGZvciBQU1IyOiANCmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzY0NTIvc2hhcmQtaWNsYjIvaWd0QGttc19wc3JAcHNyMl9jdXJzb3JfcGxh
bmVfbW92ZS5odG1sDQoNCj4gLUNocmlzDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
