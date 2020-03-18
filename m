Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB77189783
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 10:00:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C583C89BD5;
	Wed, 18 Mar 2020 09:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5119C89BD5
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 09:00:46 +0000 (UTC)
IronPort-SDR: YaGOV0qiM0VAMGsL7DZLk+e9iWjnASh7Bg/LOgHSxyO6lEkK2ckUO9ZxTRUYEWkGUFPE8d9cWy
 IskfiXlLaytw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 02:00:45 -0700
IronPort-SDR: IHB/YK7/Rfo54qtUjnugaGXWdk5PWkIkFamaIpqUsWpQNK72MXmeXSWFrN9JlPniEv1/bxguF/
 Vo51evlxxnwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; 
 d="scan'208,217";a="417874582"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
 by orsmga005.jf.intel.com with ESMTP; 18 Mar 2020 02:00:44 -0700
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Mar 2020 09:00:43 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Mar 2020 09:00:43 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 18 Mar 2020 09:00:43 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIENvbnNpZGVyIERCdWYgYmFu?=
 =?utf-8?Q?dwidth_when_calculating_CDCLK_(rev2)?=
Thread-Index: AQHV+/QQwirz4P1VLUitpFfj/iTRrKhMmYI0gAFuSICAAAIfSoAABBWAgAAAIqU=
Date: Wed, 18 Mar 2020 09:00:43 +0000
Message-ID: <1d99a87e6734494389e74a58c39686a5@intel.com>
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
 <158440537072.5177.5259310463530440555@emeril.freedesktop.org>
 <1b7e92817db14053803aff6bf596e65b@intel.com>
 <20200318083307.lnnhoalkltvfv4l6@ahiler-desk1.fi.intel.com>
 <92f06a328dc947b49c8f7c4cfedaa32d@intel.com>,
 <20200318085519.3hyec4tricxdjtgz@ahiler-desk1.fi.intel.com>
In-Reply-To: <20200318085519.3hyec4tricxdjtgz@ahiler-desk1.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIENv?=
 =?utf-8?q?nsider_DBuf_bandwidth_when_calculating_CDCLK_=28rev2=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Content-Type: multipart/mixed; boundary="===============1636511386=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1636511386==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1d99a87e6734494389e74a58c39686a5intelcom_"

--_000_1d99a87e6734494389e74a58c39686a5intelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmVtZW1iZXIgd2hlbiBJIGhhdmUgYmVlbiB3b3JraW5nIGluIEVyaWNzc29uIHdlIGhhZCBiZWVu
IHVzaW5nIGEgZ2Vycml0IHJldmlldyBhbmQgeW91IHNpbXBseQ0KDQp3b3VsZCBub3QgYmUgYWJs
ZSB0byBtZXJnZSBhbnl0aGluZyB1bnRpbCBpdCBoYXMgKzIoci1iKSBhbmQgbm8gdGVzdHMgZmFp
bGluZy4gT3IgeW91IGhhdmUgdG8gZXhjbHVkZQ0KDQp1bnN0YWJsZSB0ZXN0cyBhdCBsZWFzdCB1
bnRpbCB0aG9zZSBhcmUgZml4ZWQuDQoNCg0KSXQgd2FzIHNpbXBseSBhdXRvbWF0ZWQgYW5kIG5v
IGV4Y2VwdGlvbnMsIG5vIG1hdHRlciBob3cgZ29vZCBwZXJzb24geW91IGFyZSDwn5iKDQoNCg0K
QmVzdCBSZWdhcmRzLA0KDQpMaXNvdnNraXkgU3RhbmlzbGF2DQoNCk9yZ2FuaXphdGlvbjogSW50
ZWwgRmlubGFuZCBPeSAtIEJJQyAwMzU3NjA2LTQgLSBXZXN0ZW5kaW5rYXR1IDcsIDAyMTYwIEVz
cG9vDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KRnJvbTogSGlsZXIsIEFya2Fk
aXVzeg0KU2VudDogV2VkbmVzZGF5LCBNYXJjaCAxOCwgMjAyMCAxMDo1NToxOSBBTQ0KVG86IExp
c292c2tpeSwgU3RhbmlzbGF2DQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsg
UGVyZXMsIE1hcnRpbjsgVnVkdW0sIExha3NobWluYXJheWFuYQ0KU3ViamVjdDogUmU6IOKclyBG
aS5DSS5ET0NTOiB3YXJuaW5nIGZvciBDb25zaWRlciBEQnVmIGJhbmR3aWR0aCB3aGVuIGNhbGN1
bGF0aW5nIENEQ0xLIChyZXYyKQ0KDQpPbiBXZWQsIE1hciAxOCwgMjAyMCBhdCAxMDo0MzoyOUFN
ICswMjAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3cm90ZToNCj4gV29uZGVyLCBob3cgd2UgZW5k
IHVwIG1lcmdpbmcgX3N0dWZmXyB3aXRoIGZhaWxlZCBJR1QgYW5kIGxvYWRzIG9mIHdhcm5pbmdz
Li4NCj4NCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83NDczOC8N
Cj4NCj4gLi4uIHdoaWxlIEkgZ2V0IGJlYXRlbiBmb3IgZWFjaCBhbmQgZXZlcnkgc2luZ2xlIHdh
cm5pbmcgaW4gbXkgcGF0Y2hlcyDwn5iKDQoNClRydWUuIFRoaXMgc2hvdWxkbid0IGdldCBtZXJn
ZWQgbGlrZSB0aGlzLiBBc2sgdGhlIGF1dGhvcnMgYW5kIHRoZQ0KY29tbWl0ZXJzIHdoeSB0aGlz
IGdvdCBpbiB3aXRob3V0IGFueW9uZSBsb29raW5nIGF0IHRoZSBkb2NzIGlzc3VlIGFuZA0Kd2l0
aG91dCBhbnkgZXhwbGFuYXRpb24gb2YgdGhlIGZhaWx1cmVzIGluIEZpLkNJLklHVC4NCg0KLS0N
CkNoZWVycywNCkFyZWsNCg==

--_000_1d99a87e6734494389e74a58c39686a5intelcom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVu
dD0iTWljcm9zb2Z0IEV4Y2hhbmdlIFNlcnZlciI+DQo8IS0tIGNvbnZlcnRlZCBmcm9tIHRleHQg
LS0+PHN0eWxlPjwhLS0gLkVtYWlsUXVvdGUgeyBtYXJnaW4tbGVmdDogMXB0OyBwYWRkaW5nLWxl
ZnQ6IDRwdDsgYm9yZGVyLWxlZnQ6ICM4MDAwMDAgMnB4IHNvbGlkOyB9IC0tPjwvc3R5bGU+DQo8
L2hlYWQ+DQo8Ym9keT4NCjxtZXRhIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD1VVEYtOCI+
DQo8c3R5bGUgdHlwZT0idGV4dC9jc3MiIHN0eWxlPSIiPg0KPCEtLQ0KcA0KCXttYXJnaW4tdG9w
OjA7DQoJbWFyZ2luLWJvdHRvbTowfQ0KLS0+DQo8L3N0eWxlPg0KPGRpdiBkaXI9Imx0ciI+DQo8
ZGl2IGlkPSJ4X2RpdnRhZ2RlZmF1bHR3cmFwcGVyIiBkaXI9Imx0ciIgc3R5bGU9ImZvbnQtc2l6
ZToxMnB0OyBjb2xvcjojMDAwMDAwOyBmb250LWZhbWlseTpDYWxpYnJpLEhlbHZldGljYSxzYW5z
LXNlcmlmIj4NCjxwPlJlbWVtYmVyIHdoZW4gSSBoYXZlIGJlZW4gd29ya2luZyBpbiBFcmljc3Nv
biB3ZSBoYWQgYmVlbiB1c2luZyBhIGdlcnJpdCByZXZpZXcgYW5kIHlvdSBzaW1wbHk8L3A+DQo8
cD53b3VsZCBub3QgYmUgYWJsZSB0byBtZXJnZSBhbnl0aGluZyB1bnRpbCBpdCBoYXMgJiM0Mzsy
KHItYikgYW5kIG5vIHRlc3RzIGZhaWxpbmcuIE9yIHlvdSBoYXZlIHRvIGV4Y2x1ZGU8L3A+DQo8
cD51bnN0YWJsZSB0ZXN0cyBhdCBsZWFzdCB1bnRpbCB0aG9zZSBhcmUgZml4ZWQuPC9wPg0KPHA+
PGJyPg0KPC9wPg0KPHA+SXQgd2FzIHNpbXBseSBhdXRvbWF0ZWQgYW5kIG5vIGV4Y2VwdGlvbnMs
IG5vIG1hdHRlciBob3cgZ29vZCBwZXJzb24geW91IGFyZSA8c3Bhbj4NCvCfmIo8L3NwYW4+PC9w
Pg0KPHA+PC9wPg0KPHA+PGJyPg0KPC9wPg0KPGRpdiBpZD0ieF9TaWduYXR1cmUiPg0KPGRpdiBz
dHlsZT0iZm9udC1mYW1pbHk6VGFob21hOyBmb250LXNpemU6MTNweCI+PGZvbnQgc2l6ZT0iMiI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMHB0Ij5CZXN0IFJlZ2FyZHMsPGJyPg0KPGJyPg0KTGlz
b3Zza2l5IFN0YW5pc2xhdiA8YnI+DQo8YnI+DQpPcmdhbml6YXRpb246IEludGVsIEZpbmxhbmQg
T3kgLSBCSUMgMDM1NzYwNi00IC0gV2VzdGVuZGlua2F0dSA3LCAwMjE2MCBFc3Bvbzxicj4NCjwv
c3Bhbj48L2ZvbnQ+PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPGhyIHRhYmluZGV4PSItMSIgc3R5
bGU9ImRpc3BsYXk6aW5saW5lLWJsb2NrOyB3aWR0aDo5OCUiPg0KPGRpdiBpZD0ieF9kaXZScGx5
RndkTXNnIiBkaXI9Imx0ciI+PGZvbnQgZmFjZT0iQ2FsaWJyaSwgc2Fucy1zZXJpZiIgY29sb3I9
IiMwMDAwMDAiIHN0eWxlPSJmb250LXNpemU6MTFwdCI+PGI+RnJvbTo8L2I+IEhpbGVyLCBBcmth
ZGl1c3o8YnI+DQo8Yj5TZW50OjwvYj4gV2VkbmVzZGF5LCBNYXJjaCAxOCwgMjAyMCAxMDo1NTox
OSBBTTxicj4NCjxiPlRvOjwvYj4gTGlzb3Zza2l5LCBTdGFuaXNsYXY8YnI+DQo8Yj5DYzo8L2I+
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFBlcmVzLCBNYXJ0aW47IFZ1ZHVtLCBM
YWtzaG1pbmFyYXlhbmE8YnI+DQo8Yj5TdWJqZWN0OjwvYj4gUmU6IOKclyBGaS5DSS5ET0NTOiB3
YXJuaW5nIGZvciBDb25zaWRlciBEQnVmIGJhbmR3aWR0aCB3aGVuIGNhbGN1bGF0aW5nIENEQ0xL
IChyZXYyKTwvZm9udD4NCjxkaXY+Jm5ic3A7PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPGZvbnQg
c2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyI+DQo8ZGl2IGNsYXNzPSJQbGFp
blRleHQiPk9uIFdlZCwgTWFyIDE4LCAyMDIwIGF0IDEwOjQzOjI5QU0gJiM0MzswMjAwLCBMaXNv
dnNraXksIFN0YW5pc2xhdiB3cm90ZTo8YnI+DQomZ3Q7IFdvbmRlciwgaG93IHdlIGVuZCB1cCBt
ZXJnaW5nIF9zdHVmZl8gd2l0aCBmYWlsZWQgSUdUIGFuZCBsb2FkcyBvZiB3YXJuaW5ncy4uPGJy
Pg0KJmd0OyA8YnI+DQomZ3Q7IDxhIGhyZWY9Imh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNzQ3MzgvIj5odHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzc0NzM4LzwvYT48YnI+DQomZ3Q7IDxicj4NCiZndDsgLi4uIHdoaWxlIEkgZ2V0IGJlYXRl
biBmb3IgZWFjaCBhbmQgZXZlcnkgc2luZ2xlIHdhcm5pbmcgaW4gbXkgcGF0Y2hlcyDwn5iKPGJy
Pg0KPGJyPg0KVHJ1ZS4gVGhpcyBzaG91bGRuJ3QgZ2V0IG1lcmdlZCBsaWtlIHRoaXMuIEFzayB0
aGUgYXV0aG9ycyBhbmQgdGhlPGJyPg0KY29tbWl0ZXJzIHdoeSB0aGlzIGdvdCBpbiB3aXRob3V0
IGFueW9uZSBsb29raW5nIGF0IHRoZSBkb2NzIGlzc3VlIGFuZDxicj4NCndpdGhvdXQgYW55IGV4
cGxhbmF0aW9uIG9mIHRoZSBmYWlsdXJlcyBpbiBGaS5DSS5JR1QuPGJyPg0KPGJyPg0KLS0gPGJy
Pg0KQ2hlZXJzLDxicj4NCkFyZWs8YnI+DQo8L2Rpdj4NCjwvc3Bhbj48L2ZvbnQ+DQo8L2JvZHk+
DQo8L2h0bWw+DQo=

--_000_1d99a87e6734494389e74a58c39686a5intelcom_--

--===============1636511386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1636511386==--
