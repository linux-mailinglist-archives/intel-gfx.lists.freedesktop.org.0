Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B51A1D7219
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 09:44:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C2B89958;
	Mon, 18 May 2020 07:44:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F6289958
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 07:44:31 +0000 (UTC)
IronPort-SDR: nUWOeteXLX59JqFZohVbsg7uRg3rWePSqh01yBRgJ8omjk55zDmMHtdCM4aJCl1AkWBXn9JqNi
 weh7gxasH2ug==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 00:44:28 -0700
IronPort-SDR: ehGaqENo8+FkZJ6e/55G3ZttxLbFuZgDEHNatznDI1xMIUJQzpFwGj5577/94rEwFXXVO+CK7O
 ivOoojBe1pSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; 
 d="scan'208,217";a="465485039"
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
 by fmsmga005.fm.intel.com with ESMTP; 18 May 2020 00:44:28 -0700
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX106.ger.corp.intel.com (163.33.3.31) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 18 May 2020 08:43:06 +0100
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 May 2020 08:43:06 +0100
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7]) by
 irsmsx601.ger.corp.intel.com ([163.33.146.7]) with mapi id 15.01.1713.004;
 Mon, 18 May 2020 08:43:06 +0100
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>, Arno <star@gmx.li>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR*
 CPU pipe A FIFO underrun
Thread-Index: AQHWJ2zTJARQYTolEk6jSoDUEmIFJ6itZhgAgAAUsMCAAAWrcA==
Date: Mon, 18 May 2020 07:43:06 +0000
Message-ID: <5b9c291892c245b3becd3df45ba5f3f9@intel.com>
References: <aab05507-450d-5643-20af-500dec6bc59b@gmx.li>
 <fab11a35-be96-40c4-3572-6879eb39364a@gmx.li>
 <267c19058bf64dc2851cc5b6c0c6383c@intel.com>
In-Reply-To: <267c19058bf64dc2851cc5b6c0c6383c@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGU3M2VjZmMtNTAyMi00ZTEwLWFmYjMtMDdjOTc4NjBmZTIxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidGoxTlcyMTNmaHNQU241WVwvT2NWMGNyK01FTHlmWUtJOE81UnI3YjZwT2ZNdTR2UnVcLzA5a1ZDamFRRUhwN1A4In0=
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR*
 CPU pipe A FIFO underrun
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
Content-Type: multipart/mixed; boundary="===============1102747488=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1102747488==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5b9c291892c245b3becd3df45ba5f3f9intelcom_"

--_000_5b9c291892c245b3becd3df45ba5f3f9intelcom_
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64

QXJubywgSSBoYXZlIGNyZWF0ZWQgYnVnIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9k
cm0vaW50ZWwvLS9pc3N1ZXMvMTkwMCBmb3IgdGhpcyBpc3N1ZS4NCk5vdyBkaXNjdXNzaW9ucyBj
YW4gaGFwcGVuIGluIHRoZSBidWcgcmVwb3J0IGRpcmVjdGx5LiBUaGFua3MgZm9yIHJlcG9ydGlu
ZyB0aGUgaXNzdWUuDQoNClRoYW5rcywNCkxha3NobWkuDQpGcm9tOiBTYWFyaW5lbiwgSmFuaSA8
amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+DQpTZW50OiBNb25kYXksIE1heSAxOCwgMjAyMCAxMDoy
MSBBTQ0KVG86IEFybm8gPHN0YXJAZ214LmxpPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgY2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrOyBWdWR1bSwgTGFrc2htaW5hcmF5YW5hIDxs
YWtzaG1pbmFyYXlhbmEudnVkdW1AaW50ZWwuY29tPg0KU3ViamVjdDogUkU6IFtJbnRlbC1nZnhd
IGludGVsX2NwdV9maWZvX3VuZGVycnVuX2lycV9oYW5kbGVyIFtpOTE1XV0gKkVSUk9SKiBDUFUg
cGlwZSBBIEZJRk8gdW5kZXJydW4NCg0KUGxlYXNlIG1ha2UgZ2l0bGFiIGlzc3VlIGlmIG5vdCBh
bHJlYWR5IGRvbmUuIExha3NobWksIHBsZWFzZSBndWlkZS4NCg0KRnJvbTogSW50ZWwtZ2Z4IDxp
bnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc8bWFpbHRvOmludGVsLWdmeC1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4+IE9uIEJlaGFsZiBPZiBBcm5vDQpTZW50OiBt
YWFuYW50YWkgMTguIHRvdWtva3V1dGEgMjAyMCAxMC4wNw0KVG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmc8bWFpbHRvOmludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc+OyBj
aHJpc0BjaHJpcy13aWxzb24uY28udWs8bWFpbHRvOmNocmlzQGNocmlzLXdpbHNvbi5jby51az4N
ClN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBpbnRlbF9jcHVfZmlmb191bmRlcnJ1bl9pcnFfaGFu
ZGxlciBbaTkxNV1dICpFUlJPUiogQ1BVIHBpcGUgQSBGSUZPIHVuZGVycnVuDQoNCg0KSXMgdGhl
cmUgYW5vdGhlciBwbGFjZSB0byByZXBvcnQgdGhpcyBraW5kIG9mIGlzc3VlPyBEaWRuJ3QgZ2V0
IGFueSBmZWVkYmFjay4gRGlkIEkgbWFrZSBtaXN0YWtlcyBpbiBteSBtYWlsPyBJIGFscmVhZHkg
dHJpZWQgdGhlIFVidW50dSBidWctdHJhY2tlciAoc2VlIGJlbG93KSB3aXRoIG5vIHN1Y2Nlc3Mu
DQoNClRoYW5rIHlvdSwNCg0KQXJubw0KDQoNCkFtIDExLjA1LjIwIHVtIDEwOjE4IHNjaHJpZWIg
QXJubzoNCg0KTXkgbGFwdG9wIChjb3JlIG01LTZ5NTQpIHN0YXJ0cyBmbGlja2VyaW5nIGFmdGVy
IHJldHVybmluZyBmcm9tIFN1c3BlbmQgKHRvIFJBTSkgb3Igb3RoZXIgY29tbWFuZHMgdG91Y2hp
bmcgdGhlIHZpZGVvIGRyaXZlciAoeHJhbmRyLCBwb3dlcnRvcCAtLWNhbGlicmF0ZSwgLi4uKQ0K
DQpGcm9tIGtlcm5lbCAodGVzdGVkIHdpdGggdXAgdG8gNS43KSBJIGdldCB0aGUgbWVzc2FnZToN
Cg0KW2RybTppbnRlbF9jcHVfZmlmb191bmRlcnJ1bl9pcnFfaGFuZGxlciBbaTkxNV1dICpFUlJP
UiogQ1BVIHBpcGUgQSBGSUZPIHVuZGVycnVuDQoNCkkgYWRkZWQgYSBidWcgd2l0aCBtb3JlIGRl
dGFpbHMgaGVyZToNCg0KaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvdWJ1bnR1Lytzb3VyY2Uv
bGludXgvK2J1Zy8xODcyNzYwDQoNCmJ1dCBndXlzIGZyb20gVWJ1bnR1IHNlZW1zIG5vdCBhYmxl
IHRvIGhlbHAgKGFzIGl0IGlzIGFuIHVwc3RyZWFtIGJ1ZykgIT8NCg0KVGhpcyBoYXBwZW5kIG5v
dCBpbiBvbGRlciBrZXJuZWxzLCBidXQgdGhlc2UgaGF2ZSB0aGUgcHJvYmxlbSBub3QgdG8gZ28g
aW4gcG93ZXIgc2F2ZSBzdGF0ZXMuIFNvIEkgdGhpbmsgdGhlIGZpeCBvZiB0aGF0DQoNCmh0dHBz
Oi8vYnVncy5sYXVuY2hwYWQubmV0L3VidW50dS8rc291cmNlL2xpbnV4LytidWcvMTg2MzQ4OQ0K
DQpjYXVzZXMgdGhpcyByZWdyZXNzaW9uLg0KDQpIb3BlIHNvbWVvbmUgY2FuIGhlbHAuIEZvciBh
ICBsYXB0b3AgaXQgaXMgYmV0dGVyIHRvIGhhdmUgYm90aCAtIHN0YW5kYnkgYW5kIHBvd2VyIHNh
dmluZy4gVGhhbmsgeW91Lg0KDQpBcm5vDQoNCg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQoNCkludGVsLWdmeCBtYWlsaW5nIGxpc3QNCg0KSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzxtYWlsdG86SW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZz4NCg0KaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBGaW5sYW5kIE95ClJlZ2lzdGVyZWQg
QWRkcmVzczogUEwgMjgxLCAwMDE4MSBIZWxzaW5raSAKQnVzaW5lc3MgSWRlbnRpdHkgQ29kZTog
MDM1NzYwNiAtIDQgCkRvbWljaWxlZCBpbiBIZWxzaW5raSAKClRoaXMgZS1tYWlsIGFuZCBhbnkg
YXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFsIGZvcgp0aGUgc29s
ZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gQW55IHJldmlldyBvciBkaXN0cmli
dXRpb24KYnkgb3RoZXJzIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSBhcmUgbm90IHRo
ZSBpbnRlbmRlZApyZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0
ZSBhbGwgY29waWVzLgo=

--_000_5b9c291892c245b3becd3df45ba5f3f9intelcom_
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDb25zb2xhczsNCglwYW5vc2UtMToyIDEx
IDYgOSAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWws
IGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdpbi1ib3R0
b206LjAwMDFwdDsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixz
YW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXByaW9y
aXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQphOnZp
c2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5
Ow0KCWNvbG9yOnB1cnBsZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnByZQ0KCXtt
c28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJbXNvLXN0eWxlLWxpbms6IkhUTUwgUHJlZm9ybWF0dGVk
IENoYXIiOw0KCW1hcmdpbjowaW47DQoJbWFyZ2luLWJvdHRvbTouMDAwMXB0Ow0KCWZvbnQtc2l6
ZToxMC4wcHQ7DQoJZm9udC1mYW1pbHk6IkNvdXJpZXIgTmV3Ijt9DQpzcGFuLkhUTUxQcmVmb3Jt
YXR0ZWRDaGFyDQoJe21zby1zdHlsZS1uYW1lOiJIVE1MIFByZWZvcm1hdHRlZCBDaGFyIjsNCglt
c28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJbXNvLXN0eWxlLWxpbms6IkhUTUwgUHJlZm9ybWF0dGVk
IjsNCglmb250LWZhbWlseTpDb25zb2xhczt9DQpwLm1zb25vcm1hbDAsIGxpLm1zb25vcm1hbDAs
IGRpdi5tc29ub3JtYWwwDQoJe21zby1zdHlsZS1uYW1lOm1zb25vcm1hbDsNCgltc28tbWFyZ2lu
LXRvcC1hbHQ6YXV0bzsNCgltYXJnaW4tcmlnaHQ6MGluOw0KCW1zby1tYXJnaW4tYm90dG9tLWFs
dDphdXRvOw0KCW1hcmdpbi1sZWZ0OjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFt
aWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTIwDQoJe21zby1zdHls
ZS10eXBlOnBlcnNvbmFsOw0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNv
bG9yOndpbmRvd3RleHQ7fQ0Kc3Bhbi5FbWFpbFN0eWxlMjMNCgl7bXNvLXN0eWxlLXR5cGU6cGVy
c29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6
d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25s
eTsNCglmb250LXNpemU6MTAuMHB0O30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjguNWlu
IDExLjBpbjsNCgltYXJnaW46NzAuODVwdCA1Ni43cHQgNzAuODVwdCA1Ni43cHQ7fQ0KZGl2Lldv
cmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3Rl
IG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAy
NiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hh
cGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+
DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5n
PSJFTi1VUyIgbGluaz0iYmx1ZSIgdmxpbms9InB1cnBsZSI+DQo8ZGl2IGNsYXNzPSJXb3JkU2Vj
dGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QXJubywgSSBoYXZlIGNyZWF0ZWQgYnVnIDxh
IGhyZWY9Imh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMv
MTkwMCI+DQpodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVz
LzE5MDA8L2E+IGZvciB0aGlzIGlzc3VlLiA8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPk5vdyBkaXNjdXNzaW9ucyBjYW4gaGFwcGVuIGluIHRoZSBidWcgcmVwb3J0IGRpcmVj
dGx5LiBUaGFua3MgZm9yIHJlcG9ydGluZyB0aGUgaXNzdWUuPG86cD48L286cD48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPlRoYW5rcyw8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkxha3NobWku
PG86cD48L286cD48L3A+DQo8ZGl2Pg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRv
cDpzb2xpZCAjRTFFMUUxIDEuMHB0O3BhZGRpbmc6My4wcHQgMGluIDBpbiAwaW4iPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PGEgbmFtZT0iX19fX19yZXBseXNlcGFyYXRvciI+PC9hPjxiPkZyb206
PC9iPiBTYWFyaW5lbiwgSmFuaSAmbHQ7amFuaS5zYWFyaW5lbkBpbnRlbC5jb20mZ3Q7DQo8YnI+
DQo8Yj5TZW50OjwvYj4gTW9uZGF5LCBNYXkgMTgsIDIwMjAgMTA6MjEgQU08YnI+DQo8Yj5Ubzo8
L2I+IEFybm8gJmx0O3N0YXJAZ214LmxpJmd0OzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgY2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrOyBWdWR1bSwgTGFrc2htaW5hcmF5YW5hICZs
dDtsYWtzaG1pbmFyYXlhbmEudnVkdW1AaW50ZWwuY29tJmd0Ozxicj4NCjxiPlN1YmplY3Q6PC9i
PiBSRTogW0ludGVsLWdmeF0gaW50ZWxfY3B1X2ZpZm9fdW5kZXJydW5faXJxX2hhbmRsZXIgW2k5
MTVdXSAqRVJST1IqIENQVSBwaXBlIEEgRklGTyB1bmRlcnJ1bjxvOnA+PC9vOnA+PC9wPg0KPC9k
aXY+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+UGxlYXNlIG1ha2UgZ2l0bGFiIGlzc3VlIGlmIG5vdCBhbHJl
YWR5IGRvbmUuIExha3NobWksIHBsZWFzZSBndWlkZS4NCjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2IHN0eWxlPSJib3JkZXI6
bm9uZTtib3JkZXItbGVmdDpzb2xpZCBibHVlIDEuNXB0O3BhZGRpbmc6MGluIDBpbiAwaW4gNC4w
cHQiPg0KPGRpdj4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQgI0Ux
RTFFMSAxLjBwdDtwYWRkaW5nOjMuMHB0IDBpbiAwaW4gMGluIj4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxiPkZyb206PC9iPiBJbnRlbC1nZnggJmx0OzxhIGhyZWY9Im1haWx0bzppbnRlbC1nZngt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmciPmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzwvYT4mZ3Q7DQo8Yj5PbiBCZWhhbGYgT2YgPC9iPkFybm88YnI+DQo8Yj5T
ZW50OjwvYj4gbWFhbmFudGFpIDE4LiB0b3Vrb2t1dXRhIDIwMjAgMTAuMDc8YnI+DQo8Yj5Ubzo8
L2I+IDxhIGhyZWY9Im1haWx0bzppbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIj5pbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPC9hPjsNCjxhIGhyZWY9Im1haWx0bzpjaHJpc0Bj
aHJpcy13aWxzb24uY28udWsiPmNocmlzQGNocmlzLXdpbHNvbi5jby51azwvYT48YnI+DQo8Yj5T
dWJqZWN0OjwvYj4gUmU6IFtJbnRlbC1nZnhdIGludGVsX2NwdV9maWZvX3VuZGVycnVuX2lycV9o
YW5kbGVyIFtpOTE1XV0gKkVSUk9SKiBDUFUgcGlwZSBBIEZJRk8gdW5kZXJydW48bzpwPjwvbzpw
PjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwv
bzpwPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkZJIj5JcyB0aGVyZSBhbm90aGVyIHBsYWNlIHRvIHJl
cG9ydCB0aGlzIGtpbmQgb2YgaXNzdWU/IERpZG4ndCBnZXQgYW55IGZlZWRiYWNrLiBEaWQgSSBt
YWtlIG1pc3Rha2VzIGluIG15IG1haWw/IEkgYWxyZWFkeSB0cmllZCB0aGUgVWJ1bnR1IGJ1Zy10
cmFja2VyIChzZWUgYmVsb3cpIHdpdGggbm8gc3VjY2Vzcy48bzpwPjwvbzpwPjwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJGSSI+VGhhbmsgeW91LDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxw
PjxzcGFuIGxhbmc9IkZJIj5Bcm5vPG86cD48L286cD48L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFu
Zz0iRkkiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJGSSI+QW0gMTEuMDUuMjAgdW0gMTA6MTggc2NocmllYiBBcm5v
OjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGJsb2NrcXVvdGUgc3R5bGU9Im1hcmdp
bi10b3A6NS4wcHQ7bWFyZ2luLWJvdHRvbTo1LjBwdCI+DQo8ZGl2Pg0KPHA+PHNwYW4gbGFuZz0i
RkkiPk15IGxhcHRvcCAoY29yZSBtNS02eTU0KSBzdGFydHMgZmxpY2tlcmluZyBhZnRlciByZXR1
cm5pbmcgZnJvbSBTdXNwZW5kICh0byBSQU0pIG9yIG90aGVyIGNvbW1hbmRzIHRvdWNoaW5nIHRo
ZSB2aWRlbyBkcml2ZXIgKHhyYW5kciwgcG93ZXJ0b3AgLS1jYWxpYnJhdGUsIC4uLik8bzpwPjwv
bzpwPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJGSSI+RnJvbSBrZXJuZWwgKHRlc3RlZCB3
aXRoIHVwIHRvIDUuNykgSSBnZXQgdGhlIG1lc3NhZ2U6PG86cD48L286cD48L3NwYW4+PC9wPg0K
PHAgaWQ9Inl1aV8zXzEwXzNfMV8xNTg5MTExMjM5NDQ5XzE1MjkiPjxzcGFuIGxhbmc9IkZJIj5b
ZHJtOmludGVsX2NwdV9maWZvX3VuZGVycnVuX2lycV9oYW5kbGVyIFtpOTE1XV0gKkVSUk9SKiBD
UFUgcGlwZSBBIEZJRk8gdW5kZXJydW48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJGSSI+SSBhZGRlZCBhIGJ1ZyB3aXRoIG1vcmUgZGV0YWlscyBoZXJlOjxvOnA+PC9vOnA+
PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkZJIj48YSBocmVmPSJodHRwczovL2J1Z3MubGF1
bmNocGFkLm5ldC91YnVudHUvJiM0Mztzb3VyY2UvbGludXgvJiM0MztidWcvMTg3Mjc2MCI+aHR0
cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvdWJ1bnR1LyYjNDM7c291cmNlL2xpbnV4LyYjNDM7YnVn
LzE4NzI3NjA8L2E+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRkkiPmJ1
dCBndXlzIGZyb20gVWJ1bnR1IHNlZW1zIG5vdCBhYmxlIHRvIGhlbHAgKGFzIGl0IGlzIGFuIHVw
c3RyZWFtIGJ1ZykgIT88bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBsYW5nPSJGSSI+
VGhpcyBoYXBwZW5kIG5vdCBpbiBvbGRlciBrZXJuZWxzLCBidXQgdGhlc2UgaGF2ZSB0aGUgcHJv
YmxlbSBub3QgdG8gZ28gaW4gcG93ZXIgc2F2ZSBzdGF0ZXMuIFNvIEkgdGhpbmsgdGhlIGZpeCBv
ZiB0aGF0Jm5ic3A7PG86cD48L286cD48L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRkkiPjxh
IGhyZWY9Imh0dHBzOi8vYnVncy5sYXVuY2hwYWQubmV0L3VidW50dS8mIzQzO3NvdXJjZS9saW51
eC8mIzQzO2J1Zy8xODYzNDg5Ij5odHRwczovL2J1Z3MubGF1bmNocGFkLm5ldC91YnVudHUvJiM0
Mztzb3VyY2UvbGludXgvJiM0MztidWcvMTg2MzQ4OTwvYT48bzpwPjwvbzpwPjwvc3Bhbj48L3A+
DQo8cD48c3BhbiBsYW5nPSJGSSI+Y2F1c2VzIHRoaXMgcmVncmVzc2lvbi4gPG86cD48L286cD48
L3NwYW4+PC9wPg0KPHA+PHNwYW4gbGFuZz0iRkkiPkhvcGUgc29tZW9uZSBjYW4gaGVscC4gRm9y
IGEmbmJzcDsgbGFwdG9wIGl0IGlzIGJldHRlciB0byBoYXZlIGJvdGggLSBzdGFuZGJ5IGFuZCBw
b3dlciBzYXZpbmcuIFRoYW5rIHlvdS48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cD48c3BhbiBs
YW5nPSJGSSI+QXJubzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwPjxzcGFuIGxhbmc9IkZJIj48
bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
IHN0eWxlPSJtYXJnaW4tYm90dG9tOjEyLjBwdCI+PHNwYW4gbGFuZz0iRkkiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9zcGFuPjwvcD4NCjxwcmU+PHNwYW4gbGFuZz0iRkkiPl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPG86cD48L286cD48L3NwYW4+PC9wcmU+DQo8
cHJlPjxzcGFuIGxhbmc9IkZJIj5JbnRlbC1nZnggbWFpbGluZyBsaXN0PG86cD48L286cD48L3Nw
YW4+PC9wcmU+DQo8cHJlPjxzcGFuIGxhbmc9IkZJIj48YSBocmVmPSJtYWlsdG86SW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZyI+SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzwv
YT48bzpwPjwvbzpwPjwvc3Bhbj48L3ByZT4NCjxwcmU+PHNwYW4gbGFuZz0iRkkiPjxhIGhyZWY9
Imh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Ij5odHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eDwvYT48bzpwPjwvbzpwPjwvc3Bhbj48L3ByZT4NCjwvYmxvY2txdW90ZT4NCjwvZGl2Pg0KPC9k
aXY+DQo8cD4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS08YnI+CkludGVsIEZpbmxhbmQgT3k8YnI+ClJlZ2lzdGVyZWQg
QWRkcmVzczogUEwgMjgxLCAwMDE4MSBIZWxzaW5raSA8YnI+CkJ1c2luZXNzIElkZW50aXR5IENv
ZGU6IDAzNTc2MDYgLSA0IDxicj4KRG9taWNpbGVkIGluIEhlbHNpbmtpIDwvcD4KCjxwPlRoaXMg
ZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVy
aWFsIGZvcjxicj4KdGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIEFu
eSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uPGJyPgpieSBvdGhlcnMgaXMgc3RyaWN0bHkgcHJvaGli
aXRlZC4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkPGJyPgpyZWNpcGllbnQsIHBsZWFzZSBj
b250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzLjwvcD48L2JvZHk+DQo8L2h0
bWw+DQo=

--_000_5b9c291892c245b3becd3df45ba5f3f9intelcom_--


--===============1102747488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1102747488==--

