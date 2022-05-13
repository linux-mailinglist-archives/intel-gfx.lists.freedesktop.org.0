Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61594526800
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 19:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38AC10E0CC;
	Fri, 13 May 2022 17:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE97410E0CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 17:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652462070; x=1683998070;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=T/Nj0ddMR71yiZvPOor15h7v8pff+NPlwyBHHx56Tso=;
 b=XJQpJd1XktLvmx5sNGzU/M8b/dX1Siel3JAcr6ZKpeut41WJxTrjcy7Z
 cEePRDo4Zgwqsm5KTXVUzwVA51/gg6vKAKMjy12iQ0A2OjLetCfcf3F57
 OKODCM/spH0jbhzMhpTYwFFgs/H5xdOdfjWHRi46ZFqhgrPE6bTcBpCdZ
 uNZqTCn2XPKh761/U8BlnTPBbDbD6rytIBsJ+fUz6ses5opOUIcmBN6NB
 oNJV1vXWf6O2Lc/RLTzTEuowWigMMWf64p9nwqmm1Y+ilyBsGQDqHf5Bw
 7cU+mpkN5z8T3t6dWqTGgWo2lw0WqCw759kY7WFepXhiMzgmyYaYVn9hL A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10346"; a="270031893"
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="270031893"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 10:14:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="815474094"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 13 May 2022 10:14:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 13 May 2022 10:14:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 13 May 2022 10:14:24 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Fri, 13 May 2022 10:14:24 -0700
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IE1lZGlhIGZy?=
 =?utf-8?Q?eq_factor_and_per-gt_enhancements/fixes_(rev6)?=
Thread-Index: AQHYZpmtNhjNZPuFI0CL87mTGuPoBK0c9Otg
Date: Fri, 13 May 2022 17:14:24 +0000
Message-ID: <f7a9f21fd5b84dc0a4e4577f6ea906f0@intel.com>
References: <cover.1652405421.git.ashutosh.dixit@intel.com>
 <165242513598.9640.4221417210778400185@emeril.freedesktop.org>
 <87zgjl6gtq.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87zgjl6gtq.wl-ashutosh.dixit@intel.com>
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
 =?utf-8?q?6=29?=
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

SSBoYXZlIHJlb3BlbmVkIHRoZSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lu
dGVsLy0vaXNzdWVzLzQ0NDANCmlndEBwcmltZV9zZWxmX2ltcG9ydEByZWltcG9ydC12cy1nZW1f
Y2xvc2UtcmFjZSAtIGZhaWwgLSBGYWlsZWQgYXNzZXJ0aW9uOiBvYmpfY291bnQgPT0gMCxlcnJv
cjogLTIgIT0gMA0KDQoie2lndEBpOTE1X3BtX2ZyZXFfbXVsdEBtZWRpYS1mcmVxQGd0MCIgaXMg
bm90IHlldCBpbiBDSSBidWcgbG9nLg0KDQpUaGFua3MsDQpMYWtzaG1pLg0KDQotLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogRGl4aXQsIEFzaHV0b3NoIDxhc2h1dG9zaC5kaXhpdEBp
bnRlbC5jb20+IA0KU2VudDogRnJpZGF5LCBNYXkgMTMsIDIwMjIgMTI6MTkgQU0NClRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBWdWR1bSwgTGFrc2htaW5hcmF5YW5hIDxsYWtz
aG1pbmFyYXlhbmEudnVkdW1AaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IOKclyBGaS5DSS5JR1Q6
IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBNZWRpYSBmcmVxIGZhY3RvciBhbmQgcGVyLWd0IGVuaGFu
Y2VtZW50cy9maXhlcyAocmV2NikNCg0KT24gVGh1LCAxMiBNYXkgMjAyMiAyMzo1ODo1NSAtMDcw
MCwgUGF0Y2h3b3JrIHdyb3RlOg0KPg0KPiBQYXRjaCBEZXRhaWxzDQo+DQo+ICBTZXJpZXM6ICBk
cm0vaTkxNTogTWVkaWEgZnJlcSBmYWN0b3IgYW5kIHBlci1ndCBlbmhhbmNlbWVudHMvZml4ZXMg
KHJldjYpDQo+ICBVUkw6ICBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzEwMjY2NS8NCj4gIFN0YXRlOiAgZmFpbHVyZQ0KPiAgRGV0YWlsczogIGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEwMjY2NXY2L2luZGV4Lmh0bWwN
Cj4NCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTE2NDZfZnVsbCAtPiBQYXRj
aHdvcmtfMTAyNjY1djZfZnVsbA0KPg0KPiBGQUlMVVJFDQo+DQo+IFBvc3NpYmxlIHJlZ3Jlc3Np
b25zDQo+DQo+ICoge2lndEBpOTE1X3BtX2ZyZXFfbXVsdEBtZWRpYS1mcmVxQGd0MH0gKE5FVyk6
DQo+DQo+ICAqIHNoYXJkLWljbGI6IE5PVFJVTiAtPiBTS0lQDQoNClRoaXMgc2tpcCBpcyBleHBl
Y3RlZCwgdGhpcyBuZXcgSUdUIHdpbGwgc2tpcCBvbiB1bnN1cHBvcnRlZCBwbGF0Zm9ybXMuDQoN
Cj4NCj4gKiBpZ3RAcHJpbWVfc2VsZl9pbXBvcnRAZXhwb3J0LXZzLWdlbV9jbG9zZS1yYWNlOg0K
Pg0KPiAgKiBzaGFyZC10Z2xiOiBQQVNTIC0+IEZBSUwNCg0KVGhpcyBmYWlsdXJlIGlzIHVucmVs
YXRlZC4gSXQgaXMgc2VlbiBoZXJlIHRvbzoNCg0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy85OTg2Ny8NCg0KVGhhbmtzLg0KLS0NCkFzaHV0b3NoDQo=
