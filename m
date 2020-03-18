Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A39118975F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 09:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60B1189C1E;
	Wed, 18 Mar 2020 08:43:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 910AF89C1E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 08:43:32 +0000 (UTC)
IronPort-SDR: IxCfijV62GNEPpEDl2h506HCOcUivLQ9T+Vli2k7+KDRvLYClcR2VWsm2U66qaeeQ3dXu3rHjW
 JGssAdlgTEqw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 01:43:31 -0700
IronPort-SDR: IDJ5R/iIwQ1kqFdsyyiUM4zfK33TqNiKAMAs62ldUOVdcgI4BsvIz6s5upXlspXKg1ytG3QJAq
 js30fZTb/fsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,566,1574150400"; 
 d="scan'208,217";a="324101596"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga001.jf.intel.com with ESMTP; 18 Mar 2020 01:43:30 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Mar 2020 08:43:30 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Mar 2020 08:43:29 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 18 Mar 2020 08:43:29 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIENvbnNpZGVyIERCdWYgYmFu?=
 =?utf-8?Q?dwidth_when_calculating_CDCLK_(rev2)?=
Thread-Index: AQHV+/QQwirz4P1VLUitpFfj/iTRrKhMmYI0gAFuSICAAAIfSg==
Date: Wed, 18 Mar 2020 08:43:29 +0000
Message-ID: <92f06a328dc947b49c8f7c4cfedaa32d@intel.com>
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
 <158440537072.5177.5259310463530440555@emeril.freedesktop.org>
 <1b7e92817db14053803aff6bf596e65b@intel.com>,
 <20200318083307.lnnhoalkltvfv4l6@ahiler-desk1.fi.intel.com>
In-Reply-To: <20200318083307.lnnhoalkltvfv4l6@ahiler-desk1.fi.intel.com>
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
Content-Type: multipart/mixed; boundary="===============1094952253=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1094952253==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_92f06a328dc947b49c8f7c4cfedaa32dintelcom_"

--_000_92f06a328dc947b49c8f7c4cfedaa32dintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V29uZGVyLCBob3cgd2UgZW5kIHVwIG1lcmdpbmcgX3N0dWZmXyB3aXRoIGZhaWxlZCBJR1QgYW5k
IGxvYWRzIG9mIHdhcm5pbmdzLi4NCg0KDQpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzc0NzM4Lw0KDQoNCi4uLiB3aGlsZSBJIGdldCBiZWF0ZW4gZm9yIGVhY2ggYW5k
IGV2ZXJ5IHNpbmdsZSB3YXJuaW5nIGluIG15IHBhdGNoZXMg8J+Yig0KDQoNCkJlc3QgUmVnYXJk
cywNCg0KTGlzb3Zza2l5IFN0YW5pc2xhdg0KDQpPcmdhbml6YXRpb246IEludGVsIEZpbmxhbmQg
T3kgLSBCSUMgMDM1NzYwNi00IC0gV2VzdGVuZGlua2F0dSA3LCAwMjE2MCBFc3Bvbw0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCkZyb206IEhpbGVyLCBBcmthZGl1c3oNClNlbnQ6
IFdlZG5lc2RheSwgTWFyY2ggMTgsIDIwMjAgMTA6MzM6MDcgQU0NClRvOiBMaXNvdnNraXksIFN0
YW5pc2xhdg0KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFBlcmVzLCBNYXJ0
aW47IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmENClN1YmplY3Q6IFJlOiDinJcgRmkuQ0kuRE9DUzog
d2FybmluZyBmb3IgQ29uc2lkZXIgREJ1ZiBiYW5kd2lkdGggd2hlbiBjYWxjdWxhdGluZyBDRENM
SyAocmV2MikNCg0KT24gVHVlLCBNYXIgMTcsIDIwMjAgYXQgMTI6NDM6NDBQTSArMDIwMCwgTGlz
b3Zza2l5LCBTdGFuaXNsYXYgd3JvdGU6DQo+IFdoYXQgaXMgdGhpcyB3ZWlyZCBET0Mgd2Fybmlu
ZyBhYm91dD8gIkVycm9yOiBDYW5ub3Qgb3BlbiBmaWxlIC4vZHJpdmVycy9ncHUvDQo+IGRybS9p
OTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIg0KPg0KPiAtIHdvbmRlcmluZywgaG93IGlzIHRoYXQg
cmVsYXRlZCB0byB0aGlzIHBhdGNoLg0KDQpMb29rcyBsaWtlIHlvdSB3ZXJlIHVubHVja3kgYW5k
IHlvdXIgc2VyaWVzIGdvdCB0ZXN0ZWQgd2l0aCB0aGlzIG1lcmdlZDoNCmh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzQ3MzgvDQoNCmJ1dCBiZWZvcmUgdGhlIGZpeCBo
YXMgbGFuZGVkOg0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83NDc3
OC8NCg0KSXQncyBhbGwgY2xlYW4gbm93Lg0KDQotLQ0KQ2hlZXJzLA0KQXJlaw0K

--_000_92f06a328dc947b49c8f7c4cfedaa32dintelcom_
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
LXNlcmlmIj4NCjxwPldvbmRlciwgaG93IHdlIGVuZCB1cCBtZXJnaW5nIF9zdHVmZl8gd2l0aCBm
YWlsZWQgSUdUIGFuZCBsb2FkcyBvZiB3YXJuaW5ncy4uPC9wPg0KPHA+PGJyPg0KPC9wPg0KPHA+
PGEgaHJlZj0iaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83NDczOC8i
IHRhcmdldD0iX2JsYW5rIiByZWw9Im5vb3BlbmVyIG5vcmVmZXJyZXIiIGlkPSJMUGxuazI4NjA2
IiBzdHlsZT0iZm9udC1mYW1pbHk6d2Zfc2Vnb2UtdWlfbm9ybWFsLCZxdW90O1NlZ29lIFVJJnF1
b3Q7LCZxdW90O1NlZ29lIFdQJnF1b3Q7LFRhaG9tYSxBcmlhbCxzYW5zLXNlcmlmLHNlcmlmLEVt
b2ppRm9udDsgZm9udC1zaXplOjEzLjMzMzNweCI+aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy83NDczOC88L2E+PGJyPg0KPC9wPg0KPHA+PGJyPg0KPC9wPg0KPHA+Li4u
IHdoaWxlJm5ic3A7SSBnZXQgYmVhdGVuIGZvciBlYWNoIGFuZCBldmVyeSBzaW5nbGUgd2Fybmlu
ZyBpbiBteSBwYXRjaGVzIDxzcGFuPvCfmIo8L3NwYW4+PC9wPg0KPHA+PGJyPg0KPC9wPg0KPGRp
diBpZD0ieF9TaWduYXR1cmUiPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6VGFob21hOyBmb250
LXNpemU6MTNweCI+PGZvbnQgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMHB0Ij5C
ZXN0IFJlZ2FyZHMsPGJyPg0KPGJyPg0KTGlzb3Zza2l5IFN0YW5pc2xhdiA8YnI+DQo8YnI+DQpP
cmdhbml6YXRpb246IEludGVsIEZpbmxhbmQgT3kgLSBCSUMgMDM1NzYwNi00IC0gV2VzdGVuZGlu
a2F0dSA3LCAwMjE2MCBFc3Bvbzxicj4NCjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8L2Rpdj4NCjwv
ZGl2Pg0KPGhyIHRhYmluZGV4PSItMSIgc3R5bGU9ImRpc3BsYXk6aW5saW5lLWJsb2NrOyB3aWR0
aDo5OCUiPg0KPGRpdiBpZD0ieF9kaXZScGx5RndkTXNnIiBkaXI9Imx0ciI+PGZvbnQgZmFjZT0i
Q2FsaWJyaSwgc2Fucy1zZXJpZiIgY29sb3I9IiMwMDAwMDAiIHN0eWxlPSJmb250LXNpemU6MTFw
dCI+PGI+RnJvbTo8L2I+IEhpbGVyLCBBcmthZGl1c3o8YnI+DQo8Yj5TZW50OjwvYj4gV2VkbmVz
ZGF5LCBNYXJjaCAxOCwgMjAyMCAxMDozMzowNyBBTTxicj4NCjxiPlRvOjwvYj4gTGlzb3Zza2l5
LCBTdGFuaXNsYXY8YnI+DQo8Yj5DYzo8L2I+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmc7IFBlcmVzLCBNYXJ0aW47IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmE8YnI+DQo8Yj5TdWJqZWN0
OjwvYj4gUmU6IOKclyBGaS5DSS5ET0NTOiB3YXJuaW5nIGZvciBDb25zaWRlciBEQnVmIGJhbmR3
aWR0aCB3aGVuIGNhbGN1bGF0aW5nIENEQ0xLIChyZXYyKTwvZm9udD4NCjxkaXY+Jm5ic3A7PC9k
aXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPGZvbnQgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6
ZToxMHB0OyI+DQo8ZGl2IGNsYXNzPSJQbGFpblRleHQiPk9uIFR1ZSwgTWFyIDE3LCAyMDIwIGF0
IDEyOjQzOjQwUE0gJiM0MzswMjAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3cm90ZTo8YnI+DQom
Z3Q7IFdoYXQgaXMgdGhpcyB3ZWlyZCBET0Mgd2FybmluZyBhYm91dD8gJnF1b3Q7RXJyb3I6IENh
bm5vdCBvcGVuIGZpbGUgLi9kcml2ZXJzL2dwdS88YnI+DQomZ3Q7IGRybS9pOTE1L2k5MTVfZ2Vt
X2ZlbmNlX3JlZy5jJnF1b3Q7PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IC0gd29uZGVyaW5nLCBob3cg
aXMgdGhhdCByZWxhdGVkIHRvIHRoaXMgcGF0Y2guPGJyPg0KPGJyPg0KTG9va3MgbGlrZSB5b3Ug
d2VyZSB1bmx1Y2t5IGFuZCB5b3VyIHNlcmllcyBnb3QgdGVzdGVkIHdpdGggdGhpcyBtZXJnZWQ6
PGJyPg0KPGEgaHJlZj0iaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83
NDczOC8iPmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzQ3MzgvPC9h
Pjxicj4NCjxicj4NCmJ1dCBiZWZvcmUgdGhlIGZpeCBoYXMgbGFuZGVkOjxicj4NCjxhIGhyZWY9
Imh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzQ3NzgvIj5odHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzc0Nzc4LzwvYT48YnI+DQo8YnI+DQpJ
dCdzIGFsbCBjbGVhbiBub3cuPGJyPg0KPGJyPg0KLS0gPGJyPg0KQ2hlZXJzLDxicj4NCkFyZWs8
YnI+DQo8L2Rpdj4NCjwvc3Bhbj48L2ZvbnQ+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_92f06a328dc947b49c8f7c4cfedaa32dintelcom_--

--===============1094952253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1094952253==--
