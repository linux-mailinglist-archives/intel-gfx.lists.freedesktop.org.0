Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1054C34D4B9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 18:19:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42CC06E471;
	Mon, 29 Mar 2021 16:19:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B856E45C
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Mar 2021 16:19:52 +0000 (UTC)
IronPort-SDR: DzYv0WP9YIVL5BF9DImt/wVgoe1NKH+34U96nwS5e/845Kk0DfLijmdzl5RyXpnwjL7lTOlcFT
 h8Wn11xShDng==
X-IronPort-AV: E=McAfee;i="6000,8403,9938"; a="211778603"
X-IronPort-AV: E=Sophos;i="5.81,288,1610438400"; d="scan'208";a="211778603"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2021 09:19:50 -0700
IronPort-SDR: OXPpL6bpXkwavDdkCpSUJ+Wb+VH6yehMlEKYPS8Qnm+NJmQqKA6/m4rIn2wtZbG06yj6DLurWv
 aHsb/gZFiWFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,288,1610438400"; d="scan'208";a="454621104"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga001.jf.intel.com with ESMTP; 29 Mar 2021 09:19:49 -0700
Received: from shsmsx605.ccr.corp.intel.com (10.109.6.215) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 29 Mar 2021 09:19:49 -0700
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 SHSMSX605.ccr.corp.intel.com (10.109.6.215) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 30 Mar 2021 00:19:46 +0800
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.2106.013;
 Tue, 30 Mar 2021 00:19:45 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Gao, Fred" <fred.gao@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHZmaW8vcGNpOiBBZGQgc3Vw?=
 =?utf-8?Q?port_for_opregion_v2.0+_(rev5)?=
Thread-Index: AQHXIbqaXfHY4B4o8UW2QY/Ux3rr9aqakZzQgACZNAA=
Date: Mon, 29 Mar 2021 16:19:45 +0000
Message-ID: <4989359ab71e44daaf74369f22f9881c@intel.com>
References: <20201202171249.17083-1-fred.gao@intel.com>
 <161670632639.15545.18267924720650476934@emeril.freedesktop.org>
 <CO1PR11MB502634D68A7ABCC7D224708F9D7E9@CO1PR11MB5026.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB502634D68A7ABCC7D224708F9D7E9@CO1PR11MB5026.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHZm?=
 =?utf-8?q?io/pci=3A_Add_support_for_opregion_v2=2E0+_=28rev5=29?=
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
Cc: "Wang, Zhenyu Z" <zhenyu.z.wang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RmFpbHVyZSBpcyByZXBvcnRlZC4gSXQncyBub3cgc2hvd2luZyBhcyBzdWNjZXNzLg0KDQotLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogR2FvLCBGcmVkIDxmcmVkLmdhb0BpbnRlbC5j
b20+IA0KU2VudDogTW9uZGF5LCBNYXJjaCAyOSwgMjAyMSAxMjoxMiBBTQ0KVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWlu
YXJheWFuYS52dWR1bUBpbnRlbC5jb20+DQpDYzogV2FuZywgWmhlbnl1IFogPHpoZW55dS56Lndh
bmdAaW50ZWwuY29tPg0KU3ViamVjdDogUkU6IOKclyBGaS5DSS5ET0NTOiB3YXJuaW5nIGZvciB2
ZmlvL3BjaTogQWRkIHN1cHBvcnQgZm9yIG9wcmVnaW9uIHYyLjArIChyZXY1KQ0KDQpIaSwgTGFr
c2htaToNCg0KQ2FuIHUgaGVscCBvbiB0aGlzIGZhaWx1cmUgYWdhaW4sDQp0aGUgb25seSBkaWZm
ZXJlbmNlIGJldHdlZW4gdmVyc2lvbiA1JiA0IGlzIHRoZSBjb21tZW50cy4NClRoYW5rcyBpbiBh
ZHZhbmNlLg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFBhdGNod29y
ayA8cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVza3RvcC5vcmc+DQo+IFNlbnQ6IEZyaWRheSwgTWFy
Y2ggMjYsIDIwMjEgNTowNSBBTQ0KPiBUbzogR2FvLCBGcmVkIDxmcmVkLmdhb0BpbnRlbC5jb20+
DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IOKclyBG
aS5DSS5ET0NTOiB3YXJuaW5nIGZvciB2ZmlvL3BjaTogQWRkIHN1cHBvcnQgZm9yIG9wcmVnaW9u
IA0KPiB2Mi4wKw0KPiAocmV2NSkNCj4gDQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+IA0KPiBT
ZXJpZXM6IHZmaW8vcGNpOiBBZGQgc3VwcG9ydCBmb3Igb3ByZWdpb24gdjIuMCsgKHJldjUpDQo+
IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84NDQ5NC8N
Cj4gU3RhdGUgOiB3YXJuaW5nDQo+IA0KPiA9PSBTdW1tYXJ5ID09DQo+IA0KPiAkIG1ha2UgaHRt
bGRvY3MgMj4mMSA+IC9kZXYvbnVsbCB8IGdyZXAgaTkxNQ0KPiAuL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jOjEwMjogd2FybmluZzogRnVuY3Rpb24gDQo+IHBh
cmFtZXRlciBvciBtZW1iZXIgJ3d3JyBub3QgZGVzY3JpYmVkIGluICdpOTE1X2dlbV9zaHJpbmsn
DQo+IC4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmM6MTQyMDogd2Fybmlu
ZzogRXhjZXNzIA0KPiBmdW5jdGlvbiBwYXJhbWV0ZXIgJ3RyYW1wb2xpbmUnIGRlc2NyaXB0aW9u
IGluICdpbnRlbF9lbmdpbmVfY21kX3BhcnNlcicNCj4gLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2NtZF9wYXJzZXIuYzoxNDIwOiB3YXJuaW5nOiBGdW5jdGlvbiANCj4gcGFyYW1ldGVyIG9y
IG1lbWJlciAnanVtcF93aGl0ZWxpc3QnIG5vdCBkZXNjcmliZWQgaW4gDQo+ICdpbnRlbF9lbmdp
bmVfY21kX3BhcnNlcicNCj4gLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIu
YzoxNDIwOiB3YXJuaW5nOiBGdW5jdGlvbiANCj4gcGFyYW1ldGVyIG9yIG1lbWJlciAnc2hhZG93
X21hcCcgbm90IGRlc2NyaWJlZCBpbiANCj4gJ2ludGVsX2VuZ2luZV9jbWRfcGFyc2VyJw0KPiAu
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jOjE0MjA6IHdhcm5pbmc6IEZ1
bmN0aW9uIA0KPiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdiYXRjaF9tYXAnIG5vdCBkZXNjcmliZWQg
aW4gDQo+ICdpbnRlbF9lbmdpbmVfY21kX3BhcnNlcicNCj4gLi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2NtZF9wYXJzZXIuYzoxNDIwOiB3YXJuaW5nOiBFeGNlc3MgDQo+IGZ1bmN0aW9uIHBh
cmFtZXRlciAndHJhbXBvbGluZScgZGVzY3JpcHRpb24gaW4gJ2ludGVsX2VuZ2luZV9jbWRfcGFy
c2VyJw0KPiAvaG9tZS9jaWRybS9rZXJuZWwvRG9jdW1lbnRhdGlvbi9ncHUvaTkxNToyMjogLi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pDQo+IG50ZWxfcnVudGltZV9wbS5jOjQyMzogV0FSTklORzog
SW5saW5lIHN0cm9uZyBzdGFydC1zdHJpbmcgd2l0aG91dCANCj4gZW5kLSBzdHJpbmcuDQo+IA0K
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
