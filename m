Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B85D6515A9C
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Apr 2022 07:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF6510EA2A;
	Sat, 30 Apr 2022 05:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF9DA10EA2A
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Apr 2022 05:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651296529; x=1682832529;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xH/fsm+xQYQPHeJBhLL66Ad6Vq2b7OEF399v8AC3Ld0=;
 b=Vkx64dkNMUpYbDgIYrmRqYBJNjdYwNdj3b6JgfFTALxhly9nOOiGFScU
 oJYs9LZrOTBLfxS3voHJI4RAQSMXYsqkalA1DxZqNQBn0LBONdhAedyX9
 n/feVa31PqI6A8KitzyBcZncJJZUj7BBErNdTqkAL1DXLdsGXvGRy+vo7
 0yMwPWs2BvjLtcvSDTrVTdLZIAcGICotE7v4la4FO6nllK3N3cadTCdk5
 DxckJE6v8f3hrPbkujoy+p7BHkNwOCaib6scI26BtxkBgT5kImT++gvtk
 aDe88TwWvVDwRBH974z0MD3dX/CaMg0dQxBJ3gx9LHpgkxqrybiSO8Nh7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="247393419"
X-IronPort-AV: E=Sophos;i="5.91,187,1647327600"; d="scan'208";a="247393419"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 22:28:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,187,1647327600"; d="scan'208";a="582608060"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 29 Apr 2022 22:28:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 29 Apr 2022 22:28:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 29 Apr 2022 22:28:48 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Fri, 29 Apr 2022 22:28:48 -0700
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IE1lZGlhIGZy?=
 =?utf-8?Q?eq_factor_and_per-gt_enhancements/fixes_(rev4)?=
Thread-Index: AQHYXCt9/0Qixzs6QU64tsBa/aJdNK0H2NGQ
Date: Sat, 30 Apr 2022 05:28:48 +0000
Message-ID: <6f7746ad942c4f728a8d70d0b6b8ca33@intel.com>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
 <165127551506.1649.16715165508481422839@emeril.freedesktop.org>
 <87y1zn4cxt.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87y1zn4cxt.wl-ashutosh.dixit@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes_=28rev?=
 =?utf-8?q?4=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmUtcmVwb3J0ZWQgYW5kIGZldyBjb21tZW50cyBiZWxvdy4NCg0KLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCkZyb206IERpeGl0LCBBc2h1dG9zaCA8YXNodXRvc2guZGl4aXRAaW50ZWwuY29t
PiANClNlbnQ6IEZyaWRheSwgQXByaWwgMjksIDIwMjIgNTo0NSBQTQ0KVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJh
eWFuYS52dWR1bUBpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTog4pyXIEZpLkNJLklHVDogZmFpbHVy
ZSBmb3IgZHJtL2k5MTU6IE1lZGlhIGZyZXEgZmFjdG9yIGFuZCBwZXItZ3QgZW5oYW5jZW1lbnRz
L2ZpeGVzIChyZXY0KQ0KDQpPbiBGcmksIDI5IEFwciAyMDIyIDE2OjM4OjM1IC0wNzAwLCBQYXRj
aHdvcmsgd3JvdGU6DQo+DQo+IFBvc3NpYmxlIHJlZ3Jlc3Npb25zDQo+DQo+ICogaWd0QGdlbV9l
aW9AaW4tZmxpZ2h0LXN1c3BlbmQ6DQo+DQo+ICAqIHNoYXJkLXNrbDogUEFTUyAtPiBJTkNPTVBM
RVRFDQoNClRoaXMgZmFpbHVyZSBpbiB1bnJlbGF0ZWQuDQoNCg0KPg0KPiAqIHtpZ3RAaTkxNV9w
bV9kaXNhZ19mcmVxQG1lZGlhLWZyZXFAZ3QwfSAoTkVXKToNCj4NCj4gICogc2hhcmQtaWNsYjog
Tk9UUlVOIC0+IFNLSVANCj4NCj4gICogc2hhcmQtdGdsYjogTk9UUlVOIC0+IFNLSVANCg0KVGhl
c2UgZmFpbHVyZXMgYXJlIGV4cGVjdGVkLCB0aGUgdGVzdCB3aWxsIHNraXAgb24gcGxhdGZvcm1z
IHdoaWNoIGRvIG5vdCBzdXBwb3J0IHRoaXMgZmVhdHVyZS4NCg0KTGFrc2htaTogVGhlc2UgdGVz
dHMgYXJlIG5vdCBpbiB5ZXQgaW4gQ0kgYnVnIGxvZy4gDQoNCj4NCj4gKiBpZ3RAa21zX2RyYXdf
Y3JjQGRyYXctbWV0aG9kLXhyZ2IyMTAxMDEwLW1tYXAtZ3R0LXh0aWxlZDoNCj4NCj4gICogc2hh
cmQta2JsOiBQQVNTIC0+IEZBSUwNCg0KVGhpcyBmYWlsdXJlIGluIHVucmVsYXRlZC4NCkxha3No
bWk6IEZpbGVkIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1
ZXMvNTg3MA0KaWd0QGttc19kcmF3X2NyY0BkcmF3LW1ldGhvZC14cmdiMjEwMTAxMC1tbWFwLWd0
dC14dGlsZWQgLSBmYWlsIC0gRmFpbGVkIGFzc2VydGlvbjogcmMgPT0gMA0KDQo+IE5ldyB0ZXN0
cw0KPg0KPiBOZXcgdGVzdHMgaGF2ZSBiZWVuIGludHJvZHVjZWQgYmV0d2VlbiBDSV9EUk1fMTE1
ODNfZnVsbCBhbmQgUGF0Y2h3b3JrXzEwMjY2NXY0X2Z1bGw6DQo+DQo+IE5ldyBJR1QgdGVzdHMg
KDEpDQo+DQo+ICogaWd0QGk5MTVfcG1fZGlzYWdfZnJlcUBtZWRpYS1mcmVxQGd0MDoNCj4NCj4g
ICogU3RhdHVzZXMgOiA3IHNraXAocykNCj4gICogRXhlYyB0aW1lOiBbMC4wXSBzDQoNClRoZXNl
IHNraXBzIGFyZSB0aGUgc2FtZSBhcyBhYm92ZSBhbmQgZXhwZWN0ZWQuDQoNClRoYW5rcy4NCi0t
DQpBc2h1dG9zaA0K
