Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE425138C8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 17:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F17610E061;
	Thu, 28 Apr 2022 15:42:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB2A10E061
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651160542; x=1682696542;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8s5ahHOfezz/SkL2L76fq8b5OPi8gxN6MKW1/l80XfQ=;
 b=Qfs5ykM79+9d0v/6U+R7LU+xziKQkJPpkf9wa+uaXm5R0eryZGaG1jyl
 hlWTpkTPUdhKLx42K5A9zsz9XA57cAGKTL9lLgwu6MkRArvqj15fPc8T/
 3KZEs03gph6Ssb6UcCeJyynryyueW7r9xiTMX6wSACoO9fmVEqZHIAvOv
 d0DeVZ0WjStJW8FF7V88Mt0ktm3QzAwvu9dd2qFGG5gQegOHfCtfIyiDb
 BxZudMToBsdYQpsrBum3qP0WG99NrUtIK2O8Q1xx3RP696o19OaTwEkRz
 ZHSDExNiNQVVwXzIXJDNH1IbJuH0qNljmxV9BdFk98HrDqUYNXKljgoBG A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="291490579"
X-IronPort-AV: E=Sophos;i="5.91,295,1647327600"; d="scan'208";a="291490579"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 08:42:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,295,1647327600"; d="scan'208";a="596848803"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 28 Apr 2022 08:42:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 28 Apr 2022 08:42:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 28 Apr 2022 08:42:21 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Thu, 28 Apr 2022 08:42:21 -0700
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZ3Q6IEZpeCBt?=
 =?utf-8?Q?emory_leaks_in_per-gt_sysfs?=
Thread-Index: AQHYWpjFCn2bDNsZY0Gr2D9b3rYTc60Fd0Rw
Date: Thu, 28 Apr 2022 15:42:20 +0000
Message-ID: <c26a812367e848a9841208152dbdf780@intel.com>
References: <20220427203833.44449-1-ashutosh.dixit@intel.com>
 <165109954025.24233.6561497429586032743@emeril.freedesktop.org>
 <87a6c6599l.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87a6c6599l.wl-ashutosh.dixit@intel.com>
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
 =?utf-8?q?/i915/gt=3A_Fix_memory_leaks_in_per-gt_sysfs?=
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

QWRkcmVzc2VkIHRoZSBmYWlsdXJlIGFuZCByZS1yZXBvcnRlZC4NClJlLW9wZW5lZCB0aGUgaXNz
dWUgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy81MTk2
DQppZ3RAc3luY29ial90aW1lbGluZUB3YWl0LWFsbC1mb3Itc3VibWl0LXNuYXBzaG90IC0gZmFp
bCAtIEZhaWxlZCBhc3NlcnRpb246IF9fc3luY29ial90aW1lbGluZV93YWl0X2lvY3RsKHdhaXQt
PmZkLCAmd2FpdC0+d2FpdCkgPT0gMCwgZXJyb3I6IC02MiAhPSAwDQoNCkZpbGVkIGEgbmV3IGlz
c3VlDQpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzU4
NjQNCmlndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmQtaW50ZXJydXB0aWJsZUBhLWVkcDEgLSBp
bmNvbXBsZXRlIC0gUE06IHN1c3BlbmQgZW50cnkgKGRlZXApDQoNClRoYW5rcywNCkxha3NobWku
DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBEaXhpdCwgQXNodXRvc2ggPGFz
aHV0b3NoLmRpeGl0QGludGVsLmNvbT4gDQpTZW50OiBXZWRuZXNkYXksIEFwcmlsIDI3LCAyMDIy
IDU6NDIgUE0NClRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBWdWR1bSwgTGFr
c2htaW5hcmF5YW5hIDxsYWtzaG1pbmFyYXlhbmEudnVkdW1AaW50ZWwuY29tPg0KU3ViamVjdDog
UmU6IOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIGRybS9pOTE1L2d0OiBGaXggbWVtb3J5IGxl
YWtzIGluIHBlci1ndCBzeXNmcw0KDQpPbiBXZWQsIDI3IEFwciAyMDIyIDE1OjQ1OjQwIC0wNzAw
LCBQYXRjaHdvcmsgd3JvdGU6DQo+DQo+IFBvc3NpYmxlIHJlZ3Jlc3Npb25zDQo+DQo+ICogaWd0
QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZC1pbnRlcnJ1cHRpYmxlQGEtZWRwMToNCj4NCj4gICog
c2hhcmQtc2tsOiBQQVNTIC0+IElOQ09NUExFVEUNCj4NCj4gKiBpZ3RAc3luY29ial90aW1lbGlu
ZUB3YWl0LWFsbC1mb3Itc3VibWl0LXNuYXBzaG90Og0KPg0KPiAgKiBzaGFyZC1za2w6IFBBU1Mg
LT4gRkFJTA0KPg0KPiBXYXJuaW5ncw0KPg0KPiAqIGlndEBnZW1fZWlvQHVud2VkZ2Utc3RyZXNz
Og0KPg0KPiAgKiBzaGFyZC10Z2xiOiBGQUlMIChpOTE1IzIzMikgLT4gRkFJTCArMSBzaW1pbGFy
IGlzc3VlDQoNClRoZXNlIGZhaWx1cmVzIGFyZSB1bnJlbGF0ZWQsIHRoZSBwYXRjaCBpcyByZWxh
dGVkIG9ubHkgdG8gcGVyLWd0IHN5c2ZzLg0K
